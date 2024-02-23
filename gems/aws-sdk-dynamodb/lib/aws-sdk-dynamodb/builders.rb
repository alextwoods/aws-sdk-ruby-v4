# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'
require 'stringio'

module AWS::SDK::DynamoDB
  # @api private
  module Builders

    class AttributeDefinition
      def self.build(input)
        data = {}
        data['AttributeName'] = input[:attribute_name] unless input[:attribute_name].nil?
        data['AttributeType'] = input[:attribute_type] unless input[:attribute_type].nil?
        data
      end
    end

    class AttributeDefinitions
      def self.build(input)
        data = []
        input.each do |element|
          data << AttributeDefinition.build(element) unless element.nil?
        end
        data
      end
    end

    class AttributeNameList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class AttributeUpdates
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = AttributeValueUpdate.build(value) unless value.nil?
        end
        data
      end
    end

    class AttributeValue
      def self.build(input)
        data = {}
        case input
        when Types::AttributeValue::S
          data['S'] = input
        when Types::AttributeValue::N
          data['N'] = input
        when Types::AttributeValue::B
          data['B'] = ::Base64::encode64(input).strip
        when Types::AttributeValue::Ss
          data['SS'] = (StringSetAttributeValue.build(input) unless input.nil?)
        when Types::AttributeValue::Ns
          data['NS'] = (NumberSetAttributeValue.build(input) unless input.nil?)
        when Types::AttributeValue::Bs
          data['BS'] = (BinarySetAttributeValue.build(input) unless input.nil?)
        when Types::AttributeValue::M
          data['M'] = (MapAttributeValue.build(input) unless input.nil?)
        when Types::AttributeValue::L
          data['L'] = (ListAttributeValue.build(input) unless input.nil?)
        when Types::AttributeValue::Null
          data['NULL'] = input
        when Types::AttributeValue::Bool
          data['BOOL'] = input
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::AttributeValue"
        end

        data
      end
    end

    class AttributeValueList
      def self.build(input)
        data = []
        input.each do |element|
          data << AttributeValue.build(element) unless element.nil?
        end
        data
      end
    end

    class AttributeValueUpdate
      def self.build(input)
        data = {}
        data['Value'] = AttributeValue.build(input[:value]) unless input[:value].nil?
        data['Action'] = input[:action] unless input[:action].nil?
        data
      end
    end

    class AutoScalingPolicyUpdate
      def self.build(input)
        data = {}
        data['PolicyName'] = input[:policy_name] unless input[:policy_name].nil?
        data['TargetTrackingScalingPolicyConfiguration'] = AutoScalingTargetTrackingScalingPolicyConfigurationUpdate.build(input[:target_tracking_scaling_policy_configuration]) unless input[:target_tracking_scaling_policy_configuration].nil?
        data
      end
    end

    class AutoScalingSettingsUpdate
      def self.build(input)
        data = {}
        data['MinimumUnits'] = input[:minimum_units] unless input[:minimum_units].nil?
        data['MaximumUnits'] = input[:maximum_units] unless input[:maximum_units].nil?
        data['AutoScalingDisabled'] = input[:auto_scaling_disabled] unless input[:auto_scaling_disabled].nil?
        data['AutoScalingRoleArn'] = input[:auto_scaling_role_arn] unless input[:auto_scaling_role_arn].nil?
        data['ScalingPolicyUpdate'] = AutoScalingPolicyUpdate.build(input[:scaling_policy_update]) unless input[:scaling_policy_update].nil?
        data
      end
    end

    class AutoScalingTargetTrackingScalingPolicyConfigurationUpdate
      def self.build(input)
        data = {}
        data['DisableScaleIn'] = input[:disable_scale_in] unless input[:disable_scale_in].nil?
        data['ScaleInCooldown'] = input[:scale_in_cooldown] unless input[:scale_in_cooldown].nil?
        data['ScaleOutCooldown'] = input[:scale_out_cooldown] unless input[:scale_out_cooldown].nil?
        data['TargetValue'] = Hearth::NumberHelper.serialize(input[:target_value]) unless input[:target_value].nil?
        data
      end
    end

    class BatchExecuteStatement
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.BatchExecuteStatement'
        data = {}
        data['Statements'] = PartiQLBatchRequest.build(input[:statements]) unless input[:statements].nil?
        data['ReturnConsumedCapacity'] = input[:return_consumed_capacity] unless input[:return_consumed_capacity].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class BatchGetItem
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.BatchGetItem'
        data = {}
        data['RequestItems'] = BatchGetRequestMap.build(input[:request_items]) unless input[:request_items].nil?
        data['ReturnConsumedCapacity'] = input[:return_consumed_capacity] unless input[:return_consumed_capacity].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class BatchGetRequestMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = KeysAndAttributes.build(value) unless value.nil?
        end
        data
      end
    end

    class BatchStatementRequest
      def self.build(input)
        data = {}
        data['Statement'] = input[:statement] unless input[:statement].nil?
        data['Parameters'] = PreparedStatementParameters.build(input[:parameters]) unless input[:parameters].nil?
        data['ConsistentRead'] = input[:consistent_read] unless input[:consistent_read].nil?
        data['ReturnValuesOnConditionCheckFailure'] = input[:return_values_on_condition_check_failure] unless input[:return_values_on_condition_check_failure].nil?
        data
      end
    end

    class BatchWriteItem
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.BatchWriteItem'
        data = {}
        data['RequestItems'] = BatchWriteItemRequestMap.build(input[:request_items]) unless input[:request_items].nil?
        data['ReturnConsumedCapacity'] = input[:return_consumed_capacity] unless input[:return_consumed_capacity].nil?
        data['ReturnItemCollectionMetrics'] = input[:return_item_collection_metrics] unless input[:return_item_collection_metrics].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class BatchWriteItemRequestMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = WriteRequests.build(value) unless value.nil?
        end
        data
      end
    end

    class BinarySetAttributeValue
      def self.build(input)
        data = []
        input.each do |element|
          data << ::Base64::encode64(element).strip unless element.nil?
        end
        data
      end
    end

    class Condition
      def self.build(input)
        data = {}
        data['AttributeValueList'] = AttributeValueList.build(input[:attribute_value_list]) unless input[:attribute_value_list].nil?
        data['ComparisonOperator'] = input[:comparison_operator] unless input[:comparison_operator].nil?
        data
      end
    end

    class ConditionCheck
      def self.build(input)
        data = {}
        data['Key'] = Key.build(input[:key]) unless input[:key].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['ConditionExpression'] = input[:condition_expression] unless input[:condition_expression].nil?
        data['ExpressionAttributeNames'] = ExpressionAttributeNameMap.build(input[:expression_attribute_names]) unless input[:expression_attribute_names].nil?
        data['ExpressionAttributeValues'] = ExpressionAttributeValueMap.build(input[:expression_attribute_values]) unless input[:expression_attribute_values].nil?
        data['ReturnValuesOnConditionCheckFailure'] = input[:return_values_on_condition_check_failure] unless input[:return_values_on_condition_check_failure].nil?
        data
      end
    end

    class CreateBackup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.CreateBackup'
        data = {}
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['BackupName'] = input[:backup_name] unless input[:backup_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class CreateGlobalSecondaryIndexAction
      def self.build(input)
        data = {}
        data['IndexName'] = input[:index_name] unless input[:index_name].nil?
        data['KeySchema'] = KeySchema.build(input[:key_schema]) unless input[:key_schema].nil?
        data['Projection'] = Projection.build(input[:projection]) unless input[:projection].nil?
        data['ProvisionedThroughput'] = ProvisionedThroughput.build(input[:provisioned_throughput]) unless input[:provisioned_throughput].nil?
        data
      end
    end

    class CreateGlobalTable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.CreateGlobalTable'
        data = {}
        data['GlobalTableName'] = input[:global_table_name] unless input[:global_table_name].nil?
        data['ReplicationGroup'] = ReplicaList.build(input[:replication_group]) unless input[:replication_group].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class CreateReplicaAction
      def self.build(input)
        data = {}
        data['RegionName'] = input[:region_name] unless input[:region_name].nil?
        data
      end
    end

    class CreateReplicationGroupMemberAction
      def self.build(input)
        data = {}
        data['RegionName'] = input[:region_name] unless input[:region_name].nil?
        data['KMSMasterKeyId'] = input[:kms_master_key_id] unless input[:kms_master_key_id].nil?
        data['ProvisionedThroughputOverride'] = ProvisionedThroughputOverride.build(input[:provisioned_throughput_override]) unless input[:provisioned_throughput_override].nil?
        data['GlobalSecondaryIndexes'] = ReplicaGlobalSecondaryIndexList.build(input[:global_secondary_indexes]) unless input[:global_secondary_indexes].nil?
        data['TableClassOverride'] = input[:table_class_override] unless input[:table_class_override].nil?
        data
      end
    end

    class CreateTable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.CreateTable'
        data = {}
        data['AttributeDefinitions'] = AttributeDefinitions.build(input[:attribute_definitions]) unless input[:attribute_definitions].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['KeySchema'] = KeySchema.build(input[:key_schema]) unless input[:key_schema].nil?
        data['LocalSecondaryIndexes'] = LocalSecondaryIndexList.build(input[:local_secondary_indexes]) unless input[:local_secondary_indexes].nil?
        data['GlobalSecondaryIndexes'] = GlobalSecondaryIndexList.build(input[:global_secondary_indexes]) unless input[:global_secondary_indexes].nil?
        data['BillingMode'] = input[:billing_mode] unless input[:billing_mode].nil?
        data['ProvisionedThroughput'] = ProvisionedThroughput.build(input[:provisioned_throughput]) unless input[:provisioned_throughput].nil?
        data['StreamSpecification'] = StreamSpecification.build(input[:stream_specification]) unless input[:stream_specification].nil?
        data['SSESpecification'] = SSESpecification.build(input[:sse_specification]) unless input[:sse_specification].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        data['TableClass'] = input[:table_class] unless input[:table_class].nil?
        data['DeletionProtectionEnabled'] = input[:deletion_protection_enabled] unless input[:deletion_protection_enabled].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class CsvHeaderList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class CsvOptions
      def self.build(input)
        data = {}
        data['Delimiter'] = input[:delimiter] unless input[:delimiter].nil?
        data['HeaderList'] = CsvHeaderList.build(input[:header_list]) unless input[:header_list].nil?
        data
      end
    end

    class Delete
      def self.build(input)
        data = {}
        data['Key'] = Key.build(input[:key]) unless input[:key].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['ConditionExpression'] = input[:condition_expression] unless input[:condition_expression].nil?
        data['ExpressionAttributeNames'] = ExpressionAttributeNameMap.build(input[:expression_attribute_names]) unless input[:expression_attribute_names].nil?
        data['ExpressionAttributeValues'] = ExpressionAttributeValueMap.build(input[:expression_attribute_values]) unless input[:expression_attribute_values].nil?
        data['ReturnValuesOnConditionCheckFailure'] = input[:return_values_on_condition_check_failure] unless input[:return_values_on_condition_check_failure].nil?
        data
      end
    end

    class DeleteBackup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.DeleteBackup'
        data = {}
        data['BackupArn'] = input[:backup_arn] unless input[:backup_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class DeleteGlobalSecondaryIndexAction
      def self.build(input)
        data = {}
        data['IndexName'] = input[:index_name] unless input[:index_name].nil?
        data
      end
    end

    class DeleteItem
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.DeleteItem'
        data = {}
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['Key'] = Key.build(input[:key]) unless input[:key].nil?
        data['Expected'] = ExpectedAttributeMap.build(input[:expected]) unless input[:expected].nil?
        data['ConditionalOperator'] = input[:conditional_operator] unless input[:conditional_operator].nil?
        data['ReturnValues'] = input[:return_values] unless input[:return_values].nil?
        data['ReturnConsumedCapacity'] = input[:return_consumed_capacity] unless input[:return_consumed_capacity].nil?
        data['ReturnItemCollectionMetrics'] = input[:return_item_collection_metrics] unless input[:return_item_collection_metrics].nil?
        data['ConditionExpression'] = input[:condition_expression] unless input[:condition_expression].nil?
        data['ExpressionAttributeNames'] = ExpressionAttributeNameMap.build(input[:expression_attribute_names]) unless input[:expression_attribute_names].nil?
        data['ExpressionAttributeValues'] = ExpressionAttributeValueMap.build(input[:expression_attribute_values]) unless input[:expression_attribute_values].nil?
        data['ReturnValuesOnConditionCheckFailure'] = input[:return_values_on_condition_check_failure] unless input[:return_values_on_condition_check_failure].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class DeleteReplicaAction
      def self.build(input)
        data = {}
        data['RegionName'] = input[:region_name] unless input[:region_name].nil?
        data
      end
    end

    class DeleteReplicationGroupMemberAction
      def self.build(input)
        data = {}
        data['RegionName'] = input[:region_name] unless input[:region_name].nil?
        data
      end
    end

    class DeleteRequest
      def self.build(input)
        data = {}
        data['Key'] = Key.build(input[:key]) unless input[:key].nil?
        data
      end
    end

    class DeleteTable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.DeleteTable'
        data = {}
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class DescribeBackup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.DescribeBackup'
        data = {}
        data['BackupArn'] = input[:backup_arn] unless input[:backup_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class DescribeContinuousBackups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.DescribeContinuousBackups'
        data = {}
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class DescribeContributorInsights
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.DescribeContributorInsights'
        data = {}
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['IndexName'] = input[:index_name] unless input[:index_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class DescribeEndpoints
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.DescribeEndpoints'
        data = {}
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class DescribeExport
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.DescribeExport'
        data = {}
        data['ExportArn'] = input[:export_arn] unless input[:export_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class DescribeGlobalTable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.DescribeGlobalTable'
        data = {}
        data['GlobalTableName'] = input[:global_table_name] unless input[:global_table_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class DescribeGlobalTableSettings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.DescribeGlobalTableSettings'
        data = {}
        data['GlobalTableName'] = input[:global_table_name] unless input[:global_table_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class DescribeImport
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.DescribeImport'
        data = {}
        data['ImportArn'] = input[:import_arn] unless input[:import_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class DescribeKinesisStreamingDestination
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.DescribeKinesisStreamingDestination'
        data = {}
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class DescribeLimits
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.DescribeLimits'
        data = {}
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class DescribeTable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.DescribeTable'
        data = {}
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class DescribeTableReplicaAutoScaling
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.DescribeTableReplicaAutoScaling'
        data = {}
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class DescribeTimeToLive
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.DescribeTimeToLive'
        data = {}
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class DisableKinesisStreamingDestination
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.DisableKinesisStreamingDestination'
        data = {}
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['StreamArn'] = input[:stream_arn] unless input[:stream_arn].nil?
        data['EnableKinesisStreamingConfiguration'] = EnableKinesisStreamingConfiguration.build(input[:enable_kinesis_streaming_configuration]) unless input[:enable_kinesis_streaming_configuration].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class EnableKinesisStreamingConfiguration
      def self.build(input)
        data = {}
        data['ApproximateCreationDateTimePrecision'] = input[:approximate_creation_date_time_precision] unless input[:approximate_creation_date_time_precision].nil?
        data
      end
    end

    class EnableKinesisStreamingDestination
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.EnableKinesisStreamingDestination'
        data = {}
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['StreamArn'] = input[:stream_arn] unless input[:stream_arn].nil?
        data['EnableKinesisStreamingConfiguration'] = EnableKinesisStreamingConfiguration.build(input[:enable_kinesis_streaming_configuration]) unless input[:enable_kinesis_streaming_configuration].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class ExecuteStatement
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.ExecuteStatement'
        data = {}
        data['Statement'] = input[:statement] unless input[:statement].nil?
        data['Parameters'] = PreparedStatementParameters.build(input[:parameters]) unless input[:parameters].nil?
        data['ConsistentRead'] = input[:consistent_read] unless input[:consistent_read].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['ReturnConsumedCapacity'] = input[:return_consumed_capacity] unless input[:return_consumed_capacity].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['ReturnValuesOnConditionCheckFailure'] = input[:return_values_on_condition_check_failure] unless input[:return_values_on_condition_check_failure].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class ExecuteTransaction
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.ExecuteTransaction'
        data = {}
        data['TransactStatements'] = ParameterizedStatements.build(input[:transact_statements]) unless input[:transact_statements].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['ReturnConsumedCapacity'] = input[:return_consumed_capacity] unless input[:return_consumed_capacity].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class ExpectedAttributeMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = ExpectedAttributeValue.build(value) unless value.nil?
        end
        data
      end
    end

    class ExpectedAttributeValue
      def self.build(input)
        data = {}
        data['Value'] = AttributeValue.build(input[:value]) unless input[:value].nil?
        data['Exists'] = input[:exists] unless input[:exists].nil?
        data['ComparisonOperator'] = input[:comparison_operator] unless input[:comparison_operator].nil?
        data['AttributeValueList'] = AttributeValueList.build(input[:attribute_value_list]) unless input[:attribute_value_list].nil?
        data
      end
    end

    class ExportTableToPointInTime
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.ExportTableToPointInTime'
        data = {}
        data['TableArn'] = input[:table_arn] unless input[:table_arn].nil?
        data['ExportTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:export_time]).to_i unless input[:export_time].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        data['S3Bucket'] = input[:s3_bucket] unless input[:s3_bucket].nil?
        data['S3BucketOwner'] = input[:s3_bucket_owner] unless input[:s3_bucket_owner].nil?
        data['S3Prefix'] = input[:s3_prefix] unless input[:s3_prefix].nil?
        data['S3SseAlgorithm'] = input[:s3_sse_algorithm] unless input[:s3_sse_algorithm].nil?
        data['S3SseKmsKeyId'] = input[:s3_sse_kms_key_id] unless input[:s3_sse_kms_key_id].nil?
        data['ExportFormat'] = input[:export_format] unless input[:export_format].nil?
        data['ExportType'] = input[:export_type] unless input[:export_type].nil?
        data['IncrementalExportSpecification'] = IncrementalExportSpecification.build(input[:incremental_export_specification]) unless input[:incremental_export_specification].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class ExpressionAttributeNameMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class ExpressionAttributeValueMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = AttributeValue.build(value) unless value.nil?
        end
        data
      end
    end

    class FilterConditionMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Condition.build(value) unless value.nil?
        end
        data
      end
    end

    class Get
      def self.build(input)
        data = {}
        data['Key'] = Key.build(input[:key]) unless input[:key].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['ProjectionExpression'] = input[:projection_expression] unless input[:projection_expression].nil?
        data['ExpressionAttributeNames'] = ExpressionAttributeNameMap.build(input[:expression_attribute_names]) unless input[:expression_attribute_names].nil?
        data
      end
    end

    class GetItem
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.GetItem'
        data = {}
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['Key'] = Key.build(input[:key]) unless input[:key].nil?
        data['AttributesToGet'] = AttributeNameList.build(input[:attributes_to_get]) unless input[:attributes_to_get].nil?
        data['ConsistentRead'] = input[:consistent_read] unless input[:consistent_read].nil?
        data['ReturnConsumedCapacity'] = input[:return_consumed_capacity] unless input[:return_consumed_capacity].nil?
        data['ProjectionExpression'] = input[:projection_expression] unless input[:projection_expression].nil?
        data['ExpressionAttributeNames'] = ExpressionAttributeNameMap.build(input[:expression_attribute_names]) unless input[:expression_attribute_names].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class GlobalSecondaryIndex
      def self.build(input)
        data = {}
        data['IndexName'] = input[:index_name] unless input[:index_name].nil?
        data['KeySchema'] = KeySchema.build(input[:key_schema]) unless input[:key_schema].nil?
        data['Projection'] = Projection.build(input[:projection]) unless input[:projection].nil?
        data['ProvisionedThroughput'] = ProvisionedThroughput.build(input[:provisioned_throughput]) unless input[:provisioned_throughput].nil?
        data
      end
    end

    class GlobalSecondaryIndexAutoScalingUpdate
      def self.build(input)
        data = {}
        data['IndexName'] = input[:index_name] unless input[:index_name].nil?
        data['ProvisionedWriteCapacityAutoScalingUpdate'] = AutoScalingSettingsUpdate.build(input[:provisioned_write_capacity_auto_scaling_update]) unless input[:provisioned_write_capacity_auto_scaling_update].nil?
        data
      end
    end

    class GlobalSecondaryIndexAutoScalingUpdateList
      def self.build(input)
        data = []
        input.each do |element|
          data << GlobalSecondaryIndexAutoScalingUpdate.build(element) unless element.nil?
        end
        data
      end
    end

    class GlobalSecondaryIndexList
      def self.build(input)
        data = []
        input.each do |element|
          data << GlobalSecondaryIndex.build(element) unless element.nil?
        end
        data
      end
    end

    class GlobalSecondaryIndexUpdate
      def self.build(input)
        data = {}
        data['Update'] = UpdateGlobalSecondaryIndexAction.build(input[:update]) unless input[:update].nil?
        data['Create'] = CreateGlobalSecondaryIndexAction.build(input[:create]) unless input[:create].nil?
        data['Delete'] = DeleteGlobalSecondaryIndexAction.build(input[:delete]) unless input[:delete].nil?
        data
      end
    end

    class GlobalSecondaryIndexUpdateList
      def self.build(input)
        data = []
        input.each do |element|
          data << GlobalSecondaryIndexUpdate.build(element) unless element.nil?
        end
        data
      end
    end

    class GlobalTableGlobalSecondaryIndexSettingsUpdate
      def self.build(input)
        data = {}
        data['IndexName'] = input[:index_name] unless input[:index_name].nil?
        data['ProvisionedWriteCapacityUnits'] = input[:provisioned_write_capacity_units] unless input[:provisioned_write_capacity_units].nil?
        data['ProvisionedWriteCapacityAutoScalingSettingsUpdate'] = AutoScalingSettingsUpdate.build(input[:provisioned_write_capacity_auto_scaling_settings_update]) unless input[:provisioned_write_capacity_auto_scaling_settings_update].nil?
        data
      end
    end

    class GlobalTableGlobalSecondaryIndexSettingsUpdateList
      def self.build(input)
        data = []
        input.each do |element|
          data << GlobalTableGlobalSecondaryIndexSettingsUpdate.build(element) unless element.nil?
        end
        data
      end
    end

    class ImportTable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.ImportTable'
        data = {}
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        data['S3BucketSource'] = S3BucketSource.build(input[:s3_bucket_source]) unless input[:s3_bucket_source].nil?
        data['InputFormat'] = input[:input_format] unless input[:input_format].nil?
        data['InputFormatOptions'] = InputFormatOptions.build(input[:input_format_options]) unless input[:input_format_options].nil?
        data['InputCompressionType'] = input[:input_compression_type] unless input[:input_compression_type].nil?
        data['TableCreationParameters'] = TableCreationParameters.build(input[:table_creation_parameters]) unless input[:table_creation_parameters].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class IncrementalExportSpecification
      def self.build(input)
        data = {}
        data['ExportFromTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:export_from_time]).to_i unless input[:export_from_time].nil?
        data['ExportToTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:export_to_time]).to_i unless input[:export_to_time].nil?
        data['ExportViewType'] = input[:export_view_type] unless input[:export_view_type].nil?
        data
      end
    end

    class InputFormatOptions
      def self.build(input)
        data = {}
        data['Csv'] = CsvOptions.build(input[:csv]) unless input[:csv].nil?
        data
      end
    end

    class Key
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = AttributeValue.build(value) unless value.nil?
        end
        data
      end
    end

    class KeyConditions
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Condition.build(value) unless value.nil?
        end
        data
      end
    end

    class KeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << Key.build(element) unless element.nil?
        end
        data
      end
    end

    class KeySchema
      def self.build(input)
        data = []
        input.each do |element|
          data << KeySchemaElement.build(element) unless element.nil?
        end
        data
      end
    end

    class KeySchemaElement
      def self.build(input)
        data = {}
        data['AttributeName'] = input[:attribute_name] unless input[:attribute_name].nil?
        data['KeyType'] = input[:key_type] unless input[:key_type].nil?
        data
      end
    end

    class KeysAndAttributes
      def self.build(input)
        data = {}
        data['Keys'] = KeyList.build(input[:keys]) unless input[:keys].nil?
        data['AttributesToGet'] = AttributeNameList.build(input[:attributes_to_get]) unless input[:attributes_to_get].nil?
        data['ConsistentRead'] = input[:consistent_read] unless input[:consistent_read].nil?
        data['ProjectionExpression'] = input[:projection_expression] unless input[:projection_expression].nil?
        data['ExpressionAttributeNames'] = ExpressionAttributeNameMap.build(input[:expression_attribute_names]) unless input[:expression_attribute_names].nil?
        data
      end
    end

    class ListAttributeValue
      def self.build(input)
        data = []
        input.each do |element|
          data << AttributeValue.build(element) unless element.nil?
        end
        data
      end
    end

    class ListBackups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.ListBackups'
        data = {}
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['TimeRangeLowerBound'] = Hearth::TimeHelper.to_epoch_seconds(input[:time_range_lower_bound]).to_i unless input[:time_range_lower_bound].nil?
        data['TimeRangeUpperBound'] = Hearth::TimeHelper.to_epoch_seconds(input[:time_range_upper_bound]).to_i unless input[:time_range_upper_bound].nil?
        data['ExclusiveStartBackupArn'] = input[:exclusive_start_backup_arn] unless input[:exclusive_start_backup_arn].nil?
        data['BackupType'] = input[:backup_type] unless input[:backup_type].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class ListContributorInsights
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.ListContributorInsights'
        data = {}
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class ListExports
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.ListExports'
        data = {}
        data['TableArn'] = input[:table_arn] unless input[:table_arn].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class ListGlobalTables
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.ListGlobalTables'
        data = {}
        data['ExclusiveStartGlobalTableName'] = input[:exclusive_start_global_table_name] unless input[:exclusive_start_global_table_name].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['RegionName'] = input[:region_name] unless input[:region_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class ListImports
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.ListImports'
        data = {}
        data['TableArn'] = input[:table_arn] unless input[:table_arn].nil?
        data['PageSize'] = input[:page_size] unless input[:page_size].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class ListTables
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.ListTables'
        data = {}
        data['ExclusiveStartTableName'] = input[:exclusive_start_table_name] unless input[:exclusive_start_table_name].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class ListTagsOfResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.ListTagsOfResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class LocalSecondaryIndex
      def self.build(input)
        data = {}
        data['IndexName'] = input[:index_name] unless input[:index_name].nil?
        data['KeySchema'] = KeySchema.build(input[:key_schema]) unless input[:key_schema].nil?
        data['Projection'] = Projection.build(input[:projection]) unless input[:projection].nil?
        data
      end
    end

    class LocalSecondaryIndexList
      def self.build(input)
        data = []
        input.each do |element|
          data << LocalSecondaryIndex.build(element) unless element.nil?
        end
        data
      end
    end

    class MapAttributeValue
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = AttributeValue.build(value) unless value.nil?
        end
        data
      end
    end

    class NonKeyAttributeNameList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class NumberSetAttributeValue
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class ParameterizedStatement
      def self.build(input)
        data = {}
        data['Statement'] = input[:statement] unless input[:statement].nil?
        data['Parameters'] = PreparedStatementParameters.build(input[:parameters]) unless input[:parameters].nil?
        data['ReturnValuesOnConditionCheckFailure'] = input[:return_values_on_condition_check_failure] unless input[:return_values_on_condition_check_failure].nil?
        data
      end
    end

    class ParameterizedStatements
      def self.build(input)
        data = []
        input.each do |element|
          data << ParameterizedStatement.build(element) unless element.nil?
        end
        data
      end
    end

    class PartiQLBatchRequest
      def self.build(input)
        data = []
        input.each do |element|
          data << BatchStatementRequest.build(element) unless element.nil?
        end
        data
      end
    end

    class PointInTimeRecoverySpecification
      def self.build(input)
        data = {}
        data['PointInTimeRecoveryEnabled'] = input[:point_in_time_recovery_enabled] unless input[:point_in_time_recovery_enabled].nil?
        data
      end
    end

    class PreparedStatementParameters
      def self.build(input)
        data = []
        input.each do |element|
          data << AttributeValue.build(element) unless element.nil?
        end
        data
      end
    end

    class Projection
      def self.build(input)
        data = {}
        data['ProjectionType'] = input[:projection_type] unless input[:projection_type].nil?
        data['NonKeyAttributes'] = NonKeyAttributeNameList.build(input[:non_key_attributes]) unless input[:non_key_attributes].nil?
        data
      end
    end

    class ProvisionedThroughput
      def self.build(input)
        data = {}
        data['ReadCapacityUnits'] = input[:read_capacity_units] unless input[:read_capacity_units].nil?
        data['WriteCapacityUnits'] = input[:write_capacity_units] unless input[:write_capacity_units].nil?
        data
      end
    end

    class ProvisionedThroughputOverride
      def self.build(input)
        data = {}
        data['ReadCapacityUnits'] = input[:read_capacity_units] unless input[:read_capacity_units].nil?
        data
      end
    end

    class Put
      def self.build(input)
        data = {}
        data['Item'] = PutItemInputAttributeMap.build(input[:item]) unless input[:item].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['ConditionExpression'] = input[:condition_expression] unless input[:condition_expression].nil?
        data['ExpressionAttributeNames'] = ExpressionAttributeNameMap.build(input[:expression_attribute_names]) unless input[:expression_attribute_names].nil?
        data['ExpressionAttributeValues'] = ExpressionAttributeValueMap.build(input[:expression_attribute_values]) unless input[:expression_attribute_values].nil?
        data['ReturnValuesOnConditionCheckFailure'] = input[:return_values_on_condition_check_failure] unless input[:return_values_on_condition_check_failure].nil?
        data
      end
    end

    class PutItem
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.PutItem'
        data = {}
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['Item'] = PutItemInputAttributeMap.build(input[:item]) unless input[:item].nil?
        data['Expected'] = ExpectedAttributeMap.build(input[:expected]) unless input[:expected].nil?
        data['ReturnValues'] = input[:return_values] unless input[:return_values].nil?
        data['ReturnConsumedCapacity'] = input[:return_consumed_capacity] unless input[:return_consumed_capacity].nil?
        data['ReturnItemCollectionMetrics'] = input[:return_item_collection_metrics] unless input[:return_item_collection_metrics].nil?
        data['ConditionalOperator'] = input[:conditional_operator] unless input[:conditional_operator].nil?
        data['ConditionExpression'] = input[:condition_expression] unless input[:condition_expression].nil?
        data['ExpressionAttributeNames'] = ExpressionAttributeNameMap.build(input[:expression_attribute_names]) unless input[:expression_attribute_names].nil?
        data['ExpressionAttributeValues'] = ExpressionAttributeValueMap.build(input[:expression_attribute_values]) unless input[:expression_attribute_values].nil?
        data['ReturnValuesOnConditionCheckFailure'] = input[:return_values_on_condition_check_failure] unless input[:return_values_on_condition_check_failure].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class PutItemInputAttributeMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = AttributeValue.build(value) unless value.nil?
        end
        data
      end
    end

    class PutRequest
      def self.build(input)
        data = {}
        data['Item'] = PutItemInputAttributeMap.build(input[:item]) unless input[:item].nil?
        data
      end
    end

    class Query
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.Query'
        data = {}
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['IndexName'] = input[:index_name] unless input[:index_name].nil?
        data['Select'] = input[:select] unless input[:select].nil?
        data['AttributesToGet'] = AttributeNameList.build(input[:attributes_to_get]) unless input[:attributes_to_get].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['ConsistentRead'] = input[:consistent_read] unless input[:consistent_read].nil?
        data['KeyConditions'] = KeyConditions.build(input[:key_conditions]) unless input[:key_conditions].nil?
        data['QueryFilter'] = FilterConditionMap.build(input[:query_filter]) unless input[:query_filter].nil?
        data['ConditionalOperator'] = input[:conditional_operator] unless input[:conditional_operator].nil?
        data['ScanIndexForward'] = input[:scan_index_forward] unless input[:scan_index_forward].nil?
        data['ExclusiveStartKey'] = Key.build(input[:exclusive_start_key]) unless input[:exclusive_start_key].nil?
        data['ReturnConsumedCapacity'] = input[:return_consumed_capacity] unless input[:return_consumed_capacity].nil?
        data['ProjectionExpression'] = input[:projection_expression] unless input[:projection_expression].nil?
        data['FilterExpression'] = input[:filter_expression] unless input[:filter_expression].nil?
        data['KeyConditionExpression'] = input[:key_condition_expression] unless input[:key_condition_expression].nil?
        data['ExpressionAttributeNames'] = ExpressionAttributeNameMap.build(input[:expression_attribute_names]) unless input[:expression_attribute_names].nil?
        data['ExpressionAttributeValues'] = ExpressionAttributeValueMap.build(input[:expression_attribute_values]) unless input[:expression_attribute_values].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class Replica
      def self.build(input)
        data = {}
        data['RegionName'] = input[:region_name] unless input[:region_name].nil?
        data
      end
    end

    class ReplicaAutoScalingUpdate
      def self.build(input)
        data = {}
        data['RegionName'] = input[:region_name] unless input[:region_name].nil?
        data['ReplicaGlobalSecondaryIndexUpdates'] = ReplicaGlobalSecondaryIndexAutoScalingUpdateList.build(input[:replica_global_secondary_index_updates]) unless input[:replica_global_secondary_index_updates].nil?
        data['ReplicaProvisionedReadCapacityAutoScalingUpdate'] = AutoScalingSettingsUpdate.build(input[:replica_provisioned_read_capacity_auto_scaling_update]) unless input[:replica_provisioned_read_capacity_auto_scaling_update].nil?
        data
      end
    end

    class ReplicaAutoScalingUpdateList
      def self.build(input)
        data = []
        input.each do |element|
          data << ReplicaAutoScalingUpdate.build(element) unless element.nil?
        end
        data
      end
    end

    class ReplicaGlobalSecondaryIndex
      def self.build(input)
        data = {}
        data['IndexName'] = input[:index_name] unless input[:index_name].nil?
        data['ProvisionedThroughputOverride'] = ProvisionedThroughputOverride.build(input[:provisioned_throughput_override]) unless input[:provisioned_throughput_override].nil?
        data
      end
    end

    class ReplicaGlobalSecondaryIndexAutoScalingUpdate
      def self.build(input)
        data = {}
        data['IndexName'] = input[:index_name] unless input[:index_name].nil?
        data['ProvisionedReadCapacityAutoScalingUpdate'] = AutoScalingSettingsUpdate.build(input[:provisioned_read_capacity_auto_scaling_update]) unless input[:provisioned_read_capacity_auto_scaling_update].nil?
        data
      end
    end

    class ReplicaGlobalSecondaryIndexAutoScalingUpdateList
      def self.build(input)
        data = []
        input.each do |element|
          data << ReplicaGlobalSecondaryIndexAutoScalingUpdate.build(element) unless element.nil?
        end
        data
      end
    end

    class ReplicaGlobalSecondaryIndexList
      def self.build(input)
        data = []
        input.each do |element|
          data << ReplicaGlobalSecondaryIndex.build(element) unless element.nil?
        end
        data
      end
    end

    class ReplicaGlobalSecondaryIndexSettingsUpdate
      def self.build(input)
        data = {}
        data['IndexName'] = input[:index_name] unless input[:index_name].nil?
        data['ProvisionedReadCapacityUnits'] = input[:provisioned_read_capacity_units] unless input[:provisioned_read_capacity_units].nil?
        data['ProvisionedReadCapacityAutoScalingSettingsUpdate'] = AutoScalingSettingsUpdate.build(input[:provisioned_read_capacity_auto_scaling_settings_update]) unless input[:provisioned_read_capacity_auto_scaling_settings_update].nil?
        data
      end
    end

    class ReplicaGlobalSecondaryIndexSettingsUpdateList
      def self.build(input)
        data = []
        input.each do |element|
          data << ReplicaGlobalSecondaryIndexSettingsUpdate.build(element) unless element.nil?
        end
        data
      end
    end

    class ReplicaList
      def self.build(input)
        data = []
        input.each do |element|
          data << Replica.build(element) unless element.nil?
        end
        data
      end
    end

    class ReplicaSettingsUpdate
      def self.build(input)
        data = {}
        data['RegionName'] = input[:region_name] unless input[:region_name].nil?
        data['ReplicaProvisionedReadCapacityUnits'] = input[:replica_provisioned_read_capacity_units] unless input[:replica_provisioned_read_capacity_units].nil?
        data['ReplicaProvisionedReadCapacityAutoScalingSettingsUpdate'] = AutoScalingSettingsUpdate.build(input[:replica_provisioned_read_capacity_auto_scaling_settings_update]) unless input[:replica_provisioned_read_capacity_auto_scaling_settings_update].nil?
        data['ReplicaGlobalSecondaryIndexSettingsUpdate'] = ReplicaGlobalSecondaryIndexSettingsUpdateList.build(input[:replica_global_secondary_index_settings_update]) unless input[:replica_global_secondary_index_settings_update].nil?
        data['ReplicaTableClass'] = input[:replica_table_class] unless input[:replica_table_class].nil?
        data
      end
    end

    class ReplicaSettingsUpdateList
      def self.build(input)
        data = []
        input.each do |element|
          data << ReplicaSettingsUpdate.build(element) unless element.nil?
        end
        data
      end
    end

    class ReplicaUpdate
      def self.build(input)
        data = {}
        data['Create'] = CreateReplicaAction.build(input[:create]) unless input[:create].nil?
        data['Delete'] = DeleteReplicaAction.build(input[:delete]) unless input[:delete].nil?
        data
      end
    end

    class ReplicaUpdateList
      def self.build(input)
        data = []
        input.each do |element|
          data << ReplicaUpdate.build(element) unless element.nil?
        end
        data
      end
    end

    class ReplicationGroupUpdate
      def self.build(input)
        data = {}
        data['Create'] = CreateReplicationGroupMemberAction.build(input[:create]) unless input[:create].nil?
        data['Update'] = UpdateReplicationGroupMemberAction.build(input[:update]) unless input[:update].nil?
        data['Delete'] = DeleteReplicationGroupMemberAction.build(input[:delete]) unless input[:delete].nil?
        data
      end
    end

    class ReplicationGroupUpdateList
      def self.build(input)
        data = []
        input.each do |element|
          data << ReplicationGroupUpdate.build(element) unless element.nil?
        end
        data
      end
    end

    class RestoreTableFromBackup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.RestoreTableFromBackup'
        data = {}
        data['TargetTableName'] = input[:target_table_name] unless input[:target_table_name].nil?
        data['BackupArn'] = input[:backup_arn] unless input[:backup_arn].nil?
        data['BillingModeOverride'] = input[:billing_mode_override] unless input[:billing_mode_override].nil?
        data['GlobalSecondaryIndexOverride'] = GlobalSecondaryIndexList.build(input[:global_secondary_index_override]) unless input[:global_secondary_index_override].nil?
        data['LocalSecondaryIndexOverride'] = LocalSecondaryIndexList.build(input[:local_secondary_index_override]) unless input[:local_secondary_index_override].nil?
        data['ProvisionedThroughputOverride'] = ProvisionedThroughput.build(input[:provisioned_throughput_override]) unless input[:provisioned_throughput_override].nil?
        data['SSESpecificationOverride'] = SSESpecification.build(input[:sse_specification_override]) unless input[:sse_specification_override].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class RestoreTableToPointInTime
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.RestoreTableToPointInTime'
        data = {}
        data['SourceTableArn'] = input[:source_table_arn] unless input[:source_table_arn].nil?
        data['SourceTableName'] = input[:source_table_name] unless input[:source_table_name].nil?
        data['TargetTableName'] = input[:target_table_name] unless input[:target_table_name].nil?
        data['UseLatestRestorableTime'] = input[:use_latest_restorable_time] unless input[:use_latest_restorable_time].nil?
        data['RestoreDateTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:restore_date_time]).to_i unless input[:restore_date_time].nil?
        data['BillingModeOverride'] = input[:billing_mode_override] unless input[:billing_mode_override].nil?
        data['GlobalSecondaryIndexOverride'] = GlobalSecondaryIndexList.build(input[:global_secondary_index_override]) unless input[:global_secondary_index_override].nil?
        data['LocalSecondaryIndexOverride'] = LocalSecondaryIndexList.build(input[:local_secondary_index_override]) unless input[:local_secondary_index_override].nil?
        data['ProvisionedThroughputOverride'] = ProvisionedThroughput.build(input[:provisioned_throughput_override]) unless input[:provisioned_throughput_override].nil?
        data['SSESpecificationOverride'] = SSESpecification.build(input[:sse_specification_override]) unless input[:sse_specification_override].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class S3BucketSource
      def self.build(input)
        data = {}
        data['S3BucketOwner'] = input[:s3_bucket_owner] unless input[:s3_bucket_owner].nil?
        data['S3Bucket'] = input[:s3_bucket] unless input[:s3_bucket].nil?
        data['S3KeyPrefix'] = input[:s3_key_prefix] unless input[:s3_key_prefix].nil?
        data
      end
    end

    class SSESpecification
      def self.build(input)
        data = {}
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data['SSEType'] = input[:sse_type] unless input[:sse_type].nil?
        data['KMSMasterKeyId'] = input[:kms_master_key_id] unless input[:kms_master_key_id].nil?
        data
      end
    end

    class Scan
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.Scan'
        data = {}
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['IndexName'] = input[:index_name] unless input[:index_name].nil?
        data['AttributesToGet'] = AttributeNameList.build(input[:attributes_to_get]) unless input[:attributes_to_get].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['Select'] = input[:select] unless input[:select].nil?
        data['ScanFilter'] = FilterConditionMap.build(input[:scan_filter]) unless input[:scan_filter].nil?
        data['ConditionalOperator'] = input[:conditional_operator] unless input[:conditional_operator].nil?
        data['ExclusiveStartKey'] = Key.build(input[:exclusive_start_key]) unless input[:exclusive_start_key].nil?
        data['ReturnConsumedCapacity'] = input[:return_consumed_capacity] unless input[:return_consumed_capacity].nil?
        data['TotalSegments'] = input[:total_segments] unless input[:total_segments].nil?
        data['Segment'] = input[:segment] unless input[:segment].nil?
        data['ProjectionExpression'] = input[:projection_expression] unless input[:projection_expression].nil?
        data['FilterExpression'] = input[:filter_expression] unless input[:filter_expression].nil?
        data['ExpressionAttributeNames'] = ExpressionAttributeNameMap.build(input[:expression_attribute_names]) unless input[:expression_attribute_names].nil?
        data['ExpressionAttributeValues'] = ExpressionAttributeValueMap.build(input[:expression_attribute_values]) unless input[:expression_attribute_values].nil?
        data['ConsistentRead'] = input[:consistent_read] unless input[:consistent_read].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class StreamSpecification
      def self.build(input)
        data = {}
        data['StreamEnabled'] = input[:stream_enabled] unless input[:stream_enabled].nil?
        data['StreamViewType'] = input[:stream_view_type] unless input[:stream_view_type].nil?
        data
      end
    end

    class StringSetAttributeValue
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class TableCreationParameters
      def self.build(input)
        data = {}
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['AttributeDefinitions'] = AttributeDefinitions.build(input[:attribute_definitions]) unless input[:attribute_definitions].nil?
        data['KeySchema'] = KeySchema.build(input[:key_schema]) unless input[:key_schema].nil?
        data['BillingMode'] = input[:billing_mode] unless input[:billing_mode].nil?
        data['ProvisionedThroughput'] = ProvisionedThroughput.build(input[:provisioned_throughput]) unless input[:provisioned_throughput].nil?
        data['SSESpecification'] = SSESpecification.build(input[:sse_specification]) unless input[:sse_specification].nil?
        data['GlobalSecondaryIndexes'] = GlobalSecondaryIndexList.build(input[:global_secondary_indexes]) unless input[:global_secondary_indexes].nil?
        data
      end
    end

    class Tag
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Tag.build(element) unless element.nil?
        end
        data
      end
    end

    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.TagResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class TimeToLiveSpecification
      def self.build(input)
        data = {}
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data['AttributeName'] = input[:attribute_name] unless input[:attribute_name].nil?
        data
      end
    end

    class TransactGetItem
      def self.build(input)
        data = {}
        data['Get'] = Get.build(input[:get]) unless input[:get].nil?
        data
      end
    end

    class TransactGetItemList
      def self.build(input)
        data = []
        input.each do |element|
          data << TransactGetItem.build(element) unless element.nil?
        end
        data
      end
    end

    class TransactGetItems
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.TransactGetItems'
        data = {}
        data['TransactItems'] = TransactGetItemList.build(input[:transact_items]) unless input[:transact_items].nil?
        data['ReturnConsumedCapacity'] = input[:return_consumed_capacity] unless input[:return_consumed_capacity].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class TransactWriteItem
      def self.build(input)
        data = {}
        data['ConditionCheck'] = ConditionCheck.build(input[:condition_check]) unless input[:condition_check].nil?
        data['Put'] = Put.build(input[:put]) unless input[:put].nil?
        data['Delete'] = Delete.build(input[:delete]) unless input[:delete].nil?
        data['Update'] = Update.build(input[:update]) unless input[:update].nil?
        data
      end
    end

    class TransactWriteItemList
      def self.build(input)
        data = []
        input.each do |element|
          data << TransactWriteItem.build(element) unless element.nil?
        end
        data
      end
    end

    class TransactWriteItems
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.TransactWriteItems'
        data = {}
        data['TransactItems'] = TransactWriteItemList.build(input[:transact_items]) unless input[:transact_items].nil?
        data['ReturnConsumedCapacity'] = input[:return_consumed_capacity] unless input[:return_consumed_capacity].nil?
        data['ReturnItemCollectionMetrics'] = input[:return_item_collection_metrics] unless input[:return_item_collection_metrics].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.UntagResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['TagKeys'] = TagKeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class Update
      def self.build(input)
        data = {}
        data['Key'] = Key.build(input[:key]) unless input[:key].nil?
        data['UpdateExpression'] = input[:update_expression] unless input[:update_expression].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['ConditionExpression'] = input[:condition_expression] unless input[:condition_expression].nil?
        data['ExpressionAttributeNames'] = ExpressionAttributeNameMap.build(input[:expression_attribute_names]) unless input[:expression_attribute_names].nil?
        data['ExpressionAttributeValues'] = ExpressionAttributeValueMap.build(input[:expression_attribute_values]) unless input[:expression_attribute_values].nil?
        data['ReturnValuesOnConditionCheckFailure'] = input[:return_values_on_condition_check_failure] unless input[:return_values_on_condition_check_failure].nil?
        data
      end
    end

    class UpdateContinuousBackups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.UpdateContinuousBackups'
        data = {}
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['PointInTimeRecoverySpecification'] = PointInTimeRecoverySpecification.build(input[:point_in_time_recovery_specification]) unless input[:point_in_time_recovery_specification].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class UpdateContributorInsights
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.UpdateContributorInsights'
        data = {}
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['IndexName'] = input[:index_name] unless input[:index_name].nil?
        data['ContributorInsightsAction'] = input[:contributor_insights_action] unless input[:contributor_insights_action].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class UpdateGlobalSecondaryIndexAction
      def self.build(input)
        data = {}
        data['IndexName'] = input[:index_name] unless input[:index_name].nil?
        data['ProvisionedThroughput'] = ProvisionedThroughput.build(input[:provisioned_throughput]) unless input[:provisioned_throughput].nil?
        data
      end
    end

    class UpdateGlobalTable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.UpdateGlobalTable'
        data = {}
        data['GlobalTableName'] = input[:global_table_name] unless input[:global_table_name].nil?
        data['ReplicaUpdates'] = ReplicaUpdateList.build(input[:replica_updates]) unless input[:replica_updates].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class UpdateGlobalTableSettings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.UpdateGlobalTableSettings'
        data = {}
        data['GlobalTableName'] = input[:global_table_name] unless input[:global_table_name].nil?
        data['GlobalTableBillingMode'] = input[:global_table_billing_mode] unless input[:global_table_billing_mode].nil?
        data['GlobalTableProvisionedWriteCapacityUnits'] = input[:global_table_provisioned_write_capacity_units] unless input[:global_table_provisioned_write_capacity_units].nil?
        data['GlobalTableProvisionedWriteCapacityAutoScalingSettingsUpdate'] = AutoScalingSettingsUpdate.build(input[:global_table_provisioned_write_capacity_auto_scaling_settings_update]) unless input[:global_table_provisioned_write_capacity_auto_scaling_settings_update].nil?
        data['GlobalTableGlobalSecondaryIndexSettingsUpdate'] = GlobalTableGlobalSecondaryIndexSettingsUpdateList.build(input[:global_table_global_secondary_index_settings_update]) unless input[:global_table_global_secondary_index_settings_update].nil?
        data['ReplicaSettingsUpdate'] = ReplicaSettingsUpdateList.build(input[:replica_settings_update]) unless input[:replica_settings_update].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class UpdateItem
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.UpdateItem'
        data = {}
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['Key'] = Key.build(input[:key]) unless input[:key].nil?
        data['AttributeUpdates'] = AttributeUpdates.build(input[:attribute_updates]) unless input[:attribute_updates].nil?
        data['Expected'] = ExpectedAttributeMap.build(input[:expected]) unless input[:expected].nil?
        data['ConditionalOperator'] = input[:conditional_operator] unless input[:conditional_operator].nil?
        data['ReturnValues'] = input[:return_values] unless input[:return_values].nil?
        data['ReturnConsumedCapacity'] = input[:return_consumed_capacity] unless input[:return_consumed_capacity].nil?
        data['ReturnItemCollectionMetrics'] = input[:return_item_collection_metrics] unless input[:return_item_collection_metrics].nil?
        data['UpdateExpression'] = input[:update_expression] unless input[:update_expression].nil?
        data['ConditionExpression'] = input[:condition_expression] unless input[:condition_expression].nil?
        data['ExpressionAttributeNames'] = ExpressionAttributeNameMap.build(input[:expression_attribute_names]) unless input[:expression_attribute_names].nil?
        data['ExpressionAttributeValues'] = ExpressionAttributeValueMap.build(input[:expression_attribute_values]) unless input[:expression_attribute_values].nil?
        data['ReturnValuesOnConditionCheckFailure'] = input[:return_values_on_condition_check_failure] unless input[:return_values_on_condition_check_failure].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class UpdateKinesisStreamingConfiguration
      def self.build(input)
        data = {}
        data['ApproximateCreationDateTimePrecision'] = input[:approximate_creation_date_time_precision] unless input[:approximate_creation_date_time_precision].nil?
        data
      end
    end

    class UpdateKinesisStreamingDestination
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.UpdateKinesisStreamingDestination'
        data = {}
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['StreamArn'] = input[:stream_arn] unless input[:stream_arn].nil?
        data['UpdateKinesisStreamingConfiguration'] = UpdateKinesisStreamingConfiguration.build(input[:update_kinesis_streaming_configuration]) unless input[:update_kinesis_streaming_configuration].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class UpdateReplicationGroupMemberAction
      def self.build(input)
        data = {}
        data['RegionName'] = input[:region_name] unless input[:region_name].nil?
        data['KMSMasterKeyId'] = input[:kms_master_key_id] unless input[:kms_master_key_id].nil?
        data['ProvisionedThroughputOverride'] = ProvisionedThroughputOverride.build(input[:provisioned_throughput_override]) unless input[:provisioned_throughput_override].nil?
        data['GlobalSecondaryIndexes'] = ReplicaGlobalSecondaryIndexList.build(input[:global_secondary_indexes]) unless input[:global_secondary_indexes].nil?
        data['TableClassOverride'] = input[:table_class_override] unless input[:table_class_override].nil?
        data
      end
    end

    class UpdateTable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.UpdateTable'
        data = {}
        data['AttributeDefinitions'] = AttributeDefinitions.build(input[:attribute_definitions]) unless input[:attribute_definitions].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['BillingMode'] = input[:billing_mode] unless input[:billing_mode].nil?
        data['ProvisionedThroughput'] = ProvisionedThroughput.build(input[:provisioned_throughput]) unless input[:provisioned_throughput].nil?
        data['GlobalSecondaryIndexUpdates'] = GlobalSecondaryIndexUpdateList.build(input[:global_secondary_index_updates]) unless input[:global_secondary_index_updates].nil?
        data['StreamSpecification'] = StreamSpecification.build(input[:stream_specification]) unless input[:stream_specification].nil?
        data['SSESpecification'] = SSESpecification.build(input[:sse_specification]) unless input[:sse_specification].nil?
        data['ReplicaUpdates'] = ReplicationGroupUpdateList.build(input[:replica_updates]) unless input[:replica_updates].nil?
        data['TableClass'] = input[:table_class] unless input[:table_class].nil?
        data['DeletionProtectionEnabled'] = input[:deletion_protection_enabled] unless input[:deletion_protection_enabled].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class UpdateTableReplicaAutoScaling
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.UpdateTableReplicaAutoScaling'
        data = {}
        data['GlobalSecondaryIndexUpdates'] = GlobalSecondaryIndexAutoScalingUpdateList.build(input[:global_secondary_index_updates]) unless input[:global_secondary_index_updates].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['ProvisionedWriteCapacityAutoScalingUpdate'] = AutoScalingSettingsUpdate.build(input[:provisioned_write_capacity_auto_scaling_update]) unless input[:provisioned_write_capacity_auto_scaling_update].nil?
        data['ReplicaUpdates'] = ReplicaAutoScalingUpdateList.build(input[:replica_updates]) unless input[:replica_updates].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class UpdateTimeToLive
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDB_20120810.UpdateTimeToLive'
        data = {}
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['TimeToLiveSpecification'] = TimeToLiveSpecification.build(input[:time_to_live_specification]) unless input[:time_to_live_specification].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class WriteRequest
      def self.build(input)
        data = {}
        data['PutRequest'] = PutRequest.build(input[:put_request]) unless input[:put_request].nil?
        data['DeleteRequest'] = DeleteRequest.build(input[:delete_request]) unless input[:delete_request].nil?
        data
      end
    end

    class WriteRequests
      def self.build(input)
        data = []
        input.each do |element|
          data << WriteRequest.build(element) unless element.nil?
        end
        data
      end
    end
  end
end
