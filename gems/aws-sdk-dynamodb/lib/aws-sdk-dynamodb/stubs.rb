# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'
require 'stringio'

module AWS::SDK::DynamoDB
  # @api private
  module Stubs

    class ArchivalSummary
      def self.default(visited = [])
        return nil if visited.include?('ArchivalSummary')
        visited = visited + ['ArchivalSummary']
        {
          archival_date_time: Time.now,
          archival_reason: 'archival_reason',
          archival_backup_arn: 'archival_backup_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::ArchivalSummary.new
        data = {}
        data['ArchivalDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub.archival_date_time).to_i unless stub.archival_date_time.nil?
        data['ArchivalReason'] = stub.archival_reason unless stub.archival_reason.nil?
        data['ArchivalBackupArn'] = stub.archival_backup_arn unless stub.archival_backup_arn.nil?
        data
      end
    end

    class AttributeDefinition
      def self.default(visited = [])
        return nil if visited.include?('AttributeDefinition')
        visited = visited + ['AttributeDefinition']
        {
          attribute_name: 'attribute_name',
          attribute_type: 'attribute_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::AttributeDefinition.new
        data = {}
        data['AttributeName'] = stub.attribute_name unless stub.attribute_name.nil?
        data['AttributeType'] = stub.attribute_type unless stub.attribute_type.nil?
        data
      end
    end

    class AttributeDefinitions
      def self.default(visited = [])
        return nil if visited.include?('AttributeDefinitions')
        visited = visited + ['AttributeDefinitions']
        [
          AttributeDefinition.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AttributeDefinition.stub(element) unless element.nil?
        end
        data
      end
    end

    class AttributeMap
      def self.default(visited = [])
        return nil if visited.include?('AttributeMap')
        visited = visited + ['AttributeMap']
        {
          'key' => AttributeValue.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = AttributeValue.stub(value) unless value.nil?
        end
        data
      end
    end

    class AttributeNameList
      def self.default(visited = [])
        return nil if visited.include?('AttributeNameList')
        visited = visited + ['AttributeNameList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class AttributeValue
      def self.default(visited = [])
        return nil if visited.include?('AttributeValue')
        visited = visited + ['AttributeValue']
        {
          s: 's',
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::AttributeValue::S
          data['S'] = stub.__getobj__
        when Types::AttributeValue::N
          data['N'] = stub.__getobj__
        when Types::AttributeValue::B
          data['B'] = ::Base64::strict_encode64(stub.__getobj__)
        when Types::AttributeValue::Ss
          data['SS'] = (StringSetAttributeValue.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::AttributeValue::Ns
          data['NS'] = (NumberSetAttributeValue.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::AttributeValue::Bs
          data['BS'] = (BinarySetAttributeValue.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::AttributeValue::M
          data['M'] = (MapAttributeValue.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::AttributeValue::L
          data['L'] = (ListAttributeValue.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::AttributeValue::Null
          data['NULL'] = stub.__getobj__
        when Types::AttributeValue::Bool
          data['BOOL'] = stub.__getobj__
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::AttributeValue"
        end

        data
      end
    end

    class AutoScalingPolicyDescription
      def self.default(visited = [])
        return nil if visited.include?('AutoScalingPolicyDescription')
        visited = visited + ['AutoScalingPolicyDescription']
        {
          policy_name: 'policy_name',
          target_tracking_scaling_policy_configuration: AutoScalingTargetTrackingScalingPolicyConfigurationDescription.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AutoScalingPolicyDescription.new
        data = {}
        data['PolicyName'] = stub.policy_name unless stub.policy_name.nil?
        data['TargetTrackingScalingPolicyConfiguration'] = AutoScalingTargetTrackingScalingPolicyConfigurationDescription.stub(stub.target_tracking_scaling_policy_configuration) unless stub.target_tracking_scaling_policy_configuration.nil?
        data
      end
    end

    class AutoScalingPolicyDescriptionList
      def self.default(visited = [])
        return nil if visited.include?('AutoScalingPolicyDescriptionList')
        visited = visited + ['AutoScalingPolicyDescriptionList']
        [
          AutoScalingPolicyDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AutoScalingPolicyDescription.stub(element) unless element.nil?
        end
        data
      end
    end

    class AutoScalingSettingsDescription
      def self.default(visited = [])
        return nil if visited.include?('AutoScalingSettingsDescription')
        visited = visited + ['AutoScalingSettingsDescription']
        {
          minimum_units: 1,
          maximum_units: 1,
          auto_scaling_disabled: false,
          auto_scaling_role_arn: 'auto_scaling_role_arn',
          scaling_policies: AutoScalingPolicyDescriptionList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AutoScalingSettingsDescription.new
        data = {}
        data['MinimumUnits'] = stub.minimum_units unless stub.minimum_units.nil?
        data['MaximumUnits'] = stub.maximum_units unless stub.maximum_units.nil?
        data['AutoScalingDisabled'] = stub.auto_scaling_disabled unless stub.auto_scaling_disabled.nil?
        data['AutoScalingRoleArn'] = stub.auto_scaling_role_arn unless stub.auto_scaling_role_arn.nil?
        data['ScalingPolicies'] = AutoScalingPolicyDescriptionList.stub(stub.scaling_policies) unless stub.scaling_policies.nil?
        data
      end
    end

    class AutoScalingTargetTrackingScalingPolicyConfigurationDescription
      def self.default(visited = [])
        return nil if visited.include?('AutoScalingTargetTrackingScalingPolicyConfigurationDescription')
        visited = visited + ['AutoScalingTargetTrackingScalingPolicyConfigurationDescription']
        {
          disable_scale_in: false,
          scale_in_cooldown: 1,
          scale_out_cooldown: 1,
          target_value: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::AutoScalingTargetTrackingScalingPolicyConfigurationDescription.new
        data = {}
        data['DisableScaleIn'] = stub.disable_scale_in unless stub.disable_scale_in.nil?
        data['ScaleInCooldown'] = stub.scale_in_cooldown unless stub.scale_in_cooldown.nil?
        data['ScaleOutCooldown'] = stub.scale_out_cooldown unless stub.scale_out_cooldown.nil?
        data['TargetValue'] = Hearth::NumberHelper.serialize(stub.target_value)
        data
      end
    end

    class BackupDescription
      def self.default(visited = [])
        return nil if visited.include?('BackupDescription')
        visited = visited + ['BackupDescription']
        {
          backup_details: BackupDetails.default(visited),
          source_table_details: SourceTableDetails.default(visited),
          source_table_feature_details: SourceTableFeatureDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BackupDescription.new
        data = {}
        data['BackupDetails'] = BackupDetails.stub(stub.backup_details) unless stub.backup_details.nil?
        data['SourceTableDetails'] = SourceTableDetails.stub(stub.source_table_details) unless stub.source_table_details.nil?
        data['SourceTableFeatureDetails'] = SourceTableFeatureDetails.stub(stub.source_table_feature_details) unless stub.source_table_feature_details.nil?
        data
      end
    end

    class BackupDetails
      def self.default(visited = [])
        return nil if visited.include?('BackupDetails')
        visited = visited + ['BackupDetails']
        {
          backup_arn: 'backup_arn',
          backup_name: 'backup_name',
          backup_size_bytes: 1,
          backup_status: 'backup_status',
          backup_type: 'backup_type',
          backup_creation_date_time: Time.now,
          backup_expiry_date_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::BackupDetails.new
        data = {}
        data['BackupArn'] = stub.backup_arn unless stub.backup_arn.nil?
        data['BackupName'] = stub.backup_name unless stub.backup_name.nil?
        data['BackupSizeBytes'] = stub.backup_size_bytes unless stub.backup_size_bytes.nil?
        data['BackupStatus'] = stub.backup_status unless stub.backup_status.nil?
        data['BackupType'] = stub.backup_type unless stub.backup_type.nil?
        data['BackupCreationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub.backup_creation_date_time).to_i unless stub.backup_creation_date_time.nil?
        data['BackupExpiryDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub.backup_expiry_date_time).to_i unless stub.backup_expiry_date_time.nil?
        data
      end
    end

    class BackupInUseException
      def self.build(params, context:)
        Params::BackupInUseException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::BackupInUseException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'com.amazonaws.dynamodb#BackupInUseException'
        data['message'] = stub.message unless stub.message.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class BackupNotFoundException
      def self.build(params, context:)
        Params::BackupNotFoundException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::BackupNotFoundException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'com.amazonaws.dynamodb#BackupNotFoundException'
        data['message'] = stub.message unless stub.message.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class BackupSummaries
      def self.default(visited = [])
        return nil if visited.include?('BackupSummaries')
        visited = visited + ['BackupSummaries']
        [
          BackupSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BackupSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    class BackupSummary
      def self.default(visited = [])
        return nil if visited.include?('BackupSummary')
        visited = visited + ['BackupSummary']
        {
          table_name: 'table_name',
          table_id: 'table_id',
          table_arn: 'table_arn',
          backup_arn: 'backup_arn',
          backup_name: 'backup_name',
          backup_creation_date_time: Time.now,
          backup_expiry_date_time: Time.now,
          backup_status: 'backup_status',
          backup_type: 'backup_type',
          backup_size_bytes: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::BackupSummary.new
        data = {}
        data['TableName'] = stub.table_name unless stub.table_name.nil?
        data['TableId'] = stub.table_id unless stub.table_id.nil?
        data['TableArn'] = stub.table_arn unless stub.table_arn.nil?
        data['BackupArn'] = stub.backup_arn unless stub.backup_arn.nil?
        data['BackupName'] = stub.backup_name unless stub.backup_name.nil?
        data['BackupCreationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub.backup_creation_date_time).to_i unless stub.backup_creation_date_time.nil?
        data['BackupExpiryDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub.backup_expiry_date_time).to_i unless stub.backup_expiry_date_time.nil?
        data['BackupStatus'] = stub.backup_status unless stub.backup_status.nil?
        data['BackupType'] = stub.backup_type unless stub.backup_type.nil?
        data['BackupSizeBytes'] = stub.backup_size_bytes unless stub.backup_size_bytes.nil?
        data
      end
    end

    class BatchExecuteStatement
      def self.build(params, context:)
        Params::BatchExecuteStatementOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::BatchExecuteStatementOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          responses: PartiQLBatchResponse.default(visited),
          consumed_capacity: ConsumedCapacityMultiple.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Responses'] = PartiQLBatchResponse.stub(stub.responses) unless stub.responses.nil?
        data['ConsumedCapacity'] = ConsumedCapacityMultiple.stub(stub.consumed_capacity) unless stub.consumed_capacity.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class BatchGetItem
      def self.build(params, context:)
        Params::BatchGetItemOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::BatchGetItemOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          responses: BatchGetResponseMap.default(visited),
          unprocessed_keys: BatchGetRequestMap.default(visited),
          consumed_capacity: ConsumedCapacityMultiple.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Responses'] = BatchGetResponseMap.stub(stub.responses) unless stub.responses.nil?
        data['UnprocessedKeys'] = BatchGetRequestMap.stub(stub.unprocessed_keys) unless stub.unprocessed_keys.nil?
        data['ConsumedCapacity'] = ConsumedCapacityMultiple.stub(stub.consumed_capacity) unless stub.consumed_capacity.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class BatchGetRequestMap
      def self.default(visited = [])
        return nil if visited.include?('BatchGetRequestMap')
        visited = visited + ['BatchGetRequestMap']
        {
          'key' => KeysAndAttributes.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = KeysAndAttributes.stub(value) unless value.nil?
        end
        data
      end
    end

    class BatchGetResponseMap
      def self.default(visited = [])
        return nil if visited.include?('BatchGetResponseMap')
        visited = visited + ['BatchGetResponseMap']
        {
          'key' => ItemList.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = ItemList.stub(value) unless value.nil?
        end
        data
      end
    end

    class BatchStatementError
      def self.default(visited = [])
        return nil if visited.include?('BatchStatementError')
        visited = visited + ['BatchStatementError']
        {
          code: 'code',
          message: 'message',
          item: AttributeMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchStatementError.new
        data = {}
        data['Code'] = stub.code unless stub.code.nil?
        data['Message'] = stub.message unless stub.message.nil?
        data['Item'] = AttributeMap.stub(stub.item) unless stub.item.nil?
        data
      end
    end

    class BatchStatementResponse
      def self.default(visited = [])
        return nil if visited.include?('BatchStatementResponse')
        visited = visited + ['BatchStatementResponse']
        {
          error: BatchStatementError.default(visited),
          table_name: 'table_name',
          item: AttributeMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchStatementResponse.new
        data = {}
        data['Error'] = BatchStatementError.stub(stub.error) unless stub.error.nil?
        data['TableName'] = stub.table_name unless stub.table_name.nil?
        data['Item'] = AttributeMap.stub(stub.item) unless stub.item.nil?
        data
      end
    end

    class BatchWriteItem
      def self.build(params, context:)
        Params::BatchWriteItemOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::BatchWriteItemOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          unprocessed_items: BatchWriteItemRequestMap.default(visited),
          item_collection_metrics: ItemCollectionMetricsPerTable.default(visited),
          consumed_capacity: ConsumedCapacityMultiple.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['UnprocessedItems'] = BatchWriteItemRequestMap.stub(stub.unprocessed_items) unless stub.unprocessed_items.nil?
        data['ItemCollectionMetrics'] = ItemCollectionMetricsPerTable.stub(stub.item_collection_metrics) unless stub.item_collection_metrics.nil?
        data['ConsumedCapacity'] = ConsumedCapacityMultiple.stub(stub.consumed_capacity) unless stub.consumed_capacity.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class BatchWriteItemRequestMap
      def self.default(visited = [])
        return nil if visited.include?('BatchWriteItemRequestMap')
        visited = visited + ['BatchWriteItemRequestMap']
        {
          'key' => WriteRequests.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = WriteRequests.stub(value) unless value.nil?
        end
        data
      end
    end

    class BillingModeSummary
      def self.default(visited = [])
        return nil if visited.include?('BillingModeSummary')
        visited = visited + ['BillingModeSummary']
        {
          billing_mode: 'billing_mode',
          last_update_to_pay_per_request_date_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::BillingModeSummary.new
        data = {}
        data['BillingMode'] = stub.billing_mode unless stub.billing_mode.nil?
        data['LastUpdateToPayPerRequestDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub.last_update_to_pay_per_request_date_time).to_i unless stub.last_update_to_pay_per_request_date_time.nil?
        data
      end
    end

    class BinarySetAttributeValue
      def self.default(visited = [])
        return nil if visited.include?('BinarySetAttributeValue')
        visited = visited + ['BinarySetAttributeValue']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ::Base64::strict_encode64(element) unless element.nil?
        end
        data
      end
    end

    class CancellationReason
      def self.default(visited = [])
        return nil if visited.include?('CancellationReason')
        visited = visited + ['CancellationReason']
        {
          item: AttributeMap.default(visited),
          code: 'code',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::CancellationReason.new
        data = {}
        data['Item'] = AttributeMap.stub(stub.item) unless stub.item.nil?
        data['Code'] = stub.code unless stub.code.nil?
        data['Message'] = stub.message unless stub.message.nil?
        data
      end
    end

    class CancellationReasonList
      def self.default(visited = [])
        return nil if visited.include?('CancellationReasonList')
        visited = visited + ['CancellationReasonList']
        [
          CancellationReason.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CancellationReason.stub(element) unless element.nil?
        end
        data
      end
    end

    class Capacity
      def self.default(visited = [])
        return nil if visited.include?('Capacity')
        visited = visited + ['Capacity']
        {
          read_capacity_units: 1.0,
          write_capacity_units: 1.0,
          capacity_units: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::Capacity.new
        data = {}
        data['ReadCapacityUnits'] = Hearth::NumberHelper.serialize(stub.read_capacity_units)
        data['WriteCapacityUnits'] = Hearth::NumberHelper.serialize(stub.write_capacity_units)
        data['CapacityUnits'] = Hearth::NumberHelper.serialize(stub.capacity_units)
        data
      end
    end

    class ConditionalCheckFailedException
      def self.build(params, context:)
        Params::ConditionalCheckFailedException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ConditionalCheckFailedException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
          item: AttributeMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'com.amazonaws.dynamodb#ConditionalCheckFailedException'
        data['message'] = stub.message unless stub.message.nil?
        data['Item'] = AttributeMap.stub(stub.item) unless stub.item.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class ConsumedCapacity
      def self.default(visited = [])
        return nil if visited.include?('ConsumedCapacity')
        visited = visited + ['ConsumedCapacity']
        {
          table_name: 'table_name',
          capacity_units: 1.0,
          read_capacity_units: 1.0,
          write_capacity_units: 1.0,
          table: Capacity.default(visited),
          local_secondary_indexes: SecondaryIndexesCapacityMap.default(visited),
          global_secondary_indexes: SecondaryIndexesCapacityMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ConsumedCapacity.new
        data = {}
        data['TableName'] = stub.table_name unless stub.table_name.nil?
        data['CapacityUnits'] = Hearth::NumberHelper.serialize(stub.capacity_units)
        data['ReadCapacityUnits'] = Hearth::NumberHelper.serialize(stub.read_capacity_units)
        data['WriteCapacityUnits'] = Hearth::NumberHelper.serialize(stub.write_capacity_units)
        data['Table'] = Capacity.stub(stub.table) unless stub.table.nil?
        data['LocalSecondaryIndexes'] = SecondaryIndexesCapacityMap.stub(stub.local_secondary_indexes) unless stub.local_secondary_indexes.nil?
        data['GlobalSecondaryIndexes'] = SecondaryIndexesCapacityMap.stub(stub.global_secondary_indexes) unless stub.global_secondary_indexes.nil?
        data
      end
    end

    class ConsumedCapacityMultiple
      def self.default(visited = [])
        return nil if visited.include?('ConsumedCapacityMultiple')
        visited = visited + ['ConsumedCapacityMultiple']
        [
          ConsumedCapacity.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ConsumedCapacity.stub(element) unless element.nil?
        end
        data
      end
    end

    class ContinuousBackupsDescription
      def self.default(visited = [])
        return nil if visited.include?('ContinuousBackupsDescription')
        visited = visited + ['ContinuousBackupsDescription']
        {
          continuous_backups_status: 'continuous_backups_status',
          point_in_time_recovery_description: PointInTimeRecoveryDescription.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ContinuousBackupsDescription.new
        data = {}
        data['ContinuousBackupsStatus'] = stub.continuous_backups_status unless stub.continuous_backups_status.nil?
        data['PointInTimeRecoveryDescription'] = PointInTimeRecoveryDescription.stub(stub.point_in_time_recovery_description) unless stub.point_in_time_recovery_description.nil?
        data
      end
    end

    class ContinuousBackupsUnavailableException
      def self.build(params, context:)
        Params::ContinuousBackupsUnavailableException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ContinuousBackupsUnavailableException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'com.amazonaws.dynamodb#ContinuousBackupsUnavailableException'
        data['message'] = stub.message unless stub.message.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class ContributorInsightsRuleList
      def self.default(visited = [])
        return nil if visited.include?('ContributorInsightsRuleList')
        visited = visited + ['ContributorInsightsRuleList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class ContributorInsightsSummaries
      def self.default(visited = [])
        return nil if visited.include?('ContributorInsightsSummaries')
        visited = visited + ['ContributorInsightsSummaries']
        [
          ContributorInsightsSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ContributorInsightsSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    class ContributorInsightsSummary
      def self.default(visited = [])
        return nil if visited.include?('ContributorInsightsSummary')
        visited = visited + ['ContributorInsightsSummary']
        {
          table_name: 'table_name',
          index_name: 'index_name',
          contributor_insights_status: 'contributor_insights_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::ContributorInsightsSummary.new
        data = {}
        data['TableName'] = stub.table_name unless stub.table_name.nil?
        data['IndexName'] = stub.index_name unless stub.index_name.nil?
        data['ContributorInsightsStatus'] = stub.contributor_insights_status unless stub.contributor_insights_status.nil?
        data
      end
    end

    class CreateBackup
      def self.build(params, context:)
        Params::CreateBackupOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::CreateBackupOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          backup_details: BackupDetails.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['BackupDetails'] = BackupDetails.stub(stub.backup_details) unless stub.backup_details.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class CreateGlobalTable
      def self.build(params, context:)
        Params::CreateGlobalTableOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::CreateGlobalTableOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          global_table_description: GlobalTableDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GlobalTableDescription'] = GlobalTableDescription.stub(stub.global_table_description) unless stub.global_table_description.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class CreateTable
      def self.build(params, context:)
        Params::CreateTableOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::CreateTableOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          table_description: TableDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TableDescription'] = TableDescription.stub(stub.table_description) unless stub.table_description.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class CsvHeaderList
      def self.default(visited = [])
        return nil if visited.include?('CsvHeaderList')
        visited = visited + ['CsvHeaderList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class CsvOptions
      def self.default(visited = [])
        return nil if visited.include?('CsvOptions')
        visited = visited + ['CsvOptions']
        {
          delimiter: 'delimiter',
          header_list: CsvHeaderList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CsvOptions.new
        data = {}
        data['Delimiter'] = stub.delimiter unless stub.delimiter.nil?
        data['HeaderList'] = CsvHeaderList.stub(stub.header_list) unless stub.header_list.nil?
        data
      end
    end

    class DeleteBackup
      def self.build(params, context:)
        Params::DeleteBackupOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::DeleteBackupOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          backup_description: BackupDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['BackupDescription'] = BackupDescription.stub(stub.backup_description) unless stub.backup_description.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class DeleteItem
      def self.build(params, context:)
        Params::DeleteItemOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::DeleteItemOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          attributes: AttributeMap.default(visited),
          consumed_capacity: ConsumedCapacity.default(visited),
          item_collection_metrics: ItemCollectionMetrics.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Attributes'] = AttributeMap.stub(stub.attributes) unless stub.attributes.nil?
        data['ConsumedCapacity'] = ConsumedCapacity.stub(stub.consumed_capacity) unless stub.consumed_capacity.nil?
        data['ItemCollectionMetrics'] = ItemCollectionMetrics.stub(stub.item_collection_metrics) unless stub.item_collection_metrics.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class DeleteRequest
      def self.default(visited = [])
        return nil if visited.include?('DeleteRequest')
        visited = visited + ['DeleteRequest']
        {
          key: Key.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DeleteRequest.new
        data = {}
        data['Key'] = Key.stub(stub.key) unless stub.key.nil?
        data
      end
    end

    class DeleteTable
      def self.build(params, context:)
        Params::DeleteTableOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::DeleteTableOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          table_description: TableDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TableDescription'] = TableDescription.stub(stub.table_description) unless stub.table_description.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class DescribeBackup
      def self.build(params, context:)
        Params::DescribeBackupOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::DescribeBackupOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          backup_description: BackupDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['BackupDescription'] = BackupDescription.stub(stub.backup_description) unless stub.backup_description.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class DescribeContinuousBackups
      def self.build(params, context:)
        Params::DescribeContinuousBackupsOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::DescribeContinuousBackupsOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          continuous_backups_description: ContinuousBackupsDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ContinuousBackupsDescription'] = ContinuousBackupsDescription.stub(stub.continuous_backups_description) unless stub.continuous_backups_description.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class DescribeContributorInsights
      def self.build(params, context:)
        Params::DescribeContributorInsightsOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::DescribeContributorInsightsOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          table_name: 'table_name',
          index_name: 'index_name',
          contributor_insights_rule_list: ContributorInsightsRuleList.default(visited),
          contributor_insights_status: 'contributor_insights_status',
          last_update_date_time: Time.now,
          failure_exception: FailureException.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TableName'] = stub.table_name unless stub.table_name.nil?
        data['IndexName'] = stub.index_name unless stub.index_name.nil?
        data['ContributorInsightsRuleList'] = ContributorInsightsRuleList.stub(stub.contributor_insights_rule_list) unless stub.contributor_insights_rule_list.nil?
        data['ContributorInsightsStatus'] = stub.contributor_insights_status unless stub.contributor_insights_status.nil?
        data['LastUpdateDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub.last_update_date_time).to_i unless stub.last_update_date_time.nil?
        data['FailureException'] = FailureException.stub(stub.failure_exception) unless stub.failure_exception.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class DescribeEndpoints
      def self.build(params, context:)
        Params::DescribeEndpointsOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::DescribeEndpointsOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          endpoints: Endpoints.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Endpoints'] = Endpoints.stub(stub.endpoints) unless stub.endpoints.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class DescribeExport
      def self.build(params, context:)
        Params::DescribeExportOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::DescribeExportOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          export_description: ExportDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ExportDescription'] = ExportDescription.stub(stub.export_description) unless stub.export_description.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class DescribeGlobalTable
      def self.build(params, context:)
        Params::DescribeGlobalTableOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::DescribeGlobalTableOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          global_table_description: GlobalTableDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GlobalTableDescription'] = GlobalTableDescription.stub(stub.global_table_description) unless stub.global_table_description.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class DescribeGlobalTableSettings
      def self.build(params, context:)
        Params::DescribeGlobalTableSettingsOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::DescribeGlobalTableSettingsOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          global_table_name: 'global_table_name',
          replica_settings: ReplicaSettingsDescriptionList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GlobalTableName'] = stub.global_table_name unless stub.global_table_name.nil?
        data['ReplicaSettings'] = ReplicaSettingsDescriptionList.stub(stub.replica_settings) unless stub.replica_settings.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class DescribeImport
      def self.build(params, context:)
        Params::DescribeImportOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::DescribeImportOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          import_table_description: ImportTableDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ImportTableDescription'] = ImportTableDescription.stub(stub.import_table_description) unless stub.import_table_description.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class DescribeKinesisStreamingDestination
      def self.build(params, context:)
        Params::DescribeKinesisStreamingDestinationOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::DescribeKinesisStreamingDestinationOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          table_name: 'table_name',
          kinesis_data_stream_destinations: KinesisDataStreamDestinations.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TableName'] = stub.table_name unless stub.table_name.nil?
        data['KinesisDataStreamDestinations'] = KinesisDataStreamDestinations.stub(stub.kinesis_data_stream_destinations) unless stub.kinesis_data_stream_destinations.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class DescribeLimits
      def self.build(params, context:)
        Params::DescribeLimitsOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::DescribeLimitsOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          account_max_read_capacity_units: 1,
          account_max_write_capacity_units: 1,
          table_max_read_capacity_units: 1,
          table_max_write_capacity_units: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AccountMaxReadCapacityUnits'] = stub.account_max_read_capacity_units unless stub.account_max_read_capacity_units.nil?
        data['AccountMaxWriteCapacityUnits'] = stub.account_max_write_capacity_units unless stub.account_max_write_capacity_units.nil?
        data['TableMaxReadCapacityUnits'] = stub.table_max_read_capacity_units unless stub.table_max_read_capacity_units.nil?
        data['TableMaxWriteCapacityUnits'] = stub.table_max_write_capacity_units unless stub.table_max_write_capacity_units.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class DescribeTable
      def self.build(params, context:)
        Params::DescribeTableOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::DescribeTableOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          table: TableDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Table'] = TableDescription.stub(stub.table) unless stub.table.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class DescribeTableReplicaAutoScaling
      def self.build(params, context:)
        Params::DescribeTableReplicaAutoScalingOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::DescribeTableReplicaAutoScalingOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          table_auto_scaling_description: TableAutoScalingDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TableAutoScalingDescription'] = TableAutoScalingDescription.stub(stub.table_auto_scaling_description) unless stub.table_auto_scaling_description.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class DescribeTimeToLive
      def self.build(params, context:)
        Params::DescribeTimeToLiveOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::DescribeTimeToLiveOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          time_to_live_description: TimeToLiveDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TimeToLiveDescription'] = TimeToLiveDescription.stub(stub.time_to_live_description) unless stub.time_to_live_description.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class DisableKinesisStreamingDestination
      def self.build(params, context:)
        Params::DisableKinesisStreamingDestinationOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::DisableKinesisStreamingDestinationOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          table_name: 'table_name',
          stream_arn: 'stream_arn',
          destination_status: 'destination_status',
          enable_kinesis_streaming_configuration: EnableKinesisStreamingConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TableName'] = stub.table_name unless stub.table_name.nil?
        data['StreamArn'] = stub.stream_arn unless stub.stream_arn.nil?
        data['DestinationStatus'] = stub.destination_status unless stub.destination_status.nil?
        data['EnableKinesisStreamingConfiguration'] = EnableKinesisStreamingConfiguration.stub(stub.enable_kinesis_streaming_configuration) unless stub.enable_kinesis_streaming_configuration.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class DuplicateItemException
      def self.build(params, context:)
        Params::DuplicateItemException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::DuplicateItemException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'com.amazonaws.dynamodb#DuplicateItemException'
        data['message'] = stub.message unless stub.message.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class EnableKinesisStreamingConfiguration
      def self.default(visited = [])
        return nil if visited.include?('EnableKinesisStreamingConfiguration')
        visited = visited + ['EnableKinesisStreamingConfiguration']
        {
          approximate_creation_date_time_precision: 'approximate_creation_date_time_precision',
        }
      end

      def self.stub(stub)
        stub ||= Types::EnableKinesisStreamingConfiguration.new
        data = {}
        data['ApproximateCreationDateTimePrecision'] = stub.approximate_creation_date_time_precision unless stub.approximate_creation_date_time_precision.nil?
        data
      end
    end

    class EnableKinesisStreamingDestination
      def self.build(params, context:)
        Params::EnableKinesisStreamingDestinationOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::EnableKinesisStreamingDestinationOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          table_name: 'table_name',
          stream_arn: 'stream_arn',
          destination_status: 'destination_status',
          enable_kinesis_streaming_configuration: EnableKinesisStreamingConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TableName'] = stub.table_name unless stub.table_name.nil?
        data['StreamArn'] = stub.stream_arn unless stub.stream_arn.nil?
        data['DestinationStatus'] = stub.destination_status unless stub.destination_status.nil?
        data['EnableKinesisStreamingConfiguration'] = EnableKinesisStreamingConfiguration.stub(stub.enable_kinesis_streaming_configuration) unless stub.enable_kinesis_streaming_configuration.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class Endpoint
      def self.default(visited = [])
        return nil if visited.include?('Endpoint')
        visited = visited + ['Endpoint']
        {
          address: 'address',
          cache_period_in_minutes: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Endpoint.new
        data = {}
        data['Address'] = stub.address unless stub.address.nil?
        data['CachePeriodInMinutes'] = stub.cache_period_in_minutes unless stub.cache_period_in_minutes.nil?
        data
      end
    end

    class Endpoints
      def self.default(visited = [])
        return nil if visited.include?('Endpoints')
        visited = visited + ['Endpoints']
        [
          Endpoint.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Endpoint.stub(element) unless element.nil?
        end
        data
      end
    end

    class ExecuteStatement
      def self.build(params, context:)
        Params::ExecuteStatementOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ExecuteStatementOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          items: ItemList.default(visited),
          next_token: 'next_token',
          consumed_capacity: ConsumedCapacity.default(visited),
          last_evaluated_key: Key.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Items'] = ItemList.stub(stub.items) unless stub.items.nil?
        data['NextToken'] = stub.next_token unless stub.next_token.nil?
        data['ConsumedCapacity'] = ConsumedCapacity.stub(stub.consumed_capacity) unless stub.consumed_capacity.nil?
        data['LastEvaluatedKey'] = Key.stub(stub.last_evaluated_key) unless stub.last_evaluated_key.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class ExecuteTransaction
      def self.build(params, context:)
        Params::ExecuteTransactionOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ExecuteTransactionOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          responses: ItemResponseList.default(visited),
          consumed_capacity: ConsumedCapacityMultiple.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Responses'] = ItemResponseList.stub(stub.responses) unless stub.responses.nil?
        data['ConsumedCapacity'] = ConsumedCapacityMultiple.stub(stub.consumed_capacity) unless stub.consumed_capacity.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class ExportConflictException
      def self.build(params, context:)
        Params::ExportConflictException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ExportConflictException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'com.amazonaws.dynamodb#ExportConflictException'
        data['message'] = stub.message unless stub.message.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class ExportDescription
      def self.default(visited = [])
        return nil if visited.include?('ExportDescription')
        visited = visited + ['ExportDescription']
        {
          export_arn: 'export_arn',
          export_status: 'export_status',
          start_time: Time.now,
          end_time: Time.now,
          export_manifest: 'export_manifest',
          table_arn: 'table_arn',
          table_id: 'table_id',
          export_time: Time.now,
          client_token: 'client_token',
          s3_bucket: 's3_bucket',
          s3_bucket_owner: 's3_bucket_owner',
          s3_prefix: 's3_prefix',
          s3_sse_algorithm: 's3_sse_algorithm',
          s3_sse_kms_key_id: 's3_sse_kms_key_id',
          failure_code: 'failure_code',
          failure_message: 'failure_message',
          export_format: 'export_format',
          billed_size_bytes: 1,
          item_count: 1,
          export_type: 'export_type',
          incremental_export_specification: IncrementalExportSpecification.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ExportDescription.new
        data = {}
        data['ExportArn'] = stub.export_arn unless stub.export_arn.nil?
        data['ExportStatus'] = stub.export_status unless stub.export_status.nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub.start_time).to_i unless stub.start_time.nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub.end_time).to_i unless stub.end_time.nil?
        data['ExportManifest'] = stub.export_manifest unless stub.export_manifest.nil?
        data['TableArn'] = stub.table_arn unless stub.table_arn.nil?
        data['TableId'] = stub.table_id unless stub.table_id.nil?
        data['ExportTime'] = Hearth::TimeHelper.to_epoch_seconds(stub.export_time).to_i unless stub.export_time.nil?
        data['ClientToken'] = stub.client_token unless stub.client_token.nil?
        data['S3Bucket'] = stub.s3_bucket unless stub.s3_bucket.nil?
        data['S3BucketOwner'] = stub.s3_bucket_owner unless stub.s3_bucket_owner.nil?
        data['S3Prefix'] = stub.s3_prefix unless stub.s3_prefix.nil?
        data['S3SseAlgorithm'] = stub.s3_sse_algorithm unless stub.s3_sse_algorithm.nil?
        data['S3SseKmsKeyId'] = stub.s3_sse_kms_key_id unless stub.s3_sse_kms_key_id.nil?
        data['FailureCode'] = stub.failure_code unless stub.failure_code.nil?
        data['FailureMessage'] = stub.failure_message unless stub.failure_message.nil?
        data['ExportFormat'] = stub.export_format unless stub.export_format.nil?
        data['BilledSizeBytes'] = stub.billed_size_bytes unless stub.billed_size_bytes.nil?
        data['ItemCount'] = stub.item_count unless stub.item_count.nil?
        data['ExportType'] = stub.export_type unless stub.export_type.nil?
        data['IncrementalExportSpecification'] = IncrementalExportSpecification.stub(stub.incremental_export_specification) unless stub.incremental_export_specification.nil?
        data
      end
    end

    class ExportNotFoundException
      def self.build(params, context:)
        Params::ExportNotFoundException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ExportNotFoundException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'com.amazonaws.dynamodb#ExportNotFoundException'
        data['message'] = stub.message unless stub.message.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class ExportSummaries
      def self.default(visited = [])
        return nil if visited.include?('ExportSummaries')
        visited = visited + ['ExportSummaries']
        [
          ExportSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ExportSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    class ExportSummary
      def self.default(visited = [])
        return nil if visited.include?('ExportSummary')
        visited = visited + ['ExportSummary']
        {
          export_arn: 'export_arn',
          export_status: 'export_status',
          export_type: 'export_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::ExportSummary.new
        data = {}
        data['ExportArn'] = stub.export_arn unless stub.export_arn.nil?
        data['ExportStatus'] = stub.export_status unless stub.export_status.nil?
        data['ExportType'] = stub.export_type unless stub.export_type.nil?
        data
      end
    end

    class ExportTableToPointInTime
      def self.build(params, context:)
        Params::ExportTableToPointInTimeOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ExportTableToPointInTimeOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          export_description: ExportDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ExportDescription'] = ExportDescription.stub(stub.export_description) unless stub.export_description.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class ExpressionAttributeNameMap
      def self.default(visited = [])
        return nil if visited.include?('ExpressionAttributeNameMap')
        visited = visited + ['ExpressionAttributeNameMap']
        {
          'key' => 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class FailureException
      def self.default(visited = [])
        return nil if visited.include?('FailureException')
        visited = visited + ['FailureException']
        {
          exception_name: 'exception_name',
          exception_description: 'exception_description',
        }
      end

      def self.stub(stub)
        stub ||= Types::FailureException.new
        data = {}
        data['ExceptionName'] = stub.exception_name unless stub.exception_name.nil?
        data['ExceptionDescription'] = stub.exception_description unless stub.exception_description.nil?
        data
      end
    end

    class GetItem
      def self.build(params, context:)
        Params::GetItemOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::GetItemOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          item: AttributeMap.default(visited),
          consumed_capacity: ConsumedCapacity.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Item'] = AttributeMap.stub(stub.item) unless stub.item.nil?
        data['ConsumedCapacity'] = ConsumedCapacity.stub(stub.consumed_capacity) unless stub.consumed_capacity.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class GlobalSecondaryIndex
      def self.default(visited = [])
        return nil if visited.include?('GlobalSecondaryIndex')
        visited = visited + ['GlobalSecondaryIndex']
        {
          index_name: 'index_name',
          key_schema: KeySchema.default(visited),
          projection: Projection.default(visited),
          provisioned_throughput: ProvisionedThroughput.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GlobalSecondaryIndex.new
        data = {}
        data['IndexName'] = stub.index_name unless stub.index_name.nil?
        data['KeySchema'] = KeySchema.stub(stub.key_schema) unless stub.key_schema.nil?
        data['Projection'] = Projection.stub(stub.projection) unless stub.projection.nil?
        data['ProvisionedThroughput'] = ProvisionedThroughput.stub(stub.provisioned_throughput) unless stub.provisioned_throughput.nil?
        data
      end
    end

    class GlobalSecondaryIndexDescription
      def self.default(visited = [])
        return nil if visited.include?('GlobalSecondaryIndexDescription')
        visited = visited + ['GlobalSecondaryIndexDescription']
        {
          index_name: 'index_name',
          key_schema: KeySchema.default(visited),
          projection: Projection.default(visited),
          index_status: 'index_status',
          backfilling: false,
          provisioned_throughput: ProvisionedThroughputDescription.default(visited),
          index_size_bytes: 1,
          item_count: 1,
          index_arn: 'index_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::GlobalSecondaryIndexDescription.new
        data = {}
        data['IndexName'] = stub.index_name unless stub.index_name.nil?
        data['KeySchema'] = KeySchema.stub(stub.key_schema) unless stub.key_schema.nil?
        data['Projection'] = Projection.stub(stub.projection) unless stub.projection.nil?
        data['IndexStatus'] = stub.index_status unless stub.index_status.nil?
        data['Backfilling'] = stub.backfilling unless stub.backfilling.nil?
        data['ProvisionedThroughput'] = ProvisionedThroughputDescription.stub(stub.provisioned_throughput) unless stub.provisioned_throughput.nil?
        data['IndexSizeBytes'] = stub.index_size_bytes unless stub.index_size_bytes.nil?
        data['ItemCount'] = stub.item_count unless stub.item_count.nil?
        data['IndexArn'] = stub.index_arn unless stub.index_arn.nil?
        data
      end
    end

    class GlobalSecondaryIndexDescriptionList
      def self.default(visited = [])
        return nil if visited.include?('GlobalSecondaryIndexDescriptionList')
        visited = visited + ['GlobalSecondaryIndexDescriptionList']
        [
          GlobalSecondaryIndexDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << GlobalSecondaryIndexDescription.stub(element) unless element.nil?
        end
        data
      end
    end

    class GlobalSecondaryIndexInfo
      def self.default(visited = [])
        return nil if visited.include?('GlobalSecondaryIndexInfo')
        visited = visited + ['GlobalSecondaryIndexInfo']
        {
          index_name: 'index_name',
          key_schema: KeySchema.default(visited),
          projection: Projection.default(visited),
          provisioned_throughput: ProvisionedThroughput.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GlobalSecondaryIndexInfo.new
        data = {}
        data['IndexName'] = stub.index_name unless stub.index_name.nil?
        data['KeySchema'] = KeySchema.stub(stub.key_schema) unless stub.key_schema.nil?
        data['Projection'] = Projection.stub(stub.projection) unless stub.projection.nil?
        data['ProvisionedThroughput'] = ProvisionedThroughput.stub(stub.provisioned_throughput) unless stub.provisioned_throughput.nil?
        data
      end
    end

    class GlobalSecondaryIndexList
      def self.default(visited = [])
        return nil if visited.include?('GlobalSecondaryIndexList')
        visited = visited + ['GlobalSecondaryIndexList']
        [
          GlobalSecondaryIndex.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << GlobalSecondaryIndex.stub(element) unless element.nil?
        end
        data
      end
    end

    class GlobalSecondaryIndexes
      def self.default(visited = [])
        return nil if visited.include?('GlobalSecondaryIndexes')
        visited = visited + ['GlobalSecondaryIndexes']
        [
          GlobalSecondaryIndexInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << GlobalSecondaryIndexInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    class GlobalTable
      def self.default(visited = [])
        return nil if visited.include?('GlobalTable')
        visited = visited + ['GlobalTable']
        {
          global_table_name: 'global_table_name',
          replication_group: ReplicaList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GlobalTable.new
        data = {}
        data['GlobalTableName'] = stub.global_table_name unless stub.global_table_name.nil?
        data['ReplicationGroup'] = ReplicaList.stub(stub.replication_group) unless stub.replication_group.nil?
        data
      end
    end

    class GlobalTableAlreadyExistsException
      def self.build(params, context:)
        Params::GlobalTableAlreadyExistsException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::GlobalTableAlreadyExistsException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'com.amazonaws.dynamodb#GlobalTableAlreadyExistsException'
        data['message'] = stub.message unless stub.message.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class GlobalTableDescription
      def self.default(visited = [])
        return nil if visited.include?('GlobalTableDescription')
        visited = visited + ['GlobalTableDescription']
        {
          replication_group: ReplicaDescriptionList.default(visited),
          global_table_arn: 'global_table_arn',
          creation_date_time: Time.now,
          global_table_status: 'global_table_status',
          global_table_name: 'global_table_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::GlobalTableDescription.new
        data = {}
        data['ReplicationGroup'] = ReplicaDescriptionList.stub(stub.replication_group) unless stub.replication_group.nil?
        data['GlobalTableArn'] = stub.global_table_arn unless stub.global_table_arn.nil?
        data['CreationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub.creation_date_time).to_i unless stub.creation_date_time.nil?
        data['GlobalTableStatus'] = stub.global_table_status unless stub.global_table_status.nil?
        data['GlobalTableName'] = stub.global_table_name unless stub.global_table_name.nil?
        data
      end
    end

    class GlobalTableList
      def self.default(visited = [])
        return nil if visited.include?('GlobalTableList')
        visited = visited + ['GlobalTableList']
        [
          GlobalTable.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << GlobalTable.stub(element) unless element.nil?
        end
        data
      end
    end

    class GlobalTableNotFoundException
      def self.build(params, context:)
        Params::GlobalTableNotFoundException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::GlobalTableNotFoundException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'com.amazonaws.dynamodb#GlobalTableNotFoundException'
        data['message'] = stub.message unless stub.message.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class IdempotentParameterMismatchException
      def self.build(params, context:)
        Params::IdempotentParameterMismatchException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::IdempotentParameterMismatchException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'com.amazonaws.dynamodb#IdempotentParameterMismatchException'
        data['Message'] = stub.message unless stub.message.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class ImportConflictException
      def self.build(params, context:)
        Params::ImportConflictException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ImportConflictException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'com.amazonaws.dynamodb#ImportConflictException'
        data['message'] = stub.message unless stub.message.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class ImportNotFoundException
      def self.build(params, context:)
        Params::ImportNotFoundException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ImportNotFoundException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'com.amazonaws.dynamodb#ImportNotFoundException'
        data['message'] = stub.message unless stub.message.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class ImportSummary
      def self.default(visited = [])
        return nil if visited.include?('ImportSummary')
        visited = visited + ['ImportSummary']
        {
          import_arn: 'import_arn',
          import_status: 'import_status',
          table_arn: 'table_arn',
          s3_bucket_source: S3BucketSource.default(visited),
          cloud_watch_log_group_arn: 'cloud_watch_log_group_arn',
          input_format: 'input_format',
          start_time: Time.now,
          end_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ImportSummary.new
        data = {}
        data['ImportArn'] = stub.import_arn unless stub.import_arn.nil?
        data['ImportStatus'] = stub.import_status unless stub.import_status.nil?
        data['TableArn'] = stub.table_arn unless stub.table_arn.nil?
        data['S3BucketSource'] = S3BucketSource.stub(stub.s3_bucket_source) unless stub.s3_bucket_source.nil?
        data['CloudWatchLogGroupArn'] = stub.cloud_watch_log_group_arn unless stub.cloud_watch_log_group_arn.nil?
        data['InputFormat'] = stub.input_format unless stub.input_format.nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub.start_time).to_i unless stub.start_time.nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub.end_time).to_i unless stub.end_time.nil?
        data
      end
    end

    class ImportSummaryList
      def self.default(visited = [])
        return nil if visited.include?('ImportSummaryList')
        visited = visited + ['ImportSummaryList']
        [
          ImportSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ImportSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    class ImportTable
      def self.build(params, context:)
        Params::ImportTableOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ImportTableOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          import_table_description: ImportTableDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ImportTableDescription'] = ImportTableDescription.stub(stub.import_table_description) unless stub.import_table_description.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class ImportTableDescription
      def self.default(visited = [])
        return nil if visited.include?('ImportTableDescription')
        visited = visited + ['ImportTableDescription']
        {
          import_arn: 'import_arn',
          import_status: 'import_status',
          table_arn: 'table_arn',
          table_id: 'table_id',
          client_token: 'client_token',
          s3_bucket_source: S3BucketSource.default(visited),
          error_count: 1,
          cloud_watch_log_group_arn: 'cloud_watch_log_group_arn',
          input_format: 'input_format',
          input_format_options: InputFormatOptions.default(visited),
          input_compression_type: 'input_compression_type',
          table_creation_parameters: TableCreationParameters.default(visited),
          start_time: Time.now,
          end_time: Time.now,
          processed_size_bytes: 1,
          processed_item_count: 1,
          imported_item_count: 1,
          failure_code: 'failure_code',
          failure_message: 'failure_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::ImportTableDescription.new
        data = {}
        data['ImportArn'] = stub.import_arn unless stub.import_arn.nil?
        data['ImportStatus'] = stub.import_status unless stub.import_status.nil?
        data['TableArn'] = stub.table_arn unless stub.table_arn.nil?
        data['TableId'] = stub.table_id unless stub.table_id.nil?
        data['ClientToken'] = stub.client_token unless stub.client_token.nil?
        data['S3BucketSource'] = S3BucketSource.stub(stub.s3_bucket_source) unless stub.s3_bucket_source.nil?
        data['ErrorCount'] = stub.error_count unless stub.error_count.nil?
        data['CloudWatchLogGroupArn'] = stub.cloud_watch_log_group_arn unless stub.cloud_watch_log_group_arn.nil?
        data['InputFormat'] = stub.input_format unless stub.input_format.nil?
        data['InputFormatOptions'] = InputFormatOptions.stub(stub.input_format_options) unless stub.input_format_options.nil?
        data['InputCompressionType'] = stub.input_compression_type unless stub.input_compression_type.nil?
        data['TableCreationParameters'] = TableCreationParameters.stub(stub.table_creation_parameters) unless stub.table_creation_parameters.nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub.start_time).to_i unless stub.start_time.nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub.end_time).to_i unless stub.end_time.nil?
        data['ProcessedSizeBytes'] = stub.processed_size_bytes unless stub.processed_size_bytes.nil?
        data['ProcessedItemCount'] = stub.processed_item_count unless stub.processed_item_count.nil?
        data['ImportedItemCount'] = stub.imported_item_count unless stub.imported_item_count.nil?
        data['FailureCode'] = stub.failure_code unless stub.failure_code.nil?
        data['FailureMessage'] = stub.failure_message unless stub.failure_message.nil?
        data
      end
    end

    class IncrementalExportSpecification
      def self.default(visited = [])
        return nil if visited.include?('IncrementalExportSpecification')
        visited = visited + ['IncrementalExportSpecification']
        {
          export_from_time: Time.now,
          export_to_time: Time.now,
          export_view_type: 'export_view_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::IncrementalExportSpecification.new
        data = {}
        data['ExportFromTime'] = Hearth::TimeHelper.to_epoch_seconds(stub.export_from_time).to_i unless stub.export_from_time.nil?
        data['ExportToTime'] = Hearth::TimeHelper.to_epoch_seconds(stub.export_to_time).to_i unless stub.export_to_time.nil?
        data['ExportViewType'] = stub.export_view_type unless stub.export_view_type.nil?
        data
      end
    end

    class IndexNotFoundException
      def self.build(params, context:)
        Params::IndexNotFoundException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::IndexNotFoundException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'com.amazonaws.dynamodb#IndexNotFoundException'
        data['message'] = stub.message unless stub.message.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class InputFormatOptions
      def self.default(visited = [])
        return nil if visited.include?('InputFormatOptions')
        visited = visited + ['InputFormatOptions']
        {
          csv: CsvOptions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InputFormatOptions.new
        data = {}
        data['Csv'] = CsvOptions.stub(stub.csv) unless stub.csv.nil?
        data
      end
    end

    class InternalServerError
      def self.build(params, context:)
        Params::InternalServerError.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::InternalServerError.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 500
        data = {}
        data['__type'] = 'com.amazonaws.dynamodb#InternalServerError'
        data['message'] = stub.message unless stub.message.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class InvalidEndpointException
      def self.build(params, context:)
        Params::InvalidEndpointException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::InvalidEndpointException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 421
        data = {}
        data['__type'] = 'com.amazonaws.dynamodb#InvalidEndpointException'
        data['Message'] = stub.message unless stub.message.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class InvalidExportTimeException
      def self.build(params, context:)
        Params::InvalidExportTimeException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::InvalidExportTimeException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'com.amazonaws.dynamodb#InvalidExportTimeException'
        data['message'] = stub.message unless stub.message.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class InvalidRestoreTimeException
      def self.build(params, context:)
        Params::InvalidRestoreTimeException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::InvalidRestoreTimeException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'com.amazonaws.dynamodb#InvalidRestoreTimeException'
        data['message'] = stub.message unless stub.message.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class ItemCollectionKeyAttributeMap
      def self.default(visited = [])
        return nil if visited.include?('ItemCollectionKeyAttributeMap')
        visited = visited + ['ItemCollectionKeyAttributeMap']
        {
          'key' => AttributeValue.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = AttributeValue.stub(value) unless value.nil?
        end
        data
      end
    end

    class ItemCollectionMetrics
      def self.default(visited = [])
        return nil if visited.include?('ItemCollectionMetrics')
        visited = visited + ['ItemCollectionMetrics']
        {
          item_collection_key: ItemCollectionKeyAttributeMap.default(visited),
          size_estimate_range_gb: ItemCollectionSizeEstimateRange.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ItemCollectionMetrics.new
        data = {}
        data['ItemCollectionKey'] = ItemCollectionKeyAttributeMap.stub(stub.item_collection_key) unless stub.item_collection_key.nil?
        data['SizeEstimateRangeGB'] = ItemCollectionSizeEstimateRange.stub(stub.size_estimate_range_gb) unless stub.size_estimate_range_gb.nil?
        data
      end
    end

    class ItemCollectionMetricsMultiple
      def self.default(visited = [])
        return nil if visited.include?('ItemCollectionMetricsMultiple')
        visited = visited + ['ItemCollectionMetricsMultiple']
        [
          ItemCollectionMetrics.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ItemCollectionMetrics.stub(element) unless element.nil?
        end
        data
      end
    end

    class ItemCollectionMetricsPerTable
      def self.default(visited = [])
        return nil if visited.include?('ItemCollectionMetricsPerTable')
        visited = visited + ['ItemCollectionMetricsPerTable']
        {
          'key' => ItemCollectionMetricsMultiple.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = ItemCollectionMetricsMultiple.stub(value) unless value.nil?
        end
        data
      end
    end

    class ItemCollectionSizeEstimateRange
      def self.default(visited = [])
        return nil if visited.include?('ItemCollectionSizeEstimateRange')
        visited = visited + ['ItemCollectionSizeEstimateRange']
        [
          1.0
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Hearth::NumberHelper.serialize(element)
        end
        data
      end
    end

    class ItemCollectionSizeLimitExceededException
      def self.build(params, context:)
        Params::ItemCollectionSizeLimitExceededException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ItemCollectionSizeLimitExceededException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'com.amazonaws.dynamodb#ItemCollectionSizeLimitExceededException'
        data['message'] = stub.message unless stub.message.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class ItemList
      def self.default(visited = [])
        return nil if visited.include?('ItemList')
        visited = visited + ['ItemList']
        [
          AttributeMap.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AttributeMap.stub(element) unless element.nil?
        end
        data
      end
    end

    class ItemResponse
      def self.default(visited = [])
        return nil if visited.include?('ItemResponse')
        visited = visited + ['ItemResponse']
        {
          item: AttributeMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ItemResponse.new
        data = {}
        data['Item'] = AttributeMap.stub(stub.item) unless stub.item.nil?
        data
      end
    end

    class ItemResponseList
      def self.default(visited = [])
        return nil if visited.include?('ItemResponseList')
        visited = visited + ['ItemResponseList']
        [
          ItemResponse.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ItemResponse.stub(element) unless element.nil?
        end
        data
      end
    end

    class Key
      def self.default(visited = [])
        return nil if visited.include?('Key')
        visited = visited + ['Key']
        {
          'key' => AttributeValue.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = AttributeValue.stub(value) unless value.nil?
        end
        data
      end
    end

    class KeyList
      def self.default(visited = [])
        return nil if visited.include?('KeyList')
        visited = visited + ['KeyList']
        [
          Key.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Key.stub(element) unless element.nil?
        end
        data
      end
    end

    class KeySchema
      def self.default(visited = [])
        return nil if visited.include?('KeySchema')
        visited = visited + ['KeySchema']
        [
          KeySchemaElement.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << KeySchemaElement.stub(element) unless element.nil?
        end
        data
      end
    end

    class KeySchemaElement
      def self.default(visited = [])
        return nil if visited.include?('KeySchemaElement')
        visited = visited + ['KeySchemaElement']
        {
          attribute_name: 'attribute_name',
          key_type: 'key_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::KeySchemaElement.new
        data = {}
        data['AttributeName'] = stub.attribute_name unless stub.attribute_name.nil?
        data['KeyType'] = stub.key_type unless stub.key_type.nil?
        data
      end
    end

    class KeysAndAttributes
      def self.default(visited = [])
        return nil if visited.include?('KeysAndAttributes')
        visited = visited + ['KeysAndAttributes']
        {
          keys: KeyList.default(visited),
          attributes_to_get: AttributeNameList.default(visited),
          consistent_read: false,
          projection_expression: 'projection_expression',
          expression_attribute_names: ExpressionAttributeNameMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::KeysAndAttributes.new
        data = {}
        data['Keys'] = KeyList.stub(stub.keys) unless stub.keys.nil?
        data['AttributesToGet'] = AttributeNameList.stub(stub.attributes_to_get) unless stub.attributes_to_get.nil?
        data['ConsistentRead'] = stub.consistent_read unless stub.consistent_read.nil?
        data['ProjectionExpression'] = stub.projection_expression unless stub.projection_expression.nil?
        data['ExpressionAttributeNames'] = ExpressionAttributeNameMap.stub(stub.expression_attribute_names) unless stub.expression_attribute_names.nil?
        data
      end
    end

    class KinesisDataStreamDestination
      def self.default(visited = [])
        return nil if visited.include?('KinesisDataStreamDestination')
        visited = visited + ['KinesisDataStreamDestination']
        {
          stream_arn: 'stream_arn',
          destination_status: 'destination_status',
          destination_status_description: 'destination_status_description',
          approximate_creation_date_time_precision: 'approximate_creation_date_time_precision',
        }
      end

      def self.stub(stub)
        stub ||= Types::KinesisDataStreamDestination.new
        data = {}
        data['StreamArn'] = stub.stream_arn unless stub.stream_arn.nil?
        data['DestinationStatus'] = stub.destination_status unless stub.destination_status.nil?
        data['DestinationStatusDescription'] = stub.destination_status_description unless stub.destination_status_description.nil?
        data['ApproximateCreationDateTimePrecision'] = stub.approximate_creation_date_time_precision unless stub.approximate_creation_date_time_precision.nil?
        data
      end
    end

    class KinesisDataStreamDestinations
      def self.default(visited = [])
        return nil if visited.include?('KinesisDataStreamDestinations')
        visited = visited + ['KinesisDataStreamDestinations']
        [
          KinesisDataStreamDestination.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << KinesisDataStreamDestination.stub(element) unless element.nil?
        end
        data
      end
    end

    class LimitExceededException
      def self.build(params, context:)
        Params::LimitExceededException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::LimitExceededException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'com.amazonaws.dynamodb#LimitExceededException'
        data['message'] = stub.message unless stub.message.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class ListAttributeValue
      def self.default(visited = [])
        return nil if visited.include?('ListAttributeValue')
        visited = visited + ['ListAttributeValue']
        [
          AttributeValue.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AttributeValue.stub(element) unless element.nil?
        end
        data
      end
    end

    class ListBackups
      def self.build(params, context:)
        Params::ListBackupsOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ListBackupsOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          backup_summaries: BackupSummaries.default(visited),
          last_evaluated_backup_arn: 'last_evaluated_backup_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['BackupSummaries'] = BackupSummaries.stub(stub.backup_summaries) unless stub.backup_summaries.nil?
        data['LastEvaluatedBackupArn'] = stub.last_evaluated_backup_arn unless stub.last_evaluated_backup_arn.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class ListContributorInsights
      def self.build(params, context:)
        Params::ListContributorInsightsOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ListContributorInsightsOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          contributor_insights_summaries: ContributorInsightsSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ContributorInsightsSummaries'] = ContributorInsightsSummaries.stub(stub.contributor_insights_summaries) unless stub.contributor_insights_summaries.nil?
        data['NextToken'] = stub.next_token unless stub.next_token.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class ListExports
      def self.build(params, context:)
        Params::ListExportsOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ListExportsOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          export_summaries: ExportSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ExportSummaries'] = ExportSummaries.stub(stub.export_summaries) unless stub.export_summaries.nil?
        data['NextToken'] = stub.next_token unless stub.next_token.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class ListGlobalTables
      def self.build(params, context:)
        Params::ListGlobalTablesOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ListGlobalTablesOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          global_tables: GlobalTableList.default(visited),
          last_evaluated_global_table_name: 'last_evaluated_global_table_name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GlobalTables'] = GlobalTableList.stub(stub.global_tables) unless stub.global_tables.nil?
        data['LastEvaluatedGlobalTableName'] = stub.last_evaluated_global_table_name unless stub.last_evaluated_global_table_name.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class ListImports
      def self.build(params, context:)
        Params::ListImportsOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ListImportsOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          import_summary_list: ImportSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ImportSummaryList'] = ImportSummaryList.stub(stub.import_summary_list) unless stub.import_summary_list.nil?
        data['NextToken'] = stub.next_token unless stub.next_token.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class ListTables
      def self.build(params, context:)
        Params::ListTablesOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ListTablesOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          table_names: TableNameList.default(visited),
          last_evaluated_table_name: 'last_evaluated_table_name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TableNames'] = TableNameList.stub(stub.table_names) unless stub.table_names.nil?
        data['LastEvaluatedTableName'] = stub.last_evaluated_table_name unless stub.last_evaluated_table_name.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class ListTagsOfResource
      def self.build(params, context:)
        Params::ListTagsOfResourceOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ListTagsOfResourceOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          tags: TagList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Tags'] = TagList.stub(stub.tags) unless stub.tags.nil?
        data['NextToken'] = stub.next_token unless stub.next_token.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class LocalSecondaryIndexDescription
      def self.default(visited = [])
        return nil if visited.include?('LocalSecondaryIndexDescription')
        visited = visited + ['LocalSecondaryIndexDescription']
        {
          index_name: 'index_name',
          key_schema: KeySchema.default(visited),
          projection: Projection.default(visited),
          index_size_bytes: 1,
          item_count: 1,
          index_arn: 'index_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::LocalSecondaryIndexDescription.new
        data = {}
        data['IndexName'] = stub.index_name unless stub.index_name.nil?
        data['KeySchema'] = KeySchema.stub(stub.key_schema) unless stub.key_schema.nil?
        data['Projection'] = Projection.stub(stub.projection) unless stub.projection.nil?
        data['IndexSizeBytes'] = stub.index_size_bytes unless stub.index_size_bytes.nil?
        data['ItemCount'] = stub.item_count unless stub.item_count.nil?
        data['IndexArn'] = stub.index_arn unless stub.index_arn.nil?
        data
      end
    end

    class LocalSecondaryIndexDescriptionList
      def self.default(visited = [])
        return nil if visited.include?('LocalSecondaryIndexDescriptionList')
        visited = visited + ['LocalSecondaryIndexDescriptionList']
        [
          LocalSecondaryIndexDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << LocalSecondaryIndexDescription.stub(element) unless element.nil?
        end
        data
      end
    end

    class LocalSecondaryIndexInfo
      def self.default(visited = [])
        return nil if visited.include?('LocalSecondaryIndexInfo')
        visited = visited + ['LocalSecondaryIndexInfo']
        {
          index_name: 'index_name',
          key_schema: KeySchema.default(visited),
          projection: Projection.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LocalSecondaryIndexInfo.new
        data = {}
        data['IndexName'] = stub.index_name unless stub.index_name.nil?
        data['KeySchema'] = KeySchema.stub(stub.key_schema) unless stub.key_schema.nil?
        data['Projection'] = Projection.stub(stub.projection) unless stub.projection.nil?
        data
      end
    end

    class LocalSecondaryIndexes
      def self.default(visited = [])
        return nil if visited.include?('LocalSecondaryIndexes')
        visited = visited + ['LocalSecondaryIndexes']
        [
          LocalSecondaryIndexInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << LocalSecondaryIndexInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    class MapAttributeValue
      def self.default(visited = [])
        return nil if visited.include?('MapAttributeValue')
        visited = visited + ['MapAttributeValue']
        {
          'key' => AttributeValue.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = AttributeValue.stub(value) unless value.nil?
        end
        data
      end
    end

    class NonKeyAttributeNameList
      def self.default(visited = [])
        return nil if visited.include?('NonKeyAttributeNameList')
        visited = visited + ['NonKeyAttributeNameList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class NumberSetAttributeValue
      def self.default(visited = [])
        return nil if visited.include?('NumberSetAttributeValue')
        visited = visited + ['NumberSetAttributeValue']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class PartiQLBatchResponse
      def self.default(visited = [])
        return nil if visited.include?('PartiQLBatchResponse')
        visited = visited + ['PartiQLBatchResponse']
        [
          BatchStatementResponse.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BatchStatementResponse.stub(element) unless element.nil?
        end
        data
      end
    end

    class PointInTimeRecoveryDescription
      def self.default(visited = [])
        return nil if visited.include?('PointInTimeRecoveryDescription')
        visited = visited + ['PointInTimeRecoveryDescription']
        {
          point_in_time_recovery_status: 'point_in_time_recovery_status',
          earliest_restorable_date_time: Time.now,
          latest_restorable_date_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::PointInTimeRecoveryDescription.new
        data = {}
        data['PointInTimeRecoveryStatus'] = stub.point_in_time_recovery_status unless stub.point_in_time_recovery_status.nil?
        data['EarliestRestorableDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub.earliest_restorable_date_time).to_i unless stub.earliest_restorable_date_time.nil?
        data['LatestRestorableDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub.latest_restorable_date_time).to_i unless stub.latest_restorable_date_time.nil?
        data
      end
    end

    class PointInTimeRecoveryUnavailableException
      def self.build(params, context:)
        Params::PointInTimeRecoveryUnavailableException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::PointInTimeRecoveryUnavailableException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'com.amazonaws.dynamodb#PointInTimeRecoveryUnavailableException'
        data['message'] = stub.message unless stub.message.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class Projection
      def self.default(visited = [])
        return nil if visited.include?('Projection')
        visited = visited + ['Projection']
        {
          projection_type: 'projection_type',
          non_key_attributes: NonKeyAttributeNameList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Projection.new
        data = {}
        data['ProjectionType'] = stub.projection_type unless stub.projection_type.nil?
        data['NonKeyAttributes'] = NonKeyAttributeNameList.stub(stub.non_key_attributes) unless stub.non_key_attributes.nil?
        data
      end
    end

    class ProvisionedThroughput
      def self.default(visited = [])
        return nil if visited.include?('ProvisionedThroughput')
        visited = visited + ['ProvisionedThroughput']
        {
          read_capacity_units: 1,
          write_capacity_units: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ProvisionedThroughput.new
        data = {}
        data['ReadCapacityUnits'] = stub.read_capacity_units unless stub.read_capacity_units.nil?
        data['WriteCapacityUnits'] = stub.write_capacity_units unless stub.write_capacity_units.nil?
        data
      end
    end

    class ProvisionedThroughputDescription
      def self.default(visited = [])
        return nil if visited.include?('ProvisionedThroughputDescription')
        visited = visited + ['ProvisionedThroughputDescription']
        {
          last_increase_date_time: Time.now,
          last_decrease_date_time: Time.now,
          number_of_decreases_today: 1,
          read_capacity_units: 1,
          write_capacity_units: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ProvisionedThroughputDescription.new
        data = {}
        data['LastIncreaseDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub.last_increase_date_time).to_i unless stub.last_increase_date_time.nil?
        data['LastDecreaseDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub.last_decrease_date_time).to_i unless stub.last_decrease_date_time.nil?
        data['NumberOfDecreasesToday'] = stub.number_of_decreases_today unless stub.number_of_decreases_today.nil?
        data['ReadCapacityUnits'] = stub.read_capacity_units unless stub.read_capacity_units.nil?
        data['WriteCapacityUnits'] = stub.write_capacity_units unless stub.write_capacity_units.nil?
        data
      end
    end

    class ProvisionedThroughputExceededException
      def self.build(params, context:)
        Params::ProvisionedThroughputExceededException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ProvisionedThroughputExceededException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'com.amazonaws.dynamodb#ProvisionedThroughputExceededException'
        data['message'] = stub.message unless stub.message.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class ProvisionedThroughputOverride
      def self.default(visited = [])
        return nil if visited.include?('ProvisionedThroughputOverride')
        visited = visited + ['ProvisionedThroughputOverride']
        {
          read_capacity_units: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ProvisionedThroughputOverride.new
        data = {}
        data['ReadCapacityUnits'] = stub.read_capacity_units unless stub.read_capacity_units.nil?
        data
      end
    end

    class PutItem
      def self.build(params, context:)
        Params::PutItemOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::PutItemOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          attributes: AttributeMap.default(visited),
          consumed_capacity: ConsumedCapacity.default(visited),
          item_collection_metrics: ItemCollectionMetrics.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Attributes'] = AttributeMap.stub(stub.attributes) unless stub.attributes.nil?
        data['ConsumedCapacity'] = ConsumedCapacity.stub(stub.consumed_capacity) unless stub.consumed_capacity.nil?
        data['ItemCollectionMetrics'] = ItemCollectionMetrics.stub(stub.item_collection_metrics) unless stub.item_collection_metrics.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class PutItemInputAttributeMap
      def self.default(visited = [])
        return nil if visited.include?('PutItemInputAttributeMap')
        visited = visited + ['PutItemInputAttributeMap']
        {
          'key' => AttributeValue.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = AttributeValue.stub(value) unless value.nil?
        end
        data
      end
    end

    class PutRequest
      def self.default(visited = [])
        return nil if visited.include?('PutRequest')
        visited = visited + ['PutRequest']
        {
          item: PutItemInputAttributeMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PutRequest.new
        data = {}
        data['Item'] = PutItemInputAttributeMap.stub(stub.item) unless stub.item.nil?
        data
      end
    end

    class Query
      def self.build(params, context:)
        Params::QueryOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::QueryOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          items: ItemList.default(visited),
          count: 1,
          scanned_count: 1,
          last_evaluated_key: Key.default(visited),
          consumed_capacity: ConsumedCapacity.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Items'] = ItemList.stub(stub.items) unless stub.items.nil?
        data['Count'] = stub.count unless stub.count.nil?
        data['ScannedCount'] = stub.scanned_count unless stub.scanned_count.nil?
        data['LastEvaluatedKey'] = Key.stub(stub.last_evaluated_key) unless stub.last_evaluated_key.nil?
        data['ConsumedCapacity'] = ConsumedCapacity.stub(stub.consumed_capacity) unless stub.consumed_capacity.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class Replica
      def self.default(visited = [])
        return nil if visited.include?('Replica')
        visited = visited + ['Replica']
        {
          region_name: 'region_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::Replica.new
        data = {}
        data['RegionName'] = stub.region_name unless stub.region_name.nil?
        data
      end
    end

    class ReplicaAlreadyExistsException
      def self.build(params, context:)
        Params::ReplicaAlreadyExistsException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ReplicaAlreadyExistsException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'com.amazonaws.dynamodb#ReplicaAlreadyExistsException'
        data['message'] = stub.message unless stub.message.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class ReplicaAutoScalingDescription
      def self.default(visited = [])
        return nil if visited.include?('ReplicaAutoScalingDescription')
        visited = visited + ['ReplicaAutoScalingDescription']
        {
          region_name: 'region_name',
          global_secondary_indexes: ReplicaGlobalSecondaryIndexAutoScalingDescriptionList.default(visited),
          replica_provisioned_read_capacity_auto_scaling_settings: AutoScalingSettingsDescription.default(visited),
          replica_provisioned_write_capacity_auto_scaling_settings: AutoScalingSettingsDescription.default(visited),
          replica_status: 'replica_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::ReplicaAutoScalingDescription.new
        data = {}
        data['RegionName'] = stub.region_name unless stub.region_name.nil?
        data['GlobalSecondaryIndexes'] = ReplicaGlobalSecondaryIndexAutoScalingDescriptionList.stub(stub.global_secondary_indexes) unless stub.global_secondary_indexes.nil?
        data['ReplicaProvisionedReadCapacityAutoScalingSettings'] = AutoScalingSettingsDescription.stub(stub.replica_provisioned_read_capacity_auto_scaling_settings) unless stub.replica_provisioned_read_capacity_auto_scaling_settings.nil?
        data['ReplicaProvisionedWriteCapacityAutoScalingSettings'] = AutoScalingSettingsDescription.stub(stub.replica_provisioned_write_capacity_auto_scaling_settings) unless stub.replica_provisioned_write_capacity_auto_scaling_settings.nil?
        data['ReplicaStatus'] = stub.replica_status unless stub.replica_status.nil?
        data
      end
    end

    class ReplicaAutoScalingDescriptionList
      def self.default(visited = [])
        return nil if visited.include?('ReplicaAutoScalingDescriptionList')
        visited = visited + ['ReplicaAutoScalingDescriptionList']
        [
          ReplicaAutoScalingDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ReplicaAutoScalingDescription.stub(element) unless element.nil?
        end
        data
      end
    end

    class ReplicaDescription
      def self.default(visited = [])
        return nil if visited.include?('ReplicaDescription')
        visited = visited + ['ReplicaDescription']
        {
          region_name: 'region_name',
          replica_status: 'replica_status',
          replica_status_description: 'replica_status_description',
          replica_status_percent_progress: 'replica_status_percent_progress',
          kms_master_key_id: 'kms_master_key_id',
          provisioned_throughput_override: ProvisionedThroughputOverride.default(visited),
          global_secondary_indexes: ReplicaGlobalSecondaryIndexDescriptionList.default(visited),
          replica_inaccessible_date_time: Time.now,
          replica_table_class_summary: TableClassSummary.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ReplicaDescription.new
        data = {}
        data['RegionName'] = stub.region_name unless stub.region_name.nil?
        data['ReplicaStatus'] = stub.replica_status unless stub.replica_status.nil?
        data['ReplicaStatusDescription'] = stub.replica_status_description unless stub.replica_status_description.nil?
        data['ReplicaStatusPercentProgress'] = stub.replica_status_percent_progress unless stub.replica_status_percent_progress.nil?
        data['KMSMasterKeyId'] = stub.kms_master_key_id unless stub.kms_master_key_id.nil?
        data['ProvisionedThroughputOverride'] = ProvisionedThroughputOverride.stub(stub.provisioned_throughput_override) unless stub.provisioned_throughput_override.nil?
        data['GlobalSecondaryIndexes'] = ReplicaGlobalSecondaryIndexDescriptionList.stub(stub.global_secondary_indexes) unless stub.global_secondary_indexes.nil?
        data['ReplicaInaccessibleDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub.replica_inaccessible_date_time).to_i unless stub.replica_inaccessible_date_time.nil?
        data['ReplicaTableClassSummary'] = TableClassSummary.stub(stub.replica_table_class_summary) unless stub.replica_table_class_summary.nil?
        data
      end
    end

    class ReplicaDescriptionList
      def self.default(visited = [])
        return nil if visited.include?('ReplicaDescriptionList')
        visited = visited + ['ReplicaDescriptionList']
        [
          ReplicaDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ReplicaDescription.stub(element) unless element.nil?
        end
        data
      end
    end

    class ReplicaGlobalSecondaryIndexAutoScalingDescription
      def self.default(visited = [])
        return nil if visited.include?('ReplicaGlobalSecondaryIndexAutoScalingDescription')
        visited = visited + ['ReplicaGlobalSecondaryIndexAutoScalingDescription']
        {
          index_name: 'index_name',
          index_status: 'index_status',
          provisioned_read_capacity_auto_scaling_settings: AutoScalingSettingsDescription.default(visited),
          provisioned_write_capacity_auto_scaling_settings: AutoScalingSettingsDescription.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ReplicaGlobalSecondaryIndexAutoScalingDescription.new
        data = {}
        data['IndexName'] = stub.index_name unless stub.index_name.nil?
        data['IndexStatus'] = stub.index_status unless stub.index_status.nil?
        data['ProvisionedReadCapacityAutoScalingSettings'] = AutoScalingSettingsDescription.stub(stub.provisioned_read_capacity_auto_scaling_settings) unless stub.provisioned_read_capacity_auto_scaling_settings.nil?
        data['ProvisionedWriteCapacityAutoScalingSettings'] = AutoScalingSettingsDescription.stub(stub.provisioned_write_capacity_auto_scaling_settings) unless stub.provisioned_write_capacity_auto_scaling_settings.nil?
        data
      end
    end

    class ReplicaGlobalSecondaryIndexAutoScalingDescriptionList
      def self.default(visited = [])
        return nil if visited.include?('ReplicaGlobalSecondaryIndexAutoScalingDescriptionList')
        visited = visited + ['ReplicaGlobalSecondaryIndexAutoScalingDescriptionList']
        [
          ReplicaGlobalSecondaryIndexAutoScalingDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ReplicaGlobalSecondaryIndexAutoScalingDescription.stub(element) unless element.nil?
        end
        data
      end
    end

    class ReplicaGlobalSecondaryIndexDescription
      def self.default(visited = [])
        return nil if visited.include?('ReplicaGlobalSecondaryIndexDescription')
        visited = visited + ['ReplicaGlobalSecondaryIndexDescription']
        {
          index_name: 'index_name',
          provisioned_throughput_override: ProvisionedThroughputOverride.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ReplicaGlobalSecondaryIndexDescription.new
        data = {}
        data['IndexName'] = stub.index_name unless stub.index_name.nil?
        data['ProvisionedThroughputOverride'] = ProvisionedThroughputOverride.stub(stub.provisioned_throughput_override) unless stub.provisioned_throughput_override.nil?
        data
      end
    end

    class ReplicaGlobalSecondaryIndexDescriptionList
      def self.default(visited = [])
        return nil if visited.include?('ReplicaGlobalSecondaryIndexDescriptionList')
        visited = visited + ['ReplicaGlobalSecondaryIndexDescriptionList']
        [
          ReplicaGlobalSecondaryIndexDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ReplicaGlobalSecondaryIndexDescription.stub(element) unless element.nil?
        end
        data
      end
    end

    class ReplicaGlobalSecondaryIndexSettingsDescription
      def self.default(visited = [])
        return nil if visited.include?('ReplicaGlobalSecondaryIndexSettingsDescription')
        visited = visited + ['ReplicaGlobalSecondaryIndexSettingsDescription']
        {
          index_name: 'index_name',
          index_status: 'index_status',
          provisioned_read_capacity_units: 1,
          provisioned_read_capacity_auto_scaling_settings: AutoScalingSettingsDescription.default(visited),
          provisioned_write_capacity_units: 1,
          provisioned_write_capacity_auto_scaling_settings: AutoScalingSettingsDescription.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ReplicaGlobalSecondaryIndexSettingsDescription.new
        data = {}
        data['IndexName'] = stub.index_name unless stub.index_name.nil?
        data['IndexStatus'] = stub.index_status unless stub.index_status.nil?
        data['ProvisionedReadCapacityUnits'] = stub.provisioned_read_capacity_units unless stub.provisioned_read_capacity_units.nil?
        data['ProvisionedReadCapacityAutoScalingSettings'] = AutoScalingSettingsDescription.stub(stub.provisioned_read_capacity_auto_scaling_settings) unless stub.provisioned_read_capacity_auto_scaling_settings.nil?
        data['ProvisionedWriteCapacityUnits'] = stub.provisioned_write_capacity_units unless stub.provisioned_write_capacity_units.nil?
        data['ProvisionedWriteCapacityAutoScalingSettings'] = AutoScalingSettingsDescription.stub(stub.provisioned_write_capacity_auto_scaling_settings) unless stub.provisioned_write_capacity_auto_scaling_settings.nil?
        data
      end
    end

    class ReplicaGlobalSecondaryIndexSettingsDescriptionList
      def self.default(visited = [])
        return nil if visited.include?('ReplicaGlobalSecondaryIndexSettingsDescriptionList')
        visited = visited + ['ReplicaGlobalSecondaryIndexSettingsDescriptionList']
        [
          ReplicaGlobalSecondaryIndexSettingsDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ReplicaGlobalSecondaryIndexSettingsDescription.stub(element) unless element.nil?
        end
        data
      end
    end

    class ReplicaList
      def self.default(visited = [])
        return nil if visited.include?('ReplicaList')
        visited = visited + ['ReplicaList']
        [
          Replica.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Replica.stub(element) unless element.nil?
        end
        data
      end
    end

    class ReplicaNotFoundException
      def self.build(params, context:)
        Params::ReplicaNotFoundException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ReplicaNotFoundException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'com.amazonaws.dynamodb#ReplicaNotFoundException'
        data['message'] = stub.message unless stub.message.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class ReplicaSettingsDescription
      def self.default(visited = [])
        return nil if visited.include?('ReplicaSettingsDescription')
        visited = visited + ['ReplicaSettingsDescription']
        {
          region_name: 'region_name',
          replica_status: 'replica_status',
          replica_billing_mode_summary: BillingModeSummary.default(visited),
          replica_provisioned_read_capacity_units: 1,
          replica_provisioned_read_capacity_auto_scaling_settings: AutoScalingSettingsDescription.default(visited),
          replica_provisioned_write_capacity_units: 1,
          replica_provisioned_write_capacity_auto_scaling_settings: AutoScalingSettingsDescription.default(visited),
          replica_global_secondary_index_settings: ReplicaGlobalSecondaryIndexSettingsDescriptionList.default(visited),
          replica_table_class_summary: TableClassSummary.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ReplicaSettingsDescription.new
        data = {}
        data['RegionName'] = stub.region_name unless stub.region_name.nil?
        data['ReplicaStatus'] = stub.replica_status unless stub.replica_status.nil?
        data['ReplicaBillingModeSummary'] = BillingModeSummary.stub(stub.replica_billing_mode_summary) unless stub.replica_billing_mode_summary.nil?
        data['ReplicaProvisionedReadCapacityUnits'] = stub.replica_provisioned_read_capacity_units unless stub.replica_provisioned_read_capacity_units.nil?
        data['ReplicaProvisionedReadCapacityAutoScalingSettings'] = AutoScalingSettingsDescription.stub(stub.replica_provisioned_read_capacity_auto_scaling_settings) unless stub.replica_provisioned_read_capacity_auto_scaling_settings.nil?
        data['ReplicaProvisionedWriteCapacityUnits'] = stub.replica_provisioned_write_capacity_units unless stub.replica_provisioned_write_capacity_units.nil?
        data['ReplicaProvisionedWriteCapacityAutoScalingSettings'] = AutoScalingSettingsDescription.stub(stub.replica_provisioned_write_capacity_auto_scaling_settings) unless stub.replica_provisioned_write_capacity_auto_scaling_settings.nil?
        data['ReplicaGlobalSecondaryIndexSettings'] = ReplicaGlobalSecondaryIndexSettingsDescriptionList.stub(stub.replica_global_secondary_index_settings) unless stub.replica_global_secondary_index_settings.nil?
        data['ReplicaTableClassSummary'] = TableClassSummary.stub(stub.replica_table_class_summary) unless stub.replica_table_class_summary.nil?
        data
      end
    end

    class ReplicaSettingsDescriptionList
      def self.default(visited = [])
        return nil if visited.include?('ReplicaSettingsDescriptionList')
        visited = visited + ['ReplicaSettingsDescriptionList']
        [
          ReplicaSettingsDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ReplicaSettingsDescription.stub(element) unless element.nil?
        end
        data
      end
    end

    class RequestLimitExceeded
      def self.build(params, context:)
        Params::RequestLimitExceeded.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::RequestLimitExceeded.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'com.amazonaws.dynamodb#RequestLimitExceeded'
        data['message'] = stub.message unless stub.message.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class ResourceInUseException
      def self.build(params, context:)
        Params::ResourceInUseException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ResourceInUseException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'com.amazonaws.dynamodb#ResourceInUseException'
        data['message'] = stub.message unless stub.message.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class ResourceNotFoundException
      def self.build(params, context:)
        Params::ResourceNotFoundException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ResourceNotFoundException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'com.amazonaws.dynamodb#ResourceNotFoundException'
        data['message'] = stub.message unless stub.message.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class RestoreSummary
      def self.default(visited = [])
        return nil if visited.include?('RestoreSummary')
        visited = visited + ['RestoreSummary']
        {
          source_backup_arn: 'source_backup_arn',
          source_table_arn: 'source_table_arn',
          restore_date_time: Time.now,
          restore_in_progress: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::RestoreSummary.new
        data = {}
        data['SourceBackupArn'] = stub.source_backup_arn unless stub.source_backup_arn.nil?
        data['SourceTableArn'] = stub.source_table_arn unless stub.source_table_arn.nil?
        data['RestoreDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub.restore_date_time).to_i unless stub.restore_date_time.nil?
        data['RestoreInProgress'] = stub.restore_in_progress unless stub.restore_in_progress.nil?
        data
      end
    end

    class RestoreTableFromBackup
      def self.build(params, context:)
        Params::RestoreTableFromBackupOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::RestoreTableFromBackupOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          table_description: TableDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TableDescription'] = TableDescription.stub(stub.table_description) unless stub.table_description.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class RestoreTableToPointInTime
      def self.build(params, context:)
        Params::RestoreTableToPointInTimeOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::RestoreTableToPointInTimeOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          table_description: TableDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TableDescription'] = TableDescription.stub(stub.table_description) unless stub.table_description.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class S3BucketSource
      def self.default(visited = [])
        return nil if visited.include?('S3BucketSource')
        visited = visited + ['S3BucketSource']
        {
          s3_bucket_owner: 's3_bucket_owner',
          s3_bucket: 's3_bucket',
          s3_key_prefix: 's3_key_prefix',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3BucketSource.new
        data = {}
        data['S3BucketOwner'] = stub.s3_bucket_owner unless stub.s3_bucket_owner.nil?
        data['S3Bucket'] = stub.s3_bucket unless stub.s3_bucket.nil?
        data['S3KeyPrefix'] = stub.s3_key_prefix unless stub.s3_key_prefix.nil?
        data
      end
    end

    class SSEDescription
      def self.default(visited = [])
        return nil if visited.include?('SSEDescription')
        visited = visited + ['SSEDescription']
        {
          status: 'status',
          sse_type: 'sse_type',
          kms_master_key_arn: 'kms_master_key_arn',
          inaccessible_encryption_date_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::SSEDescription.new
        data = {}
        data['Status'] = stub.status unless stub.status.nil?
        data['SSEType'] = stub.sse_type unless stub.sse_type.nil?
        data['KMSMasterKeyArn'] = stub.kms_master_key_arn unless stub.kms_master_key_arn.nil?
        data['InaccessibleEncryptionDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub.inaccessible_encryption_date_time).to_i unless stub.inaccessible_encryption_date_time.nil?
        data
      end
    end

    class SSESpecification
      def self.default(visited = [])
        return nil if visited.include?('SSESpecification')
        visited = visited + ['SSESpecification']
        {
          enabled: false,
          sse_type: 'sse_type',
          kms_master_key_id: 'kms_master_key_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::SSESpecification.new
        data = {}
        data['Enabled'] = stub.enabled unless stub.enabled.nil?
        data['SSEType'] = stub.sse_type unless stub.sse_type.nil?
        data['KMSMasterKeyId'] = stub.kms_master_key_id unless stub.kms_master_key_id.nil?
        data
      end
    end

    class Scan
      def self.build(params, context:)
        Params::ScanOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ScanOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          items: ItemList.default(visited),
          count: 1,
          scanned_count: 1,
          last_evaluated_key: Key.default(visited),
          consumed_capacity: ConsumedCapacity.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Items'] = ItemList.stub(stub.items) unless stub.items.nil?
        data['Count'] = stub.count unless stub.count.nil?
        data['ScannedCount'] = stub.scanned_count unless stub.scanned_count.nil?
        data['LastEvaluatedKey'] = Key.stub(stub.last_evaluated_key) unless stub.last_evaluated_key.nil?
        data['ConsumedCapacity'] = ConsumedCapacity.stub(stub.consumed_capacity) unless stub.consumed_capacity.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class SecondaryIndexesCapacityMap
      def self.default(visited = [])
        return nil if visited.include?('SecondaryIndexesCapacityMap')
        visited = visited + ['SecondaryIndexesCapacityMap']
        {
          'key' => Capacity.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Capacity.stub(value) unless value.nil?
        end
        data
      end
    end

    class SourceTableDetails
      def self.default(visited = [])
        return nil if visited.include?('SourceTableDetails')
        visited = visited + ['SourceTableDetails']
        {
          table_name: 'table_name',
          table_id: 'table_id',
          table_arn: 'table_arn',
          table_size_bytes: 1,
          key_schema: KeySchema.default(visited),
          table_creation_date_time: Time.now,
          provisioned_throughput: ProvisionedThroughput.default(visited),
          item_count: 1,
          billing_mode: 'billing_mode',
        }
      end

      def self.stub(stub)
        stub ||= Types::SourceTableDetails.new
        data = {}
        data['TableName'] = stub.table_name unless stub.table_name.nil?
        data['TableId'] = stub.table_id unless stub.table_id.nil?
        data['TableArn'] = stub.table_arn unless stub.table_arn.nil?
        data['TableSizeBytes'] = stub.table_size_bytes unless stub.table_size_bytes.nil?
        data['KeySchema'] = KeySchema.stub(stub.key_schema) unless stub.key_schema.nil?
        data['TableCreationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub.table_creation_date_time).to_i unless stub.table_creation_date_time.nil?
        data['ProvisionedThroughput'] = ProvisionedThroughput.stub(stub.provisioned_throughput) unless stub.provisioned_throughput.nil?
        data['ItemCount'] = stub.item_count unless stub.item_count.nil?
        data['BillingMode'] = stub.billing_mode unless stub.billing_mode.nil?
        data
      end
    end

    class SourceTableFeatureDetails
      def self.default(visited = [])
        return nil if visited.include?('SourceTableFeatureDetails')
        visited = visited + ['SourceTableFeatureDetails']
        {
          local_secondary_indexes: LocalSecondaryIndexes.default(visited),
          global_secondary_indexes: GlobalSecondaryIndexes.default(visited),
          stream_description: StreamSpecification.default(visited),
          time_to_live_description: TimeToLiveDescription.default(visited),
          sse_description: SSEDescription.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SourceTableFeatureDetails.new
        data = {}
        data['LocalSecondaryIndexes'] = LocalSecondaryIndexes.stub(stub.local_secondary_indexes) unless stub.local_secondary_indexes.nil?
        data['GlobalSecondaryIndexes'] = GlobalSecondaryIndexes.stub(stub.global_secondary_indexes) unless stub.global_secondary_indexes.nil?
        data['StreamDescription'] = StreamSpecification.stub(stub.stream_description) unless stub.stream_description.nil?
        data['TimeToLiveDescription'] = TimeToLiveDescription.stub(stub.time_to_live_description) unless stub.time_to_live_description.nil?
        data['SSEDescription'] = SSEDescription.stub(stub.sse_description) unless stub.sse_description.nil?
        data
      end
    end

    class StreamSpecification
      def self.default(visited = [])
        return nil if visited.include?('StreamSpecification')
        visited = visited + ['StreamSpecification']
        {
          stream_enabled: false,
          stream_view_type: 'stream_view_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::StreamSpecification.new
        data = {}
        data['StreamEnabled'] = stub.stream_enabled unless stub.stream_enabled.nil?
        data['StreamViewType'] = stub.stream_view_type unless stub.stream_view_type.nil?
        data
      end
    end

    class StringSetAttributeValue
      def self.default(visited = [])
        return nil if visited.include?('StringSetAttributeValue')
        visited = visited + ['StringSetAttributeValue']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class TableAlreadyExistsException
      def self.build(params, context:)
        Params::TableAlreadyExistsException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::TableAlreadyExistsException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'com.amazonaws.dynamodb#TableAlreadyExistsException'
        data['message'] = stub.message unless stub.message.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class TableAutoScalingDescription
      def self.default(visited = [])
        return nil if visited.include?('TableAutoScalingDescription')
        visited = visited + ['TableAutoScalingDescription']
        {
          table_name: 'table_name',
          table_status: 'table_status',
          replicas: ReplicaAutoScalingDescriptionList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TableAutoScalingDescription.new
        data = {}
        data['TableName'] = stub.table_name unless stub.table_name.nil?
        data['TableStatus'] = stub.table_status unless stub.table_status.nil?
        data['Replicas'] = ReplicaAutoScalingDescriptionList.stub(stub.replicas) unless stub.replicas.nil?
        data
      end
    end

    class TableClassSummary
      def self.default(visited = [])
        return nil if visited.include?('TableClassSummary')
        visited = visited + ['TableClassSummary']
        {
          table_class: 'table_class',
          last_update_date_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::TableClassSummary.new
        data = {}
        data['TableClass'] = stub.table_class unless stub.table_class.nil?
        data['LastUpdateDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub.last_update_date_time).to_i unless stub.last_update_date_time.nil?
        data
      end
    end

    class TableCreationParameters
      def self.default(visited = [])
        return nil if visited.include?('TableCreationParameters')
        visited = visited + ['TableCreationParameters']
        {
          table_name: 'table_name',
          attribute_definitions: AttributeDefinitions.default(visited),
          key_schema: KeySchema.default(visited),
          billing_mode: 'billing_mode',
          provisioned_throughput: ProvisionedThroughput.default(visited),
          sse_specification: SSESpecification.default(visited),
          global_secondary_indexes: GlobalSecondaryIndexList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TableCreationParameters.new
        data = {}
        data['TableName'] = stub.table_name unless stub.table_name.nil?
        data['AttributeDefinitions'] = AttributeDefinitions.stub(stub.attribute_definitions) unless stub.attribute_definitions.nil?
        data['KeySchema'] = KeySchema.stub(stub.key_schema) unless stub.key_schema.nil?
        data['BillingMode'] = stub.billing_mode unless stub.billing_mode.nil?
        data['ProvisionedThroughput'] = ProvisionedThroughput.stub(stub.provisioned_throughput) unless stub.provisioned_throughput.nil?
        data['SSESpecification'] = SSESpecification.stub(stub.sse_specification) unless stub.sse_specification.nil?
        data['GlobalSecondaryIndexes'] = GlobalSecondaryIndexList.stub(stub.global_secondary_indexes) unless stub.global_secondary_indexes.nil?
        data
      end
    end

    class TableDescription
      def self.default(visited = [])
        return nil if visited.include?('TableDescription')
        visited = visited + ['TableDescription']
        {
          attribute_definitions: AttributeDefinitions.default(visited),
          table_name: 'table_name',
          key_schema: KeySchema.default(visited),
          table_status: 'table_status',
          creation_date_time: Time.now,
          provisioned_throughput: ProvisionedThroughputDescription.default(visited),
          table_size_bytes: 1,
          item_count: 1,
          table_arn: 'table_arn',
          table_id: 'table_id',
          billing_mode_summary: BillingModeSummary.default(visited),
          local_secondary_indexes: LocalSecondaryIndexDescriptionList.default(visited),
          global_secondary_indexes: GlobalSecondaryIndexDescriptionList.default(visited),
          stream_specification: StreamSpecification.default(visited),
          latest_stream_label: 'latest_stream_label',
          latest_stream_arn: 'latest_stream_arn',
          global_table_version: 'global_table_version',
          replicas: ReplicaDescriptionList.default(visited),
          restore_summary: RestoreSummary.default(visited),
          sse_description: SSEDescription.default(visited),
          archival_summary: ArchivalSummary.default(visited),
          table_class_summary: TableClassSummary.default(visited),
          deletion_protection_enabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::TableDescription.new
        data = {}
        data['AttributeDefinitions'] = AttributeDefinitions.stub(stub.attribute_definitions) unless stub.attribute_definitions.nil?
        data['TableName'] = stub.table_name unless stub.table_name.nil?
        data['KeySchema'] = KeySchema.stub(stub.key_schema) unless stub.key_schema.nil?
        data['TableStatus'] = stub.table_status unless stub.table_status.nil?
        data['CreationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub.creation_date_time).to_i unless stub.creation_date_time.nil?
        data['ProvisionedThroughput'] = ProvisionedThroughputDescription.stub(stub.provisioned_throughput) unless stub.provisioned_throughput.nil?
        data['TableSizeBytes'] = stub.table_size_bytes unless stub.table_size_bytes.nil?
        data['ItemCount'] = stub.item_count unless stub.item_count.nil?
        data['TableArn'] = stub.table_arn unless stub.table_arn.nil?
        data['TableId'] = stub.table_id unless stub.table_id.nil?
        data['BillingModeSummary'] = BillingModeSummary.stub(stub.billing_mode_summary) unless stub.billing_mode_summary.nil?
        data['LocalSecondaryIndexes'] = LocalSecondaryIndexDescriptionList.stub(stub.local_secondary_indexes) unless stub.local_secondary_indexes.nil?
        data['GlobalSecondaryIndexes'] = GlobalSecondaryIndexDescriptionList.stub(stub.global_secondary_indexes) unless stub.global_secondary_indexes.nil?
        data['StreamSpecification'] = StreamSpecification.stub(stub.stream_specification) unless stub.stream_specification.nil?
        data['LatestStreamLabel'] = stub.latest_stream_label unless stub.latest_stream_label.nil?
        data['LatestStreamArn'] = stub.latest_stream_arn unless stub.latest_stream_arn.nil?
        data['GlobalTableVersion'] = stub.global_table_version unless stub.global_table_version.nil?
        data['Replicas'] = ReplicaDescriptionList.stub(stub.replicas) unless stub.replicas.nil?
        data['RestoreSummary'] = RestoreSummary.stub(stub.restore_summary) unless stub.restore_summary.nil?
        data['SSEDescription'] = SSEDescription.stub(stub.sse_description) unless stub.sse_description.nil?
        data['ArchivalSummary'] = ArchivalSummary.stub(stub.archival_summary) unless stub.archival_summary.nil?
        data['TableClassSummary'] = TableClassSummary.stub(stub.table_class_summary) unless stub.table_class_summary.nil?
        data['DeletionProtectionEnabled'] = stub.deletion_protection_enabled unless stub.deletion_protection_enabled.nil?
        data
      end
    end

    class TableInUseException
      def self.build(params, context:)
        Params::TableInUseException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::TableInUseException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'com.amazonaws.dynamodb#TableInUseException'
        data['message'] = stub.message unless stub.message.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class TableNameList
      def self.default(visited = [])
        return nil if visited.include?('TableNameList')
        visited = visited + ['TableNameList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class TableNotFoundException
      def self.build(params, context:)
        Params::TableNotFoundException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::TableNotFoundException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'com.amazonaws.dynamodb#TableNotFoundException'
        data['message'] = stub.message unless stub.message.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class Tag
      def self.default(visited = [])
        return nil if visited.include?('Tag')
        visited = visited + ['Tag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Tag.new
        data = {}
        data['Key'] = stub.key unless stub.key.nil?
        data['Value'] = stub.value unless stub.value.nil?
        data
      end
    end

    class TagList
      def self.default(visited = [])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Tag.stub(element) unless element.nil?
        end
        data
      end
    end

    class TagResource
      def self.build(params, context:)
        Params::TagResourceOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::TagResourceOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class TimeToLiveDescription
      def self.default(visited = [])
        return nil if visited.include?('TimeToLiveDescription')
        visited = visited + ['TimeToLiveDescription']
        {
          time_to_live_status: 'time_to_live_status',
          attribute_name: 'attribute_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::TimeToLiveDescription.new
        data = {}
        data['TimeToLiveStatus'] = stub.time_to_live_status unless stub.time_to_live_status.nil?
        data['AttributeName'] = stub.attribute_name unless stub.attribute_name.nil?
        data
      end
    end

    class TimeToLiveSpecification
      def self.default(visited = [])
        return nil if visited.include?('TimeToLiveSpecification')
        visited = visited + ['TimeToLiveSpecification']
        {
          enabled: false,
          attribute_name: 'attribute_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::TimeToLiveSpecification.new
        data = {}
        data['Enabled'] = stub.enabled unless stub.enabled.nil?
        data['AttributeName'] = stub.attribute_name unless stub.attribute_name.nil?
        data
      end
    end

    class TransactGetItems
      def self.build(params, context:)
        Params::TransactGetItemsOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::TransactGetItemsOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          consumed_capacity: ConsumedCapacityMultiple.default(visited),
          responses: ItemResponseList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ConsumedCapacity'] = ConsumedCapacityMultiple.stub(stub.consumed_capacity) unless stub.consumed_capacity.nil?
        data['Responses'] = ItemResponseList.stub(stub.responses) unless stub.responses.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class TransactWriteItems
      def self.build(params, context:)
        Params::TransactWriteItemsOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::TransactWriteItemsOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          consumed_capacity: ConsumedCapacityMultiple.default(visited),
          item_collection_metrics: ItemCollectionMetricsPerTable.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ConsumedCapacity'] = ConsumedCapacityMultiple.stub(stub.consumed_capacity) unless stub.consumed_capacity.nil?
        data['ItemCollectionMetrics'] = ItemCollectionMetricsPerTable.stub(stub.item_collection_metrics) unless stub.item_collection_metrics.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class TransactionCanceledException
      def self.build(params, context:)
        Params::TransactionCanceledException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::TransactionCanceledException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
          cancellation_reasons: CancellationReasonList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'com.amazonaws.dynamodb#TransactionCanceledException'
        data['Message'] = stub.message unless stub.message.nil?
        data['CancellationReasons'] = CancellationReasonList.stub(stub.cancellation_reasons) unless stub.cancellation_reasons.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class TransactionConflictException
      def self.build(params, context:)
        Params::TransactionConflictException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::TransactionConflictException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'com.amazonaws.dynamodb#TransactionConflictException'
        data['message'] = stub.message unless stub.message.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class TransactionInProgressException
      def self.build(params, context:)
        Params::TransactionInProgressException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::TransactionInProgressException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.status = 400
        data = {}
        data['__type'] = 'com.amazonaws.dynamodb#TransactionInProgressException'
        data['Message'] = stub.message unless stub.message.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class UntagResource
      def self.build(params, context:)
        Params::UntagResourceOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::UntagResourceOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class UpdateContinuousBackups
      def self.build(params, context:)
        Params::UpdateContinuousBackupsOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::UpdateContinuousBackupsOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          continuous_backups_description: ContinuousBackupsDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ContinuousBackupsDescription'] = ContinuousBackupsDescription.stub(stub.continuous_backups_description) unless stub.continuous_backups_description.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class UpdateContributorInsights
      def self.build(params, context:)
        Params::UpdateContributorInsightsOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::UpdateContributorInsightsOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          table_name: 'table_name',
          index_name: 'index_name',
          contributor_insights_status: 'contributor_insights_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TableName'] = stub.table_name unless stub.table_name.nil?
        data['IndexName'] = stub.index_name unless stub.index_name.nil?
        data['ContributorInsightsStatus'] = stub.contributor_insights_status unless stub.contributor_insights_status.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class UpdateGlobalTable
      def self.build(params, context:)
        Params::UpdateGlobalTableOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::UpdateGlobalTableOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          global_table_description: GlobalTableDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GlobalTableDescription'] = GlobalTableDescription.stub(stub.global_table_description) unless stub.global_table_description.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class UpdateGlobalTableSettings
      def self.build(params, context:)
        Params::UpdateGlobalTableSettingsOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::UpdateGlobalTableSettingsOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          global_table_name: 'global_table_name',
          replica_settings: ReplicaSettingsDescriptionList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GlobalTableName'] = stub.global_table_name unless stub.global_table_name.nil?
        data['ReplicaSettings'] = ReplicaSettingsDescriptionList.stub(stub.replica_settings) unless stub.replica_settings.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class UpdateItem
      def self.build(params, context:)
        Params::UpdateItemOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::UpdateItemOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          attributes: AttributeMap.default(visited),
          consumed_capacity: ConsumedCapacity.default(visited),
          item_collection_metrics: ItemCollectionMetrics.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Attributes'] = AttributeMap.stub(stub.attributes) unless stub.attributes.nil?
        data['ConsumedCapacity'] = ConsumedCapacity.stub(stub.consumed_capacity) unless stub.consumed_capacity.nil?
        data['ItemCollectionMetrics'] = ItemCollectionMetrics.stub(stub.item_collection_metrics) unless stub.item_collection_metrics.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class UpdateKinesisStreamingConfiguration
      def self.default(visited = [])
        return nil if visited.include?('UpdateKinesisStreamingConfiguration')
        visited = visited + ['UpdateKinesisStreamingConfiguration']
        {
          approximate_creation_date_time_precision: 'approximate_creation_date_time_precision',
        }
      end

      def self.stub(stub)
        stub ||= Types::UpdateKinesisStreamingConfiguration.new
        data = {}
        data['ApproximateCreationDateTimePrecision'] = stub.approximate_creation_date_time_precision unless stub.approximate_creation_date_time_precision.nil?
        data
      end
    end

    class UpdateKinesisStreamingDestination
      def self.build(params, context:)
        Params::UpdateKinesisStreamingDestinationOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::UpdateKinesisStreamingDestinationOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          table_name: 'table_name',
          stream_arn: 'stream_arn',
          destination_status: 'destination_status',
          update_kinesis_streaming_configuration: UpdateKinesisStreamingConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TableName'] = stub.table_name unless stub.table_name.nil?
        data['StreamArn'] = stub.stream_arn unless stub.stream_arn.nil?
        data['DestinationStatus'] = stub.destination_status unless stub.destination_status.nil?
        data['UpdateKinesisStreamingConfiguration'] = UpdateKinesisStreamingConfiguration.stub(stub.update_kinesis_streaming_configuration) unless stub.update_kinesis_streaming_configuration.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class UpdateTable
      def self.build(params, context:)
        Params::UpdateTableOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::UpdateTableOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          table_description: TableDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TableDescription'] = TableDescription.stub(stub.table_description) unless stub.table_description.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class UpdateTableReplicaAutoScaling
      def self.build(params, context:)
        Params::UpdateTableReplicaAutoScalingOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::UpdateTableReplicaAutoScalingOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          table_auto_scaling_description: TableAutoScalingDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TableAutoScalingDescription'] = TableAutoScalingDescription.stub(stub.table_auto_scaling_description) unless stub.table_auto_scaling_description.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class UpdateTimeToLive
      def self.build(params, context:)
        Params::UpdateTimeToLiveOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::UpdateTimeToLiveOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          time_to_live_specification: TimeToLiveSpecification.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TimeToLiveSpecification'] = TimeToLiveSpecification.stub(stub.time_to_live_specification) unless stub.time_to_live_specification.nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    class WriteRequest
      def self.default(visited = [])
        return nil if visited.include?('WriteRequest')
        visited = visited + ['WriteRequest']
        {
          put_request: PutRequest.default(visited),
          delete_request: DeleteRequest.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::WriteRequest.new
        data = {}
        data['PutRequest'] = PutRequest.stub(stub.put_request) unless stub.put_request.nil?
        data['DeleteRequest'] = DeleteRequest.stub(stub.delete_request) unless stub.delete_request.nil?
        data
      end
    end

    class WriteRequests
      def self.default(visited = [])
        return nil if visited.include?('WriteRequests')
        visited = visited + ['WriteRequests']
        [
          WriteRequest.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << WriteRequest.stub(element) unless element.nil?
        end
        data
      end
    end
  end
end
