# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::DynamoDB
  module Validators

    class ArchivalSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ArchivalSummary, context: context)
        Hearth::Validator.validate!(input[:archival_date_time], ::Time, context: "#{context}[:archival_date_time]")
        Hearth::Validator.validate!(input[:archival_reason], ::String, context: "#{context}[:archival_reason]")
        Hearth::Validator.validate!(input[:archival_backup_arn], ::String, context: "#{context}[:archival_backup_arn]")
      end
    end

    class AttributeDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttributeDefinition, context: context)
        Hearth::Validator.validate!(input[:attribute_name], ::String, context: "#{context}[:attribute_name]")
        Hearth::Validator.validate!(input[:attribute_type], ::String, context: "#{context}[:attribute_type]")
      end
    end

    class AttributeDefinitions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AttributeDefinition.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AttributeMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          AttributeValue.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class AttributeNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AttributeUpdates
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          AttributeValueUpdate.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class AttributeValue
      def self.validate!(input, context:)
        case input
        when Types::AttributeValue::S
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        when Types::AttributeValue::N
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        when Types::AttributeValue::B
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        when Types::AttributeValue::Ss
          StringSetAttributeValue.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::AttributeValue::Ns
          NumberSetAttributeValue.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::AttributeValue::Bs
          BinarySetAttributeValue.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::AttributeValue::M
          MapAttributeValue.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::AttributeValue::L
          ListAttributeValue.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::AttributeValue::Null
          Hearth::Validator.validate!(input.__getobj__, ::TrueClass, ::FalseClass, context: context)
        when Types::AttributeValue::Bool
          Hearth::Validator.validate!(input.__getobj__, ::TrueClass, ::FalseClass, context: context)
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::AttributeValue, got #{input.class}."
        end
      end

      class S
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::String, context: context)
        end
      end

      class N
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::String, context: context)
        end
      end

      class B
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::String, context: context)
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
          Hearth::Validator.validate!(input, ::TrueClass, ::FalseClass, context: context)
        end
      end

      class Bool
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::TrueClass, ::FalseClass, context: context)
        end
      end
    end

    class AttributeValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AttributeValue.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AttributeValueUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttributeValueUpdate, context: context)
        AttributeValue.validate!(input[:value], context: "#{context}[:value]") unless input[:value].nil?
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
      end
    end

    class AutoScalingPolicyDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoScalingPolicyDescription, context: context)
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        AutoScalingTargetTrackingScalingPolicyConfigurationDescription.validate!(input[:target_tracking_scaling_policy_configuration], context: "#{context}[:target_tracking_scaling_policy_configuration]") unless input[:target_tracking_scaling_policy_configuration].nil?
      end
    end

    class AutoScalingPolicyDescriptionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AutoScalingPolicyDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AutoScalingPolicyUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoScalingPolicyUpdate, context: context)
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        AutoScalingTargetTrackingScalingPolicyConfigurationUpdate.validate!(input[:target_tracking_scaling_policy_configuration], context: "#{context}[:target_tracking_scaling_policy_configuration]") unless input[:target_tracking_scaling_policy_configuration].nil?
      end
    end

    class AutoScalingSettingsDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoScalingSettingsDescription, context: context)
        Hearth::Validator.validate!(input[:minimum_units], ::Integer, context: "#{context}[:minimum_units]")
        Hearth::Validator.validate!(input[:maximum_units], ::Integer, context: "#{context}[:maximum_units]")
        Hearth::Validator.validate!(input[:auto_scaling_disabled], ::TrueClass, ::FalseClass, context: "#{context}[:auto_scaling_disabled]")
        Hearth::Validator.validate!(input[:auto_scaling_role_arn], ::String, context: "#{context}[:auto_scaling_role_arn]")
        AutoScalingPolicyDescriptionList.validate!(input[:scaling_policies], context: "#{context}[:scaling_policies]") unless input[:scaling_policies].nil?
      end
    end

    class AutoScalingSettingsUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoScalingSettingsUpdate, context: context)
        Hearth::Validator.validate!(input[:minimum_units], ::Integer, context: "#{context}[:minimum_units]")
        Hearth::Validator.validate!(input[:maximum_units], ::Integer, context: "#{context}[:maximum_units]")
        Hearth::Validator.validate!(input[:auto_scaling_disabled], ::TrueClass, ::FalseClass, context: "#{context}[:auto_scaling_disabled]")
        Hearth::Validator.validate!(input[:auto_scaling_role_arn], ::String, context: "#{context}[:auto_scaling_role_arn]")
        AutoScalingPolicyUpdate.validate!(input[:scaling_policy_update], context: "#{context}[:scaling_policy_update]") unless input[:scaling_policy_update].nil?
      end
    end

    class AutoScalingTargetTrackingScalingPolicyConfigurationDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoScalingTargetTrackingScalingPolicyConfigurationDescription, context: context)
        Hearth::Validator.validate!(input[:disable_scale_in], ::TrueClass, ::FalseClass, context: "#{context}[:disable_scale_in]")
        Hearth::Validator.validate!(input[:scale_in_cooldown], ::Integer, context: "#{context}[:scale_in_cooldown]")
        Hearth::Validator.validate!(input[:scale_out_cooldown], ::Integer, context: "#{context}[:scale_out_cooldown]")
        Hearth::Validator.validate!(input[:target_value], ::Float, context: "#{context}[:target_value]")
      end
    end

    class AutoScalingTargetTrackingScalingPolicyConfigurationUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoScalingTargetTrackingScalingPolicyConfigurationUpdate, context: context)
        Hearth::Validator.validate!(input[:disable_scale_in], ::TrueClass, ::FalseClass, context: "#{context}[:disable_scale_in]")
        Hearth::Validator.validate!(input[:scale_in_cooldown], ::Integer, context: "#{context}[:scale_in_cooldown]")
        Hearth::Validator.validate!(input[:scale_out_cooldown], ::Integer, context: "#{context}[:scale_out_cooldown]")
        Hearth::Validator.validate!(input[:target_value], ::Float, context: "#{context}[:target_value]")
      end
    end

    class BackupDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BackupDescription, context: context)
        BackupDetails.validate!(input[:backup_details], context: "#{context}[:backup_details]") unless input[:backup_details].nil?
        SourceTableDetails.validate!(input[:source_table_details], context: "#{context}[:source_table_details]") unless input[:source_table_details].nil?
        SourceTableFeatureDetails.validate!(input[:source_table_feature_details], context: "#{context}[:source_table_feature_details]") unless input[:source_table_feature_details].nil?
      end
    end

    class BackupDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BackupDetails, context: context)
        Hearth::Validator.validate!(input[:backup_arn], ::String, context: "#{context}[:backup_arn]")
        Hearth::Validator.validate!(input[:backup_name], ::String, context: "#{context}[:backup_name]")
        Hearth::Validator.validate!(input[:backup_size_bytes], ::Integer, context: "#{context}[:backup_size_bytes]")
        Hearth::Validator.validate!(input[:backup_status], ::String, context: "#{context}[:backup_status]")
        Hearth::Validator.validate!(input[:backup_type], ::String, context: "#{context}[:backup_type]")
        Hearth::Validator.validate!(input[:backup_creation_date_time], ::Time, context: "#{context}[:backup_creation_date_time]")
        Hearth::Validator.validate!(input[:backup_expiry_date_time], ::Time, context: "#{context}[:backup_expiry_date_time]")
      end
    end

    class BackupInUseException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BackupInUseException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class BackupNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BackupNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class BackupSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BackupSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BackupSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BackupSummary, context: context)
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:table_id], ::String, context: "#{context}[:table_id]")
        Hearth::Validator.validate!(input[:table_arn], ::String, context: "#{context}[:table_arn]")
        Hearth::Validator.validate!(input[:backup_arn], ::String, context: "#{context}[:backup_arn]")
        Hearth::Validator.validate!(input[:backup_name], ::String, context: "#{context}[:backup_name]")
        Hearth::Validator.validate!(input[:backup_creation_date_time], ::Time, context: "#{context}[:backup_creation_date_time]")
        Hearth::Validator.validate!(input[:backup_expiry_date_time], ::Time, context: "#{context}[:backup_expiry_date_time]")
        Hearth::Validator.validate!(input[:backup_status], ::String, context: "#{context}[:backup_status]")
        Hearth::Validator.validate!(input[:backup_type], ::String, context: "#{context}[:backup_type]")
        Hearth::Validator.validate!(input[:backup_size_bytes], ::Integer, context: "#{context}[:backup_size_bytes]")
      end
    end

    class BatchExecuteStatementInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchExecuteStatementInput, context: context)
        PartiQLBatchRequest.validate!(input[:statements], context: "#{context}[:statements]") unless input[:statements].nil?
        Hearth::Validator.validate!(input[:return_consumed_capacity], ::String, context: "#{context}[:return_consumed_capacity]")
      end
    end

    class BatchExecuteStatementOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchExecuteStatementOutput, context: context)
        PartiQLBatchResponse.validate!(input[:responses], context: "#{context}[:responses]") unless input[:responses].nil?
        ConsumedCapacityMultiple.validate!(input[:consumed_capacity], context: "#{context}[:consumed_capacity]") unless input[:consumed_capacity].nil?
      end
    end

    class BatchGetItemInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetItemInput, context: context)
        BatchGetRequestMap.validate!(input[:request_items], context: "#{context}[:request_items]") unless input[:request_items].nil?
        Hearth::Validator.validate!(input[:return_consumed_capacity], ::String, context: "#{context}[:return_consumed_capacity]")
      end
    end

    class BatchGetItemOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetItemOutput, context: context)
        BatchGetResponseMap.validate!(input[:responses], context: "#{context}[:responses]") unless input[:responses].nil?
        BatchGetRequestMap.validate!(input[:unprocessed_keys], context: "#{context}[:unprocessed_keys]") unless input[:unprocessed_keys].nil?
        ConsumedCapacityMultiple.validate!(input[:consumed_capacity], context: "#{context}[:consumed_capacity]") unless input[:consumed_capacity].nil?
      end
    end

    class BatchGetRequestMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          KeysAndAttributes.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class BatchGetResponseMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          ItemList.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class BatchStatementError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchStatementError, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class BatchStatementRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchStatementRequest, context: context)
        Hearth::Validator.validate!(input[:statement], ::String, context: "#{context}[:statement]")
        PreparedStatementParameters.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        Hearth::Validator.validate!(input[:consistent_read], ::TrueClass, ::FalseClass, context: "#{context}[:consistent_read]")
      end
    end

    class BatchStatementResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchStatementResponse, context: context)
        BatchStatementError.validate!(input[:error], context: "#{context}[:error]") unless input[:error].nil?
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        AttributeMap.validate!(input[:item], context: "#{context}[:item]") unless input[:item].nil?
      end
    end

    class BatchWriteItemInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchWriteItemInput, context: context)
        BatchWriteItemRequestMap.validate!(input[:request_items], context: "#{context}[:request_items]") unless input[:request_items].nil?
        Hearth::Validator.validate!(input[:return_consumed_capacity], ::String, context: "#{context}[:return_consumed_capacity]")
        Hearth::Validator.validate!(input[:return_item_collection_metrics], ::String, context: "#{context}[:return_item_collection_metrics]")
      end
    end

    class BatchWriteItemOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchWriteItemOutput, context: context)
        BatchWriteItemRequestMap.validate!(input[:unprocessed_items], context: "#{context}[:unprocessed_items]") unless input[:unprocessed_items].nil?
        ItemCollectionMetricsPerTable.validate!(input[:item_collection_metrics], context: "#{context}[:item_collection_metrics]") unless input[:item_collection_metrics].nil?
        ConsumedCapacityMultiple.validate!(input[:consumed_capacity], context: "#{context}[:consumed_capacity]") unless input[:consumed_capacity].nil?
      end
    end

    class BatchWriteItemRequestMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          WriteRequests.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class BillingModeSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BillingModeSummary, context: context)
        Hearth::Validator.validate!(input[:billing_mode], ::String, context: "#{context}[:billing_mode]")
        Hearth::Validator.validate!(input[:last_update_to_pay_per_request_date_time], ::Time, context: "#{context}[:last_update_to_pay_per_request_date_time]")
      end
    end

    class BinarySetAttributeValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CancellationReason
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancellationReason, context: context)
        AttributeMap.validate!(input[:item], context: "#{context}[:item]") unless input[:item].nil?
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CancellationReasonList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CancellationReason.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Capacity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Capacity, context: context)
        Hearth::Validator.validate!(input[:read_capacity_units], ::Float, context: "#{context}[:read_capacity_units]")
        Hearth::Validator.validate!(input[:write_capacity_units], ::Float, context: "#{context}[:write_capacity_units]")
        Hearth::Validator.validate!(input[:capacity_units], ::Float, context: "#{context}[:capacity_units]")
      end
    end

    class Condition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Condition, context: context)
        AttributeValueList.validate!(input[:attribute_value_list], context: "#{context}[:attribute_value_list]") unless input[:attribute_value_list].nil?
        Hearth::Validator.validate!(input[:comparison_operator], ::String, context: "#{context}[:comparison_operator]")
      end
    end

    class ConditionCheck
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConditionCheck, context: context)
        Key.validate!(input[:key], context: "#{context}[:key]") unless input[:key].nil?
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:condition_expression], ::String, context: "#{context}[:condition_expression]")
        ExpressionAttributeNameMap.validate!(input[:expression_attribute_names], context: "#{context}[:expression_attribute_names]") unless input[:expression_attribute_names].nil?
        ExpressionAttributeValueMap.validate!(input[:expression_attribute_values], context: "#{context}[:expression_attribute_values]") unless input[:expression_attribute_values].nil?
        Hearth::Validator.validate!(input[:return_values_on_condition_check_failure], ::String, context: "#{context}[:return_values_on_condition_check_failure]")
      end
    end

    class ConditionalCheckFailedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConditionalCheckFailedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ConsumedCapacity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConsumedCapacity, context: context)
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:capacity_units], ::Float, context: "#{context}[:capacity_units]")
        Hearth::Validator.validate!(input[:read_capacity_units], ::Float, context: "#{context}[:read_capacity_units]")
        Hearth::Validator.validate!(input[:write_capacity_units], ::Float, context: "#{context}[:write_capacity_units]")
        Capacity.validate!(input[:table], context: "#{context}[:table]") unless input[:table].nil?
        SecondaryIndexesCapacityMap.validate!(input[:local_secondary_indexes], context: "#{context}[:local_secondary_indexes]") unless input[:local_secondary_indexes].nil?
        SecondaryIndexesCapacityMap.validate!(input[:global_secondary_indexes], context: "#{context}[:global_secondary_indexes]") unless input[:global_secondary_indexes].nil?
      end
    end

    class ConsumedCapacityMultiple
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ConsumedCapacity.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ContinuousBackupsDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContinuousBackupsDescription, context: context)
        Hearth::Validator.validate!(input[:continuous_backups_status], ::String, context: "#{context}[:continuous_backups_status]")
        PointInTimeRecoveryDescription.validate!(input[:point_in_time_recovery_description], context: "#{context}[:point_in_time_recovery_description]") unless input[:point_in_time_recovery_description].nil?
      end
    end

    class ContinuousBackupsUnavailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContinuousBackupsUnavailableException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ContributorInsightsRuleList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ContributorInsightsSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ContributorInsightsSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ContributorInsightsSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContributorInsightsSummary, context: context)
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        Hearth::Validator.validate!(input[:contributor_insights_status], ::String, context: "#{context}[:contributor_insights_status]")
      end
    end

    class CreateBackupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBackupInput, context: context)
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:backup_name], ::String, context: "#{context}[:backup_name]")
      end
    end

    class CreateBackupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBackupOutput, context: context)
        BackupDetails.validate!(input[:backup_details], context: "#{context}[:backup_details]") unless input[:backup_details].nil?
      end
    end

    class CreateGlobalSecondaryIndexAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGlobalSecondaryIndexAction, context: context)
        Hearth::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        KeySchema.validate!(input[:key_schema], context: "#{context}[:key_schema]") unless input[:key_schema].nil?
        Projection.validate!(input[:projection], context: "#{context}[:projection]") unless input[:projection].nil?
        ProvisionedThroughput.validate!(input[:provisioned_throughput], context: "#{context}[:provisioned_throughput]") unless input[:provisioned_throughput].nil?
      end
    end

    class CreateGlobalTableInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGlobalTableInput, context: context)
        Hearth::Validator.validate!(input[:global_table_name], ::String, context: "#{context}[:global_table_name]")
        ReplicaList.validate!(input[:replication_group], context: "#{context}[:replication_group]") unless input[:replication_group].nil?
      end
    end

    class CreateGlobalTableOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGlobalTableOutput, context: context)
        GlobalTableDescription.validate!(input[:global_table_description], context: "#{context}[:global_table_description]") unless input[:global_table_description].nil?
      end
    end

    class CreateReplicaAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateReplicaAction, context: context)
        Hearth::Validator.validate!(input[:region_name], ::String, context: "#{context}[:region_name]")
      end
    end

    class CreateReplicationGroupMemberAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateReplicationGroupMemberAction, context: context)
        Hearth::Validator.validate!(input[:region_name], ::String, context: "#{context}[:region_name]")
        Hearth::Validator.validate!(input[:kms_master_key_id], ::String, context: "#{context}[:kms_master_key_id]")
        ProvisionedThroughputOverride.validate!(input[:provisioned_throughput_override], context: "#{context}[:provisioned_throughput_override]") unless input[:provisioned_throughput_override].nil?
        ReplicaGlobalSecondaryIndexList.validate!(input[:global_secondary_indexes], context: "#{context}[:global_secondary_indexes]") unless input[:global_secondary_indexes].nil?
        Hearth::Validator.validate!(input[:table_class_override], ::String, context: "#{context}[:table_class_override]")
      end
    end

    class CreateTableInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTableInput, context: context)
        AttributeDefinitions.validate!(input[:attribute_definitions], context: "#{context}[:attribute_definitions]") unless input[:attribute_definitions].nil?
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        KeySchema.validate!(input[:key_schema], context: "#{context}[:key_schema]") unless input[:key_schema].nil?
        LocalSecondaryIndexList.validate!(input[:local_secondary_indexes], context: "#{context}[:local_secondary_indexes]") unless input[:local_secondary_indexes].nil?
        GlobalSecondaryIndexList.validate!(input[:global_secondary_indexes], context: "#{context}[:global_secondary_indexes]") unless input[:global_secondary_indexes].nil?
        Hearth::Validator.validate!(input[:billing_mode], ::String, context: "#{context}[:billing_mode]")
        ProvisionedThroughput.validate!(input[:provisioned_throughput], context: "#{context}[:provisioned_throughput]") unless input[:provisioned_throughput].nil?
        StreamSpecification.validate!(input[:stream_specification], context: "#{context}[:stream_specification]") unless input[:stream_specification].nil?
        SSESpecification.validate!(input[:sse_specification], context: "#{context}[:sse_specification]") unless input[:sse_specification].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:table_class], ::String, context: "#{context}[:table_class]")
      end
    end

    class CreateTableOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTableOutput, context: context)
        TableDescription.validate!(input[:table_description], context: "#{context}[:table_description]") unless input[:table_description].nil?
      end
    end

    class Delete
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Delete, context: context)
        Key.validate!(input[:key], context: "#{context}[:key]") unless input[:key].nil?
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:condition_expression], ::String, context: "#{context}[:condition_expression]")
        ExpressionAttributeNameMap.validate!(input[:expression_attribute_names], context: "#{context}[:expression_attribute_names]") unless input[:expression_attribute_names].nil?
        ExpressionAttributeValueMap.validate!(input[:expression_attribute_values], context: "#{context}[:expression_attribute_values]") unless input[:expression_attribute_values].nil?
        Hearth::Validator.validate!(input[:return_values_on_condition_check_failure], ::String, context: "#{context}[:return_values_on_condition_check_failure]")
      end
    end

    class DeleteBackupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBackupInput, context: context)
        Hearth::Validator.validate!(input[:backup_arn], ::String, context: "#{context}[:backup_arn]")
      end
    end

    class DeleteBackupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBackupOutput, context: context)
        BackupDescription.validate!(input[:backup_description], context: "#{context}[:backup_description]") unless input[:backup_description].nil?
      end
    end

    class DeleteGlobalSecondaryIndexAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteGlobalSecondaryIndexAction, context: context)
        Hearth::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
      end
    end

    class DeleteItemInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteItemInput, context: context)
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Key.validate!(input[:key], context: "#{context}[:key]") unless input[:key].nil?
        ExpectedAttributeMap.validate!(input[:expected], context: "#{context}[:expected]") unless input[:expected].nil?
        Hearth::Validator.validate!(input[:conditional_operator], ::String, context: "#{context}[:conditional_operator]")
        Hearth::Validator.validate!(input[:return_values], ::String, context: "#{context}[:return_values]")
        Hearth::Validator.validate!(input[:return_consumed_capacity], ::String, context: "#{context}[:return_consumed_capacity]")
        Hearth::Validator.validate!(input[:return_item_collection_metrics], ::String, context: "#{context}[:return_item_collection_metrics]")
        Hearth::Validator.validate!(input[:condition_expression], ::String, context: "#{context}[:condition_expression]")
        ExpressionAttributeNameMap.validate!(input[:expression_attribute_names], context: "#{context}[:expression_attribute_names]") unless input[:expression_attribute_names].nil?
        ExpressionAttributeValueMap.validate!(input[:expression_attribute_values], context: "#{context}[:expression_attribute_values]") unless input[:expression_attribute_values].nil?
      end
    end

    class DeleteItemOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteItemOutput, context: context)
        AttributeMap.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        ConsumedCapacity.validate!(input[:consumed_capacity], context: "#{context}[:consumed_capacity]") unless input[:consumed_capacity].nil?
        ItemCollectionMetrics.validate!(input[:item_collection_metrics], context: "#{context}[:item_collection_metrics]") unless input[:item_collection_metrics].nil?
      end
    end

    class DeleteReplicaAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteReplicaAction, context: context)
        Hearth::Validator.validate!(input[:region_name], ::String, context: "#{context}[:region_name]")
      end
    end

    class DeleteReplicationGroupMemberAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteReplicationGroupMemberAction, context: context)
        Hearth::Validator.validate!(input[:region_name], ::String, context: "#{context}[:region_name]")
      end
    end

    class DeleteRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRequest, context: context)
        Key.validate!(input[:key], context: "#{context}[:key]") unless input[:key].nil?
      end
    end

    class DeleteTableInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTableInput, context: context)
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
      end
    end

    class DeleteTableOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTableOutput, context: context)
        TableDescription.validate!(input[:table_description], context: "#{context}[:table_description]") unless input[:table_description].nil?
      end
    end

    class DescribeBackupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBackupInput, context: context)
        Hearth::Validator.validate!(input[:backup_arn], ::String, context: "#{context}[:backup_arn]")
      end
    end

    class DescribeBackupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBackupOutput, context: context)
        BackupDescription.validate!(input[:backup_description], context: "#{context}[:backup_description]") unless input[:backup_description].nil?
      end
    end

    class DescribeContinuousBackupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeContinuousBackupsInput, context: context)
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
      end
    end

    class DescribeContinuousBackupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeContinuousBackupsOutput, context: context)
        ContinuousBackupsDescription.validate!(input[:continuous_backups_description], context: "#{context}[:continuous_backups_description]") unless input[:continuous_backups_description].nil?
      end
    end

    class DescribeContributorInsightsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeContributorInsightsInput, context: context)
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
      end
    end

    class DescribeContributorInsightsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeContributorInsightsOutput, context: context)
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        ContributorInsightsRuleList.validate!(input[:contributor_insights_rule_list], context: "#{context}[:contributor_insights_rule_list]") unless input[:contributor_insights_rule_list].nil?
        Hearth::Validator.validate!(input[:contributor_insights_status], ::String, context: "#{context}[:contributor_insights_status]")
        Hearth::Validator.validate!(input[:last_update_date_time], ::Time, context: "#{context}[:last_update_date_time]")
        FailureException.validate!(input[:failure_exception], context: "#{context}[:failure_exception]") unless input[:failure_exception].nil?
      end
    end

    class DescribeEndpointsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEndpointsInput, context: context)
      end
    end

    class DescribeEndpointsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEndpointsOutput, context: context)
        Endpoints.validate!(input[:endpoints], context: "#{context}[:endpoints]") unless input[:endpoints].nil?
      end
    end

    class DescribeExportInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeExportInput, context: context)
        Hearth::Validator.validate!(input[:export_arn], ::String, context: "#{context}[:export_arn]")
      end
    end

    class DescribeExportOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeExportOutput, context: context)
        ExportDescription.validate!(input[:export_description], context: "#{context}[:export_description]") unless input[:export_description].nil?
      end
    end

    class DescribeGlobalTableInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeGlobalTableInput, context: context)
        Hearth::Validator.validate!(input[:global_table_name], ::String, context: "#{context}[:global_table_name]")
      end
    end

    class DescribeGlobalTableOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeGlobalTableOutput, context: context)
        GlobalTableDescription.validate!(input[:global_table_description], context: "#{context}[:global_table_description]") unless input[:global_table_description].nil?
      end
    end

    class DescribeGlobalTableSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeGlobalTableSettingsInput, context: context)
        Hearth::Validator.validate!(input[:global_table_name], ::String, context: "#{context}[:global_table_name]")
      end
    end

    class DescribeGlobalTableSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeGlobalTableSettingsOutput, context: context)
        Hearth::Validator.validate!(input[:global_table_name], ::String, context: "#{context}[:global_table_name]")
        ReplicaSettingsDescriptionList.validate!(input[:replica_settings], context: "#{context}[:replica_settings]") unless input[:replica_settings].nil?
      end
    end

    class DescribeKinesisStreamingDestinationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeKinesisStreamingDestinationInput, context: context)
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
      end
    end

    class DescribeKinesisStreamingDestinationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeKinesisStreamingDestinationOutput, context: context)
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        KinesisDataStreamDestinations.validate!(input[:kinesis_data_stream_destinations], context: "#{context}[:kinesis_data_stream_destinations]") unless input[:kinesis_data_stream_destinations].nil?
      end
    end

    class DescribeLimitsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLimitsInput, context: context)
      end
    end

    class DescribeLimitsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLimitsOutput, context: context)
        Hearth::Validator.validate!(input[:account_max_read_capacity_units], ::Integer, context: "#{context}[:account_max_read_capacity_units]")
        Hearth::Validator.validate!(input[:account_max_write_capacity_units], ::Integer, context: "#{context}[:account_max_write_capacity_units]")
        Hearth::Validator.validate!(input[:table_max_read_capacity_units], ::Integer, context: "#{context}[:table_max_read_capacity_units]")
        Hearth::Validator.validate!(input[:table_max_write_capacity_units], ::Integer, context: "#{context}[:table_max_write_capacity_units]")
      end
    end

    class DescribeTableInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTableInput, context: context)
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
      end
    end

    class DescribeTableOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTableOutput, context: context)
        TableDescription.validate!(input[:table], context: "#{context}[:table]") unless input[:table].nil?
      end
    end

    class DescribeTableReplicaAutoScalingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTableReplicaAutoScalingInput, context: context)
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
      end
    end

    class DescribeTableReplicaAutoScalingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTableReplicaAutoScalingOutput, context: context)
        TableAutoScalingDescription.validate!(input[:table_auto_scaling_description], context: "#{context}[:table_auto_scaling_description]") unless input[:table_auto_scaling_description].nil?
      end
    end

    class DescribeTimeToLiveInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTimeToLiveInput, context: context)
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
      end
    end

    class DescribeTimeToLiveOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTimeToLiveOutput, context: context)
        TimeToLiveDescription.validate!(input[:time_to_live_description], context: "#{context}[:time_to_live_description]") unless input[:time_to_live_description].nil?
      end
    end

    class DisableKinesisStreamingDestinationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableKinesisStreamingDestinationInput, context: context)
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:stream_arn], ::String, context: "#{context}[:stream_arn]")
      end
    end

    class DisableKinesisStreamingDestinationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableKinesisStreamingDestinationOutput, context: context)
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:stream_arn], ::String, context: "#{context}[:stream_arn]")
        Hearth::Validator.validate!(input[:destination_status], ::String, context: "#{context}[:destination_status]")
      end
    end

    class DuplicateItemException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DuplicateItemException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EnableKinesisStreamingDestinationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableKinesisStreamingDestinationInput, context: context)
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:stream_arn], ::String, context: "#{context}[:stream_arn]")
      end
    end

    class EnableKinesisStreamingDestinationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableKinesisStreamingDestinationOutput, context: context)
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:stream_arn], ::String, context: "#{context}[:stream_arn]")
        Hearth::Validator.validate!(input[:destination_status], ::String, context: "#{context}[:destination_status]")
      end
    end

    class Endpoint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Endpoint, context: context)
        Hearth::Validator.validate!(input[:address], ::String, context: "#{context}[:address]")
        Hearth::Validator.validate!(input[:cache_period_in_minutes], ::Integer, context: "#{context}[:cache_period_in_minutes]")
      end
    end

    class Endpoints
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Endpoint.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ExecuteStatementInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExecuteStatementInput, context: context)
        Hearth::Validator.validate!(input[:statement], ::String, context: "#{context}[:statement]")
        PreparedStatementParameters.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        Hearth::Validator.validate!(input[:consistent_read], ::TrueClass, ::FalseClass, context: "#{context}[:consistent_read]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:return_consumed_capacity], ::String, context: "#{context}[:return_consumed_capacity]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class ExecuteStatementOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExecuteStatementOutput, context: context)
        ItemList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        ConsumedCapacity.validate!(input[:consumed_capacity], context: "#{context}[:consumed_capacity]") unless input[:consumed_capacity].nil?
        Key.validate!(input[:last_evaluated_key], context: "#{context}[:last_evaluated_key]") unless input[:last_evaluated_key].nil?
      end
    end

    class ExecuteTransactionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExecuteTransactionInput, context: context)
        ParameterizedStatements.validate!(input[:transact_statements], context: "#{context}[:transact_statements]") unless input[:transact_statements].nil?
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:return_consumed_capacity], ::String, context: "#{context}[:return_consumed_capacity]")
      end
    end

    class ExecuteTransactionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExecuteTransactionOutput, context: context)
        ItemResponseList.validate!(input[:responses], context: "#{context}[:responses]") unless input[:responses].nil?
        ConsumedCapacityMultiple.validate!(input[:consumed_capacity], context: "#{context}[:consumed_capacity]") unless input[:consumed_capacity].nil?
      end
    end

    class ExpectedAttributeMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          ExpectedAttributeValue.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class ExpectedAttributeValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExpectedAttributeValue, context: context)
        AttributeValue.validate!(input[:value], context: "#{context}[:value]") unless input[:value].nil?
        Hearth::Validator.validate!(input[:exists], ::TrueClass, ::FalseClass, context: "#{context}[:exists]")
        Hearth::Validator.validate!(input[:comparison_operator], ::String, context: "#{context}[:comparison_operator]")
        AttributeValueList.validate!(input[:attribute_value_list], context: "#{context}[:attribute_value_list]") unless input[:attribute_value_list].nil?
      end
    end

    class ExportConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ExportDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportDescription, context: context)
        Hearth::Validator.validate!(input[:export_arn], ::String, context: "#{context}[:export_arn]")
        Hearth::Validator.validate!(input[:export_status], ::String, context: "#{context}[:export_status]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:export_manifest], ::String, context: "#{context}[:export_manifest]")
        Hearth::Validator.validate!(input[:table_arn], ::String, context: "#{context}[:table_arn]")
        Hearth::Validator.validate!(input[:table_id], ::String, context: "#{context}[:table_id]")
        Hearth::Validator.validate!(input[:export_time], ::Time, context: "#{context}[:export_time]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:s3_bucket], ::String, context: "#{context}[:s3_bucket]")
        Hearth::Validator.validate!(input[:s3_bucket_owner], ::String, context: "#{context}[:s3_bucket_owner]")
        Hearth::Validator.validate!(input[:s3_prefix], ::String, context: "#{context}[:s3_prefix]")
        Hearth::Validator.validate!(input[:s3_sse_algorithm], ::String, context: "#{context}[:s3_sse_algorithm]")
        Hearth::Validator.validate!(input[:s3_sse_kms_key_id], ::String, context: "#{context}[:s3_sse_kms_key_id]")
        Hearth::Validator.validate!(input[:failure_code], ::String, context: "#{context}[:failure_code]")
        Hearth::Validator.validate!(input[:failure_message], ::String, context: "#{context}[:failure_message]")
        Hearth::Validator.validate!(input[:export_format], ::String, context: "#{context}[:export_format]")
        Hearth::Validator.validate!(input[:billed_size_bytes], ::Integer, context: "#{context}[:billed_size_bytes]")
        Hearth::Validator.validate!(input[:item_count], ::Integer, context: "#{context}[:item_count]")
      end
    end

    class ExportNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ExportSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ExportSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ExportSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportSummary, context: context)
        Hearth::Validator.validate!(input[:export_arn], ::String, context: "#{context}[:export_arn]")
        Hearth::Validator.validate!(input[:export_status], ::String, context: "#{context}[:export_status]")
      end
    end

    class ExportTableToPointInTimeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportTableToPointInTimeInput, context: context)
        Hearth::Validator.validate!(input[:table_arn], ::String, context: "#{context}[:table_arn]")
        Hearth::Validator.validate!(input[:export_time], ::Time, context: "#{context}[:export_time]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:s3_bucket], ::String, context: "#{context}[:s3_bucket]")
        Hearth::Validator.validate!(input[:s3_bucket_owner], ::String, context: "#{context}[:s3_bucket_owner]")
        Hearth::Validator.validate!(input[:s3_prefix], ::String, context: "#{context}[:s3_prefix]")
        Hearth::Validator.validate!(input[:s3_sse_algorithm], ::String, context: "#{context}[:s3_sse_algorithm]")
        Hearth::Validator.validate!(input[:s3_sse_kms_key_id], ::String, context: "#{context}[:s3_sse_kms_key_id]")
        Hearth::Validator.validate!(input[:export_format], ::String, context: "#{context}[:export_format]")
      end
    end

    class ExportTableToPointInTimeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportTableToPointInTimeOutput, context: context)
        ExportDescription.validate!(input[:export_description], context: "#{context}[:export_description]") unless input[:export_description].nil?
      end
    end

    class ExpressionAttributeNameMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class ExpressionAttributeValueMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          AttributeValue.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class FailureException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FailureException, context: context)
        Hearth::Validator.validate!(input[:exception_name], ::String, context: "#{context}[:exception_name]")
        Hearth::Validator.validate!(input[:exception_description], ::String, context: "#{context}[:exception_description]")
      end
    end

    class FilterConditionMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Condition.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class Get
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Get, context: context)
        Key.validate!(input[:key], context: "#{context}[:key]") unless input[:key].nil?
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:projection_expression], ::String, context: "#{context}[:projection_expression]")
        ExpressionAttributeNameMap.validate!(input[:expression_attribute_names], context: "#{context}[:expression_attribute_names]") unless input[:expression_attribute_names].nil?
      end
    end

    class GetItemInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetItemInput, context: context)
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Key.validate!(input[:key], context: "#{context}[:key]") unless input[:key].nil?
        AttributeNameList.validate!(input[:attributes_to_get], context: "#{context}[:attributes_to_get]") unless input[:attributes_to_get].nil?
        Hearth::Validator.validate!(input[:consistent_read], ::TrueClass, ::FalseClass, context: "#{context}[:consistent_read]")
        Hearth::Validator.validate!(input[:return_consumed_capacity], ::String, context: "#{context}[:return_consumed_capacity]")
        Hearth::Validator.validate!(input[:projection_expression], ::String, context: "#{context}[:projection_expression]")
        ExpressionAttributeNameMap.validate!(input[:expression_attribute_names], context: "#{context}[:expression_attribute_names]") unless input[:expression_attribute_names].nil?
      end
    end

    class GetItemOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetItemOutput, context: context)
        AttributeMap.validate!(input[:item], context: "#{context}[:item]") unless input[:item].nil?
        ConsumedCapacity.validate!(input[:consumed_capacity], context: "#{context}[:consumed_capacity]") unless input[:consumed_capacity].nil?
      end
    end

    class GlobalSecondaryIndex
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GlobalSecondaryIndex, context: context)
        Hearth::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        KeySchema.validate!(input[:key_schema], context: "#{context}[:key_schema]") unless input[:key_schema].nil?
        Projection.validate!(input[:projection], context: "#{context}[:projection]") unless input[:projection].nil?
        ProvisionedThroughput.validate!(input[:provisioned_throughput], context: "#{context}[:provisioned_throughput]") unless input[:provisioned_throughput].nil?
      end
    end

    class GlobalSecondaryIndexAutoScalingUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GlobalSecondaryIndexAutoScalingUpdate, context: context)
        Hearth::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        AutoScalingSettingsUpdate.validate!(input[:provisioned_write_capacity_auto_scaling_update], context: "#{context}[:provisioned_write_capacity_auto_scaling_update]") unless input[:provisioned_write_capacity_auto_scaling_update].nil?
      end
    end

    class GlobalSecondaryIndexAutoScalingUpdateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          GlobalSecondaryIndexAutoScalingUpdate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GlobalSecondaryIndexDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GlobalSecondaryIndexDescription, context: context)
        Hearth::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        KeySchema.validate!(input[:key_schema], context: "#{context}[:key_schema]") unless input[:key_schema].nil?
        Projection.validate!(input[:projection], context: "#{context}[:projection]") unless input[:projection].nil?
        Hearth::Validator.validate!(input[:index_status], ::String, context: "#{context}[:index_status]")
        Hearth::Validator.validate!(input[:backfilling], ::TrueClass, ::FalseClass, context: "#{context}[:backfilling]")
        ProvisionedThroughputDescription.validate!(input[:provisioned_throughput], context: "#{context}[:provisioned_throughput]") unless input[:provisioned_throughput].nil?
        Hearth::Validator.validate!(input[:index_size_bytes], ::Integer, context: "#{context}[:index_size_bytes]")
        Hearth::Validator.validate!(input[:item_count], ::Integer, context: "#{context}[:item_count]")
        Hearth::Validator.validate!(input[:index_arn], ::String, context: "#{context}[:index_arn]")
      end
    end

    class GlobalSecondaryIndexDescriptionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          GlobalSecondaryIndexDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GlobalSecondaryIndexInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GlobalSecondaryIndexInfo, context: context)
        Hearth::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        KeySchema.validate!(input[:key_schema], context: "#{context}[:key_schema]") unless input[:key_schema].nil?
        Projection.validate!(input[:projection], context: "#{context}[:projection]") unless input[:projection].nil?
        ProvisionedThroughput.validate!(input[:provisioned_throughput], context: "#{context}[:provisioned_throughput]") unless input[:provisioned_throughput].nil?
      end
    end

    class GlobalSecondaryIndexList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          GlobalSecondaryIndex.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GlobalSecondaryIndexUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GlobalSecondaryIndexUpdate, context: context)
        UpdateGlobalSecondaryIndexAction.validate!(input[:update], context: "#{context}[:update]") unless input[:update].nil?
        CreateGlobalSecondaryIndexAction.validate!(input[:create], context: "#{context}[:create]") unless input[:create].nil?
        DeleteGlobalSecondaryIndexAction.validate!(input[:delete], context: "#{context}[:delete]") unless input[:delete].nil?
      end
    end

    class GlobalSecondaryIndexUpdateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          GlobalSecondaryIndexUpdate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GlobalSecondaryIndexes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          GlobalSecondaryIndexInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GlobalTable
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GlobalTable, context: context)
        Hearth::Validator.validate!(input[:global_table_name], ::String, context: "#{context}[:global_table_name]")
        ReplicaList.validate!(input[:replication_group], context: "#{context}[:replication_group]") unless input[:replication_group].nil?
      end
    end

    class GlobalTableAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GlobalTableAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class GlobalTableDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GlobalTableDescription, context: context)
        ReplicaDescriptionList.validate!(input[:replication_group], context: "#{context}[:replication_group]") unless input[:replication_group].nil?
        Hearth::Validator.validate!(input[:global_table_arn], ::String, context: "#{context}[:global_table_arn]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:global_table_status], ::String, context: "#{context}[:global_table_status]")
        Hearth::Validator.validate!(input[:global_table_name], ::String, context: "#{context}[:global_table_name]")
      end
    end

    class GlobalTableGlobalSecondaryIndexSettingsUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GlobalTableGlobalSecondaryIndexSettingsUpdate, context: context)
        Hearth::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        Hearth::Validator.validate!(input[:provisioned_write_capacity_units], ::Integer, context: "#{context}[:provisioned_write_capacity_units]")
        AutoScalingSettingsUpdate.validate!(input[:provisioned_write_capacity_auto_scaling_settings_update], context: "#{context}[:provisioned_write_capacity_auto_scaling_settings_update]") unless input[:provisioned_write_capacity_auto_scaling_settings_update].nil?
      end
    end

    class GlobalTableGlobalSecondaryIndexSettingsUpdateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          GlobalTableGlobalSecondaryIndexSettingsUpdate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GlobalTableList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          GlobalTable.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GlobalTableNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GlobalTableNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class IdempotentParameterMismatchException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IdempotentParameterMismatchException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class IndexNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IndexNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InternalServerError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerError, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidEndpointException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidEndpointException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidExportTimeException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidExportTimeException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRestoreTimeException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRestoreTimeException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ItemCollectionKeyAttributeMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          AttributeValue.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class ItemCollectionMetrics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ItemCollectionMetrics, context: context)
        ItemCollectionKeyAttributeMap.validate!(input[:item_collection_key], context: "#{context}[:item_collection_key]") unless input[:item_collection_key].nil?
        ItemCollectionSizeEstimateRange.validate!(input[:size_estimate_range_gb], context: "#{context}[:size_estimate_range_gb]") unless input[:size_estimate_range_gb].nil?
      end
    end

    class ItemCollectionMetricsMultiple
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ItemCollectionMetrics.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ItemCollectionMetricsPerTable
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          ItemCollectionMetricsMultiple.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class ItemCollectionSizeEstimateRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::Float, context: "#{context}[#{index}]")
        end
      end
    end

    class ItemCollectionSizeLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ItemCollectionSizeLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ItemList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AttributeMap.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ItemResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ItemResponse, context: context)
        AttributeMap.validate!(input[:item], context: "#{context}[:item]") unless input[:item].nil?
      end
    end

    class ItemResponseList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ItemResponse.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Key
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          AttributeValue.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class KeyConditions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Condition.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class KeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Key.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class KeySchema
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          KeySchemaElement.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class KeySchemaElement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KeySchemaElement, context: context)
        Hearth::Validator.validate!(input[:attribute_name], ::String, context: "#{context}[:attribute_name]")
        Hearth::Validator.validate!(input[:key_type], ::String, context: "#{context}[:key_type]")
      end
    end

    class KeysAndAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KeysAndAttributes, context: context)
        KeyList.validate!(input[:keys], context: "#{context}[:keys]") unless input[:keys].nil?
        AttributeNameList.validate!(input[:attributes_to_get], context: "#{context}[:attributes_to_get]") unless input[:attributes_to_get].nil?
        Hearth::Validator.validate!(input[:consistent_read], ::TrueClass, ::FalseClass, context: "#{context}[:consistent_read]")
        Hearth::Validator.validate!(input[:projection_expression], ::String, context: "#{context}[:projection_expression]")
        ExpressionAttributeNameMap.validate!(input[:expression_attribute_names], context: "#{context}[:expression_attribute_names]") unless input[:expression_attribute_names].nil?
      end
    end

    class KinesisDataStreamDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KinesisDataStreamDestination, context: context)
        Hearth::Validator.validate!(input[:stream_arn], ::String, context: "#{context}[:stream_arn]")
        Hearth::Validator.validate!(input[:destination_status], ::String, context: "#{context}[:destination_status]")
        Hearth::Validator.validate!(input[:destination_status_description], ::String, context: "#{context}[:destination_status_description]")
      end
    end

    class KinesisDataStreamDestinations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          KinesisDataStreamDestination.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListAttributeValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AttributeValue.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListBackupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBackupsInput, context: context)
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:time_range_lower_bound], ::Time, context: "#{context}[:time_range_lower_bound]")
        Hearth::Validator.validate!(input[:time_range_upper_bound], ::Time, context: "#{context}[:time_range_upper_bound]")
        Hearth::Validator.validate!(input[:exclusive_start_backup_arn], ::String, context: "#{context}[:exclusive_start_backup_arn]")
        Hearth::Validator.validate!(input[:backup_type], ::String, context: "#{context}[:backup_type]")
      end
    end

    class ListBackupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBackupsOutput, context: context)
        BackupSummaries.validate!(input[:backup_summaries], context: "#{context}[:backup_summaries]") unless input[:backup_summaries].nil?
        Hearth::Validator.validate!(input[:last_evaluated_backup_arn], ::String, context: "#{context}[:last_evaluated_backup_arn]")
      end
    end

    class ListContributorInsightsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListContributorInsightsInput, context: context)
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListContributorInsightsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListContributorInsightsOutput, context: context)
        ContributorInsightsSummaries.validate!(input[:contributor_insights_summaries], context: "#{context}[:contributor_insights_summaries]") unless input[:contributor_insights_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListExportsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListExportsInput, context: context)
        Hearth::Validator.validate!(input[:table_arn], ::String, context: "#{context}[:table_arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListExportsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListExportsOutput, context: context)
        ExportSummaries.validate!(input[:export_summaries], context: "#{context}[:export_summaries]") unless input[:export_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListGlobalTablesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGlobalTablesInput, context: context)
        Hearth::Validator.validate!(input[:exclusive_start_global_table_name], ::String, context: "#{context}[:exclusive_start_global_table_name]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:region_name], ::String, context: "#{context}[:region_name]")
      end
    end

    class ListGlobalTablesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGlobalTablesOutput, context: context)
        GlobalTableList.validate!(input[:global_tables], context: "#{context}[:global_tables]") unless input[:global_tables].nil?
        Hearth::Validator.validate!(input[:last_evaluated_global_table_name], ::String, context: "#{context}[:last_evaluated_global_table_name]")
      end
    end

    class ListTablesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTablesInput, context: context)
        Hearth::Validator.validate!(input[:exclusive_start_table_name], ::String, context: "#{context}[:exclusive_start_table_name]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class ListTablesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTablesOutput, context: context)
        TableNameList.validate!(input[:table_names], context: "#{context}[:table_names]") unless input[:table_names].nil?
        Hearth::Validator.validate!(input[:last_evaluated_table_name], ::String, context: "#{context}[:last_evaluated_table_name]")
      end
    end

    class ListTagsOfResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsOfResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsOfResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsOfResourceOutput, context: context)
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class LocalSecondaryIndex
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LocalSecondaryIndex, context: context)
        Hearth::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        KeySchema.validate!(input[:key_schema], context: "#{context}[:key_schema]") unless input[:key_schema].nil?
        Projection.validate!(input[:projection], context: "#{context}[:projection]") unless input[:projection].nil?
      end
    end

    class LocalSecondaryIndexDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LocalSecondaryIndexDescription, context: context)
        Hearth::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        KeySchema.validate!(input[:key_schema], context: "#{context}[:key_schema]") unless input[:key_schema].nil?
        Projection.validate!(input[:projection], context: "#{context}[:projection]") unless input[:projection].nil?
        Hearth::Validator.validate!(input[:index_size_bytes], ::Integer, context: "#{context}[:index_size_bytes]")
        Hearth::Validator.validate!(input[:item_count], ::Integer, context: "#{context}[:item_count]")
        Hearth::Validator.validate!(input[:index_arn], ::String, context: "#{context}[:index_arn]")
      end
    end

    class LocalSecondaryIndexDescriptionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LocalSecondaryIndexDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LocalSecondaryIndexInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LocalSecondaryIndexInfo, context: context)
        Hearth::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        KeySchema.validate!(input[:key_schema], context: "#{context}[:key_schema]") unless input[:key_schema].nil?
        Projection.validate!(input[:projection], context: "#{context}[:projection]") unless input[:projection].nil?
      end
    end

    class LocalSecondaryIndexList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LocalSecondaryIndex.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LocalSecondaryIndexes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LocalSecondaryIndexInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MapAttributeValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          AttributeValue.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class NonKeyAttributeNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class NumberSetAttributeValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ParameterizedStatement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ParameterizedStatement, context: context)
        Hearth::Validator.validate!(input[:statement], ::String, context: "#{context}[:statement]")
        PreparedStatementParameters.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
      end
    end

    class ParameterizedStatements
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ParameterizedStatement.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PartiQLBatchRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BatchStatementRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PartiQLBatchResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BatchStatementResponse.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PointInTimeRecoveryDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PointInTimeRecoveryDescription, context: context)
        Hearth::Validator.validate!(input[:point_in_time_recovery_status], ::String, context: "#{context}[:point_in_time_recovery_status]")
        Hearth::Validator.validate!(input[:earliest_restorable_date_time], ::Time, context: "#{context}[:earliest_restorable_date_time]")
        Hearth::Validator.validate!(input[:latest_restorable_date_time], ::Time, context: "#{context}[:latest_restorable_date_time]")
      end
    end

    class PointInTimeRecoverySpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PointInTimeRecoverySpecification, context: context)
        Hearth::Validator.validate!(input[:point_in_time_recovery_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:point_in_time_recovery_enabled]")
      end
    end

    class PointInTimeRecoveryUnavailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PointInTimeRecoveryUnavailableException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PreparedStatementParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AttributeValue.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Projection
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Projection, context: context)
        Hearth::Validator.validate!(input[:projection_type], ::String, context: "#{context}[:projection_type]")
        NonKeyAttributeNameList.validate!(input[:non_key_attributes], context: "#{context}[:non_key_attributes]") unless input[:non_key_attributes].nil?
      end
    end

    class ProvisionedThroughput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProvisionedThroughput, context: context)
        Hearth::Validator.validate!(input[:read_capacity_units], ::Integer, context: "#{context}[:read_capacity_units]")
        Hearth::Validator.validate!(input[:write_capacity_units], ::Integer, context: "#{context}[:write_capacity_units]")
      end
    end

    class ProvisionedThroughputDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProvisionedThroughputDescription, context: context)
        Hearth::Validator.validate!(input[:last_increase_date_time], ::Time, context: "#{context}[:last_increase_date_time]")
        Hearth::Validator.validate!(input[:last_decrease_date_time], ::Time, context: "#{context}[:last_decrease_date_time]")
        Hearth::Validator.validate!(input[:number_of_decreases_today], ::Integer, context: "#{context}[:number_of_decreases_today]")
        Hearth::Validator.validate!(input[:read_capacity_units], ::Integer, context: "#{context}[:read_capacity_units]")
        Hearth::Validator.validate!(input[:write_capacity_units], ::Integer, context: "#{context}[:write_capacity_units]")
      end
    end

    class ProvisionedThroughputExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProvisionedThroughputExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ProvisionedThroughputOverride
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProvisionedThroughputOverride, context: context)
        Hearth::Validator.validate!(input[:read_capacity_units], ::Integer, context: "#{context}[:read_capacity_units]")
      end
    end

    class Put
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Put, context: context)
        PutItemInputAttributeMap.validate!(input[:item], context: "#{context}[:item]") unless input[:item].nil?
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:condition_expression], ::String, context: "#{context}[:condition_expression]")
        ExpressionAttributeNameMap.validate!(input[:expression_attribute_names], context: "#{context}[:expression_attribute_names]") unless input[:expression_attribute_names].nil?
        ExpressionAttributeValueMap.validate!(input[:expression_attribute_values], context: "#{context}[:expression_attribute_values]") unless input[:expression_attribute_values].nil?
        Hearth::Validator.validate!(input[:return_values_on_condition_check_failure], ::String, context: "#{context}[:return_values_on_condition_check_failure]")
      end
    end

    class PutItemInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutItemInput, context: context)
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        PutItemInputAttributeMap.validate!(input[:item], context: "#{context}[:item]") unless input[:item].nil?
        ExpectedAttributeMap.validate!(input[:expected], context: "#{context}[:expected]") unless input[:expected].nil?
        Hearth::Validator.validate!(input[:return_values], ::String, context: "#{context}[:return_values]")
        Hearth::Validator.validate!(input[:return_consumed_capacity], ::String, context: "#{context}[:return_consumed_capacity]")
        Hearth::Validator.validate!(input[:return_item_collection_metrics], ::String, context: "#{context}[:return_item_collection_metrics]")
        Hearth::Validator.validate!(input[:conditional_operator], ::String, context: "#{context}[:conditional_operator]")
        Hearth::Validator.validate!(input[:condition_expression], ::String, context: "#{context}[:condition_expression]")
        ExpressionAttributeNameMap.validate!(input[:expression_attribute_names], context: "#{context}[:expression_attribute_names]") unless input[:expression_attribute_names].nil?
        ExpressionAttributeValueMap.validate!(input[:expression_attribute_values], context: "#{context}[:expression_attribute_values]") unless input[:expression_attribute_values].nil?
      end
    end

    class PutItemInputAttributeMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          AttributeValue.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class PutItemOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutItemOutput, context: context)
        AttributeMap.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        ConsumedCapacity.validate!(input[:consumed_capacity], context: "#{context}[:consumed_capacity]") unless input[:consumed_capacity].nil?
        ItemCollectionMetrics.validate!(input[:item_collection_metrics], context: "#{context}[:item_collection_metrics]") unless input[:item_collection_metrics].nil?
      end
    end

    class PutRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutRequest, context: context)
        PutItemInputAttributeMap.validate!(input[:item], context: "#{context}[:item]") unless input[:item].nil?
      end
    end

    class QueryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QueryInput, context: context)
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        Hearth::Validator.validate!(input[:select], ::String, context: "#{context}[:select]")
        AttributeNameList.validate!(input[:attributes_to_get], context: "#{context}[:attributes_to_get]") unless input[:attributes_to_get].nil?
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:consistent_read], ::TrueClass, ::FalseClass, context: "#{context}[:consistent_read]")
        KeyConditions.validate!(input[:key_conditions], context: "#{context}[:key_conditions]") unless input[:key_conditions].nil?
        FilterConditionMap.validate!(input[:query_filter], context: "#{context}[:query_filter]") unless input[:query_filter].nil?
        Hearth::Validator.validate!(input[:conditional_operator], ::String, context: "#{context}[:conditional_operator]")
        Hearth::Validator.validate!(input[:scan_index_forward], ::TrueClass, ::FalseClass, context: "#{context}[:scan_index_forward]")
        Key.validate!(input[:exclusive_start_key], context: "#{context}[:exclusive_start_key]") unless input[:exclusive_start_key].nil?
        Hearth::Validator.validate!(input[:return_consumed_capacity], ::String, context: "#{context}[:return_consumed_capacity]")
        Hearth::Validator.validate!(input[:projection_expression], ::String, context: "#{context}[:projection_expression]")
        Hearth::Validator.validate!(input[:filter_expression], ::String, context: "#{context}[:filter_expression]")
        Hearth::Validator.validate!(input[:key_condition_expression], ::String, context: "#{context}[:key_condition_expression]")
        ExpressionAttributeNameMap.validate!(input[:expression_attribute_names], context: "#{context}[:expression_attribute_names]") unless input[:expression_attribute_names].nil?
        ExpressionAttributeValueMap.validate!(input[:expression_attribute_values], context: "#{context}[:expression_attribute_values]") unless input[:expression_attribute_values].nil?
      end
    end

    class QueryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QueryOutput, context: context)
        ItemList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:count], ::Integer, context: "#{context}[:count]")
        Hearth::Validator.validate!(input[:scanned_count], ::Integer, context: "#{context}[:scanned_count]")
        Key.validate!(input[:last_evaluated_key], context: "#{context}[:last_evaluated_key]") unless input[:last_evaluated_key].nil?
        ConsumedCapacity.validate!(input[:consumed_capacity], context: "#{context}[:consumed_capacity]") unless input[:consumed_capacity].nil?
      end
    end

    class Replica
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Replica, context: context)
        Hearth::Validator.validate!(input[:region_name], ::String, context: "#{context}[:region_name]")
      end
    end

    class ReplicaAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplicaAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ReplicaAutoScalingDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplicaAutoScalingDescription, context: context)
        Hearth::Validator.validate!(input[:region_name], ::String, context: "#{context}[:region_name]")
        ReplicaGlobalSecondaryIndexAutoScalingDescriptionList.validate!(input[:global_secondary_indexes], context: "#{context}[:global_secondary_indexes]") unless input[:global_secondary_indexes].nil?
        AutoScalingSettingsDescription.validate!(input[:replica_provisioned_read_capacity_auto_scaling_settings], context: "#{context}[:replica_provisioned_read_capacity_auto_scaling_settings]") unless input[:replica_provisioned_read_capacity_auto_scaling_settings].nil?
        AutoScalingSettingsDescription.validate!(input[:replica_provisioned_write_capacity_auto_scaling_settings], context: "#{context}[:replica_provisioned_write_capacity_auto_scaling_settings]") unless input[:replica_provisioned_write_capacity_auto_scaling_settings].nil?
        Hearth::Validator.validate!(input[:replica_status], ::String, context: "#{context}[:replica_status]")
      end
    end

    class ReplicaAutoScalingDescriptionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ReplicaAutoScalingDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReplicaAutoScalingUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplicaAutoScalingUpdate, context: context)
        Hearth::Validator.validate!(input[:region_name], ::String, context: "#{context}[:region_name]")
        ReplicaGlobalSecondaryIndexAutoScalingUpdateList.validate!(input[:replica_global_secondary_index_updates], context: "#{context}[:replica_global_secondary_index_updates]") unless input[:replica_global_secondary_index_updates].nil?
        AutoScalingSettingsUpdate.validate!(input[:replica_provisioned_read_capacity_auto_scaling_update], context: "#{context}[:replica_provisioned_read_capacity_auto_scaling_update]") unless input[:replica_provisioned_read_capacity_auto_scaling_update].nil?
      end
    end

    class ReplicaAutoScalingUpdateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ReplicaAutoScalingUpdate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReplicaDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplicaDescription, context: context)
        Hearth::Validator.validate!(input[:region_name], ::String, context: "#{context}[:region_name]")
        Hearth::Validator.validate!(input[:replica_status], ::String, context: "#{context}[:replica_status]")
        Hearth::Validator.validate!(input[:replica_status_description], ::String, context: "#{context}[:replica_status_description]")
        Hearth::Validator.validate!(input[:replica_status_percent_progress], ::String, context: "#{context}[:replica_status_percent_progress]")
        Hearth::Validator.validate!(input[:kms_master_key_id], ::String, context: "#{context}[:kms_master_key_id]")
        ProvisionedThroughputOverride.validate!(input[:provisioned_throughput_override], context: "#{context}[:provisioned_throughput_override]") unless input[:provisioned_throughput_override].nil?
        ReplicaGlobalSecondaryIndexDescriptionList.validate!(input[:global_secondary_indexes], context: "#{context}[:global_secondary_indexes]") unless input[:global_secondary_indexes].nil?
        Hearth::Validator.validate!(input[:replica_inaccessible_date_time], ::Time, context: "#{context}[:replica_inaccessible_date_time]")
        TableClassSummary.validate!(input[:replica_table_class_summary], context: "#{context}[:replica_table_class_summary]") unless input[:replica_table_class_summary].nil?
      end
    end

    class ReplicaDescriptionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ReplicaDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReplicaGlobalSecondaryIndex
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplicaGlobalSecondaryIndex, context: context)
        Hearth::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        ProvisionedThroughputOverride.validate!(input[:provisioned_throughput_override], context: "#{context}[:provisioned_throughput_override]") unless input[:provisioned_throughput_override].nil?
      end
    end

    class ReplicaGlobalSecondaryIndexAutoScalingDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplicaGlobalSecondaryIndexAutoScalingDescription, context: context)
        Hearth::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        Hearth::Validator.validate!(input[:index_status], ::String, context: "#{context}[:index_status]")
        AutoScalingSettingsDescription.validate!(input[:provisioned_read_capacity_auto_scaling_settings], context: "#{context}[:provisioned_read_capacity_auto_scaling_settings]") unless input[:provisioned_read_capacity_auto_scaling_settings].nil?
        AutoScalingSettingsDescription.validate!(input[:provisioned_write_capacity_auto_scaling_settings], context: "#{context}[:provisioned_write_capacity_auto_scaling_settings]") unless input[:provisioned_write_capacity_auto_scaling_settings].nil?
      end
    end

    class ReplicaGlobalSecondaryIndexAutoScalingDescriptionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ReplicaGlobalSecondaryIndexAutoScalingDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReplicaGlobalSecondaryIndexAutoScalingUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplicaGlobalSecondaryIndexAutoScalingUpdate, context: context)
        Hearth::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        AutoScalingSettingsUpdate.validate!(input[:provisioned_read_capacity_auto_scaling_update], context: "#{context}[:provisioned_read_capacity_auto_scaling_update]") unless input[:provisioned_read_capacity_auto_scaling_update].nil?
      end
    end

    class ReplicaGlobalSecondaryIndexAutoScalingUpdateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ReplicaGlobalSecondaryIndexAutoScalingUpdate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReplicaGlobalSecondaryIndexDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplicaGlobalSecondaryIndexDescription, context: context)
        Hearth::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        ProvisionedThroughputOverride.validate!(input[:provisioned_throughput_override], context: "#{context}[:provisioned_throughput_override]") unless input[:provisioned_throughput_override].nil?
      end
    end

    class ReplicaGlobalSecondaryIndexDescriptionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ReplicaGlobalSecondaryIndexDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReplicaGlobalSecondaryIndexList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ReplicaGlobalSecondaryIndex.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReplicaGlobalSecondaryIndexSettingsDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplicaGlobalSecondaryIndexSettingsDescription, context: context)
        Hearth::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        Hearth::Validator.validate!(input[:index_status], ::String, context: "#{context}[:index_status]")
        Hearth::Validator.validate!(input[:provisioned_read_capacity_units], ::Integer, context: "#{context}[:provisioned_read_capacity_units]")
        AutoScalingSettingsDescription.validate!(input[:provisioned_read_capacity_auto_scaling_settings], context: "#{context}[:provisioned_read_capacity_auto_scaling_settings]") unless input[:provisioned_read_capacity_auto_scaling_settings].nil?
        Hearth::Validator.validate!(input[:provisioned_write_capacity_units], ::Integer, context: "#{context}[:provisioned_write_capacity_units]")
        AutoScalingSettingsDescription.validate!(input[:provisioned_write_capacity_auto_scaling_settings], context: "#{context}[:provisioned_write_capacity_auto_scaling_settings]") unless input[:provisioned_write_capacity_auto_scaling_settings].nil?
      end
    end

    class ReplicaGlobalSecondaryIndexSettingsDescriptionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ReplicaGlobalSecondaryIndexSettingsDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReplicaGlobalSecondaryIndexSettingsUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplicaGlobalSecondaryIndexSettingsUpdate, context: context)
        Hearth::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        Hearth::Validator.validate!(input[:provisioned_read_capacity_units], ::Integer, context: "#{context}[:provisioned_read_capacity_units]")
        AutoScalingSettingsUpdate.validate!(input[:provisioned_read_capacity_auto_scaling_settings_update], context: "#{context}[:provisioned_read_capacity_auto_scaling_settings_update]") unless input[:provisioned_read_capacity_auto_scaling_settings_update].nil?
      end
    end

    class ReplicaGlobalSecondaryIndexSettingsUpdateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ReplicaGlobalSecondaryIndexSettingsUpdate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReplicaList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Replica.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReplicaNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplicaNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ReplicaSettingsDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplicaSettingsDescription, context: context)
        Hearth::Validator.validate!(input[:region_name], ::String, context: "#{context}[:region_name]")
        Hearth::Validator.validate!(input[:replica_status], ::String, context: "#{context}[:replica_status]")
        BillingModeSummary.validate!(input[:replica_billing_mode_summary], context: "#{context}[:replica_billing_mode_summary]") unless input[:replica_billing_mode_summary].nil?
        Hearth::Validator.validate!(input[:replica_provisioned_read_capacity_units], ::Integer, context: "#{context}[:replica_provisioned_read_capacity_units]")
        AutoScalingSettingsDescription.validate!(input[:replica_provisioned_read_capacity_auto_scaling_settings], context: "#{context}[:replica_provisioned_read_capacity_auto_scaling_settings]") unless input[:replica_provisioned_read_capacity_auto_scaling_settings].nil?
        Hearth::Validator.validate!(input[:replica_provisioned_write_capacity_units], ::Integer, context: "#{context}[:replica_provisioned_write_capacity_units]")
        AutoScalingSettingsDescription.validate!(input[:replica_provisioned_write_capacity_auto_scaling_settings], context: "#{context}[:replica_provisioned_write_capacity_auto_scaling_settings]") unless input[:replica_provisioned_write_capacity_auto_scaling_settings].nil?
        ReplicaGlobalSecondaryIndexSettingsDescriptionList.validate!(input[:replica_global_secondary_index_settings], context: "#{context}[:replica_global_secondary_index_settings]") unless input[:replica_global_secondary_index_settings].nil?
        TableClassSummary.validate!(input[:replica_table_class_summary], context: "#{context}[:replica_table_class_summary]") unless input[:replica_table_class_summary].nil?
      end
    end

    class ReplicaSettingsDescriptionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ReplicaSettingsDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReplicaSettingsUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplicaSettingsUpdate, context: context)
        Hearth::Validator.validate!(input[:region_name], ::String, context: "#{context}[:region_name]")
        Hearth::Validator.validate!(input[:replica_provisioned_read_capacity_units], ::Integer, context: "#{context}[:replica_provisioned_read_capacity_units]")
        AutoScalingSettingsUpdate.validate!(input[:replica_provisioned_read_capacity_auto_scaling_settings_update], context: "#{context}[:replica_provisioned_read_capacity_auto_scaling_settings_update]") unless input[:replica_provisioned_read_capacity_auto_scaling_settings_update].nil?
        ReplicaGlobalSecondaryIndexSettingsUpdateList.validate!(input[:replica_global_secondary_index_settings_update], context: "#{context}[:replica_global_secondary_index_settings_update]") unless input[:replica_global_secondary_index_settings_update].nil?
        Hearth::Validator.validate!(input[:replica_table_class], ::String, context: "#{context}[:replica_table_class]")
      end
    end

    class ReplicaSettingsUpdateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ReplicaSettingsUpdate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReplicaUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplicaUpdate, context: context)
        CreateReplicaAction.validate!(input[:create], context: "#{context}[:create]") unless input[:create].nil?
        DeleteReplicaAction.validate!(input[:delete], context: "#{context}[:delete]") unless input[:delete].nil?
      end
    end

    class ReplicaUpdateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ReplicaUpdate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReplicationGroupUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplicationGroupUpdate, context: context)
        CreateReplicationGroupMemberAction.validate!(input[:create], context: "#{context}[:create]") unless input[:create].nil?
        UpdateReplicationGroupMemberAction.validate!(input[:update], context: "#{context}[:update]") unless input[:update].nil?
        DeleteReplicationGroupMemberAction.validate!(input[:delete], context: "#{context}[:delete]") unless input[:delete].nil?
      end
    end

    class ReplicationGroupUpdateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ReplicationGroupUpdate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RequestLimitExceeded
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RequestLimitExceeded, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceInUseException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceInUseException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RestoreSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestoreSummary, context: context)
        Hearth::Validator.validate!(input[:source_backup_arn], ::String, context: "#{context}[:source_backup_arn]")
        Hearth::Validator.validate!(input[:source_table_arn], ::String, context: "#{context}[:source_table_arn]")
        Hearth::Validator.validate!(input[:restore_date_time], ::Time, context: "#{context}[:restore_date_time]")
        Hearth::Validator.validate!(input[:restore_in_progress], ::TrueClass, ::FalseClass, context: "#{context}[:restore_in_progress]")
      end
    end

    class RestoreTableFromBackupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestoreTableFromBackupInput, context: context)
        Hearth::Validator.validate!(input[:target_table_name], ::String, context: "#{context}[:target_table_name]")
        Hearth::Validator.validate!(input[:backup_arn], ::String, context: "#{context}[:backup_arn]")
        Hearth::Validator.validate!(input[:billing_mode_override], ::String, context: "#{context}[:billing_mode_override]")
        GlobalSecondaryIndexList.validate!(input[:global_secondary_index_override], context: "#{context}[:global_secondary_index_override]") unless input[:global_secondary_index_override].nil?
        LocalSecondaryIndexList.validate!(input[:local_secondary_index_override], context: "#{context}[:local_secondary_index_override]") unless input[:local_secondary_index_override].nil?
        ProvisionedThroughput.validate!(input[:provisioned_throughput_override], context: "#{context}[:provisioned_throughput_override]") unless input[:provisioned_throughput_override].nil?
        SSESpecification.validate!(input[:sse_specification_override], context: "#{context}[:sse_specification_override]") unless input[:sse_specification_override].nil?
      end
    end

    class RestoreTableFromBackupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestoreTableFromBackupOutput, context: context)
        TableDescription.validate!(input[:table_description], context: "#{context}[:table_description]") unless input[:table_description].nil?
      end
    end

    class RestoreTableToPointInTimeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestoreTableToPointInTimeInput, context: context)
        Hearth::Validator.validate!(input[:source_table_arn], ::String, context: "#{context}[:source_table_arn]")
        Hearth::Validator.validate!(input[:source_table_name], ::String, context: "#{context}[:source_table_name]")
        Hearth::Validator.validate!(input[:target_table_name], ::String, context: "#{context}[:target_table_name]")
        Hearth::Validator.validate!(input[:use_latest_restorable_time], ::TrueClass, ::FalseClass, context: "#{context}[:use_latest_restorable_time]")
        Hearth::Validator.validate!(input[:restore_date_time], ::Time, context: "#{context}[:restore_date_time]")
        Hearth::Validator.validate!(input[:billing_mode_override], ::String, context: "#{context}[:billing_mode_override]")
        GlobalSecondaryIndexList.validate!(input[:global_secondary_index_override], context: "#{context}[:global_secondary_index_override]") unless input[:global_secondary_index_override].nil?
        LocalSecondaryIndexList.validate!(input[:local_secondary_index_override], context: "#{context}[:local_secondary_index_override]") unless input[:local_secondary_index_override].nil?
        ProvisionedThroughput.validate!(input[:provisioned_throughput_override], context: "#{context}[:provisioned_throughput_override]") unless input[:provisioned_throughput_override].nil?
        SSESpecification.validate!(input[:sse_specification_override], context: "#{context}[:sse_specification_override]") unless input[:sse_specification_override].nil?
      end
    end

    class RestoreTableToPointInTimeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestoreTableToPointInTimeOutput, context: context)
        TableDescription.validate!(input[:table_description], context: "#{context}[:table_description]") unless input[:table_description].nil?
      end
    end

    class SSEDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SSEDescription, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:sse_type], ::String, context: "#{context}[:sse_type]")
        Hearth::Validator.validate!(input[:kms_master_key_arn], ::String, context: "#{context}[:kms_master_key_arn]")
        Hearth::Validator.validate!(input[:inaccessible_encryption_date_time], ::Time, context: "#{context}[:inaccessible_encryption_date_time]")
      end
    end

    class SSESpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SSESpecification, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:sse_type], ::String, context: "#{context}[:sse_type]")
        Hearth::Validator.validate!(input[:kms_master_key_id], ::String, context: "#{context}[:kms_master_key_id]")
      end
    end

    class ScanInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScanInput, context: context)
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        AttributeNameList.validate!(input[:attributes_to_get], context: "#{context}[:attributes_to_get]") unless input[:attributes_to_get].nil?
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:select], ::String, context: "#{context}[:select]")
        FilterConditionMap.validate!(input[:scan_filter], context: "#{context}[:scan_filter]") unless input[:scan_filter].nil?
        Hearth::Validator.validate!(input[:conditional_operator], ::String, context: "#{context}[:conditional_operator]")
        Key.validate!(input[:exclusive_start_key], context: "#{context}[:exclusive_start_key]") unless input[:exclusive_start_key].nil?
        Hearth::Validator.validate!(input[:return_consumed_capacity], ::String, context: "#{context}[:return_consumed_capacity]")
        Hearth::Validator.validate!(input[:total_segments], ::Integer, context: "#{context}[:total_segments]")
        Hearth::Validator.validate!(input[:segment], ::Integer, context: "#{context}[:segment]")
        Hearth::Validator.validate!(input[:projection_expression], ::String, context: "#{context}[:projection_expression]")
        Hearth::Validator.validate!(input[:filter_expression], ::String, context: "#{context}[:filter_expression]")
        ExpressionAttributeNameMap.validate!(input[:expression_attribute_names], context: "#{context}[:expression_attribute_names]") unless input[:expression_attribute_names].nil?
        ExpressionAttributeValueMap.validate!(input[:expression_attribute_values], context: "#{context}[:expression_attribute_values]") unless input[:expression_attribute_values].nil?
        Hearth::Validator.validate!(input[:consistent_read], ::TrueClass, ::FalseClass, context: "#{context}[:consistent_read]")
      end
    end

    class ScanOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScanOutput, context: context)
        ItemList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:count], ::Integer, context: "#{context}[:count]")
        Hearth::Validator.validate!(input[:scanned_count], ::Integer, context: "#{context}[:scanned_count]")
        Key.validate!(input[:last_evaluated_key], context: "#{context}[:last_evaluated_key]") unless input[:last_evaluated_key].nil?
        ConsumedCapacity.validate!(input[:consumed_capacity], context: "#{context}[:consumed_capacity]") unless input[:consumed_capacity].nil?
      end
    end

    class SecondaryIndexesCapacityMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Capacity.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class SourceTableDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SourceTableDetails, context: context)
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:table_id], ::String, context: "#{context}[:table_id]")
        Hearth::Validator.validate!(input[:table_arn], ::String, context: "#{context}[:table_arn]")
        Hearth::Validator.validate!(input[:table_size_bytes], ::Integer, context: "#{context}[:table_size_bytes]")
        KeySchema.validate!(input[:key_schema], context: "#{context}[:key_schema]") unless input[:key_schema].nil?
        Hearth::Validator.validate!(input[:table_creation_date_time], ::Time, context: "#{context}[:table_creation_date_time]")
        ProvisionedThroughput.validate!(input[:provisioned_throughput], context: "#{context}[:provisioned_throughput]") unless input[:provisioned_throughput].nil?
        Hearth::Validator.validate!(input[:item_count], ::Integer, context: "#{context}[:item_count]")
        Hearth::Validator.validate!(input[:billing_mode], ::String, context: "#{context}[:billing_mode]")
      end
    end

    class SourceTableFeatureDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SourceTableFeatureDetails, context: context)
        LocalSecondaryIndexes.validate!(input[:local_secondary_indexes], context: "#{context}[:local_secondary_indexes]") unless input[:local_secondary_indexes].nil?
        GlobalSecondaryIndexes.validate!(input[:global_secondary_indexes], context: "#{context}[:global_secondary_indexes]") unless input[:global_secondary_indexes].nil?
        StreamSpecification.validate!(input[:stream_description], context: "#{context}[:stream_description]") unless input[:stream_description].nil?
        TimeToLiveDescription.validate!(input[:time_to_live_description], context: "#{context}[:time_to_live_description]") unless input[:time_to_live_description].nil?
        SSEDescription.validate!(input[:sse_description], context: "#{context}[:sse_description]") unless input[:sse_description].nil?
      end
    end

    class StreamSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StreamSpecification, context: context)
        Hearth::Validator.validate!(input[:stream_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:stream_enabled]")
        Hearth::Validator.validate!(input[:stream_view_type], ::String, context: "#{context}[:stream_view_type]")
      end
    end

    class StringSetAttributeValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TableAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TableAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TableAutoScalingDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TableAutoScalingDescription, context: context)
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:table_status], ::String, context: "#{context}[:table_status]")
        ReplicaAutoScalingDescriptionList.validate!(input[:replicas], context: "#{context}[:replicas]") unless input[:replicas].nil?
      end
    end

    class TableClassSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TableClassSummary, context: context)
        Hearth::Validator.validate!(input[:table_class], ::String, context: "#{context}[:table_class]")
        Hearth::Validator.validate!(input[:last_update_date_time], ::Time, context: "#{context}[:last_update_date_time]")
      end
    end

    class TableDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TableDescription, context: context)
        AttributeDefinitions.validate!(input[:attribute_definitions], context: "#{context}[:attribute_definitions]") unless input[:attribute_definitions].nil?
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        KeySchema.validate!(input[:key_schema], context: "#{context}[:key_schema]") unless input[:key_schema].nil?
        Hearth::Validator.validate!(input[:table_status], ::String, context: "#{context}[:table_status]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        ProvisionedThroughputDescription.validate!(input[:provisioned_throughput], context: "#{context}[:provisioned_throughput]") unless input[:provisioned_throughput].nil?
        Hearth::Validator.validate!(input[:table_size_bytes], ::Integer, context: "#{context}[:table_size_bytes]")
        Hearth::Validator.validate!(input[:item_count], ::Integer, context: "#{context}[:item_count]")
        Hearth::Validator.validate!(input[:table_arn], ::String, context: "#{context}[:table_arn]")
        Hearth::Validator.validate!(input[:table_id], ::String, context: "#{context}[:table_id]")
        BillingModeSummary.validate!(input[:billing_mode_summary], context: "#{context}[:billing_mode_summary]") unless input[:billing_mode_summary].nil?
        LocalSecondaryIndexDescriptionList.validate!(input[:local_secondary_indexes], context: "#{context}[:local_secondary_indexes]") unless input[:local_secondary_indexes].nil?
        GlobalSecondaryIndexDescriptionList.validate!(input[:global_secondary_indexes], context: "#{context}[:global_secondary_indexes]") unless input[:global_secondary_indexes].nil?
        StreamSpecification.validate!(input[:stream_specification], context: "#{context}[:stream_specification]") unless input[:stream_specification].nil?
        Hearth::Validator.validate!(input[:latest_stream_label], ::String, context: "#{context}[:latest_stream_label]")
        Hearth::Validator.validate!(input[:latest_stream_arn], ::String, context: "#{context}[:latest_stream_arn]")
        Hearth::Validator.validate!(input[:global_table_version], ::String, context: "#{context}[:global_table_version]")
        ReplicaDescriptionList.validate!(input[:replicas], context: "#{context}[:replicas]") unless input[:replicas].nil?
        RestoreSummary.validate!(input[:restore_summary], context: "#{context}[:restore_summary]") unless input[:restore_summary].nil?
        SSEDescription.validate!(input[:sse_description], context: "#{context}[:sse_description]") unless input[:sse_description].nil?
        ArchivalSummary.validate!(input[:archival_summary], context: "#{context}[:archival_summary]") unless input[:archival_summary].nil?
        TableClassSummary.validate!(input[:table_class_summary], context: "#{context}[:table_class_summary]") unless input[:table_class_summary].nil?
      end
    end

    class TableInUseException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TableInUseException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TableNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TableNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TableNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
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

    class TimeToLiveDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TimeToLiveDescription, context: context)
        Hearth::Validator.validate!(input[:time_to_live_status], ::String, context: "#{context}[:time_to_live_status]")
        Hearth::Validator.validate!(input[:attribute_name], ::String, context: "#{context}[:attribute_name]")
      end
    end

    class TimeToLiveSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TimeToLiveSpecification, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:attribute_name], ::String, context: "#{context}[:attribute_name]")
      end
    end

    class TransactGetItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TransactGetItem, context: context)
        Get.validate!(input[:get], context: "#{context}[:get]") unless input[:get].nil?
      end
    end

    class TransactGetItemList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TransactGetItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TransactGetItemsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TransactGetItemsInput, context: context)
        TransactGetItemList.validate!(input[:transact_items], context: "#{context}[:transact_items]") unless input[:transact_items].nil?
        Hearth::Validator.validate!(input[:return_consumed_capacity], ::String, context: "#{context}[:return_consumed_capacity]")
      end
    end

    class TransactGetItemsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TransactGetItemsOutput, context: context)
        ConsumedCapacityMultiple.validate!(input[:consumed_capacity], context: "#{context}[:consumed_capacity]") unless input[:consumed_capacity].nil?
        ItemResponseList.validate!(input[:responses], context: "#{context}[:responses]") unless input[:responses].nil?
      end
    end

    class TransactWriteItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TransactWriteItem, context: context)
        ConditionCheck.validate!(input[:condition_check], context: "#{context}[:condition_check]") unless input[:condition_check].nil?
        Put.validate!(input[:put], context: "#{context}[:put]") unless input[:put].nil?
        Delete.validate!(input[:delete], context: "#{context}[:delete]") unless input[:delete].nil?
        Update.validate!(input[:update], context: "#{context}[:update]") unless input[:update].nil?
      end
    end

    class TransactWriteItemList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TransactWriteItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TransactWriteItemsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TransactWriteItemsInput, context: context)
        TransactWriteItemList.validate!(input[:transact_items], context: "#{context}[:transact_items]") unless input[:transact_items].nil?
        Hearth::Validator.validate!(input[:return_consumed_capacity], ::String, context: "#{context}[:return_consumed_capacity]")
        Hearth::Validator.validate!(input[:return_item_collection_metrics], ::String, context: "#{context}[:return_item_collection_metrics]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
      end
    end

    class TransactWriteItemsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TransactWriteItemsOutput, context: context)
        ConsumedCapacityMultiple.validate!(input[:consumed_capacity], context: "#{context}[:consumed_capacity]") unless input[:consumed_capacity].nil?
        ItemCollectionMetricsPerTable.validate!(input[:item_collection_metrics], context: "#{context}[:item_collection_metrics]") unless input[:item_collection_metrics].nil?
      end
    end

    class TransactionCanceledException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TransactionCanceledException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        CancellationReasonList.validate!(input[:cancellation_reasons], context: "#{context}[:cancellation_reasons]") unless input[:cancellation_reasons].nil?
      end
    end

    class TransactionConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TransactionConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TransactionInProgressException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TransactionInProgressException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class Update
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Update, context: context)
        Key.validate!(input[:key], context: "#{context}[:key]") unless input[:key].nil?
        Hearth::Validator.validate!(input[:update_expression], ::String, context: "#{context}[:update_expression]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:condition_expression], ::String, context: "#{context}[:condition_expression]")
        ExpressionAttributeNameMap.validate!(input[:expression_attribute_names], context: "#{context}[:expression_attribute_names]") unless input[:expression_attribute_names].nil?
        ExpressionAttributeValueMap.validate!(input[:expression_attribute_values], context: "#{context}[:expression_attribute_values]") unless input[:expression_attribute_values].nil?
        Hearth::Validator.validate!(input[:return_values_on_condition_check_failure], ::String, context: "#{context}[:return_values_on_condition_check_failure]")
      end
    end

    class UpdateContinuousBackupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateContinuousBackupsInput, context: context)
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        PointInTimeRecoverySpecification.validate!(input[:point_in_time_recovery_specification], context: "#{context}[:point_in_time_recovery_specification]") unless input[:point_in_time_recovery_specification].nil?
      end
    end

    class UpdateContinuousBackupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateContinuousBackupsOutput, context: context)
        ContinuousBackupsDescription.validate!(input[:continuous_backups_description], context: "#{context}[:continuous_backups_description]") unless input[:continuous_backups_description].nil?
      end
    end

    class UpdateContributorInsightsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateContributorInsightsInput, context: context)
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        Hearth::Validator.validate!(input[:contributor_insights_action], ::String, context: "#{context}[:contributor_insights_action]")
      end
    end

    class UpdateContributorInsightsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateContributorInsightsOutput, context: context)
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        Hearth::Validator.validate!(input[:contributor_insights_status], ::String, context: "#{context}[:contributor_insights_status]")
      end
    end

    class UpdateGlobalSecondaryIndexAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGlobalSecondaryIndexAction, context: context)
        Hearth::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        ProvisionedThroughput.validate!(input[:provisioned_throughput], context: "#{context}[:provisioned_throughput]") unless input[:provisioned_throughput].nil?
      end
    end

    class UpdateGlobalTableInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGlobalTableInput, context: context)
        Hearth::Validator.validate!(input[:global_table_name], ::String, context: "#{context}[:global_table_name]")
        ReplicaUpdateList.validate!(input[:replica_updates], context: "#{context}[:replica_updates]") unless input[:replica_updates].nil?
      end
    end

    class UpdateGlobalTableOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGlobalTableOutput, context: context)
        GlobalTableDescription.validate!(input[:global_table_description], context: "#{context}[:global_table_description]") unless input[:global_table_description].nil?
      end
    end

    class UpdateGlobalTableSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGlobalTableSettingsInput, context: context)
        Hearth::Validator.validate!(input[:global_table_name], ::String, context: "#{context}[:global_table_name]")
        Hearth::Validator.validate!(input[:global_table_billing_mode], ::String, context: "#{context}[:global_table_billing_mode]")
        Hearth::Validator.validate!(input[:global_table_provisioned_write_capacity_units], ::Integer, context: "#{context}[:global_table_provisioned_write_capacity_units]")
        AutoScalingSettingsUpdate.validate!(input[:global_table_provisioned_write_capacity_auto_scaling_settings_update], context: "#{context}[:global_table_provisioned_write_capacity_auto_scaling_settings_update]") unless input[:global_table_provisioned_write_capacity_auto_scaling_settings_update].nil?
        GlobalTableGlobalSecondaryIndexSettingsUpdateList.validate!(input[:global_table_global_secondary_index_settings_update], context: "#{context}[:global_table_global_secondary_index_settings_update]") unless input[:global_table_global_secondary_index_settings_update].nil?
        ReplicaSettingsUpdateList.validate!(input[:replica_settings_update], context: "#{context}[:replica_settings_update]") unless input[:replica_settings_update].nil?
      end
    end

    class UpdateGlobalTableSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGlobalTableSettingsOutput, context: context)
        Hearth::Validator.validate!(input[:global_table_name], ::String, context: "#{context}[:global_table_name]")
        ReplicaSettingsDescriptionList.validate!(input[:replica_settings], context: "#{context}[:replica_settings]") unless input[:replica_settings].nil?
      end
    end

    class UpdateItemInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateItemInput, context: context)
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Key.validate!(input[:key], context: "#{context}[:key]") unless input[:key].nil?
        AttributeUpdates.validate!(input[:attribute_updates], context: "#{context}[:attribute_updates]") unless input[:attribute_updates].nil?
        ExpectedAttributeMap.validate!(input[:expected], context: "#{context}[:expected]") unless input[:expected].nil?
        Hearth::Validator.validate!(input[:conditional_operator], ::String, context: "#{context}[:conditional_operator]")
        Hearth::Validator.validate!(input[:return_values], ::String, context: "#{context}[:return_values]")
        Hearth::Validator.validate!(input[:return_consumed_capacity], ::String, context: "#{context}[:return_consumed_capacity]")
        Hearth::Validator.validate!(input[:return_item_collection_metrics], ::String, context: "#{context}[:return_item_collection_metrics]")
        Hearth::Validator.validate!(input[:update_expression], ::String, context: "#{context}[:update_expression]")
        Hearth::Validator.validate!(input[:condition_expression], ::String, context: "#{context}[:condition_expression]")
        ExpressionAttributeNameMap.validate!(input[:expression_attribute_names], context: "#{context}[:expression_attribute_names]") unless input[:expression_attribute_names].nil?
        ExpressionAttributeValueMap.validate!(input[:expression_attribute_values], context: "#{context}[:expression_attribute_values]") unless input[:expression_attribute_values].nil?
      end
    end

    class UpdateItemOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateItemOutput, context: context)
        AttributeMap.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        ConsumedCapacity.validate!(input[:consumed_capacity], context: "#{context}[:consumed_capacity]") unless input[:consumed_capacity].nil?
        ItemCollectionMetrics.validate!(input[:item_collection_metrics], context: "#{context}[:item_collection_metrics]") unless input[:item_collection_metrics].nil?
      end
    end

    class UpdateReplicationGroupMemberAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateReplicationGroupMemberAction, context: context)
        Hearth::Validator.validate!(input[:region_name], ::String, context: "#{context}[:region_name]")
        Hearth::Validator.validate!(input[:kms_master_key_id], ::String, context: "#{context}[:kms_master_key_id]")
        ProvisionedThroughputOverride.validate!(input[:provisioned_throughput_override], context: "#{context}[:provisioned_throughput_override]") unless input[:provisioned_throughput_override].nil?
        ReplicaGlobalSecondaryIndexList.validate!(input[:global_secondary_indexes], context: "#{context}[:global_secondary_indexes]") unless input[:global_secondary_indexes].nil?
        Hearth::Validator.validate!(input[:table_class_override], ::String, context: "#{context}[:table_class_override]")
      end
    end

    class UpdateTableInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTableInput, context: context)
        AttributeDefinitions.validate!(input[:attribute_definitions], context: "#{context}[:attribute_definitions]") unless input[:attribute_definitions].nil?
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:billing_mode], ::String, context: "#{context}[:billing_mode]")
        ProvisionedThroughput.validate!(input[:provisioned_throughput], context: "#{context}[:provisioned_throughput]") unless input[:provisioned_throughput].nil?
        GlobalSecondaryIndexUpdateList.validate!(input[:global_secondary_index_updates], context: "#{context}[:global_secondary_index_updates]") unless input[:global_secondary_index_updates].nil?
        StreamSpecification.validate!(input[:stream_specification], context: "#{context}[:stream_specification]") unless input[:stream_specification].nil?
        SSESpecification.validate!(input[:sse_specification], context: "#{context}[:sse_specification]") unless input[:sse_specification].nil?
        ReplicationGroupUpdateList.validate!(input[:replica_updates], context: "#{context}[:replica_updates]") unless input[:replica_updates].nil?
        Hearth::Validator.validate!(input[:table_class], ::String, context: "#{context}[:table_class]")
      end
    end

    class UpdateTableOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTableOutput, context: context)
        TableDescription.validate!(input[:table_description], context: "#{context}[:table_description]") unless input[:table_description].nil?
      end
    end

    class UpdateTableReplicaAutoScalingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTableReplicaAutoScalingInput, context: context)
        GlobalSecondaryIndexAutoScalingUpdateList.validate!(input[:global_secondary_index_updates], context: "#{context}[:global_secondary_index_updates]") unless input[:global_secondary_index_updates].nil?
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        AutoScalingSettingsUpdate.validate!(input[:provisioned_write_capacity_auto_scaling_update], context: "#{context}[:provisioned_write_capacity_auto_scaling_update]") unless input[:provisioned_write_capacity_auto_scaling_update].nil?
        ReplicaAutoScalingUpdateList.validate!(input[:replica_updates], context: "#{context}[:replica_updates]") unless input[:replica_updates].nil?
      end
    end

    class UpdateTableReplicaAutoScalingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTableReplicaAutoScalingOutput, context: context)
        TableAutoScalingDescription.validate!(input[:table_auto_scaling_description], context: "#{context}[:table_auto_scaling_description]") unless input[:table_auto_scaling_description].nil?
      end
    end

    class UpdateTimeToLiveInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTimeToLiveInput, context: context)
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        TimeToLiveSpecification.validate!(input[:time_to_live_specification], context: "#{context}[:time_to_live_specification]") unless input[:time_to_live_specification].nil?
      end
    end

    class UpdateTimeToLiveOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTimeToLiveOutput, context: context)
        TimeToLiveSpecification.validate!(input[:time_to_live_specification], context: "#{context}[:time_to_live_specification]") unless input[:time_to_live_specification].nil?
      end
    end

    class WriteRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WriteRequest, context: context)
        PutRequest.validate!(input[:put_request], context: "#{context}[:put_request]") unless input[:put_request].nil?
        DeleteRequest.validate!(input[:delete_request], context: "#{context}[:delete_request]") unless input[:delete_request].nil?
      end
    end

    class WriteRequests
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          WriteRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
