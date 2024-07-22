# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::DynamoDB
  # @api private
  module Params

    class ArchivalSummary
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ArchivalSummary, context: context)
        type = Types::ArchivalSummary.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.archival_date_time = params[:archival_date_time] unless params[:archival_date_time].nil?
        type.archival_reason = params[:archival_reason] unless params[:archival_reason].nil?
        type.archival_backup_arn = params[:archival_backup_arn] unless params[:archival_backup_arn].nil?
        type
      end
    end

    class AttributeDefinition
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::AttributeDefinition, context: context)
        type = Types::AttributeDefinition.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.attribute_name = params[:attribute_name] unless params[:attribute_name].nil?
        type.attribute_type = params[:attribute_type] unless params[:attribute_type].nil?
        type
      end
    end

    class AttributeDefinitions
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AttributeDefinition.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class AttributeMap
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = AttributeValue.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    class AttributeNameList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class AttributeUpdates
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = AttributeValueUpdate.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    class AttributeValue
      def self.build(params, context:)
        return params if params.is_a?(Types::AttributeValue)
        Hearth::Validator.validate_types!(params, ::Hash, Types::AttributeValue, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :s
          Types::AttributeValue::S.new(
            params[:s]
          )
        when :n
          Types::AttributeValue::N.new(
            params[:n]
          )
        when :b
          Types::AttributeValue::B.new(
            params[:b]
          )
        when :ss
          Types::AttributeValue::Ss.new(
            (StringSetAttributeValue.build(params[:ss], context: "#{context}[:ss]") unless params[:ss].nil?)
          )
        when :ns
          Types::AttributeValue::Ns.new(
            (NumberSetAttributeValue.build(params[:ns], context: "#{context}[:ns]") unless params[:ns].nil?)
          )
        when :bs
          Types::AttributeValue::Bs.new(
            (BinarySetAttributeValue.build(params[:bs], context: "#{context}[:bs]") unless params[:bs].nil?)
          )
        when :m
          Types::AttributeValue::M.new(
            (MapAttributeValue.build(params[:m], context: "#{context}[:m]") unless params[:m].nil?)
          )
        when :l
          Types::AttributeValue::L.new(
            (ListAttributeValue.build(params[:l], context: "#{context}[:l]") unless params[:l].nil?)
          )
        when :null
          Types::AttributeValue::Null.new(
            params[:null]
          )
        when :bool
          Types::AttributeValue::Bool.new(
            params[:bool]
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :s, :n, :b, :ss, :ns, :bs, :m, :l, :null, :bool set"
        end
      end
    end

    class AttributeValueList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AttributeValue.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class AttributeValueUpdate
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::AttributeValueUpdate, context: context)
        type = Types::AttributeValueUpdate.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.value = AttributeValue.build(params[:value], context: "#{context}[:value]") unless params[:value].nil?
        type.action = params[:action] unless params[:action].nil?
        type
      end
    end

    class AutoScalingPolicyDescription
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::AutoScalingPolicyDescription, context: context)
        type = Types::AutoScalingPolicyDescription.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.policy_name = params[:policy_name] unless params[:policy_name].nil?
        type.target_tracking_scaling_policy_configuration = AutoScalingTargetTrackingScalingPolicyConfigurationDescription.build(params[:target_tracking_scaling_policy_configuration], context: "#{context}[:target_tracking_scaling_policy_configuration]") unless params[:target_tracking_scaling_policy_configuration].nil?
        type
      end
    end

    class AutoScalingPolicyDescriptionList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AutoScalingPolicyDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class AutoScalingPolicyUpdate
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::AutoScalingPolicyUpdate, context: context)
        type = Types::AutoScalingPolicyUpdate.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.policy_name = params[:policy_name] unless params[:policy_name].nil?
        type.target_tracking_scaling_policy_configuration = AutoScalingTargetTrackingScalingPolicyConfigurationUpdate.build(params[:target_tracking_scaling_policy_configuration], context: "#{context}[:target_tracking_scaling_policy_configuration]") unless params[:target_tracking_scaling_policy_configuration].nil?
        type
      end
    end

    class AutoScalingSettingsDescription
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::AutoScalingSettingsDescription, context: context)
        type = Types::AutoScalingSettingsDescription.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.minimum_units = params[:minimum_units] unless params[:minimum_units].nil?
        type.maximum_units = params[:maximum_units] unless params[:maximum_units].nil?
        type.auto_scaling_disabled = params[:auto_scaling_disabled] unless params[:auto_scaling_disabled].nil?
        type.auto_scaling_role_arn = params[:auto_scaling_role_arn] unless params[:auto_scaling_role_arn].nil?
        type.scaling_policies = AutoScalingPolicyDescriptionList.build(params[:scaling_policies], context: "#{context}[:scaling_policies]") unless params[:scaling_policies].nil?
        type
      end
    end

    class AutoScalingSettingsUpdate
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::AutoScalingSettingsUpdate, context: context)
        type = Types::AutoScalingSettingsUpdate.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.minimum_units = params[:minimum_units] unless params[:minimum_units].nil?
        type.maximum_units = params[:maximum_units] unless params[:maximum_units].nil?
        type.auto_scaling_disabled = params[:auto_scaling_disabled] unless params[:auto_scaling_disabled].nil?
        type.auto_scaling_role_arn = params[:auto_scaling_role_arn] unless params[:auto_scaling_role_arn].nil?
        type.scaling_policy_update = AutoScalingPolicyUpdate.build(params[:scaling_policy_update], context: "#{context}[:scaling_policy_update]") unless params[:scaling_policy_update].nil?
        type
      end
    end

    class AutoScalingTargetTrackingScalingPolicyConfigurationDescription
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::AutoScalingTargetTrackingScalingPolicyConfigurationDescription, context: context)
        type = Types::AutoScalingTargetTrackingScalingPolicyConfigurationDescription.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.disable_scale_in = params[:disable_scale_in] unless params[:disable_scale_in].nil?
        type.scale_in_cooldown = params[:scale_in_cooldown] unless params[:scale_in_cooldown].nil?
        type.scale_out_cooldown = params[:scale_out_cooldown] unless params[:scale_out_cooldown].nil?
        type.target_value = params[:target_value]&.to_f unless params[:target_value].nil?
        type
      end
    end

    class AutoScalingTargetTrackingScalingPolicyConfigurationUpdate
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::AutoScalingTargetTrackingScalingPolicyConfigurationUpdate, context: context)
        type = Types::AutoScalingTargetTrackingScalingPolicyConfigurationUpdate.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.disable_scale_in = params[:disable_scale_in] unless params[:disable_scale_in].nil?
        type.scale_in_cooldown = params[:scale_in_cooldown] unless params[:scale_in_cooldown].nil?
        type.scale_out_cooldown = params[:scale_out_cooldown] unless params[:scale_out_cooldown].nil?
        type.target_value = params[:target_value]&.to_f unless params[:target_value].nil?
        type
      end
    end

    class BackupDescription
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::BackupDescription, context: context)
        type = Types::BackupDescription.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.backup_details = BackupDetails.build(params[:backup_details], context: "#{context}[:backup_details]") unless params[:backup_details].nil?
        type.source_table_details = SourceTableDetails.build(params[:source_table_details], context: "#{context}[:source_table_details]") unless params[:source_table_details].nil?
        type.source_table_feature_details = SourceTableFeatureDetails.build(params[:source_table_feature_details], context: "#{context}[:source_table_feature_details]") unless params[:source_table_feature_details].nil?
        type
      end
    end

    class BackupDetails
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::BackupDetails, context: context)
        type = Types::BackupDetails.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.backup_arn = params[:backup_arn] unless params[:backup_arn].nil?
        type.backup_name = params[:backup_name] unless params[:backup_name].nil?
        type.backup_size_bytes = params[:backup_size_bytes] unless params[:backup_size_bytes].nil?
        type.backup_status = params[:backup_status] unless params[:backup_status].nil?
        type.backup_type = params[:backup_type] unless params[:backup_type].nil?
        type.backup_creation_date_time = params[:backup_creation_date_time] unless params[:backup_creation_date_time].nil?
        type.backup_expiry_date_time = params[:backup_expiry_date_time] unless params[:backup_expiry_date_time].nil?
        type
      end
    end

    class BackupInUseException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::BackupInUseException, context: context)
        type = Types::BackupInUseException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class BackupNotFoundException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::BackupNotFoundException, context: context)
        type = Types::BackupNotFoundException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class BackupSummaries
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BackupSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class BackupSummary
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::BackupSummary, context: context)
        type = Types::BackupSummary.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.table_name = params[:table_name] unless params[:table_name].nil?
        type.table_id = params[:table_id] unless params[:table_id].nil?
        type.table_arn = params[:table_arn] unless params[:table_arn].nil?
        type.backup_arn = params[:backup_arn] unless params[:backup_arn].nil?
        type.backup_name = params[:backup_name] unless params[:backup_name].nil?
        type.backup_creation_date_time = params[:backup_creation_date_time] unless params[:backup_creation_date_time].nil?
        type.backup_expiry_date_time = params[:backup_expiry_date_time] unless params[:backup_expiry_date_time].nil?
        type.backup_status = params[:backup_status] unless params[:backup_status].nil?
        type.backup_type = params[:backup_type] unless params[:backup_type].nil?
        type.backup_size_bytes = params[:backup_size_bytes] unless params[:backup_size_bytes].nil?
        type
      end
    end

    class BatchExecuteStatementInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::BatchExecuteStatementInput, context: context)
        type = Types::BatchExecuteStatementInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.statements = PartiQLBatchRequest.build(params[:statements], context: "#{context}[:statements]") unless params[:statements].nil?
        type.return_consumed_capacity = params[:return_consumed_capacity] unless params[:return_consumed_capacity].nil?
        type
      end
    end

    class BatchExecuteStatementOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::BatchExecuteStatementOutput, context: context)
        type = Types::BatchExecuteStatementOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.responses = PartiQLBatchResponse.build(params[:responses], context: "#{context}[:responses]") unless params[:responses].nil?
        type.consumed_capacity = ConsumedCapacityMultiple.build(params[:consumed_capacity], context: "#{context}[:consumed_capacity]") unless params[:consumed_capacity].nil?
        type
      end
    end

    class BatchGetItemInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::BatchGetItemInput, context: context)
        type = Types::BatchGetItemInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.request_items = BatchGetRequestMap.build(params[:request_items], context: "#{context}[:request_items]") unless params[:request_items].nil?
        type.return_consumed_capacity = params[:return_consumed_capacity] unless params[:return_consumed_capacity].nil?
        type
      end
    end

    class BatchGetItemOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::BatchGetItemOutput, context: context)
        type = Types::BatchGetItemOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.responses = BatchGetResponseMap.build(params[:responses], context: "#{context}[:responses]") unless params[:responses].nil?
        type.unprocessed_keys = BatchGetRequestMap.build(params[:unprocessed_keys], context: "#{context}[:unprocessed_keys]") unless params[:unprocessed_keys].nil?
        type.consumed_capacity = ConsumedCapacityMultiple.build(params[:consumed_capacity], context: "#{context}[:consumed_capacity]") unless params[:consumed_capacity].nil?
        type
      end
    end

    class BatchGetRequestMap
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = KeysAndAttributes.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    class BatchGetResponseMap
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = ItemList.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    class BatchStatementError
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::BatchStatementError, context: context)
        type = Types::BatchStatementError.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.code = params[:code] unless params[:code].nil?
        type.message = params[:message] unless params[:message].nil?
        type.item = AttributeMap.build(params[:item], context: "#{context}[:item]") unless params[:item].nil?
        type
      end
    end

    class BatchStatementRequest
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::BatchStatementRequest, context: context)
        type = Types::BatchStatementRequest.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.statement = params[:statement] unless params[:statement].nil?
        type.parameters = PreparedStatementParameters.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.consistent_read = params[:consistent_read] unless params[:consistent_read].nil?
        type.return_values_on_condition_check_failure = params[:return_values_on_condition_check_failure] unless params[:return_values_on_condition_check_failure].nil?
        type
      end
    end

    class BatchStatementResponse
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::BatchStatementResponse, context: context)
        type = Types::BatchStatementResponse.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.error = BatchStatementError.build(params[:error], context: "#{context}[:error]") unless params[:error].nil?
        type.table_name = params[:table_name] unless params[:table_name].nil?
        type.item = AttributeMap.build(params[:item], context: "#{context}[:item]") unless params[:item].nil?
        type
      end
    end

    class BatchWriteItemInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::BatchWriteItemInput, context: context)
        type = Types::BatchWriteItemInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.request_items = BatchWriteItemRequestMap.build(params[:request_items], context: "#{context}[:request_items]") unless params[:request_items].nil?
        type.return_consumed_capacity = params[:return_consumed_capacity] unless params[:return_consumed_capacity].nil?
        type.return_item_collection_metrics = params[:return_item_collection_metrics] unless params[:return_item_collection_metrics].nil?
        type
      end
    end

    class BatchWriteItemOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::BatchWriteItemOutput, context: context)
        type = Types::BatchWriteItemOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.unprocessed_items = BatchWriteItemRequestMap.build(params[:unprocessed_items], context: "#{context}[:unprocessed_items]") unless params[:unprocessed_items].nil?
        type.item_collection_metrics = ItemCollectionMetricsPerTable.build(params[:item_collection_metrics], context: "#{context}[:item_collection_metrics]") unless params[:item_collection_metrics].nil?
        type.consumed_capacity = ConsumedCapacityMultiple.build(params[:consumed_capacity], context: "#{context}[:consumed_capacity]") unless params[:consumed_capacity].nil?
        type
      end
    end

    class BatchWriteItemRequestMap
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = WriteRequests.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    class BillingModeSummary
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::BillingModeSummary, context: context)
        type = Types::BillingModeSummary.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.billing_mode = params[:billing_mode] unless params[:billing_mode].nil?
        type.last_update_to_pay_per_request_date_time = params[:last_update_to_pay_per_request_date_time] unless params[:last_update_to_pay_per_request_date_time].nil?
        type
      end
    end

    class BinarySetAttributeValue
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class CancellationReason
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CancellationReason, context: context)
        type = Types::CancellationReason.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.item = AttributeMap.build(params[:item], context: "#{context}[:item]") unless params[:item].nil?
        type.code = params[:code] unless params[:code].nil?
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class CancellationReasonList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CancellationReason.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class Capacity
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Capacity, context: context)
        type = Types::Capacity.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.read_capacity_units = params[:read_capacity_units]&.to_f unless params[:read_capacity_units].nil?
        type.write_capacity_units = params[:write_capacity_units]&.to_f unless params[:write_capacity_units].nil?
        type.capacity_units = params[:capacity_units]&.to_f unless params[:capacity_units].nil?
        type
      end
    end

    class Condition
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Condition, context: context)
        type = Types::Condition.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.attribute_value_list = AttributeValueList.build(params[:attribute_value_list], context: "#{context}[:attribute_value_list]") unless params[:attribute_value_list].nil?
        type.comparison_operator = params[:comparison_operator] unless params[:comparison_operator].nil?
        type
      end
    end

    class ConditionCheck
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ConditionCheck, context: context)
        type = Types::ConditionCheck.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key = Key.build(params[:key], context: "#{context}[:key]") unless params[:key].nil?
        type.table_name = params[:table_name] unless params[:table_name].nil?
        type.condition_expression = params[:condition_expression] unless params[:condition_expression].nil?
        type.expression_attribute_names = ExpressionAttributeNameMap.build(params[:expression_attribute_names], context: "#{context}[:expression_attribute_names]") unless params[:expression_attribute_names].nil?
        type.expression_attribute_values = ExpressionAttributeValueMap.build(params[:expression_attribute_values], context: "#{context}[:expression_attribute_values]") unless params[:expression_attribute_values].nil?
        type.return_values_on_condition_check_failure = params[:return_values_on_condition_check_failure] unless params[:return_values_on_condition_check_failure].nil?
        type
      end
    end

    class ConditionalCheckFailedException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ConditionalCheckFailedException, context: context)
        type = Types::ConditionalCheckFailedException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type.item = AttributeMap.build(params[:item], context: "#{context}[:item]") unless params[:item].nil?
        type
      end
    end

    class ConsumedCapacity
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ConsumedCapacity, context: context)
        type = Types::ConsumedCapacity.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.table_name = params[:table_name] unless params[:table_name].nil?
        type.capacity_units = params[:capacity_units]&.to_f unless params[:capacity_units].nil?
        type.read_capacity_units = params[:read_capacity_units]&.to_f unless params[:read_capacity_units].nil?
        type.write_capacity_units = params[:write_capacity_units]&.to_f unless params[:write_capacity_units].nil?
        type.table = Capacity.build(params[:table], context: "#{context}[:table]") unless params[:table].nil?
        type.local_secondary_indexes = SecondaryIndexesCapacityMap.build(params[:local_secondary_indexes], context: "#{context}[:local_secondary_indexes]") unless params[:local_secondary_indexes].nil?
        type.global_secondary_indexes = SecondaryIndexesCapacityMap.build(params[:global_secondary_indexes], context: "#{context}[:global_secondary_indexes]") unless params[:global_secondary_indexes].nil?
        type
      end
    end

    class ConsumedCapacityMultiple
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ConsumedCapacity.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class ContinuousBackupsDescription
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ContinuousBackupsDescription, context: context)
        type = Types::ContinuousBackupsDescription.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.continuous_backups_status = params[:continuous_backups_status] unless params[:continuous_backups_status].nil?
        type.point_in_time_recovery_description = PointInTimeRecoveryDescription.build(params[:point_in_time_recovery_description], context: "#{context}[:point_in_time_recovery_description]") unless params[:point_in_time_recovery_description].nil?
        type
      end
    end

    class ContinuousBackupsUnavailableException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ContinuousBackupsUnavailableException, context: context)
        type = Types::ContinuousBackupsUnavailableException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class ContributorInsightsRuleList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class ContributorInsightsSummaries
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ContributorInsightsSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class ContributorInsightsSummary
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ContributorInsightsSummary, context: context)
        type = Types::ContributorInsightsSummary.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.table_name = params[:table_name] unless params[:table_name].nil?
        type.index_name = params[:index_name] unless params[:index_name].nil?
        type.contributor_insights_status = params[:contributor_insights_status] unless params[:contributor_insights_status].nil?
        type
      end
    end

    class CreateBackupInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CreateBackupInput, context: context)
        type = Types::CreateBackupInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.table_name = params[:table_name] unless params[:table_name].nil?
        type.backup_name = params[:backup_name] unless params[:backup_name].nil?
        type
      end
    end

    class CreateBackupOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CreateBackupOutput, context: context)
        type = Types::CreateBackupOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.backup_details = BackupDetails.build(params[:backup_details], context: "#{context}[:backup_details]") unless params[:backup_details].nil?
        type
      end
    end

    class CreateGlobalSecondaryIndexAction
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CreateGlobalSecondaryIndexAction, context: context)
        type = Types::CreateGlobalSecondaryIndexAction.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.index_name = params[:index_name] unless params[:index_name].nil?
        type.key_schema = KeySchema.build(params[:key_schema], context: "#{context}[:key_schema]") unless params[:key_schema].nil?
        type.projection = Projection.build(params[:projection], context: "#{context}[:projection]") unless params[:projection].nil?
        type.provisioned_throughput = ProvisionedThroughput.build(params[:provisioned_throughput], context: "#{context}[:provisioned_throughput]") unless params[:provisioned_throughput].nil?
        type
      end
    end

    class CreateGlobalTableInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CreateGlobalTableInput, context: context)
        type = Types::CreateGlobalTableInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.global_table_name = params[:global_table_name] unless params[:global_table_name].nil?
        type.replication_group = ReplicaList.build(params[:replication_group], context: "#{context}[:replication_group]") unless params[:replication_group].nil?
        type
      end
    end

    class CreateGlobalTableOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CreateGlobalTableOutput, context: context)
        type = Types::CreateGlobalTableOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.global_table_description = GlobalTableDescription.build(params[:global_table_description], context: "#{context}[:global_table_description]") unless params[:global_table_description].nil?
        type
      end
    end

    class CreateReplicaAction
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CreateReplicaAction, context: context)
        type = Types::CreateReplicaAction.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.region_name = params[:region_name] unless params[:region_name].nil?
        type
      end
    end

    class CreateReplicationGroupMemberAction
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CreateReplicationGroupMemberAction, context: context)
        type = Types::CreateReplicationGroupMemberAction.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.region_name = params[:region_name] unless params[:region_name].nil?
        type.kms_master_key_id = params[:kms_master_key_id] unless params[:kms_master_key_id].nil?
        type.provisioned_throughput_override = ProvisionedThroughputOverride.build(params[:provisioned_throughput_override], context: "#{context}[:provisioned_throughput_override]") unless params[:provisioned_throughput_override].nil?
        type.global_secondary_indexes = ReplicaGlobalSecondaryIndexList.build(params[:global_secondary_indexes], context: "#{context}[:global_secondary_indexes]") unless params[:global_secondary_indexes].nil?
        type.table_class_override = params[:table_class_override] unless params[:table_class_override].nil?
        type
      end
    end

    class CreateTableInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CreateTableInput, context: context)
        type = Types::CreateTableInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.attribute_definitions = AttributeDefinitions.build(params[:attribute_definitions], context: "#{context}[:attribute_definitions]") unless params[:attribute_definitions].nil?
        type.table_name = params[:table_name] unless params[:table_name].nil?
        type.key_schema = KeySchema.build(params[:key_schema], context: "#{context}[:key_schema]") unless params[:key_schema].nil?
        type.local_secondary_indexes = LocalSecondaryIndexList.build(params[:local_secondary_indexes], context: "#{context}[:local_secondary_indexes]") unless params[:local_secondary_indexes].nil?
        type.global_secondary_indexes = GlobalSecondaryIndexList.build(params[:global_secondary_indexes], context: "#{context}[:global_secondary_indexes]") unless params[:global_secondary_indexes].nil?
        type.billing_mode = params[:billing_mode] unless params[:billing_mode].nil?
        type.provisioned_throughput = ProvisionedThroughput.build(params[:provisioned_throughput], context: "#{context}[:provisioned_throughput]") unless params[:provisioned_throughput].nil?
        type.stream_specification = StreamSpecification.build(params[:stream_specification], context: "#{context}[:stream_specification]") unless params[:stream_specification].nil?
        type.sse_specification = SSESpecification.build(params[:sse_specification], context: "#{context}[:sse_specification]") unless params[:sse_specification].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.table_class = params[:table_class] unless params[:table_class].nil?
        type.deletion_protection_enabled = params[:deletion_protection_enabled] unless params[:deletion_protection_enabled].nil?
        type
      end
    end

    class CreateTableOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CreateTableOutput, context: context)
        type = Types::CreateTableOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.table_description = TableDescription.build(params[:table_description], context: "#{context}[:table_description]") unless params[:table_description].nil?
        type
      end
    end

    class CsvHeaderList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class CsvOptions
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CsvOptions, context: context)
        type = Types::CsvOptions.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.delimiter = params[:delimiter] unless params[:delimiter].nil?
        type.header_list = CsvHeaderList.build(params[:header_list], context: "#{context}[:header_list]") unless params[:header_list].nil?
        type
      end
    end

    class Delete
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Delete, context: context)
        type = Types::Delete.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key = Key.build(params[:key], context: "#{context}[:key]") unless params[:key].nil?
        type.table_name = params[:table_name] unless params[:table_name].nil?
        type.condition_expression = params[:condition_expression] unless params[:condition_expression].nil?
        type.expression_attribute_names = ExpressionAttributeNameMap.build(params[:expression_attribute_names], context: "#{context}[:expression_attribute_names]") unless params[:expression_attribute_names].nil?
        type.expression_attribute_values = ExpressionAttributeValueMap.build(params[:expression_attribute_values], context: "#{context}[:expression_attribute_values]") unless params[:expression_attribute_values].nil?
        type.return_values_on_condition_check_failure = params[:return_values_on_condition_check_failure] unless params[:return_values_on_condition_check_failure].nil?
        type
      end
    end

    class DeleteBackupInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteBackupInput, context: context)
        type = Types::DeleteBackupInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.backup_arn = params[:backup_arn] unless params[:backup_arn].nil?
        type
      end
    end

    class DeleteBackupOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteBackupOutput, context: context)
        type = Types::DeleteBackupOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.backup_description = BackupDescription.build(params[:backup_description], context: "#{context}[:backup_description]") unless params[:backup_description].nil?
        type
      end
    end

    class DeleteGlobalSecondaryIndexAction
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteGlobalSecondaryIndexAction, context: context)
        type = Types::DeleteGlobalSecondaryIndexAction.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.index_name = params[:index_name] unless params[:index_name].nil?
        type
      end
    end

    class DeleteItemInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteItemInput, context: context)
        type = Types::DeleteItemInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.table_name = params[:table_name] unless params[:table_name].nil?
        type.key = Key.build(params[:key], context: "#{context}[:key]") unless params[:key].nil?
        type.expected = ExpectedAttributeMap.build(params[:expected], context: "#{context}[:expected]") unless params[:expected].nil?
        type.conditional_operator = params[:conditional_operator] unless params[:conditional_operator].nil?
        type.return_values = params[:return_values] unless params[:return_values].nil?
        type.return_consumed_capacity = params[:return_consumed_capacity] unless params[:return_consumed_capacity].nil?
        type.return_item_collection_metrics = params[:return_item_collection_metrics] unless params[:return_item_collection_metrics].nil?
        type.condition_expression = params[:condition_expression] unless params[:condition_expression].nil?
        type.expression_attribute_names = ExpressionAttributeNameMap.build(params[:expression_attribute_names], context: "#{context}[:expression_attribute_names]") unless params[:expression_attribute_names].nil?
        type.expression_attribute_values = ExpressionAttributeValueMap.build(params[:expression_attribute_values], context: "#{context}[:expression_attribute_values]") unless params[:expression_attribute_values].nil?
        type.return_values_on_condition_check_failure = params[:return_values_on_condition_check_failure] unless params[:return_values_on_condition_check_failure].nil?
        type
      end
    end

    class DeleteItemOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteItemOutput, context: context)
        type = Types::DeleteItemOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.attributes = AttributeMap.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.consumed_capacity = ConsumedCapacity.build(params[:consumed_capacity], context: "#{context}[:consumed_capacity]") unless params[:consumed_capacity].nil?
        type.item_collection_metrics = ItemCollectionMetrics.build(params[:item_collection_metrics], context: "#{context}[:item_collection_metrics]") unless params[:item_collection_metrics].nil?
        type
      end
    end

    class DeleteReplicaAction
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteReplicaAction, context: context)
        type = Types::DeleteReplicaAction.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.region_name = params[:region_name] unless params[:region_name].nil?
        type
      end
    end

    class DeleteReplicationGroupMemberAction
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteReplicationGroupMemberAction, context: context)
        type = Types::DeleteReplicationGroupMemberAction.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.region_name = params[:region_name] unless params[:region_name].nil?
        type
      end
    end

    class DeleteRequest
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteRequest, context: context)
        type = Types::DeleteRequest.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key = Key.build(params[:key], context: "#{context}[:key]") unless params[:key].nil?
        type
      end
    end

    class DeleteTableInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteTableInput, context: context)
        type = Types::DeleteTableInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.table_name = params[:table_name] unless params[:table_name].nil?
        type
      end
    end

    class DeleteTableOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteTableOutput, context: context)
        type = Types::DeleteTableOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.table_description = TableDescription.build(params[:table_description], context: "#{context}[:table_description]") unless params[:table_description].nil?
        type
      end
    end

    class DescribeBackupInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DescribeBackupInput, context: context)
        type = Types::DescribeBackupInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.backup_arn = params[:backup_arn] unless params[:backup_arn].nil?
        type
      end
    end

    class DescribeBackupOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DescribeBackupOutput, context: context)
        type = Types::DescribeBackupOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.backup_description = BackupDescription.build(params[:backup_description], context: "#{context}[:backup_description]") unless params[:backup_description].nil?
        type
      end
    end

    class DescribeContinuousBackupsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DescribeContinuousBackupsInput, context: context)
        type = Types::DescribeContinuousBackupsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.table_name = params[:table_name] unless params[:table_name].nil?
        type
      end
    end

    class DescribeContinuousBackupsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DescribeContinuousBackupsOutput, context: context)
        type = Types::DescribeContinuousBackupsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.continuous_backups_description = ContinuousBackupsDescription.build(params[:continuous_backups_description], context: "#{context}[:continuous_backups_description]") unless params[:continuous_backups_description].nil?
        type
      end
    end

    class DescribeContributorInsightsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DescribeContributorInsightsInput, context: context)
        type = Types::DescribeContributorInsightsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.table_name = params[:table_name] unless params[:table_name].nil?
        type.index_name = params[:index_name] unless params[:index_name].nil?
        type
      end
    end

    class DescribeContributorInsightsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DescribeContributorInsightsOutput, context: context)
        type = Types::DescribeContributorInsightsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.table_name = params[:table_name] unless params[:table_name].nil?
        type.index_name = params[:index_name] unless params[:index_name].nil?
        type.contributor_insights_rule_list = ContributorInsightsRuleList.build(params[:contributor_insights_rule_list], context: "#{context}[:contributor_insights_rule_list]") unless params[:contributor_insights_rule_list].nil?
        type.contributor_insights_status = params[:contributor_insights_status] unless params[:contributor_insights_status].nil?
        type.last_update_date_time = params[:last_update_date_time] unless params[:last_update_date_time].nil?
        type.failure_exception = FailureException.build(params[:failure_exception], context: "#{context}[:failure_exception]") unless params[:failure_exception].nil?
        type
      end
    end

    class DescribeEndpointsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DescribeEndpointsInput, context: context)
        type = Types::DescribeEndpointsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class DescribeEndpointsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DescribeEndpointsOutput, context: context)
        type = Types::DescribeEndpointsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.endpoints = Endpoints.build(params[:endpoints], context: "#{context}[:endpoints]") unless params[:endpoints].nil?
        type
      end
    end

    class DescribeExportInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DescribeExportInput, context: context)
        type = Types::DescribeExportInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.export_arn = params[:export_arn] unless params[:export_arn].nil?
        type
      end
    end

    class DescribeExportOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DescribeExportOutput, context: context)
        type = Types::DescribeExportOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.export_description = ExportDescription.build(params[:export_description], context: "#{context}[:export_description]") unless params[:export_description].nil?
        type
      end
    end

    class DescribeGlobalTableInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DescribeGlobalTableInput, context: context)
        type = Types::DescribeGlobalTableInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.global_table_name = params[:global_table_name] unless params[:global_table_name].nil?
        type
      end
    end

    class DescribeGlobalTableOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DescribeGlobalTableOutput, context: context)
        type = Types::DescribeGlobalTableOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.global_table_description = GlobalTableDescription.build(params[:global_table_description], context: "#{context}[:global_table_description]") unless params[:global_table_description].nil?
        type
      end
    end

    class DescribeGlobalTableSettingsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DescribeGlobalTableSettingsInput, context: context)
        type = Types::DescribeGlobalTableSettingsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.global_table_name = params[:global_table_name] unless params[:global_table_name].nil?
        type
      end
    end

    class DescribeGlobalTableSettingsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DescribeGlobalTableSettingsOutput, context: context)
        type = Types::DescribeGlobalTableSettingsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.global_table_name = params[:global_table_name] unless params[:global_table_name].nil?
        type.replica_settings = ReplicaSettingsDescriptionList.build(params[:replica_settings], context: "#{context}[:replica_settings]") unless params[:replica_settings].nil?
        type
      end
    end

    class DescribeImportInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DescribeImportInput, context: context)
        type = Types::DescribeImportInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.import_arn = params[:import_arn] unless params[:import_arn].nil?
        type
      end
    end

    class DescribeImportOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DescribeImportOutput, context: context)
        type = Types::DescribeImportOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.import_table_description = ImportTableDescription.build(params[:import_table_description], context: "#{context}[:import_table_description]") unless params[:import_table_description].nil?
        type
      end
    end

    class DescribeKinesisStreamingDestinationInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DescribeKinesisStreamingDestinationInput, context: context)
        type = Types::DescribeKinesisStreamingDestinationInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.table_name = params[:table_name] unless params[:table_name].nil?
        type
      end
    end

    class DescribeKinesisStreamingDestinationOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DescribeKinesisStreamingDestinationOutput, context: context)
        type = Types::DescribeKinesisStreamingDestinationOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.table_name = params[:table_name] unless params[:table_name].nil?
        type.kinesis_data_stream_destinations = KinesisDataStreamDestinations.build(params[:kinesis_data_stream_destinations], context: "#{context}[:kinesis_data_stream_destinations]") unless params[:kinesis_data_stream_destinations].nil?
        type
      end
    end

    class DescribeLimitsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DescribeLimitsInput, context: context)
        type = Types::DescribeLimitsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class DescribeLimitsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DescribeLimitsOutput, context: context)
        type = Types::DescribeLimitsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.account_max_read_capacity_units = params[:account_max_read_capacity_units] unless params[:account_max_read_capacity_units].nil?
        type.account_max_write_capacity_units = params[:account_max_write_capacity_units] unless params[:account_max_write_capacity_units].nil?
        type.table_max_read_capacity_units = params[:table_max_read_capacity_units] unless params[:table_max_read_capacity_units].nil?
        type.table_max_write_capacity_units = params[:table_max_write_capacity_units] unless params[:table_max_write_capacity_units].nil?
        type
      end
    end

    class DescribeTableInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DescribeTableInput, context: context)
        type = Types::DescribeTableInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.table_name = params[:table_name] unless params[:table_name].nil?
        type
      end
    end

    class DescribeTableOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DescribeTableOutput, context: context)
        type = Types::DescribeTableOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.table = TableDescription.build(params[:table], context: "#{context}[:table]") unless params[:table].nil?
        type
      end
    end

    class DescribeTableReplicaAutoScalingInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DescribeTableReplicaAutoScalingInput, context: context)
        type = Types::DescribeTableReplicaAutoScalingInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.table_name = params[:table_name] unless params[:table_name].nil?
        type
      end
    end

    class DescribeTableReplicaAutoScalingOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DescribeTableReplicaAutoScalingOutput, context: context)
        type = Types::DescribeTableReplicaAutoScalingOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.table_auto_scaling_description = TableAutoScalingDescription.build(params[:table_auto_scaling_description], context: "#{context}[:table_auto_scaling_description]") unless params[:table_auto_scaling_description].nil?
        type
      end
    end

    class DescribeTimeToLiveInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DescribeTimeToLiveInput, context: context)
        type = Types::DescribeTimeToLiveInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.table_name = params[:table_name] unless params[:table_name].nil?
        type
      end
    end

    class DescribeTimeToLiveOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DescribeTimeToLiveOutput, context: context)
        type = Types::DescribeTimeToLiveOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.time_to_live_description = TimeToLiveDescription.build(params[:time_to_live_description], context: "#{context}[:time_to_live_description]") unless params[:time_to_live_description].nil?
        type
      end
    end

    class DisableKinesisStreamingDestinationInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DisableKinesisStreamingDestinationInput, context: context)
        type = Types::DisableKinesisStreamingDestinationInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.table_name = params[:table_name] unless params[:table_name].nil?
        type.stream_arn = params[:stream_arn] unless params[:stream_arn].nil?
        type.enable_kinesis_streaming_configuration = EnableKinesisStreamingConfiguration.build(params[:enable_kinesis_streaming_configuration], context: "#{context}[:enable_kinesis_streaming_configuration]") unless params[:enable_kinesis_streaming_configuration].nil?
        type
      end
    end

    class DisableKinesisStreamingDestinationOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DisableKinesisStreamingDestinationOutput, context: context)
        type = Types::DisableKinesisStreamingDestinationOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.table_name = params[:table_name] unless params[:table_name].nil?
        type.stream_arn = params[:stream_arn] unless params[:stream_arn].nil?
        type.destination_status = params[:destination_status] unless params[:destination_status].nil?
        type.enable_kinesis_streaming_configuration = EnableKinesisStreamingConfiguration.build(params[:enable_kinesis_streaming_configuration], context: "#{context}[:enable_kinesis_streaming_configuration]") unless params[:enable_kinesis_streaming_configuration].nil?
        type
      end
    end

    class DuplicateItemException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DuplicateItemException, context: context)
        type = Types::DuplicateItemException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class EnableKinesisStreamingConfiguration
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::EnableKinesisStreamingConfiguration, context: context)
        type = Types::EnableKinesisStreamingConfiguration.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.approximate_creation_date_time_precision = params[:approximate_creation_date_time_precision] unless params[:approximate_creation_date_time_precision].nil?
        type
      end
    end

    class EnableKinesisStreamingDestinationInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::EnableKinesisStreamingDestinationInput, context: context)
        type = Types::EnableKinesisStreamingDestinationInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.table_name = params[:table_name] unless params[:table_name].nil?
        type.stream_arn = params[:stream_arn] unless params[:stream_arn].nil?
        type.enable_kinesis_streaming_configuration = EnableKinesisStreamingConfiguration.build(params[:enable_kinesis_streaming_configuration], context: "#{context}[:enable_kinesis_streaming_configuration]") unless params[:enable_kinesis_streaming_configuration].nil?
        type
      end
    end

    class EnableKinesisStreamingDestinationOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::EnableKinesisStreamingDestinationOutput, context: context)
        type = Types::EnableKinesisStreamingDestinationOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.table_name = params[:table_name] unless params[:table_name].nil?
        type.stream_arn = params[:stream_arn] unless params[:stream_arn].nil?
        type.destination_status = params[:destination_status] unless params[:destination_status].nil?
        type.enable_kinesis_streaming_configuration = EnableKinesisStreamingConfiguration.build(params[:enable_kinesis_streaming_configuration], context: "#{context}[:enable_kinesis_streaming_configuration]") unless params[:enable_kinesis_streaming_configuration].nil?
        type
      end
    end

    class Endpoint
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Endpoint, context: context)
        type = Types::Endpoint.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.address = params[:address] unless params[:address].nil?
        type.cache_period_in_minutes = params[:cache_period_in_minutes] unless params[:cache_period_in_minutes].nil?
        type
      end
    end

    class Endpoints
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Endpoint.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class ExecuteStatementInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ExecuteStatementInput, context: context)
        type = Types::ExecuteStatementInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.statement = params[:statement] unless params[:statement].nil?
        type.parameters = PreparedStatementParameters.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.consistent_read = params[:consistent_read] unless params[:consistent_read].nil?
        type.next_token = params[:next_token] unless params[:next_token].nil?
        type.return_consumed_capacity = params[:return_consumed_capacity] unless params[:return_consumed_capacity].nil?
        type.limit = params[:limit] unless params[:limit].nil?
        type.return_values_on_condition_check_failure = params[:return_values_on_condition_check_failure] unless params[:return_values_on_condition_check_failure].nil?
        type
      end
    end

    class ExecuteStatementOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ExecuteStatementOutput, context: context)
        type = Types::ExecuteStatementOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.items = ItemList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.next_token = params[:next_token] unless params[:next_token].nil?
        type.consumed_capacity = ConsumedCapacity.build(params[:consumed_capacity], context: "#{context}[:consumed_capacity]") unless params[:consumed_capacity].nil?
        type.last_evaluated_key = Key.build(params[:last_evaluated_key], context: "#{context}[:last_evaluated_key]") unless params[:last_evaluated_key].nil?
        type
      end
    end

    class ExecuteTransactionInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ExecuteTransactionInput, context: context)
        type = Types::ExecuteTransactionInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.transact_statements = ParameterizedStatements.build(params[:transact_statements], context: "#{context}[:transact_statements]") unless params[:transact_statements].nil?
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type.return_consumed_capacity = params[:return_consumed_capacity] unless params[:return_consumed_capacity].nil?
        type
      end
    end

    class ExecuteTransactionOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ExecuteTransactionOutput, context: context)
        type = Types::ExecuteTransactionOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.responses = ItemResponseList.build(params[:responses], context: "#{context}[:responses]") unless params[:responses].nil?
        type.consumed_capacity = ConsumedCapacityMultiple.build(params[:consumed_capacity], context: "#{context}[:consumed_capacity]") unless params[:consumed_capacity].nil?
        type
      end
    end

    class ExpectedAttributeMap
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = ExpectedAttributeValue.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    class ExpectedAttributeValue
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ExpectedAttributeValue, context: context)
        type = Types::ExpectedAttributeValue.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.value = AttributeValue.build(params[:value], context: "#{context}[:value]") unless params[:value].nil?
        type.exists = params[:exists] unless params[:exists].nil?
        type.comparison_operator = params[:comparison_operator] unless params[:comparison_operator].nil?
        type.attribute_value_list = AttributeValueList.build(params[:attribute_value_list], context: "#{context}[:attribute_value_list]") unless params[:attribute_value_list].nil?
        type
      end
    end

    class ExportConflictException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ExportConflictException, context: context)
        type = Types::ExportConflictException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class ExportDescription
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ExportDescription, context: context)
        type = Types::ExportDescription.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.export_arn = params[:export_arn] unless params[:export_arn].nil?
        type.export_status = params[:export_status] unless params[:export_status].nil?
        type.start_time = params[:start_time] unless params[:start_time].nil?
        type.end_time = params[:end_time] unless params[:end_time].nil?
        type.export_manifest = params[:export_manifest] unless params[:export_manifest].nil?
        type.table_arn = params[:table_arn] unless params[:table_arn].nil?
        type.table_id = params[:table_id] unless params[:table_id].nil?
        type.export_time = params[:export_time] unless params[:export_time].nil?
        type.client_token = params[:client_token] unless params[:client_token].nil?
        type.s3_bucket = params[:s3_bucket] unless params[:s3_bucket].nil?
        type.s3_bucket_owner = params[:s3_bucket_owner] unless params[:s3_bucket_owner].nil?
        type.s3_prefix = params[:s3_prefix] unless params[:s3_prefix].nil?
        type.s3_sse_algorithm = params[:s3_sse_algorithm] unless params[:s3_sse_algorithm].nil?
        type.s3_sse_kms_key_id = params[:s3_sse_kms_key_id] unless params[:s3_sse_kms_key_id].nil?
        type.failure_code = params[:failure_code] unless params[:failure_code].nil?
        type.failure_message = params[:failure_message] unless params[:failure_message].nil?
        type.export_format = params[:export_format] unless params[:export_format].nil?
        type.billed_size_bytes = params[:billed_size_bytes] unless params[:billed_size_bytes].nil?
        type.item_count = params[:item_count] unless params[:item_count].nil?
        type.export_type = params[:export_type] unless params[:export_type].nil?
        type.incremental_export_specification = IncrementalExportSpecification.build(params[:incremental_export_specification], context: "#{context}[:incremental_export_specification]") unless params[:incremental_export_specification].nil?
        type
      end
    end

    class ExportNotFoundException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ExportNotFoundException, context: context)
        type = Types::ExportNotFoundException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class ExportSummaries
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ExportSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class ExportSummary
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ExportSummary, context: context)
        type = Types::ExportSummary.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.export_arn = params[:export_arn] unless params[:export_arn].nil?
        type.export_status = params[:export_status] unless params[:export_status].nil?
        type.export_type = params[:export_type] unless params[:export_type].nil?
        type
      end
    end

    class ExportTableToPointInTimeInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ExportTableToPointInTimeInput, context: context)
        type = Types::ExportTableToPointInTimeInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.table_arn = params[:table_arn] unless params[:table_arn].nil?
        type.export_time = params[:export_time] unless params[:export_time].nil?
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.s3_bucket = params[:s3_bucket] unless params[:s3_bucket].nil?
        type.s3_bucket_owner = params[:s3_bucket_owner] unless params[:s3_bucket_owner].nil?
        type.s3_prefix = params[:s3_prefix] unless params[:s3_prefix].nil?
        type.s3_sse_algorithm = params[:s3_sse_algorithm] unless params[:s3_sse_algorithm].nil?
        type.s3_sse_kms_key_id = params[:s3_sse_kms_key_id] unless params[:s3_sse_kms_key_id].nil?
        type.export_format = params[:export_format] unless params[:export_format].nil?
        type.export_type = params[:export_type] unless params[:export_type].nil?
        type.incremental_export_specification = IncrementalExportSpecification.build(params[:incremental_export_specification], context: "#{context}[:incremental_export_specification]") unless params[:incremental_export_specification].nil?
        type
      end
    end

    class ExportTableToPointInTimeOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ExportTableToPointInTimeOutput, context: context)
        type = Types::ExportTableToPointInTimeOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.export_description = ExportDescription.build(params[:export_description], context: "#{context}[:export_description]") unless params[:export_description].nil?
        type
      end
    end

    class ExpressionAttributeNameMap
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class ExpressionAttributeValueMap
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = AttributeValue.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    class FailureException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::FailureException, context: context)
        type = Types::FailureException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.exception_name = params[:exception_name] unless params[:exception_name].nil?
        type.exception_description = params[:exception_description] unless params[:exception_description].nil?
        type
      end
    end

    class FilterConditionMap
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = Condition.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    class Get
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Get, context: context)
        type = Types::Get.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key = Key.build(params[:key], context: "#{context}[:key]") unless params[:key].nil?
        type.table_name = params[:table_name] unless params[:table_name].nil?
        type.projection_expression = params[:projection_expression] unless params[:projection_expression].nil?
        type.expression_attribute_names = ExpressionAttributeNameMap.build(params[:expression_attribute_names], context: "#{context}[:expression_attribute_names]") unless params[:expression_attribute_names].nil?
        type
      end
    end

    class GetItemInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetItemInput, context: context)
        type = Types::GetItemInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.table_name = params[:table_name] unless params[:table_name].nil?
        type.key = Key.build(params[:key], context: "#{context}[:key]") unless params[:key].nil?
        type.attributes_to_get = AttributeNameList.build(params[:attributes_to_get], context: "#{context}[:attributes_to_get]") unless params[:attributes_to_get].nil?
        type.consistent_read = params[:consistent_read] unless params[:consistent_read].nil?
        type.return_consumed_capacity = params[:return_consumed_capacity] unless params[:return_consumed_capacity].nil?
        type.projection_expression = params[:projection_expression] unless params[:projection_expression].nil?
        type.expression_attribute_names = ExpressionAttributeNameMap.build(params[:expression_attribute_names], context: "#{context}[:expression_attribute_names]") unless params[:expression_attribute_names].nil?
        type
      end
    end

    class GetItemOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetItemOutput, context: context)
        type = Types::GetItemOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.item = AttributeMap.build(params[:item], context: "#{context}[:item]") unless params[:item].nil?
        type.consumed_capacity = ConsumedCapacity.build(params[:consumed_capacity], context: "#{context}[:consumed_capacity]") unless params[:consumed_capacity].nil?
        type
      end
    end

    class GlobalSecondaryIndex
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GlobalSecondaryIndex, context: context)
        type = Types::GlobalSecondaryIndex.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.index_name = params[:index_name] unless params[:index_name].nil?
        type.key_schema = KeySchema.build(params[:key_schema], context: "#{context}[:key_schema]") unless params[:key_schema].nil?
        type.projection = Projection.build(params[:projection], context: "#{context}[:projection]") unless params[:projection].nil?
        type.provisioned_throughput = ProvisionedThroughput.build(params[:provisioned_throughput], context: "#{context}[:provisioned_throughput]") unless params[:provisioned_throughput].nil?
        type
      end
    end

    class GlobalSecondaryIndexAutoScalingUpdate
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GlobalSecondaryIndexAutoScalingUpdate, context: context)
        type = Types::GlobalSecondaryIndexAutoScalingUpdate.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.index_name = params[:index_name] unless params[:index_name].nil?
        type.provisioned_write_capacity_auto_scaling_update = AutoScalingSettingsUpdate.build(params[:provisioned_write_capacity_auto_scaling_update], context: "#{context}[:provisioned_write_capacity_auto_scaling_update]") unless params[:provisioned_write_capacity_auto_scaling_update].nil?
        type
      end
    end

    class GlobalSecondaryIndexAutoScalingUpdateList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GlobalSecondaryIndexAutoScalingUpdate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class GlobalSecondaryIndexDescription
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GlobalSecondaryIndexDescription, context: context)
        type = Types::GlobalSecondaryIndexDescription.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.index_name = params[:index_name] unless params[:index_name].nil?
        type.key_schema = KeySchema.build(params[:key_schema], context: "#{context}[:key_schema]") unless params[:key_schema].nil?
        type.projection = Projection.build(params[:projection], context: "#{context}[:projection]") unless params[:projection].nil?
        type.index_status = params[:index_status] unless params[:index_status].nil?
        type.backfilling = params[:backfilling] unless params[:backfilling].nil?
        type.provisioned_throughput = ProvisionedThroughputDescription.build(params[:provisioned_throughput], context: "#{context}[:provisioned_throughput]") unless params[:provisioned_throughput].nil?
        type.index_size_bytes = params[:index_size_bytes] unless params[:index_size_bytes].nil?
        type.item_count = params[:item_count] unless params[:item_count].nil?
        type.index_arn = params[:index_arn] unless params[:index_arn].nil?
        type
      end
    end

    class GlobalSecondaryIndexDescriptionList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GlobalSecondaryIndexDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class GlobalSecondaryIndexInfo
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GlobalSecondaryIndexInfo, context: context)
        type = Types::GlobalSecondaryIndexInfo.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.index_name = params[:index_name] unless params[:index_name].nil?
        type.key_schema = KeySchema.build(params[:key_schema], context: "#{context}[:key_schema]") unless params[:key_schema].nil?
        type.projection = Projection.build(params[:projection], context: "#{context}[:projection]") unless params[:projection].nil?
        type.provisioned_throughput = ProvisionedThroughput.build(params[:provisioned_throughput], context: "#{context}[:provisioned_throughput]") unless params[:provisioned_throughput].nil?
        type
      end
    end

    class GlobalSecondaryIndexList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GlobalSecondaryIndex.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class GlobalSecondaryIndexUpdate
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GlobalSecondaryIndexUpdate, context: context)
        type = Types::GlobalSecondaryIndexUpdate.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.update = UpdateGlobalSecondaryIndexAction.build(params[:update], context: "#{context}[:update]") unless params[:update].nil?
        type.create = CreateGlobalSecondaryIndexAction.build(params[:create], context: "#{context}[:create]") unless params[:create].nil?
        type.delete = DeleteGlobalSecondaryIndexAction.build(params[:delete], context: "#{context}[:delete]") unless params[:delete].nil?
        type
      end
    end

    class GlobalSecondaryIndexUpdateList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GlobalSecondaryIndexUpdate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class GlobalSecondaryIndexes
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GlobalSecondaryIndexInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class GlobalTable
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GlobalTable, context: context)
        type = Types::GlobalTable.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.global_table_name = params[:global_table_name] unless params[:global_table_name].nil?
        type.replication_group = ReplicaList.build(params[:replication_group], context: "#{context}[:replication_group]") unless params[:replication_group].nil?
        type
      end
    end

    class GlobalTableAlreadyExistsException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GlobalTableAlreadyExistsException, context: context)
        type = Types::GlobalTableAlreadyExistsException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class GlobalTableDescription
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GlobalTableDescription, context: context)
        type = Types::GlobalTableDescription.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.replication_group = ReplicaDescriptionList.build(params[:replication_group], context: "#{context}[:replication_group]") unless params[:replication_group].nil?
        type.global_table_arn = params[:global_table_arn] unless params[:global_table_arn].nil?
        type.creation_date_time = params[:creation_date_time] unless params[:creation_date_time].nil?
        type.global_table_status = params[:global_table_status] unless params[:global_table_status].nil?
        type.global_table_name = params[:global_table_name] unless params[:global_table_name].nil?
        type
      end
    end

    class GlobalTableGlobalSecondaryIndexSettingsUpdate
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GlobalTableGlobalSecondaryIndexSettingsUpdate, context: context)
        type = Types::GlobalTableGlobalSecondaryIndexSettingsUpdate.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.index_name = params[:index_name] unless params[:index_name].nil?
        type.provisioned_write_capacity_units = params[:provisioned_write_capacity_units] unless params[:provisioned_write_capacity_units].nil?
        type.provisioned_write_capacity_auto_scaling_settings_update = AutoScalingSettingsUpdate.build(params[:provisioned_write_capacity_auto_scaling_settings_update], context: "#{context}[:provisioned_write_capacity_auto_scaling_settings_update]") unless params[:provisioned_write_capacity_auto_scaling_settings_update].nil?
        type
      end
    end

    class GlobalTableGlobalSecondaryIndexSettingsUpdateList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GlobalTableGlobalSecondaryIndexSettingsUpdate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class GlobalTableList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GlobalTable.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class GlobalTableNotFoundException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GlobalTableNotFoundException, context: context)
        type = Types::GlobalTableNotFoundException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class IdempotentParameterMismatchException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::IdempotentParameterMismatchException, context: context)
        type = Types::IdempotentParameterMismatchException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class ImportConflictException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ImportConflictException, context: context)
        type = Types::ImportConflictException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class ImportNotFoundException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ImportNotFoundException, context: context)
        type = Types::ImportNotFoundException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class ImportSummary
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ImportSummary, context: context)
        type = Types::ImportSummary.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.import_arn = params[:import_arn] unless params[:import_arn].nil?
        type.import_status = params[:import_status] unless params[:import_status].nil?
        type.table_arn = params[:table_arn] unless params[:table_arn].nil?
        type.s3_bucket_source = S3BucketSource.build(params[:s3_bucket_source], context: "#{context}[:s3_bucket_source]") unless params[:s3_bucket_source].nil?
        type.cloud_watch_log_group_arn = params[:cloud_watch_log_group_arn] unless params[:cloud_watch_log_group_arn].nil?
        type.input_format = params[:input_format] unless params[:input_format].nil?
        type.start_time = params[:start_time] unless params[:start_time].nil?
        type.end_time = params[:end_time] unless params[:end_time].nil?
        type
      end
    end

    class ImportSummaryList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ImportSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class ImportTableDescription
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ImportTableDescription, context: context)
        type = Types::ImportTableDescription.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.import_arn = params[:import_arn] unless params[:import_arn].nil?
        type.import_status = params[:import_status] unless params[:import_status].nil?
        type.table_arn = params[:table_arn] unless params[:table_arn].nil?
        type.table_id = params[:table_id] unless params[:table_id].nil?
        type.client_token = params[:client_token] unless params[:client_token].nil?
        type.s3_bucket_source = S3BucketSource.build(params[:s3_bucket_source], context: "#{context}[:s3_bucket_source]") unless params[:s3_bucket_source].nil?
        type.error_count = params[:error_count] unless params[:error_count].nil?
        type.cloud_watch_log_group_arn = params[:cloud_watch_log_group_arn] unless params[:cloud_watch_log_group_arn].nil?
        type.input_format = params[:input_format] unless params[:input_format].nil?
        type.input_format_options = InputFormatOptions.build(params[:input_format_options], context: "#{context}[:input_format_options]") unless params[:input_format_options].nil?
        type.input_compression_type = params[:input_compression_type] unless params[:input_compression_type].nil?
        type.table_creation_parameters = TableCreationParameters.build(params[:table_creation_parameters], context: "#{context}[:table_creation_parameters]") unless params[:table_creation_parameters].nil?
        type.start_time = params[:start_time] unless params[:start_time].nil?
        type.end_time = params[:end_time] unless params[:end_time].nil?
        type.processed_size_bytes = params[:processed_size_bytes] unless params[:processed_size_bytes].nil?
        type.processed_item_count = params[:processed_item_count] unless params[:processed_item_count].nil?
        type.imported_item_count = params[:imported_item_count] unless params[:imported_item_count].nil?
        type.failure_code = params[:failure_code] unless params[:failure_code].nil?
        type.failure_message = params[:failure_message] unless params[:failure_message].nil?
        type
      end
    end

    class ImportTableInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ImportTableInput, context: context)
        type = Types::ImportTableInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.s3_bucket_source = S3BucketSource.build(params[:s3_bucket_source], context: "#{context}[:s3_bucket_source]") unless params[:s3_bucket_source].nil?
        type.input_format = params[:input_format] unless params[:input_format].nil?
        type.input_format_options = InputFormatOptions.build(params[:input_format_options], context: "#{context}[:input_format_options]") unless params[:input_format_options].nil?
        type.input_compression_type = params[:input_compression_type] unless params[:input_compression_type].nil?
        type.table_creation_parameters = TableCreationParameters.build(params[:table_creation_parameters], context: "#{context}[:table_creation_parameters]") unless params[:table_creation_parameters].nil?
        type
      end
    end

    class ImportTableOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ImportTableOutput, context: context)
        type = Types::ImportTableOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.import_table_description = ImportTableDescription.build(params[:import_table_description], context: "#{context}[:import_table_description]") unless params[:import_table_description].nil?
        type
      end
    end

    class IncrementalExportSpecification
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::IncrementalExportSpecification, context: context)
        type = Types::IncrementalExportSpecification.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.export_from_time = params[:export_from_time] unless params[:export_from_time].nil?
        type.export_to_time = params[:export_to_time] unless params[:export_to_time].nil?
        type.export_view_type = params[:export_view_type] unless params[:export_view_type].nil?
        type
      end
    end

    class IndexNotFoundException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::IndexNotFoundException, context: context)
        type = Types::IndexNotFoundException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class InputFormatOptions
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::InputFormatOptions, context: context)
        type = Types::InputFormatOptions.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.csv = CsvOptions.build(params[:csv], context: "#{context}[:csv]") unless params[:csv].nil?
        type
      end
    end

    class InternalServerError
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::InternalServerError, context: context)
        type = Types::InternalServerError.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class InvalidEndpointException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::InvalidEndpointException, context: context)
        type = Types::InvalidEndpointException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class InvalidExportTimeException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::InvalidExportTimeException, context: context)
        type = Types::InvalidExportTimeException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class InvalidRestoreTimeException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::InvalidRestoreTimeException, context: context)
        type = Types::InvalidRestoreTimeException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class ItemCollectionKeyAttributeMap
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = AttributeValue.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    class ItemCollectionMetrics
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ItemCollectionMetrics, context: context)
        type = Types::ItemCollectionMetrics.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.item_collection_key = ItemCollectionKeyAttributeMap.build(params[:item_collection_key], context: "#{context}[:item_collection_key]") unless params[:item_collection_key].nil?
        type.size_estimate_range_gb = ItemCollectionSizeEstimateRange.build(params[:size_estimate_range_gb], context: "#{context}[:size_estimate_range_gb]") unless params[:size_estimate_range_gb].nil?
        type
      end
    end

    class ItemCollectionMetricsMultiple
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ItemCollectionMetrics.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class ItemCollectionMetricsPerTable
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = ItemCollectionMetricsMultiple.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    class ItemCollectionSizeEstimateRange
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element&.to_f unless element.nil?
        end
        data
      end
    end

    class ItemCollectionSizeLimitExceededException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ItemCollectionSizeLimitExceededException, context: context)
        type = Types::ItemCollectionSizeLimitExceededException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class ItemList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AttributeMap.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class ItemResponse
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ItemResponse, context: context)
        type = Types::ItemResponse.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.item = AttributeMap.build(params[:item], context: "#{context}[:item]") unless params[:item].nil?
        type
      end
    end

    class ItemResponseList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ItemResponse.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class Key
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = AttributeValue.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    class KeyConditions
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = Condition.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    class KeyList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Key.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class KeySchema
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << KeySchemaElement.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class KeySchemaElement
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::KeySchemaElement, context: context)
        type = Types::KeySchemaElement.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.attribute_name = params[:attribute_name] unless params[:attribute_name].nil?
        type.key_type = params[:key_type] unless params[:key_type].nil?
        type
      end
    end

    class KeysAndAttributes
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::KeysAndAttributes, context: context)
        type = Types::KeysAndAttributes.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.keys = KeyList.build(params[:keys], context: "#{context}[:keys]") unless params[:keys].nil?
        type.attributes_to_get = AttributeNameList.build(params[:attributes_to_get], context: "#{context}[:attributes_to_get]") unless params[:attributes_to_get].nil?
        type.consistent_read = params[:consistent_read] unless params[:consistent_read].nil?
        type.projection_expression = params[:projection_expression] unless params[:projection_expression].nil?
        type.expression_attribute_names = ExpressionAttributeNameMap.build(params[:expression_attribute_names], context: "#{context}[:expression_attribute_names]") unless params[:expression_attribute_names].nil?
        type
      end
    end

    class KinesisDataStreamDestination
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::KinesisDataStreamDestination, context: context)
        type = Types::KinesisDataStreamDestination.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.stream_arn = params[:stream_arn] unless params[:stream_arn].nil?
        type.destination_status = params[:destination_status] unless params[:destination_status].nil?
        type.destination_status_description = params[:destination_status_description] unless params[:destination_status_description].nil?
        type.approximate_creation_date_time_precision = params[:approximate_creation_date_time_precision] unless params[:approximate_creation_date_time_precision].nil?
        type
      end
    end

    class KinesisDataStreamDestinations
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << KinesisDataStreamDestination.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class LimitExceededException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class ListAttributeValue
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AttributeValue.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class ListBackupsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListBackupsInput, context: context)
        type = Types::ListBackupsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.table_name = params[:table_name] unless params[:table_name].nil?
        type.limit = params[:limit] unless params[:limit].nil?
        type.time_range_lower_bound = params[:time_range_lower_bound] unless params[:time_range_lower_bound].nil?
        type.time_range_upper_bound = params[:time_range_upper_bound] unless params[:time_range_upper_bound].nil?
        type.exclusive_start_backup_arn = params[:exclusive_start_backup_arn] unless params[:exclusive_start_backup_arn].nil?
        type.backup_type = params[:backup_type] unless params[:backup_type].nil?
        type
      end
    end

    class ListBackupsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListBackupsOutput, context: context)
        type = Types::ListBackupsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.backup_summaries = BackupSummaries.build(params[:backup_summaries], context: "#{context}[:backup_summaries]") unless params[:backup_summaries].nil?
        type.last_evaluated_backup_arn = params[:last_evaluated_backup_arn] unless params[:last_evaluated_backup_arn].nil?
        type
      end
    end

    class ListContributorInsightsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListContributorInsightsInput, context: context)
        type = Types::ListContributorInsightsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.table_name = params[:table_name] unless params[:table_name].nil?
        type.next_token = params[:next_token] unless params[:next_token].nil?
        type.max_results = params[:max_results] unless params[:max_results].nil?
        type
      end
    end

    class ListContributorInsightsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListContributorInsightsOutput, context: context)
        type = Types::ListContributorInsightsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.contributor_insights_summaries = ContributorInsightsSummaries.build(params[:contributor_insights_summaries], context: "#{context}[:contributor_insights_summaries]") unless params[:contributor_insights_summaries].nil?
        type.next_token = params[:next_token] unless params[:next_token].nil?
        type
      end
    end

    class ListExportsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListExportsInput, context: context)
        type = Types::ListExportsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.table_arn = params[:table_arn] unless params[:table_arn].nil?
        type.max_results = params[:max_results] unless params[:max_results].nil?
        type.next_token = params[:next_token] unless params[:next_token].nil?
        type
      end
    end

    class ListExportsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListExportsOutput, context: context)
        type = Types::ListExportsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.export_summaries = ExportSummaries.build(params[:export_summaries], context: "#{context}[:export_summaries]") unless params[:export_summaries].nil?
        type.next_token = params[:next_token] unless params[:next_token].nil?
        type
      end
    end

    class ListGlobalTablesInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListGlobalTablesInput, context: context)
        type = Types::ListGlobalTablesInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.exclusive_start_global_table_name = params[:exclusive_start_global_table_name] unless params[:exclusive_start_global_table_name].nil?
        type.limit = params[:limit] unless params[:limit].nil?
        type.region_name = params[:region_name] unless params[:region_name].nil?
        type
      end
    end

    class ListGlobalTablesOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListGlobalTablesOutput, context: context)
        type = Types::ListGlobalTablesOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.global_tables = GlobalTableList.build(params[:global_tables], context: "#{context}[:global_tables]") unless params[:global_tables].nil?
        type.last_evaluated_global_table_name = params[:last_evaluated_global_table_name] unless params[:last_evaluated_global_table_name].nil?
        type
      end
    end

    class ListImportsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListImportsInput, context: context)
        type = Types::ListImportsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.table_arn = params[:table_arn] unless params[:table_arn].nil?
        type.page_size = params[:page_size] unless params[:page_size].nil?
        type.next_token = params[:next_token] unless params[:next_token].nil?
        type
      end
    end

    class ListImportsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListImportsOutput, context: context)
        type = Types::ListImportsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.import_summary_list = ImportSummaryList.build(params[:import_summary_list], context: "#{context}[:import_summary_list]") unless params[:import_summary_list].nil?
        type.next_token = params[:next_token] unless params[:next_token].nil?
        type
      end
    end

    class ListTablesInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListTablesInput, context: context)
        type = Types::ListTablesInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.exclusive_start_table_name = params[:exclusive_start_table_name] unless params[:exclusive_start_table_name].nil?
        type.limit = params[:limit] unless params[:limit].nil?
        type
      end
    end

    class ListTablesOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListTablesOutput, context: context)
        type = Types::ListTablesOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.table_names = TableNameList.build(params[:table_names], context: "#{context}[:table_names]") unless params[:table_names].nil?
        type.last_evaluated_table_name = params[:last_evaluated_table_name] unless params[:last_evaluated_table_name].nil?
        type
      end
    end

    class ListTagsOfResourceInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListTagsOfResourceInput, context: context)
        type = Types::ListTagsOfResourceInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.resource_arn = params[:resource_arn] unless params[:resource_arn].nil?
        type.next_token = params[:next_token] unless params[:next_token].nil?
        type
      end
    end

    class ListTagsOfResourceOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListTagsOfResourceOutput, context: context)
        type = Types::ListTagsOfResourceOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.next_token = params[:next_token] unless params[:next_token].nil?
        type
      end
    end

    class LocalSecondaryIndex
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::LocalSecondaryIndex, context: context)
        type = Types::LocalSecondaryIndex.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.index_name = params[:index_name] unless params[:index_name].nil?
        type.key_schema = KeySchema.build(params[:key_schema], context: "#{context}[:key_schema]") unless params[:key_schema].nil?
        type.projection = Projection.build(params[:projection], context: "#{context}[:projection]") unless params[:projection].nil?
        type
      end
    end

    class LocalSecondaryIndexDescription
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::LocalSecondaryIndexDescription, context: context)
        type = Types::LocalSecondaryIndexDescription.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.index_name = params[:index_name] unless params[:index_name].nil?
        type.key_schema = KeySchema.build(params[:key_schema], context: "#{context}[:key_schema]") unless params[:key_schema].nil?
        type.projection = Projection.build(params[:projection], context: "#{context}[:projection]") unless params[:projection].nil?
        type.index_size_bytes = params[:index_size_bytes] unless params[:index_size_bytes].nil?
        type.item_count = params[:item_count] unless params[:item_count].nil?
        type.index_arn = params[:index_arn] unless params[:index_arn].nil?
        type
      end
    end

    class LocalSecondaryIndexDescriptionList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LocalSecondaryIndexDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class LocalSecondaryIndexInfo
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::LocalSecondaryIndexInfo, context: context)
        type = Types::LocalSecondaryIndexInfo.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.index_name = params[:index_name] unless params[:index_name].nil?
        type.key_schema = KeySchema.build(params[:key_schema], context: "#{context}[:key_schema]") unless params[:key_schema].nil?
        type.projection = Projection.build(params[:projection], context: "#{context}[:projection]") unless params[:projection].nil?
        type
      end
    end

    class LocalSecondaryIndexList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LocalSecondaryIndex.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class LocalSecondaryIndexes
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LocalSecondaryIndexInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class MapAttributeValue
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = AttributeValue.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    class NonKeyAttributeNameList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class NumberSetAttributeValue
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class ParameterizedStatement
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ParameterizedStatement, context: context)
        type = Types::ParameterizedStatement.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.statement = params[:statement] unless params[:statement].nil?
        type.parameters = PreparedStatementParameters.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.return_values_on_condition_check_failure = params[:return_values_on_condition_check_failure] unless params[:return_values_on_condition_check_failure].nil?
        type
      end
    end

    class ParameterizedStatements
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ParameterizedStatement.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class PartiQLBatchRequest
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchStatementRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class PartiQLBatchResponse
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchStatementResponse.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class PointInTimeRecoveryDescription
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PointInTimeRecoveryDescription, context: context)
        type = Types::PointInTimeRecoveryDescription.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.point_in_time_recovery_status = params[:point_in_time_recovery_status] unless params[:point_in_time_recovery_status].nil?
        type.earliest_restorable_date_time = params[:earliest_restorable_date_time] unless params[:earliest_restorable_date_time].nil?
        type.latest_restorable_date_time = params[:latest_restorable_date_time] unless params[:latest_restorable_date_time].nil?
        type
      end
    end

    class PointInTimeRecoverySpecification
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PointInTimeRecoverySpecification, context: context)
        type = Types::PointInTimeRecoverySpecification.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.point_in_time_recovery_enabled = params[:point_in_time_recovery_enabled] unless params[:point_in_time_recovery_enabled].nil?
        type
      end
    end

    class PointInTimeRecoveryUnavailableException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PointInTimeRecoveryUnavailableException, context: context)
        type = Types::PointInTimeRecoveryUnavailableException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class PreparedStatementParameters
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AttributeValue.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class Projection
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Projection, context: context)
        type = Types::Projection.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.projection_type = params[:projection_type] unless params[:projection_type].nil?
        type.non_key_attributes = NonKeyAttributeNameList.build(params[:non_key_attributes], context: "#{context}[:non_key_attributes]") unless params[:non_key_attributes].nil?
        type
      end
    end

    class ProvisionedThroughput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ProvisionedThroughput, context: context)
        type = Types::ProvisionedThroughput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.read_capacity_units = params[:read_capacity_units] unless params[:read_capacity_units].nil?
        type.write_capacity_units = params[:write_capacity_units] unless params[:write_capacity_units].nil?
        type
      end
    end

    class ProvisionedThroughputDescription
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ProvisionedThroughputDescription, context: context)
        type = Types::ProvisionedThroughputDescription.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.last_increase_date_time = params[:last_increase_date_time] unless params[:last_increase_date_time].nil?
        type.last_decrease_date_time = params[:last_decrease_date_time] unless params[:last_decrease_date_time].nil?
        type.number_of_decreases_today = params[:number_of_decreases_today] unless params[:number_of_decreases_today].nil?
        type.read_capacity_units = params[:read_capacity_units] unless params[:read_capacity_units].nil?
        type.write_capacity_units = params[:write_capacity_units] unless params[:write_capacity_units].nil?
        type
      end
    end

    class ProvisionedThroughputExceededException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ProvisionedThroughputExceededException, context: context)
        type = Types::ProvisionedThroughputExceededException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class ProvisionedThroughputOverride
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ProvisionedThroughputOverride, context: context)
        type = Types::ProvisionedThroughputOverride.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.read_capacity_units = params[:read_capacity_units] unless params[:read_capacity_units].nil?
        type
      end
    end

    class Put
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Put, context: context)
        type = Types::Put.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.item = PutItemInputAttributeMap.build(params[:item], context: "#{context}[:item]") unless params[:item].nil?
        type.table_name = params[:table_name] unless params[:table_name].nil?
        type.condition_expression = params[:condition_expression] unless params[:condition_expression].nil?
        type.expression_attribute_names = ExpressionAttributeNameMap.build(params[:expression_attribute_names], context: "#{context}[:expression_attribute_names]") unless params[:expression_attribute_names].nil?
        type.expression_attribute_values = ExpressionAttributeValueMap.build(params[:expression_attribute_values], context: "#{context}[:expression_attribute_values]") unless params[:expression_attribute_values].nil?
        type.return_values_on_condition_check_failure = params[:return_values_on_condition_check_failure] unless params[:return_values_on_condition_check_failure].nil?
        type
      end
    end

    class PutItemInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutItemInput, context: context)
        type = Types::PutItemInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.table_name = params[:table_name] unless params[:table_name].nil?
        type.item = PutItemInputAttributeMap.build(params[:item], context: "#{context}[:item]") unless params[:item].nil?
        type.expected = ExpectedAttributeMap.build(params[:expected], context: "#{context}[:expected]") unless params[:expected].nil?
        type.return_values = params[:return_values] unless params[:return_values].nil?
        type.return_consumed_capacity = params[:return_consumed_capacity] unless params[:return_consumed_capacity].nil?
        type.return_item_collection_metrics = params[:return_item_collection_metrics] unless params[:return_item_collection_metrics].nil?
        type.conditional_operator = params[:conditional_operator] unless params[:conditional_operator].nil?
        type.condition_expression = params[:condition_expression] unless params[:condition_expression].nil?
        type.expression_attribute_names = ExpressionAttributeNameMap.build(params[:expression_attribute_names], context: "#{context}[:expression_attribute_names]") unless params[:expression_attribute_names].nil?
        type.expression_attribute_values = ExpressionAttributeValueMap.build(params[:expression_attribute_values], context: "#{context}[:expression_attribute_values]") unless params[:expression_attribute_values].nil?
        type.return_values_on_condition_check_failure = params[:return_values_on_condition_check_failure] unless params[:return_values_on_condition_check_failure].nil?
        type
      end
    end

    class PutItemInputAttributeMap
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = AttributeValue.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    class PutItemOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutItemOutput, context: context)
        type = Types::PutItemOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.attributes = AttributeMap.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.consumed_capacity = ConsumedCapacity.build(params[:consumed_capacity], context: "#{context}[:consumed_capacity]") unless params[:consumed_capacity].nil?
        type.item_collection_metrics = ItemCollectionMetrics.build(params[:item_collection_metrics], context: "#{context}[:item_collection_metrics]") unless params[:item_collection_metrics].nil?
        type
      end
    end

    class PutRequest
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PutRequest, context: context)
        type = Types::PutRequest.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.item = PutItemInputAttributeMap.build(params[:item], context: "#{context}[:item]") unless params[:item].nil?
        type
      end
    end

    class QueryInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::QueryInput, context: context)
        type = Types::QueryInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.table_name = params[:table_name] unless params[:table_name].nil?
        type.index_name = params[:index_name] unless params[:index_name].nil?
        type.select = params[:select] unless params[:select].nil?
        type.attributes_to_get = AttributeNameList.build(params[:attributes_to_get], context: "#{context}[:attributes_to_get]") unless params[:attributes_to_get].nil?
        type.limit = params[:limit] unless params[:limit].nil?
        type.consistent_read = params[:consistent_read] unless params[:consistent_read].nil?
        type.key_conditions = KeyConditions.build(params[:key_conditions], context: "#{context}[:key_conditions]") unless params[:key_conditions].nil?
        type.query_filter = FilterConditionMap.build(params[:query_filter], context: "#{context}[:query_filter]") unless params[:query_filter].nil?
        type.conditional_operator = params[:conditional_operator] unless params[:conditional_operator].nil?
        type.scan_index_forward = params[:scan_index_forward] unless params[:scan_index_forward].nil?
        type.exclusive_start_key = Key.build(params[:exclusive_start_key], context: "#{context}[:exclusive_start_key]") unless params[:exclusive_start_key].nil?
        type.return_consumed_capacity = params[:return_consumed_capacity] unless params[:return_consumed_capacity].nil?
        type.projection_expression = params[:projection_expression] unless params[:projection_expression].nil?
        type.filter_expression = params[:filter_expression] unless params[:filter_expression].nil?
        type.key_condition_expression = params[:key_condition_expression] unless params[:key_condition_expression].nil?
        type.expression_attribute_names = ExpressionAttributeNameMap.build(params[:expression_attribute_names], context: "#{context}[:expression_attribute_names]") unless params[:expression_attribute_names].nil?
        type.expression_attribute_values = ExpressionAttributeValueMap.build(params[:expression_attribute_values], context: "#{context}[:expression_attribute_values]") unless params[:expression_attribute_values].nil?
        type
      end
    end

    class QueryOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::QueryOutput, context: context)
        type = Types::QueryOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.items = ItemList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.count = params[:count] unless params[:count].nil?
        type.scanned_count = params[:scanned_count] unless params[:scanned_count].nil?
        type.last_evaluated_key = Key.build(params[:last_evaluated_key], context: "#{context}[:last_evaluated_key]") unless params[:last_evaluated_key].nil?
        type.consumed_capacity = ConsumedCapacity.build(params[:consumed_capacity], context: "#{context}[:consumed_capacity]") unless params[:consumed_capacity].nil?
        type
      end
    end

    class Replica
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Replica, context: context)
        type = Types::Replica.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.region_name = params[:region_name] unless params[:region_name].nil?
        type
      end
    end

    class ReplicaAlreadyExistsException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ReplicaAlreadyExistsException, context: context)
        type = Types::ReplicaAlreadyExistsException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class ReplicaAutoScalingDescription
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ReplicaAutoScalingDescription, context: context)
        type = Types::ReplicaAutoScalingDescription.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.region_name = params[:region_name] unless params[:region_name].nil?
        type.global_secondary_indexes = ReplicaGlobalSecondaryIndexAutoScalingDescriptionList.build(params[:global_secondary_indexes], context: "#{context}[:global_secondary_indexes]") unless params[:global_secondary_indexes].nil?
        type.replica_provisioned_read_capacity_auto_scaling_settings = AutoScalingSettingsDescription.build(params[:replica_provisioned_read_capacity_auto_scaling_settings], context: "#{context}[:replica_provisioned_read_capacity_auto_scaling_settings]") unless params[:replica_provisioned_read_capacity_auto_scaling_settings].nil?
        type.replica_provisioned_write_capacity_auto_scaling_settings = AutoScalingSettingsDescription.build(params[:replica_provisioned_write_capacity_auto_scaling_settings], context: "#{context}[:replica_provisioned_write_capacity_auto_scaling_settings]") unless params[:replica_provisioned_write_capacity_auto_scaling_settings].nil?
        type.replica_status = params[:replica_status] unless params[:replica_status].nil?
        type
      end
    end

    class ReplicaAutoScalingDescriptionList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReplicaAutoScalingDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class ReplicaAutoScalingUpdate
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ReplicaAutoScalingUpdate, context: context)
        type = Types::ReplicaAutoScalingUpdate.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.region_name = params[:region_name] unless params[:region_name].nil?
        type.replica_global_secondary_index_updates = ReplicaGlobalSecondaryIndexAutoScalingUpdateList.build(params[:replica_global_secondary_index_updates], context: "#{context}[:replica_global_secondary_index_updates]") unless params[:replica_global_secondary_index_updates].nil?
        type.replica_provisioned_read_capacity_auto_scaling_update = AutoScalingSettingsUpdate.build(params[:replica_provisioned_read_capacity_auto_scaling_update], context: "#{context}[:replica_provisioned_read_capacity_auto_scaling_update]") unless params[:replica_provisioned_read_capacity_auto_scaling_update].nil?
        type
      end
    end

    class ReplicaAutoScalingUpdateList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReplicaAutoScalingUpdate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class ReplicaDescription
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ReplicaDescription, context: context)
        type = Types::ReplicaDescription.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.region_name = params[:region_name] unless params[:region_name].nil?
        type.replica_status = params[:replica_status] unless params[:replica_status].nil?
        type.replica_status_description = params[:replica_status_description] unless params[:replica_status_description].nil?
        type.replica_status_percent_progress = params[:replica_status_percent_progress] unless params[:replica_status_percent_progress].nil?
        type.kms_master_key_id = params[:kms_master_key_id] unless params[:kms_master_key_id].nil?
        type.provisioned_throughput_override = ProvisionedThroughputOverride.build(params[:provisioned_throughput_override], context: "#{context}[:provisioned_throughput_override]") unless params[:provisioned_throughput_override].nil?
        type.global_secondary_indexes = ReplicaGlobalSecondaryIndexDescriptionList.build(params[:global_secondary_indexes], context: "#{context}[:global_secondary_indexes]") unless params[:global_secondary_indexes].nil?
        type.replica_inaccessible_date_time = params[:replica_inaccessible_date_time] unless params[:replica_inaccessible_date_time].nil?
        type.replica_table_class_summary = TableClassSummary.build(params[:replica_table_class_summary], context: "#{context}[:replica_table_class_summary]") unless params[:replica_table_class_summary].nil?
        type
      end
    end

    class ReplicaDescriptionList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReplicaDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class ReplicaGlobalSecondaryIndex
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ReplicaGlobalSecondaryIndex, context: context)
        type = Types::ReplicaGlobalSecondaryIndex.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.index_name = params[:index_name] unless params[:index_name].nil?
        type.provisioned_throughput_override = ProvisionedThroughputOverride.build(params[:provisioned_throughput_override], context: "#{context}[:provisioned_throughput_override]") unless params[:provisioned_throughput_override].nil?
        type
      end
    end

    class ReplicaGlobalSecondaryIndexAutoScalingDescription
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ReplicaGlobalSecondaryIndexAutoScalingDescription, context: context)
        type = Types::ReplicaGlobalSecondaryIndexAutoScalingDescription.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.index_name = params[:index_name] unless params[:index_name].nil?
        type.index_status = params[:index_status] unless params[:index_status].nil?
        type.provisioned_read_capacity_auto_scaling_settings = AutoScalingSettingsDescription.build(params[:provisioned_read_capacity_auto_scaling_settings], context: "#{context}[:provisioned_read_capacity_auto_scaling_settings]") unless params[:provisioned_read_capacity_auto_scaling_settings].nil?
        type.provisioned_write_capacity_auto_scaling_settings = AutoScalingSettingsDescription.build(params[:provisioned_write_capacity_auto_scaling_settings], context: "#{context}[:provisioned_write_capacity_auto_scaling_settings]") unless params[:provisioned_write_capacity_auto_scaling_settings].nil?
        type
      end
    end

    class ReplicaGlobalSecondaryIndexAutoScalingDescriptionList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReplicaGlobalSecondaryIndexAutoScalingDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class ReplicaGlobalSecondaryIndexAutoScalingUpdate
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ReplicaGlobalSecondaryIndexAutoScalingUpdate, context: context)
        type = Types::ReplicaGlobalSecondaryIndexAutoScalingUpdate.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.index_name = params[:index_name] unless params[:index_name].nil?
        type.provisioned_read_capacity_auto_scaling_update = AutoScalingSettingsUpdate.build(params[:provisioned_read_capacity_auto_scaling_update], context: "#{context}[:provisioned_read_capacity_auto_scaling_update]") unless params[:provisioned_read_capacity_auto_scaling_update].nil?
        type
      end
    end

    class ReplicaGlobalSecondaryIndexAutoScalingUpdateList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReplicaGlobalSecondaryIndexAutoScalingUpdate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class ReplicaGlobalSecondaryIndexDescription
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ReplicaGlobalSecondaryIndexDescription, context: context)
        type = Types::ReplicaGlobalSecondaryIndexDescription.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.index_name = params[:index_name] unless params[:index_name].nil?
        type.provisioned_throughput_override = ProvisionedThroughputOverride.build(params[:provisioned_throughput_override], context: "#{context}[:provisioned_throughput_override]") unless params[:provisioned_throughput_override].nil?
        type
      end
    end

    class ReplicaGlobalSecondaryIndexDescriptionList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReplicaGlobalSecondaryIndexDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class ReplicaGlobalSecondaryIndexList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReplicaGlobalSecondaryIndex.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class ReplicaGlobalSecondaryIndexSettingsDescription
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ReplicaGlobalSecondaryIndexSettingsDescription, context: context)
        type = Types::ReplicaGlobalSecondaryIndexSettingsDescription.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.index_name = params[:index_name] unless params[:index_name].nil?
        type.index_status = params[:index_status] unless params[:index_status].nil?
        type.provisioned_read_capacity_units = params[:provisioned_read_capacity_units] unless params[:provisioned_read_capacity_units].nil?
        type.provisioned_read_capacity_auto_scaling_settings = AutoScalingSettingsDescription.build(params[:provisioned_read_capacity_auto_scaling_settings], context: "#{context}[:provisioned_read_capacity_auto_scaling_settings]") unless params[:provisioned_read_capacity_auto_scaling_settings].nil?
        type.provisioned_write_capacity_units = params[:provisioned_write_capacity_units] unless params[:provisioned_write_capacity_units].nil?
        type.provisioned_write_capacity_auto_scaling_settings = AutoScalingSettingsDescription.build(params[:provisioned_write_capacity_auto_scaling_settings], context: "#{context}[:provisioned_write_capacity_auto_scaling_settings]") unless params[:provisioned_write_capacity_auto_scaling_settings].nil?
        type
      end
    end

    class ReplicaGlobalSecondaryIndexSettingsDescriptionList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReplicaGlobalSecondaryIndexSettingsDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class ReplicaGlobalSecondaryIndexSettingsUpdate
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ReplicaGlobalSecondaryIndexSettingsUpdate, context: context)
        type = Types::ReplicaGlobalSecondaryIndexSettingsUpdate.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.index_name = params[:index_name] unless params[:index_name].nil?
        type.provisioned_read_capacity_units = params[:provisioned_read_capacity_units] unless params[:provisioned_read_capacity_units].nil?
        type.provisioned_read_capacity_auto_scaling_settings_update = AutoScalingSettingsUpdate.build(params[:provisioned_read_capacity_auto_scaling_settings_update], context: "#{context}[:provisioned_read_capacity_auto_scaling_settings_update]") unless params[:provisioned_read_capacity_auto_scaling_settings_update].nil?
        type
      end
    end

    class ReplicaGlobalSecondaryIndexSettingsUpdateList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReplicaGlobalSecondaryIndexSettingsUpdate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class ReplicaList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Replica.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class ReplicaNotFoundException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ReplicaNotFoundException, context: context)
        type = Types::ReplicaNotFoundException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class ReplicaSettingsDescription
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ReplicaSettingsDescription, context: context)
        type = Types::ReplicaSettingsDescription.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.region_name = params[:region_name] unless params[:region_name].nil?
        type.replica_status = params[:replica_status] unless params[:replica_status].nil?
        type.replica_billing_mode_summary = BillingModeSummary.build(params[:replica_billing_mode_summary], context: "#{context}[:replica_billing_mode_summary]") unless params[:replica_billing_mode_summary].nil?
        type.replica_provisioned_read_capacity_units = params[:replica_provisioned_read_capacity_units] unless params[:replica_provisioned_read_capacity_units].nil?
        type.replica_provisioned_read_capacity_auto_scaling_settings = AutoScalingSettingsDescription.build(params[:replica_provisioned_read_capacity_auto_scaling_settings], context: "#{context}[:replica_provisioned_read_capacity_auto_scaling_settings]") unless params[:replica_provisioned_read_capacity_auto_scaling_settings].nil?
        type.replica_provisioned_write_capacity_units = params[:replica_provisioned_write_capacity_units] unless params[:replica_provisioned_write_capacity_units].nil?
        type.replica_provisioned_write_capacity_auto_scaling_settings = AutoScalingSettingsDescription.build(params[:replica_provisioned_write_capacity_auto_scaling_settings], context: "#{context}[:replica_provisioned_write_capacity_auto_scaling_settings]") unless params[:replica_provisioned_write_capacity_auto_scaling_settings].nil?
        type.replica_global_secondary_index_settings = ReplicaGlobalSecondaryIndexSettingsDescriptionList.build(params[:replica_global_secondary_index_settings], context: "#{context}[:replica_global_secondary_index_settings]") unless params[:replica_global_secondary_index_settings].nil?
        type.replica_table_class_summary = TableClassSummary.build(params[:replica_table_class_summary], context: "#{context}[:replica_table_class_summary]") unless params[:replica_table_class_summary].nil?
        type
      end
    end

    class ReplicaSettingsDescriptionList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReplicaSettingsDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class ReplicaSettingsUpdate
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ReplicaSettingsUpdate, context: context)
        type = Types::ReplicaSettingsUpdate.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.region_name = params[:region_name] unless params[:region_name].nil?
        type.replica_provisioned_read_capacity_units = params[:replica_provisioned_read_capacity_units] unless params[:replica_provisioned_read_capacity_units].nil?
        type.replica_provisioned_read_capacity_auto_scaling_settings_update = AutoScalingSettingsUpdate.build(params[:replica_provisioned_read_capacity_auto_scaling_settings_update], context: "#{context}[:replica_provisioned_read_capacity_auto_scaling_settings_update]") unless params[:replica_provisioned_read_capacity_auto_scaling_settings_update].nil?
        type.replica_global_secondary_index_settings_update = ReplicaGlobalSecondaryIndexSettingsUpdateList.build(params[:replica_global_secondary_index_settings_update], context: "#{context}[:replica_global_secondary_index_settings_update]") unless params[:replica_global_secondary_index_settings_update].nil?
        type.replica_table_class = params[:replica_table_class] unless params[:replica_table_class].nil?
        type
      end
    end

    class ReplicaSettingsUpdateList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReplicaSettingsUpdate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class ReplicaUpdate
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ReplicaUpdate, context: context)
        type = Types::ReplicaUpdate.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.create = CreateReplicaAction.build(params[:create], context: "#{context}[:create]") unless params[:create].nil?
        type.delete = DeleteReplicaAction.build(params[:delete], context: "#{context}[:delete]") unless params[:delete].nil?
        type
      end
    end

    class ReplicaUpdateList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReplicaUpdate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class ReplicationGroupUpdate
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ReplicationGroupUpdate, context: context)
        type = Types::ReplicationGroupUpdate.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.create = CreateReplicationGroupMemberAction.build(params[:create], context: "#{context}[:create]") unless params[:create].nil?
        type.update = UpdateReplicationGroupMemberAction.build(params[:update], context: "#{context}[:update]") unless params[:update].nil?
        type.delete = DeleteReplicationGroupMemberAction.build(params[:delete], context: "#{context}[:delete]") unless params[:delete].nil?
        type
      end
    end

    class ReplicationGroupUpdateList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReplicationGroupUpdate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class RequestLimitExceeded
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::RequestLimitExceeded, context: context)
        type = Types::RequestLimitExceeded.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class ResourceInUseException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ResourceInUseException, context: context)
        type = Types::ResourceInUseException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class ResourceNotFoundException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class RestoreSummary
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::RestoreSummary, context: context)
        type = Types::RestoreSummary.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.source_backup_arn = params[:source_backup_arn] unless params[:source_backup_arn].nil?
        type.source_table_arn = params[:source_table_arn] unless params[:source_table_arn].nil?
        type.restore_date_time = params[:restore_date_time] unless params[:restore_date_time].nil?
        type.restore_in_progress = params[:restore_in_progress] unless params[:restore_in_progress].nil?
        type
      end
    end

    class RestoreTableFromBackupInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::RestoreTableFromBackupInput, context: context)
        type = Types::RestoreTableFromBackupInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.target_table_name = params[:target_table_name] unless params[:target_table_name].nil?
        type.backup_arn = params[:backup_arn] unless params[:backup_arn].nil?
        type.billing_mode_override = params[:billing_mode_override] unless params[:billing_mode_override].nil?
        type.global_secondary_index_override = GlobalSecondaryIndexList.build(params[:global_secondary_index_override], context: "#{context}[:global_secondary_index_override]") unless params[:global_secondary_index_override].nil?
        type.local_secondary_index_override = LocalSecondaryIndexList.build(params[:local_secondary_index_override], context: "#{context}[:local_secondary_index_override]") unless params[:local_secondary_index_override].nil?
        type.provisioned_throughput_override = ProvisionedThroughput.build(params[:provisioned_throughput_override], context: "#{context}[:provisioned_throughput_override]") unless params[:provisioned_throughput_override].nil?
        type.sse_specification_override = SSESpecification.build(params[:sse_specification_override], context: "#{context}[:sse_specification_override]") unless params[:sse_specification_override].nil?
        type
      end
    end

    class RestoreTableFromBackupOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::RestoreTableFromBackupOutput, context: context)
        type = Types::RestoreTableFromBackupOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.table_description = TableDescription.build(params[:table_description], context: "#{context}[:table_description]") unless params[:table_description].nil?
        type
      end
    end

    class RestoreTableToPointInTimeInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::RestoreTableToPointInTimeInput, context: context)
        type = Types::RestoreTableToPointInTimeInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.source_table_arn = params[:source_table_arn] unless params[:source_table_arn].nil?
        type.source_table_name = params[:source_table_name] unless params[:source_table_name].nil?
        type.target_table_name = params[:target_table_name] unless params[:target_table_name].nil?
        type.use_latest_restorable_time = params[:use_latest_restorable_time] unless params[:use_latest_restorable_time].nil?
        type.restore_date_time = params[:restore_date_time] unless params[:restore_date_time].nil?
        type.billing_mode_override = params[:billing_mode_override] unless params[:billing_mode_override].nil?
        type.global_secondary_index_override = GlobalSecondaryIndexList.build(params[:global_secondary_index_override], context: "#{context}[:global_secondary_index_override]") unless params[:global_secondary_index_override].nil?
        type.local_secondary_index_override = LocalSecondaryIndexList.build(params[:local_secondary_index_override], context: "#{context}[:local_secondary_index_override]") unless params[:local_secondary_index_override].nil?
        type.provisioned_throughput_override = ProvisionedThroughput.build(params[:provisioned_throughput_override], context: "#{context}[:provisioned_throughput_override]") unless params[:provisioned_throughput_override].nil?
        type.sse_specification_override = SSESpecification.build(params[:sse_specification_override], context: "#{context}[:sse_specification_override]") unless params[:sse_specification_override].nil?
        type
      end
    end

    class RestoreTableToPointInTimeOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::RestoreTableToPointInTimeOutput, context: context)
        type = Types::RestoreTableToPointInTimeOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.table_description = TableDescription.build(params[:table_description], context: "#{context}[:table_description]") unless params[:table_description].nil?
        type
      end
    end

    class S3BucketSource
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::S3BucketSource, context: context)
        type = Types::S3BucketSource.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.s3_bucket_owner = params[:s3_bucket_owner] unless params[:s3_bucket_owner].nil?
        type.s3_bucket = params[:s3_bucket] unless params[:s3_bucket].nil?
        type.s3_key_prefix = params[:s3_key_prefix] unless params[:s3_key_prefix].nil?
        type
      end
    end

    class SSEDescription
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::SSEDescription, context: context)
        type = Types::SSEDescription.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.status = params[:status] unless params[:status].nil?
        type.sse_type = params[:sse_type] unless params[:sse_type].nil?
        type.kms_master_key_arn = params[:kms_master_key_arn] unless params[:kms_master_key_arn].nil?
        type.inaccessible_encryption_date_time = params[:inaccessible_encryption_date_time] unless params[:inaccessible_encryption_date_time].nil?
        type
      end
    end

    class SSESpecification
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::SSESpecification, context: context)
        type = Types::SSESpecification.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.enabled = params[:enabled] unless params[:enabled].nil?
        type.sse_type = params[:sse_type] unless params[:sse_type].nil?
        type.kms_master_key_id = params[:kms_master_key_id] unless params[:kms_master_key_id].nil?
        type
      end
    end

    class ScanInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ScanInput, context: context)
        type = Types::ScanInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.table_name = params[:table_name] unless params[:table_name].nil?
        type.index_name = params[:index_name] unless params[:index_name].nil?
        type.attributes_to_get = AttributeNameList.build(params[:attributes_to_get], context: "#{context}[:attributes_to_get]") unless params[:attributes_to_get].nil?
        type.limit = params[:limit] unless params[:limit].nil?
        type.select = params[:select] unless params[:select].nil?
        type.scan_filter = FilterConditionMap.build(params[:scan_filter], context: "#{context}[:scan_filter]") unless params[:scan_filter].nil?
        type.conditional_operator = params[:conditional_operator] unless params[:conditional_operator].nil?
        type.exclusive_start_key = Key.build(params[:exclusive_start_key], context: "#{context}[:exclusive_start_key]") unless params[:exclusive_start_key].nil?
        type.return_consumed_capacity = params[:return_consumed_capacity] unless params[:return_consumed_capacity].nil?
        type.total_segments = params[:total_segments] unless params[:total_segments].nil?
        type.segment = params[:segment] unless params[:segment].nil?
        type.projection_expression = params[:projection_expression] unless params[:projection_expression].nil?
        type.filter_expression = params[:filter_expression] unless params[:filter_expression].nil?
        type.expression_attribute_names = ExpressionAttributeNameMap.build(params[:expression_attribute_names], context: "#{context}[:expression_attribute_names]") unless params[:expression_attribute_names].nil?
        type.expression_attribute_values = ExpressionAttributeValueMap.build(params[:expression_attribute_values], context: "#{context}[:expression_attribute_values]") unless params[:expression_attribute_values].nil?
        type.consistent_read = params[:consistent_read] unless params[:consistent_read].nil?
        type
      end
    end

    class ScanOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ScanOutput, context: context)
        type = Types::ScanOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.items = ItemList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.count = params[:count] unless params[:count].nil?
        type.scanned_count = params[:scanned_count] unless params[:scanned_count].nil?
        type.last_evaluated_key = Key.build(params[:last_evaluated_key], context: "#{context}[:last_evaluated_key]") unless params[:last_evaluated_key].nil?
        type.consumed_capacity = ConsumedCapacity.build(params[:consumed_capacity], context: "#{context}[:consumed_capacity]") unless params[:consumed_capacity].nil?
        type
      end
    end

    class SecondaryIndexesCapacityMap
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = Capacity.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    class SourceTableDetails
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::SourceTableDetails, context: context)
        type = Types::SourceTableDetails.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.table_name = params[:table_name] unless params[:table_name].nil?
        type.table_id = params[:table_id] unless params[:table_id].nil?
        type.table_arn = params[:table_arn] unless params[:table_arn].nil?
        type.table_size_bytes = params[:table_size_bytes] unless params[:table_size_bytes].nil?
        type.key_schema = KeySchema.build(params[:key_schema], context: "#{context}[:key_schema]") unless params[:key_schema].nil?
        type.table_creation_date_time = params[:table_creation_date_time] unless params[:table_creation_date_time].nil?
        type.provisioned_throughput = ProvisionedThroughput.build(params[:provisioned_throughput], context: "#{context}[:provisioned_throughput]") unless params[:provisioned_throughput].nil?
        type.item_count = params[:item_count] unless params[:item_count].nil?
        type.billing_mode = params[:billing_mode] unless params[:billing_mode].nil?
        type
      end
    end

    class SourceTableFeatureDetails
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::SourceTableFeatureDetails, context: context)
        type = Types::SourceTableFeatureDetails.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.local_secondary_indexes = LocalSecondaryIndexes.build(params[:local_secondary_indexes], context: "#{context}[:local_secondary_indexes]") unless params[:local_secondary_indexes].nil?
        type.global_secondary_indexes = GlobalSecondaryIndexes.build(params[:global_secondary_indexes], context: "#{context}[:global_secondary_indexes]") unless params[:global_secondary_indexes].nil?
        type.stream_description = StreamSpecification.build(params[:stream_description], context: "#{context}[:stream_description]") unless params[:stream_description].nil?
        type.time_to_live_description = TimeToLiveDescription.build(params[:time_to_live_description], context: "#{context}[:time_to_live_description]") unless params[:time_to_live_description].nil?
        type.sse_description = SSEDescription.build(params[:sse_description], context: "#{context}[:sse_description]") unless params[:sse_description].nil?
        type
      end
    end

    class StreamSpecification
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::StreamSpecification, context: context)
        type = Types::StreamSpecification.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.stream_enabled = params[:stream_enabled] unless params[:stream_enabled].nil?
        type.stream_view_type = params[:stream_view_type] unless params[:stream_view_type].nil?
        type
      end
    end

    class StringSetAttributeValue
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class TableAlreadyExistsException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::TableAlreadyExistsException, context: context)
        type = Types::TableAlreadyExistsException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class TableAutoScalingDescription
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::TableAutoScalingDescription, context: context)
        type = Types::TableAutoScalingDescription.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.table_name = params[:table_name] unless params[:table_name].nil?
        type.table_status = params[:table_status] unless params[:table_status].nil?
        type.replicas = ReplicaAutoScalingDescriptionList.build(params[:replicas], context: "#{context}[:replicas]") unless params[:replicas].nil?
        type
      end
    end

    class TableClassSummary
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::TableClassSummary, context: context)
        type = Types::TableClassSummary.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.table_class = params[:table_class] unless params[:table_class].nil?
        type.last_update_date_time = params[:last_update_date_time] unless params[:last_update_date_time].nil?
        type
      end
    end

    class TableCreationParameters
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::TableCreationParameters, context: context)
        type = Types::TableCreationParameters.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.table_name = params[:table_name] unless params[:table_name].nil?
        type.attribute_definitions = AttributeDefinitions.build(params[:attribute_definitions], context: "#{context}[:attribute_definitions]") unless params[:attribute_definitions].nil?
        type.key_schema = KeySchema.build(params[:key_schema], context: "#{context}[:key_schema]") unless params[:key_schema].nil?
        type.billing_mode = params[:billing_mode] unless params[:billing_mode].nil?
        type.provisioned_throughput = ProvisionedThroughput.build(params[:provisioned_throughput], context: "#{context}[:provisioned_throughput]") unless params[:provisioned_throughput].nil?
        type.sse_specification = SSESpecification.build(params[:sse_specification], context: "#{context}[:sse_specification]") unless params[:sse_specification].nil?
        type.global_secondary_indexes = GlobalSecondaryIndexList.build(params[:global_secondary_indexes], context: "#{context}[:global_secondary_indexes]") unless params[:global_secondary_indexes].nil?
        type
      end
    end

    class TableDescription
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::TableDescription, context: context)
        type = Types::TableDescription.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.attribute_definitions = AttributeDefinitions.build(params[:attribute_definitions], context: "#{context}[:attribute_definitions]") unless params[:attribute_definitions].nil?
        type.table_name = params[:table_name] unless params[:table_name].nil?
        type.key_schema = KeySchema.build(params[:key_schema], context: "#{context}[:key_schema]") unless params[:key_schema].nil?
        type.table_status = params[:table_status] unless params[:table_status].nil?
        type.creation_date_time = params[:creation_date_time] unless params[:creation_date_time].nil?
        type.provisioned_throughput = ProvisionedThroughputDescription.build(params[:provisioned_throughput], context: "#{context}[:provisioned_throughput]") unless params[:provisioned_throughput].nil?
        type.table_size_bytes = params[:table_size_bytes] unless params[:table_size_bytes].nil?
        type.item_count = params[:item_count] unless params[:item_count].nil?
        type.table_arn = params[:table_arn] unless params[:table_arn].nil?
        type.table_id = params[:table_id] unless params[:table_id].nil?
        type.billing_mode_summary = BillingModeSummary.build(params[:billing_mode_summary], context: "#{context}[:billing_mode_summary]") unless params[:billing_mode_summary].nil?
        type.local_secondary_indexes = LocalSecondaryIndexDescriptionList.build(params[:local_secondary_indexes], context: "#{context}[:local_secondary_indexes]") unless params[:local_secondary_indexes].nil?
        type.global_secondary_indexes = GlobalSecondaryIndexDescriptionList.build(params[:global_secondary_indexes], context: "#{context}[:global_secondary_indexes]") unless params[:global_secondary_indexes].nil?
        type.stream_specification = StreamSpecification.build(params[:stream_specification], context: "#{context}[:stream_specification]") unless params[:stream_specification].nil?
        type.latest_stream_label = params[:latest_stream_label] unless params[:latest_stream_label].nil?
        type.latest_stream_arn = params[:latest_stream_arn] unless params[:latest_stream_arn].nil?
        type.global_table_version = params[:global_table_version] unless params[:global_table_version].nil?
        type.replicas = ReplicaDescriptionList.build(params[:replicas], context: "#{context}[:replicas]") unless params[:replicas].nil?
        type.restore_summary = RestoreSummary.build(params[:restore_summary], context: "#{context}[:restore_summary]") unless params[:restore_summary].nil?
        type.sse_description = SSEDescription.build(params[:sse_description], context: "#{context}[:sse_description]") unless params[:sse_description].nil?
        type.archival_summary = ArchivalSummary.build(params[:archival_summary], context: "#{context}[:archival_summary]") unless params[:archival_summary].nil?
        type.table_class_summary = TableClassSummary.build(params[:table_class_summary], context: "#{context}[:table_class_summary]") unless params[:table_class_summary].nil?
        type.deletion_protection_enabled = params[:deletion_protection_enabled] unless params[:deletion_protection_enabled].nil?
        type
      end
    end

    class TableInUseException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::TableInUseException, context: context)
        type = Types::TableInUseException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class TableNameList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class TableNotFoundException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::TableNotFoundException, context: context)
        type = Types::TableNotFoundException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class Tag
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key = params[:key] unless params[:key].nil?
        type.value = params[:value] unless params[:value].nil?
        type
      end
    end

    class TagKeyList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class TagList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class TagResourceInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.resource_arn = params[:resource_arn] unless params[:resource_arn].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    class TagResourceOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class TimeToLiveDescription
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::TimeToLiveDescription, context: context)
        type = Types::TimeToLiveDescription.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.time_to_live_status = params[:time_to_live_status] unless params[:time_to_live_status].nil?
        type.attribute_name = params[:attribute_name] unless params[:attribute_name].nil?
        type
      end
    end

    class TimeToLiveSpecification
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::TimeToLiveSpecification, context: context)
        type = Types::TimeToLiveSpecification.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.enabled = params[:enabled] unless params[:enabled].nil?
        type.attribute_name = params[:attribute_name] unless params[:attribute_name].nil?
        type
      end
    end

    class TransactGetItem
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::TransactGetItem, context: context)
        type = Types::TransactGetItem.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.get = Get.build(params[:get], context: "#{context}[:get]") unless params[:get].nil?
        type
      end
    end

    class TransactGetItemList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TransactGetItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class TransactGetItemsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::TransactGetItemsInput, context: context)
        type = Types::TransactGetItemsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.transact_items = TransactGetItemList.build(params[:transact_items], context: "#{context}[:transact_items]") unless params[:transact_items].nil?
        type.return_consumed_capacity = params[:return_consumed_capacity] unless params[:return_consumed_capacity].nil?
        type
      end
    end

    class TransactGetItemsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::TransactGetItemsOutput, context: context)
        type = Types::TransactGetItemsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.consumed_capacity = ConsumedCapacityMultiple.build(params[:consumed_capacity], context: "#{context}[:consumed_capacity]") unless params[:consumed_capacity].nil?
        type.responses = ItemResponseList.build(params[:responses], context: "#{context}[:responses]") unless params[:responses].nil?
        type
      end
    end

    class TransactWriteItem
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::TransactWriteItem, context: context)
        type = Types::TransactWriteItem.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.condition_check = ConditionCheck.build(params[:condition_check], context: "#{context}[:condition_check]") unless params[:condition_check].nil?
        type.put = Put.build(params[:put], context: "#{context}[:put]") unless params[:put].nil?
        type.delete = Delete.build(params[:delete], context: "#{context}[:delete]") unless params[:delete].nil?
        type.update = Update.build(params[:update], context: "#{context}[:update]") unless params[:update].nil?
        type
      end
    end

    class TransactWriteItemList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TransactWriteItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class TransactWriteItemsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::TransactWriteItemsInput, context: context)
        type = Types::TransactWriteItemsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.transact_items = TransactWriteItemList.build(params[:transact_items], context: "#{context}[:transact_items]") unless params[:transact_items].nil?
        type.return_consumed_capacity = params[:return_consumed_capacity] unless params[:return_consumed_capacity].nil?
        type.return_item_collection_metrics = params[:return_item_collection_metrics] unless params[:return_item_collection_metrics].nil?
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type
      end
    end

    class TransactWriteItemsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::TransactWriteItemsOutput, context: context)
        type = Types::TransactWriteItemsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.consumed_capacity = ConsumedCapacityMultiple.build(params[:consumed_capacity], context: "#{context}[:consumed_capacity]") unless params[:consumed_capacity].nil?
        type.item_collection_metrics = ItemCollectionMetricsPerTable.build(params[:item_collection_metrics], context: "#{context}[:item_collection_metrics]") unless params[:item_collection_metrics].nil?
        type
      end
    end

    class TransactionCanceledException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::TransactionCanceledException, context: context)
        type = Types::TransactionCanceledException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type.cancellation_reasons = CancellationReasonList.build(params[:cancellation_reasons], context: "#{context}[:cancellation_reasons]") unless params[:cancellation_reasons].nil?
        type
      end
    end

    class TransactionConflictException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::TransactionConflictException, context: context)
        type = Types::TransactionConflictException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class TransactionInProgressException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::TransactionInProgressException, context: context)
        type = Types::TransactionInProgressException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class UntagResourceInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.resource_arn = params[:resource_arn] unless params[:resource_arn].nil?
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    class UntagResourceOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class Update
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Update, context: context)
        type = Types::Update.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key = Key.build(params[:key], context: "#{context}[:key]") unless params[:key].nil?
        type.update_expression = params[:update_expression] unless params[:update_expression].nil?
        type.table_name = params[:table_name] unless params[:table_name].nil?
        type.condition_expression = params[:condition_expression] unless params[:condition_expression].nil?
        type.expression_attribute_names = ExpressionAttributeNameMap.build(params[:expression_attribute_names], context: "#{context}[:expression_attribute_names]") unless params[:expression_attribute_names].nil?
        type.expression_attribute_values = ExpressionAttributeValueMap.build(params[:expression_attribute_values], context: "#{context}[:expression_attribute_values]") unless params[:expression_attribute_values].nil?
        type.return_values_on_condition_check_failure = params[:return_values_on_condition_check_failure] unless params[:return_values_on_condition_check_failure].nil?
        type
      end
    end

    class UpdateContinuousBackupsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::UpdateContinuousBackupsInput, context: context)
        type = Types::UpdateContinuousBackupsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.table_name = params[:table_name] unless params[:table_name].nil?
        type.point_in_time_recovery_specification = PointInTimeRecoverySpecification.build(params[:point_in_time_recovery_specification], context: "#{context}[:point_in_time_recovery_specification]") unless params[:point_in_time_recovery_specification].nil?
        type
      end
    end

    class UpdateContinuousBackupsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::UpdateContinuousBackupsOutput, context: context)
        type = Types::UpdateContinuousBackupsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.continuous_backups_description = ContinuousBackupsDescription.build(params[:continuous_backups_description], context: "#{context}[:continuous_backups_description]") unless params[:continuous_backups_description].nil?
        type
      end
    end

    class UpdateContributorInsightsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::UpdateContributorInsightsInput, context: context)
        type = Types::UpdateContributorInsightsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.table_name = params[:table_name] unless params[:table_name].nil?
        type.index_name = params[:index_name] unless params[:index_name].nil?
        type.contributor_insights_action = params[:contributor_insights_action] unless params[:contributor_insights_action].nil?
        type
      end
    end

    class UpdateContributorInsightsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::UpdateContributorInsightsOutput, context: context)
        type = Types::UpdateContributorInsightsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.table_name = params[:table_name] unless params[:table_name].nil?
        type.index_name = params[:index_name] unless params[:index_name].nil?
        type.contributor_insights_status = params[:contributor_insights_status] unless params[:contributor_insights_status].nil?
        type
      end
    end

    class UpdateGlobalSecondaryIndexAction
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::UpdateGlobalSecondaryIndexAction, context: context)
        type = Types::UpdateGlobalSecondaryIndexAction.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.index_name = params[:index_name] unless params[:index_name].nil?
        type.provisioned_throughput = ProvisionedThroughput.build(params[:provisioned_throughput], context: "#{context}[:provisioned_throughput]") unless params[:provisioned_throughput].nil?
        type
      end
    end

    class UpdateGlobalTableInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::UpdateGlobalTableInput, context: context)
        type = Types::UpdateGlobalTableInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.global_table_name = params[:global_table_name] unless params[:global_table_name].nil?
        type.replica_updates = ReplicaUpdateList.build(params[:replica_updates], context: "#{context}[:replica_updates]") unless params[:replica_updates].nil?
        type
      end
    end

    class UpdateGlobalTableOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::UpdateGlobalTableOutput, context: context)
        type = Types::UpdateGlobalTableOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.global_table_description = GlobalTableDescription.build(params[:global_table_description], context: "#{context}[:global_table_description]") unless params[:global_table_description].nil?
        type
      end
    end

    class UpdateGlobalTableSettingsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::UpdateGlobalTableSettingsInput, context: context)
        type = Types::UpdateGlobalTableSettingsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.global_table_name = params[:global_table_name] unless params[:global_table_name].nil?
        type.global_table_billing_mode = params[:global_table_billing_mode] unless params[:global_table_billing_mode].nil?
        type.global_table_provisioned_write_capacity_units = params[:global_table_provisioned_write_capacity_units] unless params[:global_table_provisioned_write_capacity_units].nil?
        type.global_table_provisioned_write_capacity_auto_scaling_settings_update = AutoScalingSettingsUpdate.build(params[:global_table_provisioned_write_capacity_auto_scaling_settings_update], context: "#{context}[:global_table_provisioned_write_capacity_auto_scaling_settings_update]") unless params[:global_table_provisioned_write_capacity_auto_scaling_settings_update].nil?
        type.global_table_global_secondary_index_settings_update = GlobalTableGlobalSecondaryIndexSettingsUpdateList.build(params[:global_table_global_secondary_index_settings_update], context: "#{context}[:global_table_global_secondary_index_settings_update]") unless params[:global_table_global_secondary_index_settings_update].nil?
        type.replica_settings_update = ReplicaSettingsUpdateList.build(params[:replica_settings_update], context: "#{context}[:replica_settings_update]") unless params[:replica_settings_update].nil?
        type
      end
    end

    class UpdateGlobalTableSettingsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::UpdateGlobalTableSettingsOutput, context: context)
        type = Types::UpdateGlobalTableSettingsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.global_table_name = params[:global_table_name] unless params[:global_table_name].nil?
        type.replica_settings = ReplicaSettingsDescriptionList.build(params[:replica_settings], context: "#{context}[:replica_settings]") unless params[:replica_settings].nil?
        type
      end
    end

    class UpdateItemInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::UpdateItemInput, context: context)
        type = Types::UpdateItemInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.table_name = params[:table_name] unless params[:table_name].nil?
        type.key = Key.build(params[:key], context: "#{context}[:key]") unless params[:key].nil?
        type.attribute_updates = AttributeUpdates.build(params[:attribute_updates], context: "#{context}[:attribute_updates]") unless params[:attribute_updates].nil?
        type.expected = ExpectedAttributeMap.build(params[:expected], context: "#{context}[:expected]") unless params[:expected].nil?
        type.conditional_operator = params[:conditional_operator] unless params[:conditional_operator].nil?
        type.return_values = params[:return_values] unless params[:return_values].nil?
        type.return_consumed_capacity = params[:return_consumed_capacity] unless params[:return_consumed_capacity].nil?
        type.return_item_collection_metrics = params[:return_item_collection_metrics] unless params[:return_item_collection_metrics].nil?
        type.update_expression = params[:update_expression] unless params[:update_expression].nil?
        type.condition_expression = params[:condition_expression] unless params[:condition_expression].nil?
        type.expression_attribute_names = ExpressionAttributeNameMap.build(params[:expression_attribute_names], context: "#{context}[:expression_attribute_names]") unless params[:expression_attribute_names].nil?
        type.expression_attribute_values = ExpressionAttributeValueMap.build(params[:expression_attribute_values], context: "#{context}[:expression_attribute_values]") unless params[:expression_attribute_values].nil?
        type.return_values_on_condition_check_failure = params[:return_values_on_condition_check_failure] unless params[:return_values_on_condition_check_failure].nil?
        type
      end
    end

    class UpdateItemOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::UpdateItemOutput, context: context)
        type = Types::UpdateItemOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.attributes = AttributeMap.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.consumed_capacity = ConsumedCapacity.build(params[:consumed_capacity], context: "#{context}[:consumed_capacity]") unless params[:consumed_capacity].nil?
        type.item_collection_metrics = ItemCollectionMetrics.build(params[:item_collection_metrics], context: "#{context}[:item_collection_metrics]") unless params[:item_collection_metrics].nil?
        type
      end
    end

    class UpdateKinesisStreamingConfiguration
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::UpdateKinesisStreamingConfiguration, context: context)
        type = Types::UpdateKinesisStreamingConfiguration.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.approximate_creation_date_time_precision = params[:approximate_creation_date_time_precision] unless params[:approximate_creation_date_time_precision].nil?
        type
      end
    end

    class UpdateKinesisStreamingDestinationInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::UpdateKinesisStreamingDestinationInput, context: context)
        type = Types::UpdateKinesisStreamingDestinationInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.table_name = params[:table_name] unless params[:table_name].nil?
        type.stream_arn = params[:stream_arn] unless params[:stream_arn].nil?
        type.update_kinesis_streaming_configuration = UpdateKinesisStreamingConfiguration.build(params[:update_kinesis_streaming_configuration], context: "#{context}[:update_kinesis_streaming_configuration]") unless params[:update_kinesis_streaming_configuration].nil?
        type
      end
    end

    class UpdateKinesisStreamingDestinationOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::UpdateKinesisStreamingDestinationOutput, context: context)
        type = Types::UpdateKinesisStreamingDestinationOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.table_name = params[:table_name] unless params[:table_name].nil?
        type.stream_arn = params[:stream_arn] unless params[:stream_arn].nil?
        type.destination_status = params[:destination_status] unless params[:destination_status].nil?
        type.update_kinesis_streaming_configuration = UpdateKinesisStreamingConfiguration.build(params[:update_kinesis_streaming_configuration], context: "#{context}[:update_kinesis_streaming_configuration]") unless params[:update_kinesis_streaming_configuration].nil?
        type
      end
    end

    class UpdateReplicationGroupMemberAction
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::UpdateReplicationGroupMemberAction, context: context)
        type = Types::UpdateReplicationGroupMemberAction.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.region_name = params[:region_name] unless params[:region_name].nil?
        type.kms_master_key_id = params[:kms_master_key_id] unless params[:kms_master_key_id].nil?
        type.provisioned_throughput_override = ProvisionedThroughputOverride.build(params[:provisioned_throughput_override], context: "#{context}[:provisioned_throughput_override]") unless params[:provisioned_throughput_override].nil?
        type.global_secondary_indexes = ReplicaGlobalSecondaryIndexList.build(params[:global_secondary_indexes], context: "#{context}[:global_secondary_indexes]") unless params[:global_secondary_indexes].nil?
        type.table_class_override = params[:table_class_override] unless params[:table_class_override].nil?
        type
      end
    end

    class UpdateTableInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::UpdateTableInput, context: context)
        type = Types::UpdateTableInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.attribute_definitions = AttributeDefinitions.build(params[:attribute_definitions], context: "#{context}[:attribute_definitions]") unless params[:attribute_definitions].nil?
        type.table_name = params[:table_name] unless params[:table_name].nil?
        type.billing_mode = params[:billing_mode] unless params[:billing_mode].nil?
        type.provisioned_throughput = ProvisionedThroughput.build(params[:provisioned_throughput], context: "#{context}[:provisioned_throughput]") unless params[:provisioned_throughput].nil?
        type.global_secondary_index_updates = GlobalSecondaryIndexUpdateList.build(params[:global_secondary_index_updates], context: "#{context}[:global_secondary_index_updates]") unless params[:global_secondary_index_updates].nil?
        type.stream_specification = StreamSpecification.build(params[:stream_specification], context: "#{context}[:stream_specification]") unless params[:stream_specification].nil?
        type.sse_specification = SSESpecification.build(params[:sse_specification], context: "#{context}[:sse_specification]") unless params[:sse_specification].nil?
        type.replica_updates = ReplicationGroupUpdateList.build(params[:replica_updates], context: "#{context}[:replica_updates]") unless params[:replica_updates].nil?
        type.table_class = params[:table_class] unless params[:table_class].nil?
        type.deletion_protection_enabled = params[:deletion_protection_enabled] unless params[:deletion_protection_enabled].nil?
        type
      end
    end

    class UpdateTableOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::UpdateTableOutput, context: context)
        type = Types::UpdateTableOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.table_description = TableDescription.build(params[:table_description], context: "#{context}[:table_description]") unless params[:table_description].nil?
        type
      end
    end

    class UpdateTableReplicaAutoScalingInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::UpdateTableReplicaAutoScalingInput, context: context)
        type = Types::UpdateTableReplicaAutoScalingInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.global_secondary_index_updates = GlobalSecondaryIndexAutoScalingUpdateList.build(params[:global_secondary_index_updates], context: "#{context}[:global_secondary_index_updates]") unless params[:global_secondary_index_updates].nil?
        type.table_name = params[:table_name] unless params[:table_name].nil?
        type.provisioned_write_capacity_auto_scaling_update = AutoScalingSettingsUpdate.build(params[:provisioned_write_capacity_auto_scaling_update], context: "#{context}[:provisioned_write_capacity_auto_scaling_update]") unless params[:provisioned_write_capacity_auto_scaling_update].nil?
        type.replica_updates = ReplicaAutoScalingUpdateList.build(params[:replica_updates], context: "#{context}[:replica_updates]") unless params[:replica_updates].nil?
        type
      end
    end

    class UpdateTableReplicaAutoScalingOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::UpdateTableReplicaAutoScalingOutput, context: context)
        type = Types::UpdateTableReplicaAutoScalingOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.table_auto_scaling_description = TableAutoScalingDescription.build(params[:table_auto_scaling_description], context: "#{context}[:table_auto_scaling_description]") unless params[:table_auto_scaling_description].nil?
        type
      end
    end

    class UpdateTimeToLiveInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::UpdateTimeToLiveInput, context: context)
        type = Types::UpdateTimeToLiveInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.table_name = params[:table_name] unless params[:table_name].nil?
        type.time_to_live_specification = TimeToLiveSpecification.build(params[:time_to_live_specification], context: "#{context}[:time_to_live_specification]") unless params[:time_to_live_specification].nil?
        type
      end
    end

    class UpdateTimeToLiveOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::UpdateTimeToLiveOutput, context: context)
        type = Types::UpdateTimeToLiveOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.time_to_live_specification = TimeToLiveSpecification.build(params[:time_to_live_specification], context: "#{context}[:time_to_live_specification]") unless params[:time_to_live_specification].nil?
        type
      end
    end

    class WriteRequest
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::WriteRequest, context: context)
        type = Types::WriteRequest.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.put_request = PutRequest.build(params[:put_request], context: "#{context}[:put_request]") unless params[:put_request].nil?
        type.delete_request = DeleteRequest.build(params[:delete_request], context: "#{context}[:delete_request]") unless params[:delete_request].nil?
        type
      end
    end

    class WriteRequests
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << WriteRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
