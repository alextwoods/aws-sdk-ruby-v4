# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::Dynamodb
  module Validators

    class AttributeDefinition
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::AttributeDefinition, context: context)
        Seahorse::Validator.validate!(input[:attribute_name], ::String, context: "#{context}[:attribute_name]")
        Seahorse::Validator.validate!(input[:attribute_type], ::String, context: "#{context}[:attribute_type]")
      end
    end

    class AttributeDefinitions
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AttributeDefinition.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AttributeNameList
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Seahorse::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AttributeUpdates
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Seahorse::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::AttributeValueUpdate.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class AttributeValue
      def self.validate!(input, context:)
        case input
        when Types::AttributeValue::S
          Seahorse::Validator.validate!(input.__getobj__, ::String, context: context)
        when Types::AttributeValue::N
          Seahorse::Validator.validate!(input.__getobj__, ::String, context: context)
        when Types::AttributeValue::B
          Seahorse::Validator.validate!(input.__getobj__, ::String, context: context)
        when Types::AttributeValue::Ss
          Validators::StringSetAttributeValue.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::AttributeValue::Ns
          Validators::NumberSetAttributeValue.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::AttributeValue::Bs
          Validators::BinarySetAttributeValue.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::AttributeValue::M
          Validators::MapAttributeValue.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::AttributeValue::L
          Validators::ListAttributeValue.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::AttributeValue::Null
          Seahorse::Validator.validate!(input.__getobj__, ::TrueClass, ::FalseClass, context: context)
        when Types::AttributeValue::Bool
          Seahorse::Validator.validate!(input.__getobj__, ::TrueClass, ::FalseClass, context: context)
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::AttributeValue, got #{input.class}."
        end
      end

      class S
        def self.validate!(input, context:)
          Seahorse::Validator.validate!(input, ::String, context: context)
        end
      end

      class N
        def self.validate!(input, context:)
          Seahorse::Validator.validate!(input, ::String, context: context)
        end
      end

      class B
        def self.validate!(input, context:)
          Seahorse::Validator.validate!(input, ::String, context: context)
        end
      end

      class Ss
        def self.validate!(input, context:)
          Validators::StringSetAttributeValue.validate!(input, context: context) unless input.nil?
        end
      end

      class Ns
        def self.validate!(input, context:)
          Validators::NumberSetAttributeValue.validate!(input, context: context) unless input.nil?
        end
      end

      class Bs
        def self.validate!(input, context:)
          Validators::BinarySetAttributeValue.validate!(input, context: context) unless input.nil?
        end
      end

      class M
        def self.validate!(input, context:)
          Validators::MapAttributeValue.validate!(input, context: context) unless input.nil?
        end
      end

      class L
        def self.validate!(input, context:)
          Validators::ListAttributeValue.validate!(input, context: context) unless input.nil?
        end
      end

      class Null
        def self.validate!(input, context:)
          Seahorse::Validator.validate!(input, ::TrueClass, ::FalseClass, context: context)
        end
      end

      class Bool
        def self.validate!(input, context:)
          Seahorse::Validator.validate!(input, ::TrueClass, ::FalseClass, context: context)
        end
      end
    end

    class AttributeValueList
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AttributeValue.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AttributeValueUpdate
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::AttributeValueUpdate, context: context)
        Validators::AttributeValue.validate!(input[:value], context: "#{context}[:value]") unless input[:value].nil?
        Seahorse::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
      end
    end

    class AutoScalingPolicyUpdate
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::AutoScalingPolicyUpdate, context: context)
        Seahorse::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        Validators::AutoScalingTargetTrackingScalingPolicyConfigurationUpdate.validate!(input[:target_tracking_scaling_policy_configuration], context: "#{context}[:target_tracking_scaling_policy_configuration]") unless input[:target_tracking_scaling_policy_configuration].nil?
      end
    end

    class AutoScalingSettingsUpdate
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::AutoScalingSettingsUpdate, context: context)
        Seahorse::Validator.validate!(input[:minimum_units], ::Integer, context: "#{context}[:minimum_units]")
        Seahorse::Validator.validate!(input[:maximum_units], ::Integer, context: "#{context}[:maximum_units]")
        Seahorse::Validator.validate!(input[:auto_scaling_disabled], ::TrueClass, ::FalseClass, context: "#{context}[:auto_scaling_disabled]")
        Seahorse::Validator.validate!(input[:auto_scaling_role_arn], ::String, context: "#{context}[:auto_scaling_role_arn]")
        Validators::AutoScalingPolicyUpdate.validate!(input[:scaling_policy_update], context: "#{context}[:scaling_policy_update]") unless input[:scaling_policy_update].nil?
      end
    end

    class AutoScalingTargetTrackingScalingPolicyConfigurationUpdate
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::AutoScalingTargetTrackingScalingPolicyConfigurationUpdate, context: context)
        Seahorse::Validator.validate!(input[:disable_scale_in], ::TrueClass, ::FalseClass, context: "#{context}[:disable_scale_in]")
        Seahorse::Validator.validate!(input[:scale_in_cooldown], ::Integer, context: "#{context}[:scale_in_cooldown]")
        Seahorse::Validator.validate!(input[:scale_out_cooldown], ::Integer, context: "#{context}[:scale_out_cooldown]")
        Seahorse::Validator.validate!(input[:target_value], ::Float, context: "#{context}[:target_value]")
      end
    end

    class BatchExecuteStatementInput
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::BatchExecuteStatementInput, context: context)
        Validators::PartiQLBatchRequest.validate!(input[:statements], context: "#{context}[:statements]") unless input[:statements].nil?
        Seahorse::Validator.validate!(input[:return_consumed_capacity], ::String, context: "#{context}[:return_consumed_capacity]")
      end
    end

    class BatchGetItemInput
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::BatchGetItemInput, context: context)
        Validators::BatchGetRequestMap.validate!(input[:request_items], context: "#{context}[:request_items]") unless input[:request_items].nil?
        Seahorse::Validator.validate!(input[:return_consumed_capacity], ::String, context: "#{context}[:return_consumed_capacity]")
      end
    end

    class BatchGetRequestMap
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Seahorse::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::KeysAndAttributes.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class BatchStatementRequest
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::BatchStatementRequest, context: context)
        Seahorse::Validator.validate!(input[:statement], ::String, context: "#{context}[:statement]")
        Validators::PreparedStatementParameters.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        Seahorse::Validator.validate!(input[:consistent_read], ::TrueClass, ::FalseClass, context: "#{context}[:consistent_read]")
      end
    end

    class BatchWriteItemInput
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::BatchWriteItemInput, context: context)
        Validators::BatchWriteItemRequestMap.validate!(input[:request_items], context: "#{context}[:request_items]") unless input[:request_items].nil?
        Seahorse::Validator.validate!(input[:return_consumed_capacity], ::String, context: "#{context}[:return_consumed_capacity]")
        Seahorse::Validator.validate!(input[:return_item_collection_metrics], ::String, context: "#{context}[:return_item_collection_metrics]")
      end
    end

    class BatchWriteItemRequestMap
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Seahorse::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::WriteRequests.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class BinarySetAttributeValue
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Seahorse::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Condition
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::Condition, context: context)
        Validators::AttributeValueList.validate!(input[:attribute_value_list], context: "#{context}[:attribute_value_list]") unless input[:attribute_value_list].nil?
        Seahorse::Validator.validate!(input[:comparison_operator], ::String, context: "#{context}[:comparison_operator]")
      end
    end

    class ConditionCheck
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::ConditionCheck, context: context)
        Validators::Key.validate!(input[:key], context: "#{context}[:key]") unless input[:key].nil?
        Seahorse::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Seahorse::Validator.validate!(input[:condition_expression], ::String, context: "#{context}[:condition_expression]")
        Validators::ExpressionAttributeNameMap.validate!(input[:expression_attribute_names], context: "#{context}[:expression_attribute_names]") unless input[:expression_attribute_names].nil?
        Validators::ExpressionAttributeValueMap.validate!(input[:expression_attribute_values], context: "#{context}[:expression_attribute_values]") unless input[:expression_attribute_values].nil?
        Seahorse::Validator.validate!(input[:return_values_on_condition_check_failure], ::String, context: "#{context}[:return_values_on_condition_check_failure]")
      end
    end

    class CreateBackupInput
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::CreateBackupInput, context: context)
        Seahorse::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Seahorse::Validator.validate!(input[:backup_name], ::String, context: "#{context}[:backup_name]")
      end
    end

    class CreateGlobalSecondaryIndexAction
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::CreateGlobalSecondaryIndexAction, context: context)
        Seahorse::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        Validators::KeySchema.validate!(input[:key_schema], context: "#{context}[:key_schema]") unless input[:key_schema].nil?
        Validators::Projection.validate!(input[:projection], context: "#{context}[:projection]") unless input[:projection].nil?
        Validators::ProvisionedThroughput.validate!(input[:provisioned_throughput], context: "#{context}[:provisioned_throughput]") unless input[:provisioned_throughput].nil?
      end
    end

    class CreateGlobalTableInput
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::CreateGlobalTableInput, context: context)
        Seahorse::Validator.validate!(input[:global_table_name], ::String, context: "#{context}[:global_table_name]")
        Validators::ReplicaList.validate!(input[:replication_group], context: "#{context}[:replication_group]") unless input[:replication_group].nil?
      end
    end

    class CreateReplicaAction
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::CreateReplicaAction, context: context)
        Seahorse::Validator.validate!(input[:region_name], ::String, context: "#{context}[:region_name]")
      end
    end

    class CreateReplicationGroupMemberAction
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::CreateReplicationGroupMemberAction, context: context)
        Seahorse::Validator.validate!(input[:region_name], ::String, context: "#{context}[:region_name]")
        Seahorse::Validator.validate!(input[:kms_master_key_id], ::String, context: "#{context}[:kms_master_key_id]")
        Validators::ProvisionedThroughputOverride.validate!(input[:provisioned_throughput_override], context: "#{context}[:provisioned_throughput_override]") unless input[:provisioned_throughput_override].nil?
        Validators::ReplicaGlobalSecondaryIndexList.validate!(input[:global_secondary_indexes], context: "#{context}[:global_secondary_indexes]") unless input[:global_secondary_indexes].nil?
        Seahorse::Validator.validate!(input[:table_class_override], ::String, context: "#{context}[:table_class_override]")
      end
    end

    class CreateTableInput
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::CreateTableInput, context: context)
        Validators::AttributeDefinitions.validate!(input[:attribute_definitions], context: "#{context}[:attribute_definitions]") unless input[:attribute_definitions].nil?
        Seahorse::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Validators::KeySchema.validate!(input[:key_schema], context: "#{context}[:key_schema]") unless input[:key_schema].nil?
        Validators::LocalSecondaryIndexList.validate!(input[:local_secondary_indexes], context: "#{context}[:local_secondary_indexes]") unless input[:local_secondary_indexes].nil?
        Validators::GlobalSecondaryIndexList.validate!(input[:global_secondary_indexes], context: "#{context}[:global_secondary_indexes]") unless input[:global_secondary_indexes].nil?
        Seahorse::Validator.validate!(input[:billing_mode], ::String, context: "#{context}[:billing_mode]")
        Validators::ProvisionedThroughput.validate!(input[:provisioned_throughput], context: "#{context}[:provisioned_throughput]") unless input[:provisioned_throughput].nil?
        Validators::StreamSpecification.validate!(input[:stream_specification], context: "#{context}[:stream_specification]") unless input[:stream_specification].nil?
        Validators::SSESpecification.validate!(input[:sse_specification], context: "#{context}[:sse_specification]") unless input[:sse_specification].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Seahorse::Validator.validate!(input[:table_class], ::String, context: "#{context}[:table_class]")
      end
    end

    class Delete
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::Delete, context: context)
        Validators::Key.validate!(input[:key], context: "#{context}[:key]") unless input[:key].nil?
        Seahorse::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Seahorse::Validator.validate!(input[:condition_expression], ::String, context: "#{context}[:condition_expression]")
        Validators::ExpressionAttributeNameMap.validate!(input[:expression_attribute_names], context: "#{context}[:expression_attribute_names]") unless input[:expression_attribute_names].nil?
        Validators::ExpressionAttributeValueMap.validate!(input[:expression_attribute_values], context: "#{context}[:expression_attribute_values]") unless input[:expression_attribute_values].nil?
        Seahorse::Validator.validate!(input[:return_values_on_condition_check_failure], ::String, context: "#{context}[:return_values_on_condition_check_failure]")
      end
    end

    class DeleteBackupInput
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::DeleteBackupInput, context: context)
        Seahorse::Validator.validate!(input[:backup_arn], ::String, context: "#{context}[:backup_arn]")
      end
    end

    class DeleteGlobalSecondaryIndexAction
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::DeleteGlobalSecondaryIndexAction, context: context)
        Seahorse::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
      end
    end

    class DeleteItemInput
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::DeleteItemInput, context: context)
        Seahorse::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Validators::Key.validate!(input[:key], context: "#{context}[:key]") unless input[:key].nil?
        Validators::ExpectedAttributeMap.validate!(input[:expected], context: "#{context}[:expected]") unless input[:expected].nil?
        Seahorse::Validator.validate!(input[:conditional_operator], ::String, context: "#{context}[:conditional_operator]")
        Seahorse::Validator.validate!(input[:return_values], ::String, context: "#{context}[:return_values]")
        Seahorse::Validator.validate!(input[:return_consumed_capacity], ::String, context: "#{context}[:return_consumed_capacity]")
        Seahorse::Validator.validate!(input[:return_item_collection_metrics], ::String, context: "#{context}[:return_item_collection_metrics]")
        Seahorse::Validator.validate!(input[:condition_expression], ::String, context: "#{context}[:condition_expression]")
        Validators::ExpressionAttributeNameMap.validate!(input[:expression_attribute_names], context: "#{context}[:expression_attribute_names]") unless input[:expression_attribute_names].nil?
        Validators::ExpressionAttributeValueMap.validate!(input[:expression_attribute_values], context: "#{context}[:expression_attribute_values]") unless input[:expression_attribute_values].nil?
      end
    end

    class DeleteReplicaAction
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::DeleteReplicaAction, context: context)
        Seahorse::Validator.validate!(input[:region_name], ::String, context: "#{context}[:region_name]")
      end
    end

    class DeleteReplicationGroupMemberAction
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::DeleteReplicationGroupMemberAction, context: context)
        Seahorse::Validator.validate!(input[:region_name], ::String, context: "#{context}[:region_name]")
      end
    end

    class DeleteRequest
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::DeleteRequest, context: context)
        Validators::Key.validate!(input[:key], context: "#{context}[:key]") unless input[:key].nil?
      end
    end

    class DeleteTableInput
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::DeleteTableInput, context: context)
        Seahorse::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
      end
    end

    class DescribeBackupInput
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::DescribeBackupInput, context: context)
        Seahorse::Validator.validate!(input[:backup_arn], ::String, context: "#{context}[:backup_arn]")
      end
    end

    class DescribeContinuousBackupsInput
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::DescribeContinuousBackupsInput, context: context)
        Seahorse::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
      end
    end

    class DescribeContributorInsightsInput
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::DescribeContributorInsightsInput, context: context)
        Seahorse::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Seahorse::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
      end
    end

    class DescribeEndpointsInput
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::DescribeEndpointsInput, context: context)
      end
    end

    class DescribeExportInput
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::DescribeExportInput, context: context)
        Seahorse::Validator.validate!(input[:export_arn], ::String, context: "#{context}[:export_arn]")
      end
    end

    class DescribeGlobalTableInput
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::DescribeGlobalTableInput, context: context)
        Seahorse::Validator.validate!(input[:global_table_name], ::String, context: "#{context}[:global_table_name]")
      end
    end

    class DescribeGlobalTableSettingsInput
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::DescribeGlobalTableSettingsInput, context: context)
        Seahorse::Validator.validate!(input[:global_table_name], ::String, context: "#{context}[:global_table_name]")
      end
    end

    class DescribeKinesisStreamingDestinationInput
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::DescribeKinesisStreamingDestinationInput, context: context)
        Seahorse::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
      end
    end

    class DescribeLimitsInput
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::DescribeLimitsInput, context: context)
      end
    end

    class DescribeTableInput
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::DescribeTableInput, context: context)
        Seahorse::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
      end
    end

    class DescribeTableReplicaAutoScalingInput
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::DescribeTableReplicaAutoScalingInput, context: context)
        Seahorse::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
      end
    end

    class DescribeTimeToLiveInput
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::DescribeTimeToLiveInput, context: context)
        Seahorse::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
      end
    end

    class DisableKinesisStreamingDestinationInput
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::DisableKinesisStreamingDestinationInput, context: context)
        Seahorse::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Seahorse::Validator.validate!(input[:stream_arn], ::String, context: "#{context}[:stream_arn]")
      end
    end

    class EnableKinesisStreamingDestinationInput
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::EnableKinesisStreamingDestinationInput, context: context)
        Seahorse::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Seahorse::Validator.validate!(input[:stream_arn], ::String, context: "#{context}[:stream_arn]")
      end
    end

    class ExecuteStatementInput
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::ExecuteStatementInput, context: context)
        Seahorse::Validator.validate!(input[:statement], ::String, context: "#{context}[:statement]")
        Validators::PreparedStatementParameters.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        Seahorse::Validator.validate!(input[:consistent_read], ::TrueClass, ::FalseClass, context: "#{context}[:consistent_read]")
        Seahorse::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Seahorse::Validator.validate!(input[:return_consumed_capacity], ::String, context: "#{context}[:return_consumed_capacity]")
      end
    end

    class ExecuteTransactionInput
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::ExecuteTransactionInput, context: context)
        Validators::ParameterizedStatements.validate!(input[:transact_statements], context: "#{context}[:transact_statements]") unless input[:transact_statements].nil?
        Seahorse::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Seahorse::Validator.validate!(input[:return_consumed_capacity], ::String, context: "#{context}[:return_consumed_capacity]")
      end
    end

    class ExpectedAttributeMap
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Seahorse::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::ExpectedAttributeValue.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class ExpectedAttributeValue
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::ExpectedAttributeValue, context: context)
        Validators::AttributeValue.validate!(input[:value], context: "#{context}[:value]") unless input[:value].nil?
        Seahorse::Validator.validate!(input[:exists], ::TrueClass, ::FalseClass, context: "#{context}[:exists]")
        Seahorse::Validator.validate!(input[:comparison_operator], ::String, context: "#{context}[:comparison_operator]")
        Validators::AttributeValueList.validate!(input[:attribute_value_list], context: "#{context}[:attribute_value_list]") unless input[:attribute_value_list].nil?
      end
    end

    class ExportTableToPointInTimeInput
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::ExportTableToPointInTimeInput, context: context)
        Seahorse::Validator.validate!(input[:table_arn], ::String, context: "#{context}[:table_arn]")
        Seahorse::Validator.validate!(input[:export_time], ::Time, context: "#{context}[:export_time]")
        Seahorse::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Seahorse::Validator.validate!(input[:s3_bucket], ::String, context: "#{context}[:s3_bucket]")
        Seahorse::Validator.validate!(input[:s3_bucket_owner], ::String, context: "#{context}[:s3_bucket_owner]")
        Seahorse::Validator.validate!(input[:s3_prefix], ::String, context: "#{context}[:s3_prefix]")
        Seahorse::Validator.validate!(input[:s3_sse_algorithm], ::String, context: "#{context}[:s3_sse_algorithm]")
        Seahorse::Validator.validate!(input[:s3_sse_kms_key_id], ::String, context: "#{context}[:s3_sse_kms_key_id]")
        Seahorse::Validator.validate!(input[:export_format], ::String, context: "#{context}[:export_format]")
      end
    end

    class ExpressionAttributeNameMap
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Seahorse::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Seahorse::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class ExpressionAttributeValueMap
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Seahorse::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::AttributeValue.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class FilterConditionMap
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Seahorse::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::Condition.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class Get
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::Get, context: context)
        Validators::Key.validate!(input[:key], context: "#{context}[:key]") unless input[:key].nil?
        Seahorse::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Seahorse::Validator.validate!(input[:projection_expression], ::String, context: "#{context}[:projection_expression]")
        Validators::ExpressionAttributeNameMap.validate!(input[:expression_attribute_names], context: "#{context}[:expression_attribute_names]") unless input[:expression_attribute_names].nil?
      end
    end

    class GetItemInput
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::GetItemInput, context: context)
        Seahorse::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Validators::Key.validate!(input[:key], context: "#{context}[:key]") unless input[:key].nil?
        Validators::AttributeNameList.validate!(input[:attributes_to_get], context: "#{context}[:attributes_to_get]") unless input[:attributes_to_get].nil?
        Seahorse::Validator.validate!(input[:consistent_read], ::TrueClass, ::FalseClass, context: "#{context}[:consistent_read]")
        Seahorse::Validator.validate!(input[:return_consumed_capacity], ::String, context: "#{context}[:return_consumed_capacity]")
        Seahorse::Validator.validate!(input[:projection_expression], ::String, context: "#{context}[:projection_expression]")
        Validators::ExpressionAttributeNameMap.validate!(input[:expression_attribute_names], context: "#{context}[:expression_attribute_names]") unless input[:expression_attribute_names].nil?
      end
    end

    class GlobalSecondaryIndex
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::GlobalSecondaryIndex, context: context)
        Seahorse::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        Validators::KeySchema.validate!(input[:key_schema], context: "#{context}[:key_schema]") unless input[:key_schema].nil?
        Validators::Projection.validate!(input[:projection], context: "#{context}[:projection]") unless input[:projection].nil?
        Validators::ProvisionedThroughput.validate!(input[:provisioned_throughput], context: "#{context}[:provisioned_throughput]") unless input[:provisioned_throughput].nil?
      end
    end

    class GlobalSecondaryIndexAutoScalingUpdate
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::GlobalSecondaryIndexAutoScalingUpdate, context: context)
        Seahorse::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        Validators::AutoScalingSettingsUpdate.validate!(input[:provisioned_write_capacity_auto_scaling_update], context: "#{context}[:provisioned_write_capacity_auto_scaling_update]") unless input[:provisioned_write_capacity_auto_scaling_update].nil?
      end
    end

    class GlobalSecondaryIndexAutoScalingUpdateList
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::GlobalSecondaryIndexAutoScalingUpdate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GlobalSecondaryIndexList
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::GlobalSecondaryIndex.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GlobalSecondaryIndexUpdate
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::GlobalSecondaryIndexUpdate, context: context)
        Validators::UpdateGlobalSecondaryIndexAction.validate!(input[:update], context: "#{context}[:update]") unless input[:update].nil?
        Validators::CreateGlobalSecondaryIndexAction.validate!(input[:create], context: "#{context}[:create]") unless input[:create].nil?
        Validators::DeleteGlobalSecondaryIndexAction.validate!(input[:delete], context: "#{context}[:delete]") unless input[:delete].nil?
      end
    end

    class GlobalSecondaryIndexUpdateList
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::GlobalSecondaryIndexUpdate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GlobalTableGlobalSecondaryIndexSettingsUpdate
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::GlobalTableGlobalSecondaryIndexSettingsUpdate, context: context)
        Seahorse::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        Seahorse::Validator.validate!(input[:provisioned_write_capacity_units], ::Integer, context: "#{context}[:provisioned_write_capacity_units]")
        Validators::AutoScalingSettingsUpdate.validate!(input[:provisioned_write_capacity_auto_scaling_settings_update], context: "#{context}[:provisioned_write_capacity_auto_scaling_settings_update]") unless input[:provisioned_write_capacity_auto_scaling_settings_update].nil?
      end
    end

    class GlobalTableGlobalSecondaryIndexSettingsUpdateList
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::GlobalTableGlobalSecondaryIndexSettingsUpdate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Key
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Seahorse::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::AttributeValue.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class KeyConditions
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Seahorse::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::Condition.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class KeyList
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Key.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class KeySchema
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::KeySchemaElement.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class KeySchemaElement
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::KeySchemaElement, context: context)
        Seahorse::Validator.validate!(input[:attribute_name], ::String, context: "#{context}[:attribute_name]")
        Seahorse::Validator.validate!(input[:key_type], ::String, context: "#{context}[:key_type]")
      end
    end

    class KeysAndAttributes
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::KeysAndAttributes, context: context)
        Validators::KeyList.validate!(input[:keys], context: "#{context}[:keys]") unless input[:keys].nil?
        Validators::AttributeNameList.validate!(input[:attributes_to_get], context: "#{context}[:attributes_to_get]") unless input[:attributes_to_get].nil?
        Seahorse::Validator.validate!(input[:consistent_read], ::TrueClass, ::FalseClass, context: "#{context}[:consistent_read]")
        Seahorse::Validator.validate!(input[:projection_expression], ::String, context: "#{context}[:projection_expression]")
        Validators::ExpressionAttributeNameMap.validate!(input[:expression_attribute_names], context: "#{context}[:expression_attribute_names]") unless input[:expression_attribute_names].nil?
      end
    end

    class ListAttributeValue
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AttributeValue.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListBackupsInput
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::ListBackupsInput, context: context)
        Seahorse::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Seahorse::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Seahorse::Validator.validate!(input[:time_range_lower_bound], ::Time, context: "#{context}[:time_range_lower_bound]")
        Seahorse::Validator.validate!(input[:time_range_upper_bound], ::Time, context: "#{context}[:time_range_upper_bound]")
        Seahorse::Validator.validate!(input[:exclusive_start_backup_arn], ::String, context: "#{context}[:exclusive_start_backup_arn]")
        Seahorse::Validator.validate!(input[:backup_type], ::String, context: "#{context}[:backup_type]")
      end
    end

    class ListContributorInsightsInput
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::ListContributorInsightsInput, context: context)
        Seahorse::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Seahorse::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Seahorse::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListExportsInput
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::ListExportsInput, context: context)
        Seahorse::Validator.validate!(input[:table_arn], ::String, context: "#{context}[:table_arn]")
        Seahorse::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Seahorse::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListGlobalTablesInput
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::ListGlobalTablesInput, context: context)
        Seahorse::Validator.validate!(input[:exclusive_start_global_table_name], ::String, context: "#{context}[:exclusive_start_global_table_name]")
        Seahorse::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Seahorse::Validator.validate!(input[:region_name], ::String, context: "#{context}[:region_name]")
      end
    end

    class ListTablesInput
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::ListTablesInput, context: context)
        Seahorse::Validator.validate!(input[:exclusive_start_table_name], ::String, context: "#{context}[:exclusive_start_table_name]")
        Seahorse::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class ListTagsOfResourceInput
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::ListTagsOfResourceInput, context: context)
        Seahorse::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Seahorse::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class LocalSecondaryIndex
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::LocalSecondaryIndex, context: context)
        Seahorse::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        Validators::KeySchema.validate!(input[:key_schema], context: "#{context}[:key_schema]") unless input[:key_schema].nil?
        Validators::Projection.validate!(input[:projection], context: "#{context}[:projection]") unless input[:projection].nil?
      end
    end

    class LocalSecondaryIndexList
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LocalSecondaryIndex.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MapAttributeValue
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Seahorse::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::AttributeValue.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class NonKeyAttributeNameList
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Seahorse::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class NumberSetAttributeValue
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Seahorse::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ParameterizedStatement
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::ParameterizedStatement, context: context)
        Seahorse::Validator.validate!(input[:statement], ::String, context: "#{context}[:statement]")
        Validators::PreparedStatementParameters.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
      end
    end

    class ParameterizedStatements
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ParameterizedStatement.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PartiQLBatchRequest
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BatchStatementRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PointInTimeRecoverySpecification
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::PointInTimeRecoverySpecification, context: context)
        Seahorse::Validator.validate!(input[:point_in_time_recovery_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:point_in_time_recovery_enabled]")
      end
    end

    class PreparedStatementParameters
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AttributeValue.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Projection
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::Projection, context: context)
        Seahorse::Validator.validate!(input[:projection_type], ::String, context: "#{context}[:projection_type]")
        Validators::NonKeyAttributeNameList.validate!(input[:non_key_attributes], context: "#{context}[:non_key_attributes]") unless input[:non_key_attributes].nil?
      end
    end

    class ProvisionedThroughput
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::ProvisionedThroughput, context: context)
        Seahorse::Validator.validate!(input[:read_capacity_units], ::Integer, context: "#{context}[:read_capacity_units]")
        Seahorse::Validator.validate!(input[:write_capacity_units], ::Integer, context: "#{context}[:write_capacity_units]")
      end
    end

    class ProvisionedThroughputOverride
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::ProvisionedThroughputOverride, context: context)
        Seahorse::Validator.validate!(input[:read_capacity_units], ::Integer, context: "#{context}[:read_capacity_units]")
      end
    end

    class Put
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::Put, context: context)
        Validators::PutItemInputAttributeMap.validate!(input[:item], context: "#{context}[:item]") unless input[:item].nil?
        Seahorse::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Seahorse::Validator.validate!(input[:condition_expression], ::String, context: "#{context}[:condition_expression]")
        Validators::ExpressionAttributeNameMap.validate!(input[:expression_attribute_names], context: "#{context}[:expression_attribute_names]") unless input[:expression_attribute_names].nil?
        Validators::ExpressionAttributeValueMap.validate!(input[:expression_attribute_values], context: "#{context}[:expression_attribute_values]") unless input[:expression_attribute_values].nil?
        Seahorse::Validator.validate!(input[:return_values_on_condition_check_failure], ::String, context: "#{context}[:return_values_on_condition_check_failure]")
      end
    end

    class PutItemInput
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::PutItemInput, context: context)
        Seahorse::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Validators::PutItemInputAttributeMap.validate!(input[:item], context: "#{context}[:item]") unless input[:item].nil?
        Validators::ExpectedAttributeMap.validate!(input[:expected], context: "#{context}[:expected]") unless input[:expected].nil?
        Seahorse::Validator.validate!(input[:return_values], ::String, context: "#{context}[:return_values]")
        Seahorse::Validator.validate!(input[:return_consumed_capacity], ::String, context: "#{context}[:return_consumed_capacity]")
        Seahorse::Validator.validate!(input[:return_item_collection_metrics], ::String, context: "#{context}[:return_item_collection_metrics]")
        Seahorse::Validator.validate!(input[:conditional_operator], ::String, context: "#{context}[:conditional_operator]")
        Seahorse::Validator.validate!(input[:condition_expression], ::String, context: "#{context}[:condition_expression]")
        Validators::ExpressionAttributeNameMap.validate!(input[:expression_attribute_names], context: "#{context}[:expression_attribute_names]") unless input[:expression_attribute_names].nil?
        Validators::ExpressionAttributeValueMap.validate!(input[:expression_attribute_values], context: "#{context}[:expression_attribute_values]") unless input[:expression_attribute_values].nil?
      end
    end

    class PutItemInputAttributeMap
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Seahorse::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::AttributeValue.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class PutRequest
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::PutRequest, context: context)
        Validators::PutItemInputAttributeMap.validate!(input[:item], context: "#{context}[:item]") unless input[:item].nil?
      end
    end

    class QueryInput
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::QueryInput, context: context)
        Seahorse::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Seahorse::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        Seahorse::Validator.validate!(input[:select], ::String, context: "#{context}[:select]")
        Validators::AttributeNameList.validate!(input[:attributes_to_get], context: "#{context}[:attributes_to_get]") unless input[:attributes_to_get].nil?
        Seahorse::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Seahorse::Validator.validate!(input[:consistent_read], ::TrueClass, ::FalseClass, context: "#{context}[:consistent_read]")
        Validators::KeyConditions.validate!(input[:key_conditions], context: "#{context}[:key_conditions]") unless input[:key_conditions].nil?
        Validators::FilterConditionMap.validate!(input[:query_filter], context: "#{context}[:query_filter]") unless input[:query_filter].nil?
        Seahorse::Validator.validate!(input[:conditional_operator], ::String, context: "#{context}[:conditional_operator]")
        Seahorse::Validator.validate!(input[:scan_index_forward], ::TrueClass, ::FalseClass, context: "#{context}[:scan_index_forward]")
        Validators::Key.validate!(input[:exclusive_start_key], context: "#{context}[:exclusive_start_key]") unless input[:exclusive_start_key].nil?
        Seahorse::Validator.validate!(input[:return_consumed_capacity], ::String, context: "#{context}[:return_consumed_capacity]")
        Seahorse::Validator.validate!(input[:projection_expression], ::String, context: "#{context}[:projection_expression]")
        Seahorse::Validator.validate!(input[:filter_expression], ::String, context: "#{context}[:filter_expression]")
        Seahorse::Validator.validate!(input[:key_condition_expression], ::String, context: "#{context}[:key_condition_expression]")
        Validators::ExpressionAttributeNameMap.validate!(input[:expression_attribute_names], context: "#{context}[:expression_attribute_names]") unless input[:expression_attribute_names].nil?
        Validators::ExpressionAttributeValueMap.validate!(input[:expression_attribute_values], context: "#{context}[:expression_attribute_values]") unless input[:expression_attribute_values].nil?
      end
    end

    class Replica
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::Replica, context: context)
        Seahorse::Validator.validate!(input[:region_name], ::String, context: "#{context}[:region_name]")
      end
    end

    class ReplicaAutoScalingUpdate
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::ReplicaAutoScalingUpdate, context: context)
        Seahorse::Validator.validate!(input[:region_name], ::String, context: "#{context}[:region_name]")
        Validators::ReplicaGlobalSecondaryIndexAutoScalingUpdateList.validate!(input[:replica_global_secondary_index_updates], context: "#{context}[:replica_global_secondary_index_updates]") unless input[:replica_global_secondary_index_updates].nil?
        Validators::AutoScalingSettingsUpdate.validate!(input[:replica_provisioned_read_capacity_auto_scaling_update], context: "#{context}[:replica_provisioned_read_capacity_auto_scaling_update]") unless input[:replica_provisioned_read_capacity_auto_scaling_update].nil?
      end
    end

    class ReplicaAutoScalingUpdateList
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ReplicaAutoScalingUpdate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReplicaGlobalSecondaryIndex
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::ReplicaGlobalSecondaryIndex, context: context)
        Seahorse::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        Validators::ProvisionedThroughputOverride.validate!(input[:provisioned_throughput_override], context: "#{context}[:provisioned_throughput_override]") unless input[:provisioned_throughput_override].nil?
      end
    end

    class ReplicaGlobalSecondaryIndexAutoScalingUpdate
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::ReplicaGlobalSecondaryIndexAutoScalingUpdate, context: context)
        Seahorse::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        Validators::AutoScalingSettingsUpdate.validate!(input[:provisioned_read_capacity_auto_scaling_update], context: "#{context}[:provisioned_read_capacity_auto_scaling_update]") unless input[:provisioned_read_capacity_auto_scaling_update].nil?
      end
    end

    class ReplicaGlobalSecondaryIndexAutoScalingUpdateList
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ReplicaGlobalSecondaryIndexAutoScalingUpdate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReplicaGlobalSecondaryIndexList
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ReplicaGlobalSecondaryIndex.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReplicaGlobalSecondaryIndexSettingsUpdate
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::ReplicaGlobalSecondaryIndexSettingsUpdate, context: context)
        Seahorse::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        Seahorse::Validator.validate!(input[:provisioned_read_capacity_units], ::Integer, context: "#{context}[:provisioned_read_capacity_units]")
        Validators::AutoScalingSettingsUpdate.validate!(input[:provisioned_read_capacity_auto_scaling_settings_update], context: "#{context}[:provisioned_read_capacity_auto_scaling_settings_update]") unless input[:provisioned_read_capacity_auto_scaling_settings_update].nil?
      end
    end

    class ReplicaGlobalSecondaryIndexSettingsUpdateList
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ReplicaGlobalSecondaryIndexSettingsUpdate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReplicaList
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Replica.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReplicaSettingsUpdate
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::ReplicaSettingsUpdate, context: context)
        Seahorse::Validator.validate!(input[:region_name], ::String, context: "#{context}[:region_name]")
        Seahorse::Validator.validate!(input[:replica_provisioned_read_capacity_units], ::Integer, context: "#{context}[:replica_provisioned_read_capacity_units]")
        Validators::AutoScalingSettingsUpdate.validate!(input[:replica_provisioned_read_capacity_auto_scaling_settings_update], context: "#{context}[:replica_provisioned_read_capacity_auto_scaling_settings_update]") unless input[:replica_provisioned_read_capacity_auto_scaling_settings_update].nil?
        Validators::ReplicaGlobalSecondaryIndexSettingsUpdateList.validate!(input[:replica_global_secondary_index_settings_update], context: "#{context}[:replica_global_secondary_index_settings_update]") unless input[:replica_global_secondary_index_settings_update].nil?
        Seahorse::Validator.validate!(input[:replica_table_class], ::String, context: "#{context}[:replica_table_class]")
      end
    end

    class ReplicaSettingsUpdateList
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ReplicaSettingsUpdate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReplicaUpdate
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::ReplicaUpdate, context: context)
        Validators::CreateReplicaAction.validate!(input[:create], context: "#{context}[:create]") unless input[:create].nil?
        Validators::DeleteReplicaAction.validate!(input[:delete], context: "#{context}[:delete]") unless input[:delete].nil?
      end
    end

    class ReplicaUpdateList
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ReplicaUpdate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReplicationGroupUpdate
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::ReplicationGroupUpdate, context: context)
        Validators::CreateReplicationGroupMemberAction.validate!(input[:create], context: "#{context}[:create]") unless input[:create].nil?
        Validators::UpdateReplicationGroupMemberAction.validate!(input[:update], context: "#{context}[:update]") unless input[:update].nil?
        Validators::DeleteReplicationGroupMemberAction.validate!(input[:delete], context: "#{context}[:delete]") unless input[:delete].nil?
      end
    end

    class ReplicationGroupUpdateList
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ReplicationGroupUpdate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RestoreTableFromBackupInput
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::RestoreTableFromBackupInput, context: context)
        Seahorse::Validator.validate!(input[:target_table_name], ::String, context: "#{context}[:target_table_name]")
        Seahorse::Validator.validate!(input[:backup_arn], ::String, context: "#{context}[:backup_arn]")
        Seahorse::Validator.validate!(input[:billing_mode_override], ::String, context: "#{context}[:billing_mode_override]")
        Validators::GlobalSecondaryIndexList.validate!(input[:global_secondary_index_override], context: "#{context}[:global_secondary_index_override]") unless input[:global_secondary_index_override].nil?
        Validators::LocalSecondaryIndexList.validate!(input[:local_secondary_index_override], context: "#{context}[:local_secondary_index_override]") unless input[:local_secondary_index_override].nil?
        Validators::ProvisionedThroughput.validate!(input[:provisioned_throughput_override], context: "#{context}[:provisioned_throughput_override]") unless input[:provisioned_throughput_override].nil?
        Validators::SSESpecification.validate!(input[:sse_specification_override], context: "#{context}[:sse_specification_override]") unless input[:sse_specification_override].nil?
      end
    end

    class RestoreTableToPointInTimeInput
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::RestoreTableToPointInTimeInput, context: context)
        Seahorse::Validator.validate!(input[:source_table_arn], ::String, context: "#{context}[:source_table_arn]")
        Seahorse::Validator.validate!(input[:source_table_name], ::String, context: "#{context}[:source_table_name]")
        Seahorse::Validator.validate!(input[:target_table_name], ::String, context: "#{context}[:target_table_name]")
        Seahorse::Validator.validate!(input[:use_latest_restorable_time], ::TrueClass, ::FalseClass, context: "#{context}[:use_latest_restorable_time]")
        Seahorse::Validator.validate!(input[:restore_date_time], ::Time, context: "#{context}[:restore_date_time]")
        Seahorse::Validator.validate!(input[:billing_mode_override], ::String, context: "#{context}[:billing_mode_override]")
        Validators::GlobalSecondaryIndexList.validate!(input[:global_secondary_index_override], context: "#{context}[:global_secondary_index_override]") unless input[:global_secondary_index_override].nil?
        Validators::LocalSecondaryIndexList.validate!(input[:local_secondary_index_override], context: "#{context}[:local_secondary_index_override]") unless input[:local_secondary_index_override].nil?
        Validators::ProvisionedThroughput.validate!(input[:provisioned_throughput_override], context: "#{context}[:provisioned_throughput_override]") unless input[:provisioned_throughput_override].nil?
        Validators::SSESpecification.validate!(input[:sse_specification_override], context: "#{context}[:sse_specification_override]") unless input[:sse_specification_override].nil?
      end
    end

    class SSESpecification
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::SSESpecification, context: context)
        Seahorse::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Seahorse::Validator.validate!(input[:sse_type], ::String, context: "#{context}[:sse_type]")
        Seahorse::Validator.validate!(input[:kms_master_key_id], ::String, context: "#{context}[:kms_master_key_id]")
      end
    end

    class ScanInput
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::ScanInput, context: context)
        Seahorse::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Seahorse::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        Validators::AttributeNameList.validate!(input[:attributes_to_get], context: "#{context}[:attributes_to_get]") unless input[:attributes_to_get].nil?
        Seahorse::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Seahorse::Validator.validate!(input[:select], ::String, context: "#{context}[:select]")
        Validators::FilterConditionMap.validate!(input[:scan_filter], context: "#{context}[:scan_filter]") unless input[:scan_filter].nil?
        Seahorse::Validator.validate!(input[:conditional_operator], ::String, context: "#{context}[:conditional_operator]")
        Validators::Key.validate!(input[:exclusive_start_key], context: "#{context}[:exclusive_start_key]") unless input[:exclusive_start_key].nil?
        Seahorse::Validator.validate!(input[:return_consumed_capacity], ::String, context: "#{context}[:return_consumed_capacity]")
        Seahorse::Validator.validate!(input[:total_segments], ::Integer, context: "#{context}[:total_segments]")
        Seahorse::Validator.validate!(input[:segment], ::Integer, context: "#{context}[:segment]")
        Seahorse::Validator.validate!(input[:projection_expression], ::String, context: "#{context}[:projection_expression]")
        Seahorse::Validator.validate!(input[:filter_expression], ::String, context: "#{context}[:filter_expression]")
        Validators::ExpressionAttributeNameMap.validate!(input[:expression_attribute_names], context: "#{context}[:expression_attribute_names]") unless input[:expression_attribute_names].nil?
        Validators::ExpressionAttributeValueMap.validate!(input[:expression_attribute_values], context: "#{context}[:expression_attribute_values]") unless input[:expression_attribute_values].nil?
        Seahorse::Validator.validate!(input[:consistent_read], ::TrueClass, ::FalseClass, context: "#{context}[:consistent_read]")
      end
    end

    class StreamSpecification
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::StreamSpecification, context: context)
        Seahorse::Validator.validate!(input[:stream_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:stream_enabled]")
        Seahorse::Validator.validate!(input[:stream_view_type], ::String, context: "#{context}[:stream_view_type]")
      end
    end

    class StringSetAttributeValue
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Seahorse::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Tag
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::Tag, context: context)
        Seahorse::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Seahorse::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Seahorse::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagList
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::TagResourceInput, context: context)
        Seahorse::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TimeToLiveSpecification
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::TimeToLiveSpecification, context: context)
        Seahorse::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Seahorse::Validator.validate!(input[:attribute_name], ::String, context: "#{context}[:attribute_name]")
      end
    end

    class TransactGetItem
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::TransactGetItem, context: context)
        Validators::Get.validate!(input[:get], context: "#{context}[:get]") unless input[:get].nil?
      end
    end

    class TransactGetItemList
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TransactGetItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TransactGetItemsInput
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::TransactGetItemsInput, context: context)
        Validators::TransactGetItemList.validate!(input[:transact_items], context: "#{context}[:transact_items]") unless input[:transact_items].nil?
        Seahorse::Validator.validate!(input[:return_consumed_capacity], ::String, context: "#{context}[:return_consumed_capacity]")
      end
    end

    class TransactWriteItem
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::TransactWriteItem, context: context)
        Validators::ConditionCheck.validate!(input[:condition_check], context: "#{context}[:condition_check]") unless input[:condition_check].nil?
        Validators::Put.validate!(input[:put], context: "#{context}[:put]") unless input[:put].nil?
        Validators::Delete.validate!(input[:delete], context: "#{context}[:delete]") unless input[:delete].nil?
        Validators::Update.validate!(input[:update], context: "#{context}[:update]") unless input[:update].nil?
      end
    end

    class TransactWriteItemList
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TransactWriteItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TransactWriteItemsInput
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::TransactWriteItemsInput, context: context)
        Validators::TransactWriteItemList.validate!(input[:transact_items], context: "#{context}[:transact_items]") unless input[:transact_items].nil?
        Seahorse::Validator.validate!(input[:return_consumed_capacity], ::String, context: "#{context}[:return_consumed_capacity]")
        Seahorse::Validator.validate!(input[:return_item_collection_metrics], ::String, context: "#{context}[:return_item_collection_metrics]")
        Seahorse::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Seahorse::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class Update
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::Update, context: context)
        Validators::Key.validate!(input[:key], context: "#{context}[:key]") unless input[:key].nil?
        Seahorse::Validator.validate!(input[:update_expression], ::String, context: "#{context}[:update_expression]")
        Seahorse::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Seahorse::Validator.validate!(input[:condition_expression], ::String, context: "#{context}[:condition_expression]")
        Validators::ExpressionAttributeNameMap.validate!(input[:expression_attribute_names], context: "#{context}[:expression_attribute_names]") unless input[:expression_attribute_names].nil?
        Validators::ExpressionAttributeValueMap.validate!(input[:expression_attribute_values], context: "#{context}[:expression_attribute_values]") unless input[:expression_attribute_values].nil?
        Seahorse::Validator.validate!(input[:return_values_on_condition_check_failure], ::String, context: "#{context}[:return_values_on_condition_check_failure]")
      end
    end

    class UpdateContinuousBackupsInput
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::UpdateContinuousBackupsInput, context: context)
        Seahorse::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Validators::PointInTimeRecoverySpecification.validate!(input[:point_in_time_recovery_specification], context: "#{context}[:point_in_time_recovery_specification]") unless input[:point_in_time_recovery_specification].nil?
      end
    end

    class UpdateContributorInsightsInput
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::UpdateContributorInsightsInput, context: context)
        Seahorse::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Seahorse::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        Seahorse::Validator.validate!(input[:contributor_insights_action], ::String, context: "#{context}[:contributor_insights_action]")
      end
    end

    class UpdateGlobalSecondaryIndexAction
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::UpdateGlobalSecondaryIndexAction, context: context)
        Seahorse::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        Validators::ProvisionedThroughput.validate!(input[:provisioned_throughput], context: "#{context}[:provisioned_throughput]") unless input[:provisioned_throughput].nil?
      end
    end

    class UpdateGlobalTableInput
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::UpdateGlobalTableInput, context: context)
        Seahorse::Validator.validate!(input[:global_table_name], ::String, context: "#{context}[:global_table_name]")
        Validators::ReplicaUpdateList.validate!(input[:replica_updates], context: "#{context}[:replica_updates]") unless input[:replica_updates].nil?
      end
    end

    class UpdateGlobalTableSettingsInput
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::UpdateGlobalTableSettingsInput, context: context)
        Seahorse::Validator.validate!(input[:global_table_name], ::String, context: "#{context}[:global_table_name]")
        Seahorse::Validator.validate!(input[:global_table_billing_mode], ::String, context: "#{context}[:global_table_billing_mode]")
        Seahorse::Validator.validate!(input[:global_table_provisioned_write_capacity_units], ::Integer, context: "#{context}[:global_table_provisioned_write_capacity_units]")
        Validators::AutoScalingSettingsUpdate.validate!(input[:global_table_provisioned_write_capacity_auto_scaling_settings_update], context: "#{context}[:global_table_provisioned_write_capacity_auto_scaling_settings_update]") unless input[:global_table_provisioned_write_capacity_auto_scaling_settings_update].nil?
        Validators::GlobalTableGlobalSecondaryIndexSettingsUpdateList.validate!(input[:global_table_global_secondary_index_settings_update], context: "#{context}[:global_table_global_secondary_index_settings_update]") unless input[:global_table_global_secondary_index_settings_update].nil?
        Validators::ReplicaSettingsUpdateList.validate!(input[:replica_settings_update], context: "#{context}[:replica_settings_update]") unless input[:replica_settings_update].nil?
      end
    end

    class UpdateItemInput
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::UpdateItemInput, context: context)
        Seahorse::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Validators::Key.validate!(input[:key], context: "#{context}[:key]") unless input[:key].nil?
        Validators::AttributeUpdates.validate!(input[:attribute_updates], context: "#{context}[:attribute_updates]") unless input[:attribute_updates].nil?
        Validators::ExpectedAttributeMap.validate!(input[:expected], context: "#{context}[:expected]") unless input[:expected].nil?
        Seahorse::Validator.validate!(input[:conditional_operator], ::String, context: "#{context}[:conditional_operator]")
        Seahorse::Validator.validate!(input[:return_values], ::String, context: "#{context}[:return_values]")
        Seahorse::Validator.validate!(input[:return_consumed_capacity], ::String, context: "#{context}[:return_consumed_capacity]")
        Seahorse::Validator.validate!(input[:return_item_collection_metrics], ::String, context: "#{context}[:return_item_collection_metrics]")
        Seahorse::Validator.validate!(input[:update_expression], ::String, context: "#{context}[:update_expression]")
        Seahorse::Validator.validate!(input[:condition_expression], ::String, context: "#{context}[:condition_expression]")
        Validators::ExpressionAttributeNameMap.validate!(input[:expression_attribute_names], context: "#{context}[:expression_attribute_names]") unless input[:expression_attribute_names].nil?
        Validators::ExpressionAttributeValueMap.validate!(input[:expression_attribute_values], context: "#{context}[:expression_attribute_values]") unless input[:expression_attribute_values].nil?
      end
    end

    class UpdateReplicationGroupMemberAction
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::UpdateReplicationGroupMemberAction, context: context)
        Seahorse::Validator.validate!(input[:region_name], ::String, context: "#{context}[:region_name]")
        Seahorse::Validator.validate!(input[:kms_master_key_id], ::String, context: "#{context}[:kms_master_key_id]")
        Validators::ProvisionedThroughputOverride.validate!(input[:provisioned_throughput_override], context: "#{context}[:provisioned_throughput_override]") unless input[:provisioned_throughput_override].nil?
        Validators::ReplicaGlobalSecondaryIndexList.validate!(input[:global_secondary_indexes], context: "#{context}[:global_secondary_indexes]") unless input[:global_secondary_indexes].nil?
        Seahorse::Validator.validate!(input[:table_class_override], ::String, context: "#{context}[:table_class_override]")
      end
    end

    class UpdateTableInput
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::UpdateTableInput, context: context)
        Validators::AttributeDefinitions.validate!(input[:attribute_definitions], context: "#{context}[:attribute_definitions]") unless input[:attribute_definitions].nil?
        Seahorse::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Seahorse::Validator.validate!(input[:billing_mode], ::String, context: "#{context}[:billing_mode]")
        Validators::ProvisionedThroughput.validate!(input[:provisioned_throughput], context: "#{context}[:provisioned_throughput]") unless input[:provisioned_throughput].nil?
        Validators::GlobalSecondaryIndexUpdateList.validate!(input[:global_secondary_index_updates], context: "#{context}[:global_secondary_index_updates]") unless input[:global_secondary_index_updates].nil?
        Validators::StreamSpecification.validate!(input[:stream_specification], context: "#{context}[:stream_specification]") unless input[:stream_specification].nil?
        Validators::SSESpecification.validate!(input[:sse_specification], context: "#{context}[:sse_specification]") unless input[:sse_specification].nil?
        Validators::ReplicationGroupUpdateList.validate!(input[:replica_updates], context: "#{context}[:replica_updates]") unless input[:replica_updates].nil?
        Seahorse::Validator.validate!(input[:table_class], ::String, context: "#{context}[:table_class]")
      end
    end

    class UpdateTableReplicaAutoScalingInput
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::UpdateTableReplicaAutoScalingInput, context: context)
        Validators::GlobalSecondaryIndexAutoScalingUpdateList.validate!(input[:global_secondary_index_updates], context: "#{context}[:global_secondary_index_updates]") unless input[:global_secondary_index_updates].nil?
        Seahorse::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Validators::AutoScalingSettingsUpdate.validate!(input[:provisioned_write_capacity_auto_scaling_update], context: "#{context}[:provisioned_write_capacity_auto_scaling_update]") unless input[:provisioned_write_capacity_auto_scaling_update].nil?
        Validators::ReplicaAutoScalingUpdateList.validate!(input[:replica_updates], context: "#{context}[:replica_updates]") unless input[:replica_updates].nil?
      end
    end

    class UpdateTimeToLiveInput
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::UpdateTimeToLiveInput, context: context)
        Seahorse::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Validators::TimeToLiveSpecification.validate!(input[:time_to_live_specification], context: "#{context}[:time_to_live_specification]") unless input[:time_to_live_specification].nil?
      end
    end

    class WriteRequest
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::WriteRequest, context: context)
        Validators::PutRequest.validate!(input[:put_request], context: "#{context}[:put_request]") unless input[:put_request].nil?
        Validators::DeleteRequest.validate!(input[:delete_request], context: "#{context}[:delete_request]") unless input[:delete_request].nil?
      end
    end

    class WriteRequests
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::WriteRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
