# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::Dynamodb
  module Params

    module AttributeDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttributeDefinition, context: context)
        type = Types::AttributeDefinition.new
        type.attribute_name = params[:attribute_name]
        type.attribute_type = params[:attribute_type]
        type
      end
    end

    module AttributeDefinitions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AttributeDefinition.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AttributeNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module AttributeUpdates
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = AttributeValueUpdate.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module AttributeValue
      def self.build(params, context: '')
        return params if params.is_a?(Types::AttributeValue)
        Hearth::Validator.validate!(params, ::Hash, Types::AttributeValue, context: context)
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

    module AttributeValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AttributeValue.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AttributeValueUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttributeValueUpdate, context: context)
        type = Types::AttributeValueUpdate.new
        type.value = AttributeValue.build(params[:value], context: "#{context}[:value]") unless params[:value].nil?
        type.action = params[:action]
        type
      end
    end

    module AutoScalingPolicyUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoScalingPolicyUpdate, context: context)
        type = Types::AutoScalingPolicyUpdate.new
        type.policy_name = params[:policy_name]
        type.target_tracking_scaling_policy_configuration = AutoScalingTargetTrackingScalingPolicyConfigurationUpdate.build(params[:target_tracking_scaling_policy_configuration], context: "#{context}[:target_tracking_scaling_policy_configuration]") unless params[:target_tracking_scaling_policy_configuration].nil?
        type
      end
    end

    module AutoScalingSettingsUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoScalingSettingsUpdate, context: context)
        type = Types::AutoScalingSettingsUpdate.new
        type.minimum_units = params[:minimum_units]
        type.maximum_units = params[:maximum_units]
        type.auto_scaling_disabled = params[:auto_scaling_disabled]
        type.auto_scaling_role_arn = params[:auto_scaling_role_arn]
        type.scaling_policy_update = AutoScalingPolicyUpdate.build(params[:scaling_policy_update], context: "#{context}[:scaling_policy_update]") unless params[:scaling_policy_update].nil?
        type
      end
    end

    module AutoScalingTargetTrackingScalingPolicyConfigurationUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoScalingTargetTrackingScalingPolicyConfigurationUpdate, context: context)
        type = Types::AutoScalingTargetTrackingScalingPolicyConfigurationUpdate.new
        type.disable_scale_in = params[:disable_scale_in]
        type.scale_in_cooldown = params[:scale_in_cooldown]
        type.scale_out_cooldown = params[:scale_out_cooldown]
        type.target_value = params[:target_value]
        type
      end
    end

    module BatchExecuteStatementInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchExecuteStatementInput, context: context)
        type = Types::BatchExecuteStatementInput.new
        type.statements = PartiQLBatchRequest.build(params[:statements], context: "#{context}[:statements]") unless params[:statements].nil?
        type.return_consumed_capacity = params[:return_consumed_capacity]
        type
      end
    end

    module BatchGetItemInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetItemInput, context: context)
        type = Types::BatchGetItemInput.new
        type.request_items = BatchGetRequestMap.build(params[:request_items], context: "#{context}[:request_items]") unless params[:request_items].nil?
        type.return_consumed_capacity = params[:return_consumed_capacity]
        type
      end
    end

    module BatchGetRequestMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = KeysAndAttributes.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module BatchStatementRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchStatementRequest, context: context)
        type = Types::BatchStatementRequest.new
        type.statement = params[:statement]
        type.parameters = PreparedStatementParameters.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.consistent_read = params[:consistent_read]
        type
      end
    end

    module BatchWriteItemInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchWriteItemInput, context: context)
        type = Types::BatchWriteItemInput.new
        type.request_items = BatchWriteItemRequestMap.build(params[:request_items], context: "#{context}[:request_items]") unless params[:request_items].nil?
        type.return_consumed_capacity = params[:return_consumed_capacity]
        type.return_item_collection_metrics = params[:return_item_collection_metrics]
        type
      end
    end

    module BatchWriteItemRequestMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = WriteRequests.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module BinarySetAttributeValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module Condition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Condition, context: context)
        type = Types::Condition.new
        type.attribute_value_list = AttributeValueList.build(params[:attribute_value_list], context: "#{context}[:attribute_value_list]") unless params[:attribute_value_list].nil?
        type.comparison_operator = params[:comparison_operator]
        type
      end
    end

    module ConditionCheck
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConditionCheck, context: context)
        type = Types::ConditionCheck.new
        type.key = Key.build(params[:key], context: "#{context}[:key]") unless params[:key].nil?
        type.table_name = params[:table_name]
        type.condition_expression = params[:condition_expression]
        type.expression_attribute_names = ExpressionAttributeNameMap.build(params[:expression_attribute_names], context: "#{context}[:expression_attribute_names]") unless params[:expression_attribute_names].nil?
        type.expression_attribute_values = ExpressionAttributeValueMap.build(params[:expression_attribute_values], context: "#{context}[:expression_attribute_values]") unless params[:expression_attribute_values].nil?
        type.return_values_on_condition_check_failure = params[:return_values_on_condition_check_failure]
        type
      end
    end

    module CreateBackupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBackupInput, context: context)
        type = Types::CreateBackupInput.new
        type.table_name = params[:table_name]
        type.backup_name = params[:backup_name]
        type
      end
    end

    module CreateGlobalSecondaryIndexAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateGlobalSecondaryIndexAction, context: context)
        type = Types::CreateGlobalSecondaryIndexAction.new
        type.index_name = params[:index_name]
        type.key_schema = KeySchema.build(params[:key_schema], context: "#{context}[:key_schema]") unless params[:key_schema].nil?
        type.projection = Projection.build(params[:projection], context: "#{context}[:projection]") unless params[:projection].nil?
        type.provisioned_throughput = ProvisionedThroughput.build(params[:provisioned_throughput], context: "#{context}[:provisioned_throughput]") unless params[:provisioned_throughput].nil?
        type
      end
    end

    module CreateGlobalTableInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateGlobalTableInput, context: context)
        type = Types::CreateGlobalTableInput.new
        type.global_table_name = params[:global_table_name]
        type.replication_group = ReplicaList.build(params[:replication_group], context: "#{context}[:replication_group]") unless params[:replication_group].nil?
        type
      end
    end

    module CreateReplicaAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateReplicaAction, context: context)
        type = Types::CreateReplicaAction.new
        type.region_name = params[:region_name]
        type
      end
    end

    module CreateReplicationGroupMemberAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateReplicationGroupMemberAction, context: context)
        type = Types::CreateReplicationGroupMemberAction.new
        type.region_name = params[:region_name]
        type.kms_master_key_id = params[:kms_master_key_id]
        type.provisioned_throughput_override = ProvisionedThroughputOverride.build(params[:provisioned_throughput_override], context: "#{context}[:provisioned_throughput_override]") unless params[:provisioned_throughput_override].nil?
        type.global_secondary_indexes = ReplicaGlobalSecondaryIndexList.build(params[:global_secondary_indexes], context: "#{context}[:global_secondary_indexes]") unless params[:global_secondary_indexes].nil?
        type.table_class_override = params[:table_class_override]
        type
      end
    end

    module CreateTableInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTableInput, context: context)
        type = Types::CreateTableInput.new
        type.attribute_definitions = AttributeDefinitions.build(params[:attribute_definitions], context: "#{context}[:attribute_definitions]") unless params[:attribute_definitions].nil?
        type.table_name = params[:table_name]
        type.key_schema = KeySchema.build(params[:key_schema], context: "#{context}[:key_schema]") unless params[:key_schema].nil?
        type.local_secondary_indexes = LocalSecondaryIndexList.build(params[:local_secondary_indexes], context: "#{context}[:local_secondary_indexes]") unless params[:local_secondary_indexes].nil?
        type.global_secondary_indexes = GlobalSecondaryIndexList.build(params[:global_secondary_indexes], context: "#{context}[:global_secondary_indexes]") unless params[:global_secondary_indexes].nil?
        type.billing_mode = params[:billing_mode]
        type.provisioned_throughput = ProvisionedThroughput.build(params[:provisioned_throughput], context: "#{context}[:provisioned_throughput]") unless params[:provisioned_throughput].nil?
        type.stream_specification = StreamSpecification.build(params[:stream_specification], context: "#{context}[:stream_specification]") unless params[:stream_specification].nil?
        type.sse_specification = SSESpecification.build(params[:sse_specification], context: "#{context}[:sse_specification]") unless params[:sse_specification].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.table_class = params[:table_class]
        type
      end
    end

    module Delete
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Delete, context: context)
        type = Types::Delete.new
        type.key = Key.build(params[:key], context: "#{context}[:key]") unless params[:key].nil?
        type.table_name = params[:table_name]
        type.condition_expression = params[:condition_expression]
        type.expression_attribute_names = ExpressionAttributeNameMap.build(params[:expression_attribute_names], context: "#{context}[:expression_attribute_names]") unless params[:expression_attribute_names].nil?
        type.expression_attribute_values = ExpressionAttributeValueMap.build(params[:expression_attribute_values], context: "#{context}[:expression_attribute_values]") unless params[:expression_attribute_values].nil?
        type.return_values_on_condition_check_failure = params[:return_values_on_condition_check_failure]
        type
      end
    end

    module DeleteBackupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBackupInput, context: context)
        type = Types::DeleteBackupInput.new
        type.backup_arn = params[:backup_arn]
        type
      end
    end

    module DeleteGlobalSecondaryIndexAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteGlobalSecondaryIndexAction, context: context)
        type = Types::DeleteGlobalSecondaryIndexAction.new
        type.index_name = params[:index_name]
        type
      end
    end

    module DeleteItemInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteItemInput, context: context)
        type = Types::DeleteItemInput.new
        type.table_name = params[:table_name]
        type.key = Key.build(params[:key], context: "#{context}[:key]") unless params[:key].nil?
        type.expected = ExpectedAttributeMap.build(params[:expected], context: "#{context}[:expected]") unless params[:expected].nil?
        type.conditional_operator = params[:conditional_operator]
        type.return_values = params[:return_values]
        type.return_consumed_capacity = params[:return_consumed_capacity]
        type.return_item_collection_metrics = params[:return_item_collection_metrics]
        type.condition_expression = params[:condition_expression]
        type.expression_attribute_names = ExpressionAttributeNameMap.build(params[:expression_attribute_names], context: "#{context}[:expression_attribute_names]") unless params[:expression_attribute_names].nil?
        type.expression_attribute_values = ExpressionAttributeValueMap.build(params[:expression_attribute_values], context: "#{context}[:expression_attribute_values]") unless params[:expression_attribute_values].nil?
        type
      end
    end

    module DeleteReplicaAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteReplicaAction, context: context)
        type = Types::DeleteReplicaAction.new
        type.region_name = params[:region_name]
        type
      end
    end

    module DeleteReplicationGroupMemberAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteReplicationGroupMemberAction, context: context)
        type = Types::DeleteReplicationGroupMemberAction.new
        type.region_name = params[:region_name]
        type
      end
    end

    module DeleteRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRequest, context: context)
        type = Types::DeleteRequest.new
        type.key = Key.build(params[:key], context: "#{context}[:key]") unless params[:key].nil?
        type
      end
    end

    module DeleteTableInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTableInput, context: context)
        type = Types::DeleteTableInput.new
        type.table_name = params[:table_name]
        type
      end
    end

    module DescribeBackupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBackupInput, context: context)
        type = Types::DescribeBackupInput.new
        type.backup_arn = params[:backup_arn]
        type
      end
    end

    module DescribeContinuousBackupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeContinuousBackupsInput, context: context)
        type = Types::DescribeContinuousBackupsInput.new
        type.table_name = params[:table_name]
        type
      end
    end

    module DescribeContributorInsightsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeContributorInsightsInput, context: context)
        type = Types::DescribeContributorInsightsInput.new
        type.table_name = params[:table_name]
        type.index_name = params[:index_name]
        type
      end
    end

    module DescribeEndpointsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEndpointsInput, context: context)
        type = Types::DescribeEndpointsInput.new
        type
      end
    end

    module DescribeExportInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeExportInput, context: context)
        type = Types::DescribeExportInput.new
        type.export_arn = params[:export_arn]
        type
      end
    end

    module DescribeGlobalTableInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeGlobalTableInput, context: context)
        type = Types::DescribeGlobalTableInput.new
        type.global_table_name = params[:global_table_name]
        type
      end
    end

    module DescribeGlobalTableSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeGlobalTableSettingsInput, context: context)
        type = Types::DescribeGlobalTableSettingsInput.new
        type.global_table_name = params[:global_table_name]
        type
      end
    end

    module DescribeKinesisStreamingDestinationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeKinesisStreamingDestinationInput, context: context)
        type = Types::DescribeKinesisStreamingDestinationInput.new
        type.table_name = params[:table_name]
        type
      end
    end

    module DescribeLimitsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLimitsInput, context: context)
        type = Types::DescribeLimitsInput.new
        type
      end
    end

    module DescribeTableInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTableInput, context: context)
        type = Types::DescribeTableInput.new
        type.table_name = params[:table_name]
        type
      end
    end

    module DescribeTableReplicaAutoScalingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTableReplicaAutoScalingInput, context: context)
        type = Types::DescribeTableReplicaAutoScalingInput.new
        type.table_name = params[:table_name]
        type
      end
    end

    module DescribeTimeToLiveInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTimeToLiveInput, context: context)
        type = Types::DescribeTimeToLiveInput.new
        type.table_name = params[:table_name]
        type
      end
    end

    module DisableKinesisStreamingDestinationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableKinesisStreamingDestinationInput, context: context)
        type = Types::DisableKinesisStreamingDestinationInput.new
        type.table_name = params[:table_name]
        type.stream_arn = params[:stream_arn]
        type
      end
    end

    module EnableKinesisStreamingDestinationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableKinesisStreamingDestinationInput, context: context)
        type = Types::EnableKinesisStreamingDestinationInput.new
        type.table_name = params[:table_name]
        type.stream_arn = params[:stream_arn]
        type
      end
    end

    module ExecuteStatementInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExecuteStatementInput, context: context)
        type = Types::ExecuteStatementInput.new
        type.statement = params[:statement]
        type.parameters = PreparedStatementParameters.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.consistent_read = params[:consistent_read]
        type.next_token = params[:next_token]
        type.return_consumed_capacity = params[:return_consumed_capacity]
        type
      end
    end

    module ExecuteTransactionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExecuteTransactionInput, context: context)
        type = Types::ExecuteTransactionInput.new
        type.transact_statements = ParameterizedStatements.build(params[:transact_statements], context: "#{context}[:transact_statements]") unless params[:transact_statements].nil?
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type.return_consumed_capacity = params[:return_consumed_capacity]
        type
      end
    end

    module ExpectedAttributeMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = ExpectedAttributeValue.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module ExpectedAttributeValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExpectedAttributeValue, context: context)
        type = Types::ExpectedAttributeValue.new
        type.value = AttributeValue.build(params[:value], context: "#{context}[:value]") unless params[:value].nil?
        type.exists = params[:exists]
        type.comparison_operator = params[:comparison_operator]
        type.attribute_value_list = AttributeValueList.build(params[:attribute_value_list], context: "#{context}[:attribute_value_list]") unless params[:attribute_value_list].nil?
        type
      end
    end

    module ExportTableToPointInTimeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportTableToPointInTimeInput, context: context)
        type = Types::ExportTableToPointInTimeInput.new
        type.table_arn = params[:table_arn]
        type.export_time = params[:export_time]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.s3_bucket = params[:s3_bucket]
        type.s3_bucket_owner = params[:s3_bucket_owner]
        type.s3_prefix = params[:s3_prefix]
        type.s3_sse_algorithm = params[:s3_sse_algorithm]
        type.s3_sse_kms_key_id = params[:s3_sse_kms_key_id]
        type.export_format = params[:export_format]
        type
      end
    end

    module ExpressionAttributeNameMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module ExpressionAttributeValueMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = AttributeValue.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module FilterConditionMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = Condition.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module Get
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Get, context: context)
        type = Types::Get.new
        type.key = Key.build(params[:key], context: "#{context}[:key]") unless params[:key].nil?
        type.table_name = params[:table_name]
        type.projection_expression = params[:projection_expression]
        type.expression_attribute_names = ExpressionAttributeNameMap.build(params[:expression_attribute_names], context: "#{context}[:expression_attribute_names]") unless params[:expression_attribute_names].nil?
        type
      end
    end

    module GetItemInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetItemInput, context: context)
        type = Types::GetItemInput.new
        type.table_name = params[:table_name]
        type.key = Key.build(params[:key], context: "#{context}[:key]") unless params[:key].nil?
        type.attributes_to_get = AttributeNameList.build(params[:attributes_to_get], context: "#{context}[:attributes_to_get]") unless params[:attributes_to_get].nil?
        type.consistent_read = params[:consistent_read]
        type.return_consumed_capacity = params[:return_consumed_capacity]
        type.projection_expression = params[:projection_expression]
        type.expression_attribute_names = ExpressionAttributeNameMap.build(params[:expression_attribute_names], context: "#{context}[:expression_attribute_names]") unless params[:expression_attribute_names].nil?
        type
      end
    end

    module GlobalSecondaryIndex
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GlobalSecondaryIndex, context: context)
        type = Types::GlobalSecondaryIndex.new
        type.index_name = params[:index_name]
        type.key_schema = KeySchema.build(params[:key_schema], context: "#{context}[:key_schema]") unless params[:key_schema].nil?
        type.projection = Projection.build(params[:projection], context: "#{context}[:projection]") unless params[:projection].nil?
        type.provisioned_throughput = ProvisionedThroughput.build(params[:provisioned_throughput], context: "#{context}[:provisioned_throughput]") unless params[:provisioned_throughput].nil?
        type
      end
    end

    module GlobalSecondaryIndexAutoScalingUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GlobalSecondaryIndexAutoScalingUpdate, context: context)
        type = Types::GlobalSecondaryIndexAutoScalingUpdate.new
        type.index_name = params[:index_name]
        type.provisioned_write_capacity_auto_scaling_update = AutoScalingSettingsUpdate.build(params[:provisioned_write_capacity_auto_scaling_update], context: "#{context}[:provisioned_write_capacity_auto_scaling_update]") unless params[:provisioned_write_capacity_auto_scaling_update].nil?
        type
      end
    end

    module GlobalSecondaryIndexAutoScalingUpdateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GlobalSecondaryIndexAutoScalingUpdate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GlobalSecondaryIndexList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GlobalSecondaryIndex.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GlobalSecondaryIndexUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GlobalSecondaryIndexUpdate, context: context)
        type = Types::GlobalSecondaryIndexUpdate.new
        type.update = UpdateGlobalSecondaryIndexAction.build(params[:update], context: "#{context}[:update]") unless params[:update].nil?
        type.create = CreateGlobalSecondaryIndexAction.build(params[:create], context: "#{context}[:create]") unless params[:create].nil?
        type.delete = DeleteGlobalSecondaryIndexAction.build(params[:delete], context: "#{context}[:delete]") unless params[:delete].nil?
        type
      end
    end

    module GlobalSecondaryIndexUpdateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GlobalSecondaryIndexUpdate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GlobalTableGlobalSecondaryIndexSettingsUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GlobalTableGlobalSecondaryIndexSettingsUpdate, context: context)
        type = Types::GlobalTableGlobalSecondaryIndexSettingsUpdate.new
        type.index_name = params[:index_name]
        type.provisioned_write_capacity_units = params[:provisioned_write_capacity_units]
        type.provisioned_write_capacity_auto_scaling_settings_update = AutoScalingSettingsUpdate.build(params[:provisioned_write_capacity_auto_scaling_settings_update], context: "#{context}[:provisioned_write_capacity_auto_scaling_settings_update]") unless params[:provisioned_write_capacity_auto_scaling_settings_update].nil?
        type
      end
    end

    module GlobalTableGlobalSecondaryIndexSettingsUpdateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GlobalTableGlobalSecondaryIndexSettingsUpdate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Key
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = AttributeValue.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module KeyConditions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = Condition.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module KeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Key.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module KeySchema
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << KeySchemaElement.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module KeySchemaElement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KeySchemaElement, context: context)
        type = Types::KeySchemaElement.new
        type.attribute_name = params[:attribute_name]
        type.key_type = params[:key_type]
        type
      end
    end

    module KeysAndAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KeysAndAttributes, context: context)
        type = Types::KeysAndAttributes.new
        type.keys = KeyList.build(params[:keys], context: "#{context}[:keys]") unless params[:keys].nil?
        type.attributes_to_get = AttributeNameList.build(params[:attributes_to_get], context: "#{context}[:attributes_to_get]") unless params[:attributes_to_get].nil?
        type.consistent_read = params[:consistent_read]
        type.projection_expression = params[:projection_expression]
        type.expression_attribute_names = ExpressionAttributeNameMap.build(params[:expression_attribute_names], context: "#{context}[:expression_attribute_names]") unless params[:expression_attribute_names].nil?
        type
      end
    end

    module ListAttributeValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AttributeValue.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListBackupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBackupsInput, context: context)
        type = Types::ListBackupsInput.new
        type.table_name = params[:table_name]
        type.limit = params[:limit]
        type.time_range_lower_bound = params[:time_range_lower_bound]
        type.time_range_upper_bound = params[:time_range_upper_bound]
        type.exclusive_start_backup_arn = params[:exclusive_start_backup_arn]
        type.backup_type = params[:backup_type]
        type
      end
    end

    module ListContributorInsightsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListContributorInsightsInput, context: context)
        type = Types::ListContributorInsightsInput.new
        type.table_name = params[:table_name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListExportsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListExportsInput, context: context)
        type = Types::ListExportsInput.new
        type.table_arn = params[:table_arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListGlobalTablesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGlobalTablesInput, context: context)
        type = Types::ListGlobalTablesInput.new
        type.exclusive_start_global_table_name = params[:exclusive_start_global_table_name]
        type.limit = params[:limit]
        type.region_name = params[:region_name]
        type
      end
    end

    module ListTablesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTablesInput, context: context)
        type = Types::ListTablesInput.new
        type.exclusive_start_table_name = params[:exclusive_start_table_name]
        type.limit = params[:limit]
        type
      end
    end

    module ListTagsOfResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsOfResourceInput, context: context)
        type = Types::ListTagsOfResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.next_token = params[:next_token]
        type
      end
    end

    module LocalSecondaryIndex
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LocalSecondaryIndex, context: context)
        type = Types::LocalSecondaryIndex.new
        type.index_name = params[:index_name]
        type.key_schema = KeySchema.build(params[:key_schema], context: "#{context}[:key_schema]") unless params[:key_schema].nil?
        type.projection = Projection.build(params[:projection], context: "#{context}[:projection]") unless params[:projection].nil?
        type
      end
    end

    module LocalSecondaryIndexList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LocalSecondaryIndex.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MapAttributeValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = AttributeValue.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module NonKeyAttributeNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module NumberSetAttributeValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module ParameterizedStatement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ParameterizedStatement, context: context)
        type = Types::ParameterizedStatement.new
        type.statement = params[:statement]
        type.parameters = PreparedStatementParameters.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type
      end
    end

    module ParameterizedStatements
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ParameterizedStatement.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PartiQLBatchRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchStatementRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PointInTimeRecoverySpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PointInTimeRecoverySpecification, context: context)
        type = Types::PointInTimeRecoverySpecification.new
        type.point_in_time_recovery_enabled = params[:point_in_time_recovery_enabled]
        type
      end
    end

    module PreparedStatementParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AttributeValue.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Projection
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Projection, context: context)
        type = Types::Projection.new
        type.projection_type = params[:projection_type]
        type.non_key_attributes = NonKeyAttributeNameList.build(params[:non_key_attributes], context: "#{context}[:non_key_attributes]") unless params[:non_key_attributes].nil?
        type
      end
    end

    module ProvisionedThroughput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProvisionedThroughput, context: context)
        type = Types::ProvisionedThroughput.new
        type.read_capacity_units = params[:read_capacity_units]
        type.write_capacity_units = params[:write_capacity_units]
        type
      end
    end

    module ProvisionedThroughputOverride
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProvisionedThroughputOverride, context: context)
        type = Types::ProvisionedThroughputOverride.new
        type.read_capacity_units = params[:read_capacity_units]
        type
      end
    end

    module Put
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Put, context: context)
        type = Types::Put.new
        type.item = PutItemInputAttributeMap.build(params[:item], context: "#{context}[:item]") unless params[:item].nil?
        type.table_name = params[:table_name]
        type.condition_expression = params[:condition_expression]
        type.expression_attribute_names = ExpressionAttributeNameMap.build(params[:expression_attribute_names], context: "#{context}[:expression_attribute_names]") unless params[:expression_attribute_names].nil?
        type.expression_attribute_values = ExpressionAttributeValueMap.build(params[:expression_attribute_values], context: "#{context}[:expression_attribute_values]") unless params[:expression_attribute_values].nil?
        type.return_values_on_condition_check_failure = params[:return_values_on_condition_check_failure]
        type
      end
    end

    module PutItemInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutItemInput, context: context)
        type = Types::PutItemInput.new
        type.table_name = params[:table_name]
        type.item = PutItemInputAttributeMap.build(params[:item], context: "#{context}[:item]") unless params[:item].nil?
        type.expected = ExpectedAttributeMap.build(params[:expected], context: "#{context}[:expected]") unless params[:expected].nil?
        type.return_values = params[:return_values]
        type.return_consumed_capacity = params[:return_consumed_capacity]
        type.return_item_collection_metrics = params[:return_item_collection_metrics]
        type.conditional_operator = params[:conditional_operator]
        type.condition_expression = params[:condition_expression]
        type.expression_attribute_names = ExpressionAttributeNameMap.build(params[:expression_attribute_names], context: "#{context}[:expression_attribute_names]") unless params[:expression_attribute_names].nil?
        type.expression_attribute_values = ExpressionAttributeValueMap.build(params[:expression_attribute_values], context: "#{context}[:expression_attribute_values]") unless params[:expression_attribute_values].nil?
        type
      end
    end

    module PutItemInputAttributeMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = AttributeValue.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module PutRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutRequest, context: context)
        type = Types::PutRequest.new
        type.item = PutItemInputAttributeMap.build(params[:item], context: "#{context}[:item]") unless params[:item].nil?
        type
      end
    end

    module QueryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QueryInput, context: context)
        type = Types::QueryInput.new
        type.table_name = params[:table_name]
        type.index_name = params[:index_name]
        type.select = params[:select]
        type.attributes_to_get = AttributeNameList.build(params[:attributes_to_get], context: "#{context}[:attributes_to_get]") unless params[:attributes_to_get].nil?
        type.limit = params[:limit]
        type.consistent_read = params[:consistent_read]
        type.key_conditions = KeyConditions.build(params[:key_conditions], context: "#{context}[:key_conditions]") unless params[:key_conditions].nil?
        type.query_filter = FilterConditionMap.build(params[:query_filter], context: "#{context}[:query_filter]") unless params[:query_filter].nil?
        type.conditional_operator = params[:conditional_operator]
        type.scan_index_forward = params[:scan_index_forward]
        type.exclusive_start_key = Key.build(params[:exclusive_start_key], context: "#{context}[:exclusive_start_key]") unless params[:exclusive_start_key].nil?
        type.return_consumed_capacity = params[:return_consumed_capacity]
        type.projection_expression = params[:projection_expression]
        type.filter_expression = params[:filter_expression]
        type.key_condition_expression = params[:key_condition_expression]
        type.expression_attribute_names = ExpressionAttributeNameMap.build(params[:expression_attribute_names], context: "#{context}[:expression_attribute_names]") unless params[:expression_attribute_names].nil?
        type.expression_attribute_values = ExpressionAttributeValueMap.build(params[:expression_attribute_values], context: "#{context}[:expression_attribute_values]") unless params[:expression_attribute_values].nil?
        type
      end
    end

    module Replica
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Replica, context: context)
        type = Types::Replica.new
        type.region_name = params[:region_name]
        type
      end
    end

    module ReplicaAutoScalingUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReplicaAutoScalingUpdate, context: context)
        type = Types::ReplicaAutoScalingUpdate.new
        type.region_name = params[:region_name]
        type.replica_global_secondary_index_updates = ReplicaGlobalSecondaryIndexAutoScalingUpdateList.build(params[:replica_global_secondary_index_updates], context: "#{context}[:replica_global_secondary_index_updates]") unless params[:replica_global_secondary_index_updates].nil?
        type.replica_provisioned_read_capacity_auto_scaling_update = AutoScalingSettingsUpdate.build(params[:replica_provisioned_read_capacity_auto_scaling_update], context: "#{context}[:replica_provisioned_read_capacity_auto_scaling_update]") unless params[:replica_provisioned_read_capacity_auto_scaling_update].nil?
        type
      end
    end

    module ReplicaAutoScalingUpdateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReplicaAutoScalingUpdate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReplicaGlobalSecondaryIndex
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReplicaGlobalSecondaryIndex, context: context)
        type = Types::ReplicaGlobalSecondaryIndex.new
        type.index_name = params[:index_name]
        type.provisioned_throughput_override = ProvisionedThroughputOverride.build(params[:provisioned_throughput_override], context: "#{context}[:provisioned_throughput_override]") unless params[:provisioned_throughput_override].nil?
        type
      end
    end

    module ReplicaGlobalSecondaryIndexAutoScalingUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReplicaGlobalSecondaryIndexAutoScalingUpdate, context: context)
        type = Types::ReplicaGlobalSecondaryIndexAutoScalingUpdate.new
        type.index_name = params[:index_name]
        type.provisioned_read_capacity_auto_scaling_update = AutoScalingSettingsUpdate.build(params[:provisioned_read_capacity_auto_scaling_update], context: "#{context}[:provisioned_read_capacity_auto_scaling_update]") unless params[:provisioned_read_capacity_auto_scaling_update].nil?
        type
      end
    end

    module ReplicaGlobalSecondaryIndexAutoScalingUpdateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReplicaGlobalSecondaryIndexAutoScalingUpdate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReplicaGlobalSecondaryIndexList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReplicaGlobalSecondaryIndex.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReplicaGlobalSecondaryIndexSettingsUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReplicaGlobalSecondaryIndexSettingsUpdate, context: context)
        type = Types::ReplicaGlobalSecondaryIndexSettingsUpdate.new
        type.index_name = params[:index_name]
        type.provisioned_read_capacity_units = params[:provisioned_read_capacity_units]
        type.provisioned_read_capacity_auto_scaling_settings_update = AutoScalingSettingsUpdate.build(params[:provisioned_read_capacity_auto_scaling_settings_update], context: "#{context}[:provisioned_read_capacity_auto_scaling_settings_update]") unless params[:provisioned_read_capacity_auto_scaling_settings_update].nil?
        type
      end
    end

    module ReplicaGlobalSecondaryIndexSettingsUpdateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReplicaGlobalSecondaryIndexSettingsUpdate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReplicaList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Replica.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReplicaSettingsUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReplicaSettingsUpdate, context: context)
        type = Types::ReplicaSettingsUpdate.new
        type.region_name = params[:region_name]
        type.replica_provisioned_read_capacity_units = params[:replica_provisioned_read_capacity_units]
        type.replica_provisioned_read_capacity_auto_scaling_settings_update = AutoScalingSettingsUpdate.build(params[:replica_provisioned_read_capacity_auto_scaling_settings_update], context: "#{context}[:replica_provisioned_read_capacity_auto_scaling_settings_update]") unless params[:replica_provisioned_read_capacity_auto_scaling_settings_update].nil?
        type.replica_global_secondary_index_settings_update = ReplicaGlobalSecondaryIndexSettingsUpdateList.build(params[:replica_global_secondary_index_settings_update], context: "#{context}[:replica_global_secondary_index_settings_update]") unless params[:replica_global_secondary_index_settings_update].nil?
        type.replica_table_class = params[:replica_table_class]
        type
      end
    end

    module ReplicaSettingsUpdateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReplicaSettingsUpdate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReplicaUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReplicaUpdate, context: context)
        type = Types::ReplicaUpdate.new
        type.create = CreateReplicaAction.build(params[:create], context: "#{context}[:create]") unless params[:create].nil?
        type.delete = DeleteReplicaAction.build(params[:delete], context: "#{context}[:delete]") unless params[:delete].nil?
        type
      end
    end

    module ReplicaUpdateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReplicaUpdate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReplicationGroupUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReplicationGroupUpdate, context: context)
        type = Types::ReplicationGroupUpdate.new
        type.create = CreateReplicationGroupMemberAction.build(params[:create], context: "#{context}[:create]") unless params[:create].nil?
        type.update = UpdateReplicationGroupMemberAction.build(params[:update], context: "#{context}[:update]") unless params[:update].nil?
        type.delete = DeleteReplicationGroupMemberAction.build(params[:delete], context: "#{context}[:delete]") unless params[:delete].nil?
        type
      end
    end

    module ReplicationGroupUpdateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReplicationGroupUpdate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RestoreTableFromBackupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RestoreTableFromBackupInput, context: context)
        type = Types::RestoreTableFromBackupInput.new
        type.target_table_name = params[:target_table_name]
        type.backup_arn = params[:backup_arn]
        type.billing_mode_override = params[:billing_mode_override]
        type.global_secondary_index_override = GlobalSecondaryIndexList.build(params[:global_secondary_index_override], context: "#{context}[:global_secondary_index_override]") unless params[:global_secondary_index_override].nil?
        type.local_secondary_index_override = LocalSecondaryIndexList.build(params[:local_secondary_index_override], context: "#{context}[:local_secondary_index_override]") unless params[:local_secondary_index_override].nil?
        type.provisioned_throughput_override = ProvisionedThroughput.build(params[:provisioned_throughput_override], context: "#{context}[:provisioned_throughput_override]") unless params[:provisioned_throughput_override].nil?
        type.sse_specification_override = SSESpecification.build(params[:sse_specification_override], context: "#{context}[:sse_specification_override]") unless params[:sse_specification_override].nil?
        type
      end
    end

    module RestoreTableToPointInTimeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RestoreTableToPointInTimeInput, context: context)
        type = Types::RestoreTableToPointInTimeInput.new
        type.source_table_arn = params[:source_table_arn]
        type.source_table_name = params[:source_table_name]
        type.target_table_name = params[:target_table_name]
        type.use_latest_restorable_time = params[:use_latest_restorable_time]
        type.restore_date_time = params[:restore_date_time]
        type.billing_mode_override = params[:billing_mode_override]
        type.global_secondary_index_override = GlobalSecondaryIndexList.build(params[:global_secondary_index_override], context: "#{context}[:global_secondary_index_override]") unless params[:global_secondary_index_override].nil?
        type.local_secondary_index_override = LocalSecondaryIndexList.build(params[:local_secondary_index_override], context: "#{context}[:local_secondary_index_override]") unless params[:local_secondary_index_override].nil?
        type.provisioned_throughput_override = ProvisionedThroughput.build(params[:provisioned_throughput_override], context: "#{context}[:provisioned_throughput_override]") unless params[:provisioned_throughput_override].nil?
        type.sse_specification_override = SSESpecification.build(params[:sse_specification_override], context: "#{context}[:sse_specification_override]") unless params[:sse_specification_override].nil?
        type
      end
    end

    module SSESpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SSESpecification, context: context)
        type = Types::SSESpecification.new
        type.enabled = params[:enabled]
        type.sse_type = params[:sse_type]
        type.kms_master_key_id = params[:kms_master_key_id]
        type
      end
    end

    module ScanInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScanInput, context: context)
        type = Types::ScanInput.new
        type.table_name = params[:table_name]
        type.index_name = params[:index_name]
        type.attributes_to_get = AttributeNameList.build(params[:attributes_to_get], context: "#{context}[:attributes_to_get]") unless params[:attributes_to_get].nil?
        type.limit = params[:limit]
        type.select = params[:select]
        type.scan_filter = FilterConditionMap.build(params[:scan_filter], context: "#{context}[:scan_filter]") unless params[:scan_filter].nil?
        type.conditional_operator = params[:conditional_operator]
        type.exclusive_start_key = Key.build(params[:exclusive_start_key], context: "#{context}[:exclusive_start_key]") unless params[:exclusive_start_key].nil?
        type.return_consumed_capacity = params[:return_consumed_capacity]
        type.total_segments = params[:total_segments]
        type.segment = params[:segment]
        type.projection_expression = params[:projection_expression]
        type.filter_expression = params[:filter_expression]
        type.expression_attribute_names = ExpressionAttributeNameMap.build(params[:expression_attribute_names], context: "#{context}[:expression_attribute_names]") unless params[:expression_attribute_names].nil?
        type.expression_attribute_values = ExpressionAttributeValueMap.build(params[:expression_attribute_values], context: "#{context}[:expression_attribute_values]") unless params[:expression_attribute_values].nil?
        type.consistent_read = params[:consistent_read]
        type
      end
    end

    module StreamSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StreamSpecification, context: context)
        type = Types::StreamSpecification.new
        type.stream_enabled = params[:stream_enabled]
        type.stream_view_type = params[:stream_view_type]
        type
      end
    end

    module StringSetAttributeValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
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

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
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

    module TimeToLiveSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TimeToLiveSpecification, context: context)
        type = Types::TimeToLiveSpecification.new
        type.enabled = params[:enabled]
        type.attribute_name = params[:attribute_name]
        type
      end
    end

    module TransactGetItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TransactGetItem, context: context)
        type = Types::TransactGetItem.new
        type.get = Get.build(params[:get], context: "#{context}[:get]") unless params[:get].nil?
        type
      end
    end

    module TransactGetItemList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TransactGetItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TransactGetItemsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TransactGetItemsInput, context: context)
        type = Types::TransactGetItemsInput.new
        type.transact_items = TransactGetItemList.build(params[:transact_items], context: "#{context}[:transact_items]") unless params[:transact_items].nil?
        type.return_consumed_capacity = params[:return_consumed_capacity]
        type
      end
    end

    module TransactWriteItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TransactWriteItem, context: context)
        type = Types::TransactWriteItem.new
        type.condition_check = ConditionCheck.build(params[:condition_check], context: "#{context}[:condition_check]") unless params[:condition_check].nil?
        type.put = Put.build(params[:put], context: "#{context}[:put]") unless params[:put].nil?
        type.delete = Delete.build(params[:delete], context: "#{context}[:delete]") unless params[:delete].nil?
        type.update = Update.build(params[:update], context: "#{context}[:update]") unless params[:update].nil?
        type
      end
    end

    module TransactWriteItemList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TransactWriteItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TransactWriteItemsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TransactWriteItemsInput, context: context)
        type = Types::TransactWriteItemsInput.new
        type.transact_items = TransactWriteItemList.build(params[:transact_items], context: "#{context}[:transact_items]") unless params[:transact_items].nil?
        type.return_consumed_capacity = params[:return_consumed_capacity]
        type.return_item_collection_metrics = params[:return_item_collection_metrics]
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module Update
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Update, context: context)
        type = Types::Update.new
        type.key = Key.build(params[:key], context: "#{context}[:key]") unless params[:key].nil?
        type.update_expression = params[:update_expression]
        type.table_name = params[:table_name]
        type.condition_expression = params[:condition_expression]
        type.expression_attribute_names = ExpressionAttributeNameMap.build(params[:expression_attribute_names], context: "#{context}[:expression_attribute_names]") unless params[:expression_attribute_names].nil?
        type.expression_attribute_values = ExpressionAttributeValueMap.build(params[:expression_attribute_values], context: "#{context}[:expression_attribute_values]") unless params[:expression_attribute_values].nil?
        type.return_values_on_condition_check_failure = params[:return_values_on_condition_check_failure]
        type
      end
    end

    module UpdateContinuousBackupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateContinuousBackupsInput, context: context)
        type = Types::UpdateContinuousBackupsInput.new
        type.table_name = params[:table_name]
        type.point_in_time_recovery_specification = PointInTimeRecoverySpecification.build(params[:point_in_time_recovery_specification], context: "#{context}[:point_in_time_recovery_specification]") unless params[:point_in_time_recovery_specification].nil?
        type
      end
    end

    module UpdateContributorInsightsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateContributorInsightsInput, context: context)
        type = Types::UpdateContributorInsightsInput.new
        type.table_name = params[:table_name]
        type.index_name = params[:index_name]
        type.contributor_insights_action = params[:contributor_insights_action]
        type
      end
    end

    module UpdateGlobalSecondaryIndexAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGlobalSecondaryIndexAction, context: context)
        type = Types::UpdateGlobalSecondaryIndexAction.new
        type.index_name = params[:index_name]
        type.provisioned_throughput = ProvisionedThroughput.build(params[:provisioned_throughput], context: "#{context}[:provisioned_throughput]") unless params[:provisioned_throughput].nil?
        type
      end
    end

    module UpdateGlobalTableInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGlobalTableInput, context: context)
        type = Types::UpdateGlobalTableInput.new
        type.global_table_name = params[:global_table_name]
        type.replica_updates = ReplicaUpdateList.build(params[:replica_updates], context: "#{context}[:replica_updates]") unless params[:replica_updates].nil?
        type
      end
    end

    module UpdateGlobalTableSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGlobalTableSettingsInput, context: context)
        type = Types::UpdateGlobalTableSettingsInput.new
        type.global_table_name = params[:global_table_name]
        type.global_table_billing_mode = params[:global_table_billing_mode]
        type.global_table_provisioned_write_capacity_units = params[:global_table_provisioned_write_capacity_units]
        type.global_table_provisioned_write_capacity_auto_scaling_settings_update = AutoScalingSettingsUpdate.build(params[:global_table_provisioned_write_capacity_auto_scaling_settings_update], context: "#{context}[:global_table_provisioned_write_capacity_auto_scaling_settings_update]") unless params[:global_table_provisioned_write_capacity_auto_scaling_settings_update].nil?
        type.global_table_global_secondary_index_settings_update = GlobalTableGlobalSecondaryIndexSettingsUpdateList.build(params[:global_table_global_secondary_index_settings_update], context: "#{context}[:global_table_global_secondary_index_settings_update]") unless params[:global_table_global_secondary_index_settings_update].nil?
        type.replica_settings_update = ReplicaSettingsUpdateList.build(params[:replica_settings_update], context: "#{context}[:replica_settings_update]") unless params[:replica_settings_update].nil?
        type
      end
    end

    module UpdateItemInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateItemInput, context: context)
        type = Types::UpdateItemInput.new
        type.table_name = params[:table_name]
        type.key = Key.build(params[:key], context: "#{context}[:key]") unless params[:key].nil?
        type.attribute_updates = AttributeUpdates.build(params[:attribute_updates], context: "#{context}[:attribute_updates]") unless params[:attribute_updates].nil?
        type.expected = ExpectedAttributeMap.build(params[:expected], context: "#{context}[:expected]") unless params[:expected].nil?
        type.conditional_operator = params[:conditional_operator]
        type.return_values = params[:return_values]
        type.return_consumed_capacity = params[:return_consumed_capacity]
        type.return_item_collection_metrics = params[:return_item_collection_metrics]
        type.update_expression = params[:update_expression]
        type.condition_expression = params[:condition_expression]
        type.expression_attribute_names = ExpressionAttributeNameMap.build(params[:expression_attribute_names], context: "#{context}[:expression_attribute_names]") unless params[:expression_attribute_names].nil?
        type.expression_attribute_values = ExpressionAttributeValueMap.build(params[:expression_attribute_values], context: "#{context}[:expression_attribute_values]") unless params[:expression_attribute_values].nil?
        type
      end
    end

    module UpdateReplicationGroupMemberAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateReplicationGroupMemberAction, context: context)
        type = Types::UpdateReplicationGroupMemberAction.new
        type.region_name = params[:region_name]
        type.kms_master_key_id = params[:kms_master_key_id]
        type.provisioned_throughput_override = ProvisionedThroughputOverride.build(params[:provisioned_throughput_override], context: "#{context}[:provisioned_throughput_override]") unless params[:provisioned_throughput_override].nil?
        type.global_secondary_indexes = ReplicaGlobalSecondaryIndexList.build(params[:global_secondary_indexes], context: "#{context}[:global_secondary_indexes]") unless params[:global_secondary_indexes].nil?
        type.table_class_override = params[:table_class_override]
        type
      end
    end

    module UpdateTableInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTableInput, context: context)
        type = Types::UpdateTableInput.new
        type.attribute_definitions = AttributeDefinitions.build(params[:attribute_definitions], context: "#{context}[:attribute_definitions]") unless params[:attribute_definitions].nil?
        type.table_name = params[:table_name]
        type.billing_mode = params[:billing_mode]
        type.provisioned_throughput = ProvisionedThroughput.build(params[:provisioned_throughput], context: "#{context}[:provisioned_throughput]") unless params[:provisioned_throughput].nil?
        type.global_secondary_index_updates = GlobalSecondaryIndexUpdateList.build(params[:global_secondary_index_updates], context: "#{context}[:global_secondary_index_updates]") unless params[:global_secondary_index_updates].nil?
        type.stream_specification = StreamSpecification.build(params[:stream_specification], context: "#{context}[:stream_specification]") unless params[:stream_specification].nil?
        type.sse_specification = SSESpecification.build(params[:sse_specification], context: "#{context}[:sse_specification]") unless params[:sse_specification].nil?
        type.replica_updates = ReplicationGroupUpdateList.build(params[:replica_updates], context: "#{context}[:replica_updates]") unless params[:replica_updates].nil?
        type.table_class = params[:table_class]
        type
      end
    end

    module UpdateTableReplicaAutoScalingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTableReplicaAutoScalingInput, context: context)
        type = Types::UpdateTableReplicaAutoScalingInput.new
        type.global_secondary_index_updates = GlobalSecondaryIndexAutoScalingUpdateList.build(params[:global_secondary_index_updates], context: "#{context}[:global_secondary_index_updates]") unless params[:global_secondary_index_updates].nil?
        type.table_name = params[:table_name]
        type.provisioned_write_capacity_auto_scaling_update = AutoScalingSettingsUpdate.build(params[:provisioned_write_capacity_auto_scaling_update], context: "#{context}[:provisioned_write_capacity_auto_scaling_update]") unless params[:provisioned_write_capacity_auto_scaling_update].nil?
        type.replica_updates = ReplicaAutoScalingUpdateList.build(params[:replica_updates], context: "#{context}[:replica_updates]") unless params[:replica_updates].nil?
        type
      end
    end

    module UpdateTimeToLiveInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTimeToLiveInput, context: context)
        type = Types::UpdateTimeToLiveInput.new
        type.table_name = params[:table_name]
        type.time_to_live_specification = TimeToLiveSpecification.build(params[:time_to_live_specification], context: "#{context}[:time_to_live_specification]") unless params[:time_to_live_specification].nil?
        type
      end
    end

    module WriteRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WriteRequest, context: context)
        type = Types::WriteRequest.new
        type.put_request = PutRequest.build(params[:put_request], context: "#{context}[:put_request]") unless params[:put_request].nil?
        type.delete_request = DeleteRequest.build(params[:delete_request], context: "#{context}[:delete_request]") unless params[:delete_request].nil?
        type
      end
    end

    module WriteRequests
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << WriteRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
