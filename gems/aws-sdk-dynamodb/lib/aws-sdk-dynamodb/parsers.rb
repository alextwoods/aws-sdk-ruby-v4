# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::DynamoDB
  # @api private
  module Parsers

    class ArchivalSummary
      def self.parse(map)
        data = Types::ArchivalSummary.new
        data.archival_date_time = Time.at(map['ArchivalDateTime'].to_i) if map['ArchivalDateTime']
        data.archival_reason = map['ArchivalReason'] unless map['ArchivalReason'].nil?
        data.archival_backup_arn = map['ArchivalBackupArn'] unless map['ArchivalBackupArn'].nil?
        return data
      end
    end

    class AttributeDefinition
      def self.parse(map)
        data = Types::AttributeDefinition.new
        data.attribute_name = map['AttributeName'] unless map['AttributeName'].nil?
        data.attribute_type = map['AttributeType'] unless map['AttributeType'].nil?
        return data
      end
    end

    class AttributeDefinitions
      def self.parse(list)
        list.map do |value|
          AttributeDefinition.parse(value) unless value.nil?
        end
      end
    end

    class AttributeMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = AttributeValue.parse(value) unless value.nil?
        end
        data
      end
    end

    class AttributeNameList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class AttributeValue
      def self.parse(map)
        return nil if map.nil?

        map.delete('__type')
        key, value = map.compact.flatten
        case key
        when 'S'
          value = value
          Types::AttributeValue::S.new(value) if value
        when 'N'
          value = value
          Types::AttributeValue::N.new(value) if value
        when 'B'
          value = ::Base64::decode64(value) unless value.nil?
          Types::AttributeValue::B.new(value) if value
        when 'SS'
          value = (StringSetAttributeValue.parse(value) unless value.nil?)
          Types::AttributeValue::Ss.new(value) if value
        when 'NS'
          value = (NumberSetAttributeValue.parse(value) unless value.nil?)
          Types::AttributeValue::Ns.new(value) if value
        when 'BS'
          value = (BinarySetAttributeValue.parse(value) unless value.nil?)
          Types::AttributeValue::Bs.new(value) if value
        when 'M'
          value = (MapAttributeValue.parse(value) unless value.nil?)
          Types::AttributeValue::M.new(value) if value
        when 'L'
          value = (ListAttributeValue.parse(value) unless value.nil?)
          Types::AttributeValue::L.new(value) if value
        when 'NULL'
          value = value
          Types::AttributeValue::Null.new(value) if value
        when 'BOOL'
          value = value
          Types::AttributeValue::Bool.new(value) if value
        else
          Types::AttributeValue::Unknown.new(name: key, value: value)
        end
      end
    end

    class AutoScalingPolicyDescription
      def self.parse(map)
        data = Types::AutoScalingPolicyDescription.new
        data.policy_name = map['PolicyName'] unless map['PolicyName'].nil?
        data.target_tracking_scaling_policy_configuration = AutoScalingTargetTrackingScalingPolicyConfigurationDescription.parse(map['TargetTrackingScalingPolicyConfiguration']) unless map['TargetTrackingScalingPolicyConfiguration'].nil?
        return data
      end
    end

    class AutoScalingPolicyDescriptionList
      def self.parse(list)
        list.map do |value|
          AutoScalingPolicyDescription.parse(value) unless value.nil?
        end
      end
    end

    class AutoScalingSettingsDescription
      def self.parse(map)
        data = Types::AutoScalingSettingsDescription.new
        data.minimum_units = map['MinimumUnits'] unless map['MinimumUnits'].nil?
        data.maximum_units = map['MaximumUnits'] unless map['MaximumUnits'].nil?
        data.auto_scaling_disabled = map['AutoScalingDisabled'] unless map['AutoScalingDisabled'].nil?
        data.auto_scaling_role_arn = map['AutoScalingRoleArn'] unless map['AutoScalingRoleArn'].nil?
        data.scaling_policies = AutoScalingPolicyDescriptionList.parse(map['ScalingPolicies']) unless map['ScalingPolicies'].nil?
        return data
      end
    end

    class AutoScalingTargetTrackingScalingPolicyConfigurationDescription
      def self.parse(map)
        data = Types::AutoScalingTargetTrackingScalingPolicyConfigurationDescription.new
        data.disable_scale_in = map['DisableScaleIn'] unless map['DisableScaleIn'].nil?
        data.scale_in_cooldown = map['ScaleInCooldown'] unless map['ScaleInCooldown'].nil?
        data.scale_out_cooldown = map['ScaleOutCooldown'] unless map['ScaleOutCooldown'].nil?
        data.target_value = Hearth::NumberHelper.deserialize(map['TargetValue']) unless map['TargetValue'].nil?
        return data
      end
    end

    class BackupDescription
      def self.parse(map)
        data = Types::BackupDescription.new
        data.backup_details = BackupDetails.parse(map['BackupDetails']) unless map['BackupDetails'].nil?
        data.source_table_details = SourceTableDetails.parse(map['SourceTableDetails']) unless map['SourceTableDetails'].nil?
        data.source_table_feature_details = SourceTableFeatureDetails.parse(map['SourceTableFeatureDetails']) unless map['SourceTableFeatureDetails'].nil?
        return data
      end
    end

    class BackupDetails
      def self.parse(map)
        data = Types::BackupDetails.new
        data.backup_arn = map['BackupArn'] unless map['BackupArn'].nil?
        data.backup_name = map['BackupName'] unless map['BackupName'].nil?
        data.backup_size_bytes = map['BackupSizeBytes'] unless map['BackupSizeBytes'].nil?
        data.backup_status = map['BackupStatus'] unless map['BackupStatus'].nil?
        data.backup_type = map['BackupType'] unless map['BackupType'].nil?
        data.backup_creation_date_time = Time.at(map['BackupCreationDateTime'].to_i) if map['BackupCreationDateTime']
        data.backup_expiry_date_time = Time.at(map['BackupExpiryDateTime'].to_i) if map['BackupExpiryDateTime']
        return data
      end
    end

    # Error Parser for BackupInUseException
    class BackupInUseException
      def self.parse(http_resp, **kwargs)
        data = Types::BackupInUseException.new
        body = http_resp.body.read
        unless body.empty?
          map = Hearth::JSON.parse(body)
          data.message = map['message'] unless map['message'].nil?
        end
        Errors::BackupInUseException.new(data: data, **kwargs)
      end
    end

    # Error Parser for BackupNotFoundException
    class BackupNotFoundException
      def self.parse(http_resp, **kwargs)
        data = Types::BackupNotFoundException.new
        body = http_resp.body.read
        unless body.empty?
          map = Hearth::JSON.parse(body)
          data.message = map['message'] unless map['message'].nil?
        end
        Errors::BackupNotFoundException.new(data: data, **kwargs)
      end
    end

    class BackupSummaries
      def self.parse(list)
        list.map do |value|
          BackupSummary.parse(value) unless value.nil?
        end
      end
    end

    class BackupSummary
      def self.parse(map)
        data = Types::BackupSummary.new
        data.table_name = map['TableName'] unless map['TableName'].nil?
        data.table_id = map['TableId'] unless map['TableId'].nil?
        data.table_arn = map['TableArn'] unless map['TableArn'].nil?
        data.backup_arn = map['BackupArn'] unless map['BackupArn'].nil?
        data.backup_name = map['BackupName'] unless map['BackupName'].nil?
        data.backup_creation_date_time = Time.at(map['BackupCreationDateTime'].to_i) if map['BackupCreationDateTime']
        data.backup_expiry_date_time = Time.at(map['BackupExpiryDateTime'].to_i) if map['BackupExpiryDateTime']
        data.backup_status = map['BackupStatus'] unless map['BackupStatus'].nil?
        data.backup_type = map['BackupType'] unless map['BackupType'].nil?
        data.backup_size_bytes = map['BackupSizeBytes'] unless map['BackupSizeBytes'].nil?
        return data
      end
    end

    class BatchExecuteStatement
      def self.parse(http_resp)
        data = Types::BatchExecuteStatementOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.responses = PartiQLBatchResponse.parse(map['Responses']) unless map['Responses'].nil?
        data.consumed_capacity = ConsumedCapacityMultiple.parse(map['ConsumedCapacity']) unless map['ConsumedCapacity'].nil?
        data
      end
    end

    class BatchGetItem
      def self.parse(http_resp)
        data = Types::BatchGetItemOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.responses = BatchGetResponseMap.parse(map['Responses']) unless map['Responses'].nil?
        data.unprocessed_keys = BatchGetRequestMap.parse(map['UnprocessedKeys']) unless map['UnprocessedKeys'].nil?
        data.consumed_capacity = ConsumedCapacityMultiple.parse(map['ConsumedCapacity']) unless map['ConsumedCapacity'].nil?
        data
      end
    end

    class BatchGetRequestMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = KeysAndAttributes.parse(value) unless value.nil?
        end
        data
      end
    end

    class BatchGetResponseMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = ItemList.parse(value) unless value.nil?
        end
        data
      end
    end

    class BatchStatementError
      def self.parse(map)
        data = Types::BatchStatementError.new
        data.code = map['Code'] unless map['Code'].nil?
        data.message = map['Message'] unless map['Message'].nil?
        data.item = AttributeMap.parse(map['Item']) unless map['Item'].nil?
        return data
      end
    end

    class BatchStatementResponse
      def self.parse(map)
        data = Types::BatchStatementResponse.new
        data.error = BatchStatementError.parse(map['Error']) unless map['Error'].nil?
        data.table_name = map['TableName'] unless map['TableName'].nil?
        data.item = AttributeMap.parse(map['Item']) unless map['Item'].nil?
        return data
      end
    end

    class BatchWriteItem
      def self.parse(http_resp)
        data = Types::BatchWriteItemOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.unprocessed_items = BatchWriteItemRequestMap.parse(map['UnprocessedItems']) unless map['UnprocessedItems'].nil?
        data.item_collection_metrics = ItemCollectionMetricsPerTable.parse(map['ItemCollectionMetrics']) unless map['ItemCollectionMetrics'].nil?
        data.consumed_capacity = ConsumedCapacityMultiple.parse(map['ConsumedCapacity']) unless map['ConsumedCapacity'].nil?
        data
      end
    end

    class BatchWriteItemRequestMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = WriteRequests.parse(value) unless value.nil?
        end
        data
      end
    end

    class BillingModeSummary
      def self.parse(map)
        data = Types::BillingModeSummary.new
        data.billing_mode = map['BillingMode'] unless map['BillingMode'].nil?
        data.last_update_to_pay_per_request_date_time = Time.at(map['LastUpdateToPayPerRequestDateTime'].to_i) if map['LastUpdateToPayPerRequestDateTime']
        return data
      end
    end

    class BinarySetAttributeValue
      def self.parse(list)
        list.map do |value|
          ::Base64::decode64(value) unless value.nil?
        end
      end
    end

    class CancellationReason
      def self.parse(map)
        data = Types::CancellationReason.new
        data.item = AttributeMap.parse(map['Item']) unless map['Item'].nil?
        data.code = map['Code'] unless map['Code'].nil?
        data.message = map['Message'] unless map['Message'].nil?
        return data
      end
    end

    class CancellationReasonList
      def self.parse(list)
        list.map do |value|
          CancellationReason.parse(value) unless value.nil?
        end
      end
    end

    class Capacity
      def self.parse(map)
        data = Types::Capacity.new
        data.read_capacity_units = Hearth::NumberHelper.deserialize(map['ReadCapacityUnits']) unless map['ReadCapacityUnits'].nil?
        data.write_capacity_units = Hearth::NumberHelper.deserialize(map['WriteCapacityUnits']) unless map['WriteCapacityUnits'].nil?
        data.capacity_units = Hearth::NumberHelper.deserialize(map['CapacityUnits']) unless map['CapacityUnits'].nil?
        return data
      end
    end

    # Error Parser for ConditionalCheckFailedException
    class ConditionalCheckFailedException
      def self.parse(http_resp, **kwargs)
        data = Types::ConditionalCheckFailedException.new
        body = http_resp.body.read
        unless body.empty?
          map = Hearth::JSON.parse(body)
          data.message = map['message'] unless map['message'].nil?
          data.item = AttributeMap.parse(map['Item']) unless map['Item'].nil?
        end
        Errors::ConditionalCheckFailedException.new(data: data, **kwargs)
      end
    end

    class ConsumedCapacity
      def self.parse(map)
        data = Types::ConsumedCapacity.new
        data.table_name = map['TableName'] unless map['TableName'].nil?
        data.capacity_units = Hearth::NumberHelper.deserialize(map['CapacityUnits']) unless map['CapacityUnits'].nil?
        data.read_capacity_units = Hearth::NumberHelper.deserialize(map['ReadCapacityUnits']) unless map['ReadCapacityUnits'].nil?
        data.write_capacity_units = Hearth::NumberHelper.deserialize(map['WriteCapacityUnits']) unless map['WriteCapacityUnits'].nil?
        data.table = Capacity.parse(map['Table']) unless map['Table'].nil?
        data.local_secondary_indexes = SecondaryIndexesCapacityMap.parse(map['LocalSecondaryIndexes']) unless map['LocalSecondaryIndexes'].nil?
        data.global_secondary_indexes = SecondaryIndexesCapacityMap.parse(map['GlobalSecondaryIndexes']) unless map['GlobalSecondaryIndexes'].nil?
        return data
      end
    end

    class ConsumedCapacityMultiple
      def self.parse(list)
        list.map do |value|
          ConsumedCapacity.parse(value) unless value.nil?
        end
      end
    end

    class ContinuousBackupsDescription
      def self.parse(map)
        data = Types::ContinuousBackupsDescription.new
        data.continuous_backups_status = map['ContinuousBackupsStatus'] unless map['ContinuousBackupsStatus'].nil?
        data.point_in_time_recovery_description = PointInTimeRecoveryDescription.parse(map['PointInTimeRecoveryDescription']) unless map['PointInTimeRecoveryDescription'].nil?
        return data
      end
    end

    # Error Parser for ContinuousBackupsUnavailableException
    class ContinuousBackupsUnavailableException
      def self.parse(http_resp, **kwargs)
        data = Types::ContinuousBackupsUnavailableException.new
        body = http_resp.body.read
        unless body.empty?
          map = Hearth::JSON.parse(body)
          data.message = map['message'] unless map['message'].nil?
        end
        Errors::ContinuousBackupsUnavailableException.new(data: data, **kwargs)
      end
    end

    class ContributorInsightsRuleList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ContributorInsightsSummaries
      def self.parse(list)
        list.map do |value|
          ContributorInsightsSummary.parse(value) unless value.nil?
        end
      end
    end

    class ContributorInsightsSummary
      def self.parse(map)
        data = Types::ContributorInsightsSummary.new
        data.table_name = map['TableName'] unless map['TableName'].nil?
        data.index_name = map['IndexName'] unless map['IndexName'].nil?
        data.contributor_insights_status = map['ContributorInsightsStatus'] unless map['ContributorInsightsStatus'].nil?
        return data
      end
    end

    class CreateBackup
      def self.parse(http_resp)
        data = Types::CreateBackupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.backup_details = BackupDetails.parse(map['BackupDetails']) unless map['BackupDetails'].nil?
        data
      end
    end

    class CreateGlobalTable
      def self.parse(http_resp)
        data = Types::CreateGlobalTableOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.global_table_description = GlobalTableDescription.parse(map['GlobalTableDescription']) unless map['GlobalTableDescription'].nil?
        data
      end
    end

    class CreateTable
      def self.parse(http_resp)
        data = Types::CreateTableOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.table_description = TableDescription.parse(map['TableDescription']) unless map['TableDescription'].nil?
        data
      end
    end

    class CsvHeaderList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class CsvOptions
      def self.parse(map)
        data = Types::CsvOptions.new
        data.delimiter = map['Delimiter'] unless map['Delimiter'].nil?
        data.header_list = CsvHeaderList.parse(map['HeaderList']) unless map['HeaderList'].nil?
        return data
      end
    end

    class DeleteBackup
      def self.parse(http_resp)
        data = Types::DeleteBackupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.backup_description = BackupDescription.parse(map['BackupDescription']) unless map['BackupDescription'].nil?
        data
      end
    end

    class DeleteItem
      def self.parse(http_resp)
        data = Types::DeleteItemOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.attributes = AttributeMap.parse(map['Attributes']) unless map['Attributes'].nil?
        data.consumed_capacity = ConsumedCapacity.parse(map['ConsumedCapacity']) unless map['ConsumedCapacity'].nil?
        data.item_collection_metrics = ItemCollectionMetrics.parse(map['ItemCollectionMetrics']) unless map['ItemCollectionMetrics'].nil?
        data
      end
    end

    class DeleteRequest
      def self.parse(map)
        data = Types::DeleteRequest.new
        data.key = Key.parse(map['Key']) unless map['Key'].nil?
        return data
      end
    end

    class DeleteTable
      def self.parse(http_resp)
        data = Types::DeleteTableOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.table_description = TableDescription.parse(map['TableDescription']) unless map['TableDescription'].nil?
        data
      end
    end

    class DescribeBackup
      def self.parse(http_resp)
        data = Types::DescribeBackupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.backup_description = BackupDescription.parse(map['BackupDescription']) unless map['BackupDescription'].nil?
        data
      end
    end

    class DescribeContinuousBackups
      def self.parse(http_resp)
        data = Types::DescribeContinuousBackupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.continuous_backups_description = ContinuousBackupsDescription.parse(map['ContinuousBackupsDescription']) unless map['ContinuousBackupsDescription'].nil?
        data
      end
    end

    class DescribeContributorInsights
      def self.parse(http_resp)
        data = Types::DescribeContributorInsightsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.table_name = map['TableName'] unless map['TableName'].nil?
        data.index_name = map['IndexName'] unless map['IndexName'].nil?
        data.contributor_insights_rule_list = ContributorInsightsRuleList.parse(map['ContributorInsightsRuleList']) unless map['ContributorInsightsRuleList'].nil?
        data.contributor_insights_status = map['ContributorInsightsStatus'] unless map['ContributorInsightsStatus'].nil?
        data.last_update_date_time = Time.at(map['LastUpdateDateTime'].to_i) if map['LastUpdateDateTime']
        data.failure_exception = FailureException.parse(map['FailureException']) unless map['FailureException'].nil?
        data
      end
    end

    class DescribeEndpoints
      def self.parse(http_resp)
        data = Types::DescribeEndpointsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.endpoints = Endpoints.parse(map['Endpoints']) unless map['Endpoints'].nil?
        data
      end
    end

    class DescribeExport
      def self.parse(http_resp)
        data = Types::DescribeExportOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.export_description = ExportDescription.parse(map['ExportDescription']) unless map['ExportDescription'].nil?
        data
      end
    end

    class DescribeGlobalTable
      def self.parse(http_resp)
        data = Types::DescribeGlobalTableOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.global_table_description = GlobalTableDescription.parse(map['GlobalTableDescription']) unless map['GlobalTableDescription'].nil?
        data
      end
    end

    class DescribeGlobalTableSettings
      def self.parse(http_resp)
        data = Types::DescribeGlobalTableSettingsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.global_table_name = map['GlobalTableName'] unless map['GlobalTableName'].nil?
        data.replica_settings = ReplicaSettingsDescriptionList.parse(map['ReplicaSettings']) unless map['ReplicaSettings'].nil?
        data
      end
    end

    class DescribeImport
      def self.parse(http_resp)
        data = Types::DescribeImportOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.import_table_description = ImportTableDescription.parse(map['ImportTableDescription']) unless map['ImportTableDescription'].nil?
        data
      end
    end

    class DescribeKinesisStreamingDestination
      def self.parse(http_resp)
        data = Types::DescribeKinesisStreamingDestinationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.table_name = map['TableName'] unless map['TableName'].nil?
        data.kinesis_data_stream_destinations = KinesisDataStreamDestinations.parse(map['KinesisDataStreamDestinations']) unless map['KinesisDataStreamDestinations'].nil?
        data
      end
    end

    class DescribeLimits
      def self.parse(http_resp)
        data = Types::DescribeLimitsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.account_max_read_capacity_units = map['AccountMaxReadCapacityUnits'] unless map['AccountMaxReadCapacityUnits'].nil?
        data.account_max_write_capacity_units = map['AccountMaxWriteCapacityUnits'] unless map['AccountMaxWriteCapacityUnits'].nil?
        data.table_max_read_capacity_units = map['TableMaxReadCapacityUnits'] unless map['TableMaxReadCapacityUnits'].nil?
        data.table_max_write_capacity_units = map['TableMaxWriteCapacityUnits'] unless map['TableMaxWriteCapacityUnits'].nil?
        data
      end
    end

    class DescribeTable
      def self.parse(http_resp)
        data = Types::DescribeTableOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.table = TableDescription.parse(map['Table']) unless map['Table'].nil?
        data
      end
    end

    class DescribeTableReplicaAutoScaling
      def self.parse(http_resp)
        data = Types::DescribeTableReplicaAutoScalingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.table_auto_scaling_description = TableAutoScalingDescription.parse(map['TableAutoScalingDescription']) unless map['TableAutoScalingDescription'].nil?
        data
      end
    end

    class DescribeTimeToLive
      def self.parse(http_resp)
        data = Types::DescribeTimeToLiveOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.time_to_live_description = TimeToLiveDescription.parse(map['TimeToLiveDescription']) unless map['TimeToLiveDescription'].nil?
        data
      end
    end

    class DisableKinesisStreamingDestination
      def self.parse(http_resp)
        data = Types::DisableKinesisStreamingDestinationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.table_name = map['TableName'] unless map['TableName'].nil?
        data.stream_arn = map['StreamArn'] unless map['StreamArn'].nil?
        data.destination_status = map['DestinationStatus'] unless map['DestinationStatus'].nil?
        data.enable_kinesis_streaming_configuration = EnableKinesisStreamingConfiguration.parse(map['EnableKinesisStreamingConfiguration']) unless map['EnableKinesisStreamingConfiguration'].nil?
        data
      end
    end

    # Error Parser for DuplicateItemException
    class DuplicateItemException
      def self.parse(http_resp, **kwargs)
        data = Types::DuplicateItemException.new
        body = http_resp.body.read
        unless body.empty?
          map = Hearth::JSON.parse(body)
          data.message = map['message'] unless map['message'].nil?
        end
        Errors::DuplicateItemException.new(data: data, **kwargs)
      end
    end

    class EnableKinesisStreamingConfiguration
      def self.parse(map)
        data = Types::EnableKinesisStreamingConfiguration.new
        data.approximate_creation_date_time_precision = map['ApproximateCreationDateTimePrecision'] unless map['ApproximateCreationDateTimePrecision'].nil?
        return data
      end
    end

    class EnableKinesisStreamingDestination
      def self.parse(http_resp)
        data = Types::EnableKinesisStreamingDestinationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.table_name = map['TableName'] unless map['TableName'].nil?
        data.stream_arn = map['StreamArn'] unless map['StreamArn'].nil?
        data.destination_status = map['DestinationStatus'] unless map['DestinationStatus'].nil?
        data.enable_kinesis_streaming_configuration = EnableKinesisStreamingConfiguration.parse(map['EnableKinesisStreamingConfiguration']) unless map['EnableKinesisStreamingConfiguration'].nil?
        data
      end
    end

    class Endpoint
      def self.parse(map)
        data = Types::Endpoint.new
        data.address = map['Address'] unless map['Address'].nil?
        data.cache_period_in_minutes = map['CachePeriodInMinutes'] unless map['CachePeriodInMinutes'].nil?
        return data
      end
    end

    class Endpoints
      def self.parse(list)
        list.map do |value|
          Endpoint.parse(value) unless value.nil?
        end
      end
    end

    class ExecuteStatement
      def self.parse(http_resp)
        data = Types::ExecuteStatementOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.items = ItemList.parse(map['Items']) unless map['Items'].nil?
        data.next_token = map['NextToken'] unless map['NextToken'].nil?
        data.consumed_capacity = ConsumedCapacity.parse(map['ConsumedCapacity']) unless map['ConsumedCapacity'].nil?
        data.last_evaluated_key = Key.parse(map['LastEvaluatedKey']) unless map['LastEvaluatedKey'].nil?
        data
      end
    end

    class ExecuteTransaction
      def self.parse(http_resp)
        data = Types::ExecuteTransactionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.responses = ItemResponseList.parse(map['Responses']) unless map['Responses'].nil?
        data.consumed_capacity = ConsumedCapacityMultiple.parse(map['ConsumedCapacity']) unless map['ConsumedCapacity'].nil?
        data
      end
    end

    # Error Parser for ExportConflictException
    class ExportConflictException
      def self.parse(http_resp, **kwargs)
        data = Types::ExportConflictException.new
        body = http_resp.body.read
        unless body.empty?
          map = Hearth::JSON.parse(body)
          data.message = map['message'] unless map['message'].nil?
        end
        Errors::ExportConflictException.new(data: data, **kwargs)
      end
    end

    class ExportDescription
      def self.parse(map)
        data = Types::ExportDescription.new
        data.export_arn = map['ExportArn'] unless map['ExportArn'].nil?
        data.export_status = map['ExportStatus'] unless map['ExportStatus'].nil?
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        data.export_manifest = map['ExportManifest'] unless map['ExportManifest'].nil?
        data.table_arn = map['TableArn'] unless map['TableArn'].nil?
        data.table_id = map['TableId'] unless map['TableId'].nil?
        data.export_time = Time.at(map['ExportTime'].to_i) if map['ExportTime']
        data.client_token = map['ClientToken'] unless map['ClientToken'].nil?
        data.s3_bucket = map['S3Bucket'] unless map['S3Bucket'].nil?
        data.s3_bucket_owner = map['S3BucketOwner'] unless map['S3BucketOwner'].nil?
        data.s3_prefix = map['S3Prefix'] unless map['S3Prefix'].nil?
        data.s3_sse_algorithm = map['S3SseAlgorithm'] unless map['S3SseAlgorithm'].nil?
        data.s3_sse_kms_key_id = map['S3SseKmsKeyId'] unless map['S3SseKmsKeyId'].nil?
        data.failure_code = map['FailureCode'] unless map['FailureCode'].nil?
        data.failure_message = map['FailureMessage'] unless map['FailureMessage'].nil?
        data.export_format = map['ExportFormat'] unless map['ExportFormat'].nil?
        data.billed_size_bytes = map['BilledSizeBytes'] unless map['BilledSizeBytes'].nil?
        data.item_count = map['ItemCount'] unless map['ItemCount'].nil?
        data.export_type = map['ExportType'] unless map['ExportType'].nil?
        data.incremental_export_specification = IncrementalExportSpecification.parse(map['IncrementalExportSpecification']) unless map['IncrementalExportSpecification'].nil?
        return data
      end
    end

    # Error Parser for ExportNotFoundException
    class ExportNotFoundException
      def self.parse(http_resp, **kwargs)
        data = Types::ExportNotFoundException.new
        body = http_resp.body.read
        unless body.empty?
          map = Hearth::JSON.parse(body)
          data.message = map['message'] unless map['message'].nil?
        end
        Errors::ExportNotFoundException.new(data: data, **kwargs)
      end
    end

    class ExportSummaries
      def self.parse(list)
        list.map do |value|
          ExportSummary.parse(value) unless value.nil?
        end
      end
    end

    class ExportSummary
      def self.parse(map)
        data = Types::ExportSummary.new
        data.export_arn = map['ExportArn'] unless map['ExportArn'].nil?
        data.export_status = map['ExportStatus'] unless map['ExportStatus'].nil?
        data.export_type = map['ExportType'] unless map['ExportType'].nil?
        return data
      end
    end

    class ExportTableToPointInTime
      def self.parse(http_resp)
        data = Types::ExportTableToPointInTimeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.export_description = ExportDescription.parse(map['ExportDescription']) unless map['ExportDescription'].nil?
        data
      end
    end

    class ExpressionAttributeNameMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class FailureException
      def self.parse(map)
        data = Types::FailureException.new
        data.exception_name = map['ExceptionName'] unless map['ExceptionName'].nil?
        data.exception_description = map['ExceptionDescription'] unless map['ExceptionDescription'].nil?
        return data
      end
    end

    class GetItem
      def self.parse(http_resp)
        data = Types::GetItemOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.item = AttributeMap.parse(map['Item']) unless map['Item'].nil?
        data.consumed_capacity = ConsumedCapacity.parse(map['ConsumedCapacity']) unless map['ConsumedCapacity'].nil?
        data
      end
    end

    class GlobalSecondaryIndex
      def self.parse(map)
        data = Types::GlobalSecondaryIndex.new
        data.index_name = map['IndexName'] unless map['IndexName'].nil?
        data.key_schema = KeySchema.parse(map['KeySchema']) unless map['KeySchema'].nil?
        data.projection = Projection.parse(map['Projection']) unless map['Projection'].nil?
        data.provisioned_throughput = ProvisionedThroughput.parse(map['ProvisionedThroughput']) unless map['ProvisionedThroughput'].nil?
        return data
      end
    end

    class GlobalSecondaryIndexDescription
      def self.parse(map)
        data = Types::GlobalSecondaryIndexDescription.new
        data.index_name = map['IndexName'] unless map['IndexName'].nil?
        data.key_schema = KeySchema.parse(map['KeySchema']) unless map['KeySchema'].nil?
        data.projection = Projection.parse(map['Projection']) unless map['Projection'].nil?
        data.index_status = map['IndexStatus'] unless map['IndexStatus'].nil?
        data.backfilling = map['Backfilling'] unless map['Backfilling'].nil?
        data.provisioned_throughput = ProvisionedThroughputDescription.parse(map['ProvisionedThroughput']) unless map['ProvisionedThroughput'].nil?
        data.index_size_bytes = map['IndexSizeBytes'] unless map['IndexSizeBytes'].nil?
        data.item_count = map['ItemCount'] unless map['ItemCount'].nil?
        data.index_arn = map['IndexArn'] unless map['IndexArn'].nil?
        return data
      end
    end

    class GlobalSecondaryIndexDescriptionList
      def self.parse(list)
        list.map do |value|
          GlobalSecondaryIndexDescription.parse(value) unless value.nil?
        end
      end
    end

    class GlobalSecondaryIndexInfo
      def self.parse(map)
        data = Types::GlobalSecondaryIndexInfo.new
        data.index_name = map['IndexName'] unless map['IndexName'].nil?
        data.key_schema = KeySchema.parse(map['KeySchema']) unless map['KeySchema'].nil?
        data.projection = Projection.parse(map['Projection']) unless map['Projection'].nil?
        data.provisioned_throughput = ProvisionedThroughput.parse(map['ProvisionedThroughput']) unless map['ProvisionedThroughput'].nil?
        return data
      end
    end

    class GlobalSecondaryIndexList
      def self.parse(list)
        list.map do |value|
          GlobalSecondaryIndex.parse(value) unless value.nil?
        end
      end
    end

    class GlobalSecondaryIndexes
      def self.parse(list)
        list.map do |value|
          GlobalSecondaryIndexInfo.parse(value) unless value.nil?
        end
      end
    end

    class GlobalTable
      def self.parse(map)
        data = Types::GlobalTable.new
        data.global_table_name = map['GlobalTableName'] unless map['GlobalTableName'].nil?
        data.replication_group = ReplicaList.parse(map['ReplicationGroup']) unless map['ReplicationGroup'].nil?
        return data
      end
    end

    # Error Parser for GlobalTableAlreadyExistsException
    class GlobalTableAlreadyExistsException
      def self.parse(http_resp, **kwargs)
        data = Types::GlobalTableAlreadyExistsException.new
        body = http_resp.body.read
        unless body.empty?
          map = Hearth::JSON.parse(body)
          data.message = map['message'] unless map['message'].nil?
        end
        Errors::GlobalTableAlreadyExistsException.new(data: data, **kwargs)
      end
    end

    class GlobalTableDescription
      def self.parse(map)
        data = Types::GlobalTableDescription.new
        data.replication_group = ReplicaDescriptionList.parse(map['ReplicationGroup']) unless map['ReplicationGroup'].nil?
        data.global_table_arn = map['GlobalTableArn'] unless map['GlobalTableArn'].nil?
        data.creation_date_time = Time.at(map['CreationDateTime'].to_i) if map['CreationDateTime']
        data.global_table_status = map['GlobalTableStatus'] unless map['GlobalTableStatus'].nil?
        data.global_table_name = map['GlobalTableName'] unless map['GlobalTableName'].nil?
        return data
      end
    end

    class GlobalTableList
      def self.parse(list)
        list.map do |value|
          GlobalTable.parse(value) unless value.nil?
        end
      end
    end

    # Error Parser for GlobalTableNotFoundException
    class GlobalTableNotFoundException
      def self.parse(http_resp, **kwargs)
        data = Types::GlobalTableNotFoundException.new
        body = http_resp.body.read
        unless body.empty?
          map = Hearth::JSON.parse(body)
          data.message = map['message'] unless map['message'].nil?
        end
        Errors::GlobalTableNotFoundException.new(data: data, **kwargs)
      end
    end

    # Error Parser for IdempotentParameterMismatchException
    class IdempotentParameterMismatchException
      def self.parse(http_resp, **kwargs)
        data = Types::IdempotentParameterMismatchException.new
        body = http_resp.body.read
        unless body.empty?
          map = Hearth::JSON.parse(body)
          data.message = map['Message'] unless map['Message'].nil?
        end
        Errors::IdempotentParameterMismatchException.new(data: data, **kwargs)
      end
    end

    # Error Parser for ImportConflictException
    class ImportConflictException
      def self.parse(http_resp, **kwargs)
        data = Types::ImportConflictException.new
        body = http_resp.body.read
        unless body.empty?
          map = Hearth::JSON.parse(body)
          data.message = map['message'] unless map['message'].nil?
        end
        Errors::ImportConflictException.new(data: data, **kwargs)
      end
    end

    # Error Parser for ImportNotFoundException
    class ImportNotFoundException
      def self.parse(http_resp, **kwargs)
        data = Types::ImportNotFoundException.new
        body = http_resp.body.read
        unless body.empty?
          map = Hearth::JSON.parse(body)
          data.message = map['message'] unless map['message'].nil?
        end
        Errors::ImportNotFoundException.new(data: data, **kwargs)
      end
    end

    class ImportSummary
      def self.parse(map)
        data = Types::ImportSummary.new
        data.import_arn = map['ImportArn'] unless map['ImportArn'].nil?
        data.import_status = map['ImportStatus'] unless map['ImportStatus'].nil?
        data.table_arn = map['TableArn'] unless map['TableArn'].nil?
        data.s3_bucket_source = S3BucketSource.parse(map['S3BucketSource']) unless map['S3BucketSource'].nil?
        data.cloud_watch_log_group_arn = map['CloudWatchLogGroupArn'] unless map['CloudWatchLogGroupArn'].nil?
        data.input_format = map['InputFormat'] unless map['InputFormat'].nil?
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        return data
      end
    end

    class ImportSummaryList
      def self.parse(list)
        list.map do |value|
          ImportSummary.parse(value) unless value.nil?
        end
      end
    end

    class ImportTable
      def self.parse(http_resp)
        data = Types::ImportTableOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.import_table_description = ImportTableDescription.parse(map['ImportTableDescription']) unless map['ImportTableDescription'].nil?
        data
      end
    end

    class ImportTableDescription
      def self.parse(map)
        data = Types::ImportTableDescription.new
        data.import_arn = map['ImportArn'] unless map['ImportArn'].nil?
        data.import_status = map['ImportStatus'] unless map['ImportStatus'].nil?
        data.table_arn = map['TableArn'] unless map['TableArn'].nil?
        data.table_id = map['TableId'] unless map['TableId'].nil?
        data.client_token = map['ClientToken'] unless map['ClientToken'].nil?
        data.s3_bucket_source = S3BucketSource.parse(map['S3BucketSource']) unless map['S3BucketSource'].nil?
        data.error_count = map['ErrorCount'] unless map['ErrorCount'].nil?
        data.cloud_watch_log_group_arn = map['CloudWatchLogGroupArn'] unless map['CloudWatchLogGroupArn'].nil?
        data.input_format = map['InputFormat'] unless map['InputFormat'].nil?
        data.input_format_options = InputFormatOptions.parse(map['InputFormatOptions']) unless map['InputFormatOptions'].nil?
        data.input_compression_type = map['InputCompressionType'] unless map['InputCompressionType'].nil?
        data.table_creation_parameters = TableCreationParameters.parse(map['TableCreationParameters']) unless map['TableCreationParameters'].nil?
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        data.processed_size_bytes = map['ProcessedSizeBytes'] unless map['ProcessedSizeBytes'].nil?
        data.processed_item_count = map['ProcessedItemCount'] unless map['ProcessedItemCount'].nil?
        data.imported_item_count = map['ImportedItemCount'] unless map['ImportedItemCount'].nil?
        data.failure_code = map['FailureCode'] unless map['FailureCode'].nil?
        data.failure_message = map['FailureMessage'] unless map['FailureMessage'].nil?
        return data
      end
    end

    class IncrementalExportSpecification
      def self.parse(map)
        data = Types::IncrementalExportSpecification.new
        data.export_from_time = Time.at(map['ExportFromTime'].to_i) if map['ExportFromTime']
        data.export_to_time = Time.at(map['ExportToTime'].to_i) if map['ExportToTime']
        data.export_view_type = map['ExportViewType'] unless map['ExportViewType'].nil?
        return data
      end
    end

    # Error Parser for IndexNotFoundException
    class IndexNotFoundException
      def self.parse(http_resp, **kwargs)
        data = Types::IndexNotFoundException.new
        body = http_resp.body.read
        unless body.empty?
          map = Hearth::JSON.parse(body)
          data.message = map['message'] unless map['message'].nil?
        end
        Errors::IndexNotFoundException.new(data: data, **kwargs)
      end
    end

    class InputFormatOptions
      def self.parse(map)
        data = Types::InputFormatOptions.new
        data.csv = CsvOptions.parse(map['Csv']) unless map['Csv'].nil?
        return data
      end
    end

    # Error Parser for InternalServerError
    class InternalServerError
      def self.parse(http_resp, **kwargs)
        data = Types::InternalServerError.new
        body = http_resp.body.read
        unless body.empty?
          map = Hearth::JSON.parse(body)
          data.message = map['message'] unless map['message'].nil?
        end
        Errors::InternalServerError.new(data: data, **kwargs)
      end
    end

    # Error Parser for InvalidEndpointException
    class InvalidEndpointException
      def self.parse(http_resp, **kwargs)
        data = Types::InvalidEndpointException.new
        body = http_resp.body.read
        unless body.empty?
          map = Hearth::JSON.parse(body)
          data.message = map['Message'] unless map['Message'].nil?
        end
        Errors::InvalidEndpointException.new(data: data, **kwargs)
      end
    end

    # Error Parser for InvalidExportTimeException
    class InvalidExportTimeException
      def self.parse(http_resp, **kwargs)
        data = Types::InvalidExportTimeException.new
        body = http_resp.body.read
        unless body.empty?
          map = Hearth::JSON.parse(body)
          data.message = map['message'] unless map['message'].nil?
        end
        Errors::InvalidExportTimeException.new(data: data, **kwargs)
      end
    end

    # Error Parser for InvalidRestoreTimeException
    class InvalidRestoreTimeException
      def self.parse(http_resp, **kwargs)
        data = Types::InvalidRestoreTimeException.new
        body = http_resp.body.read
        unless body.empty?
          map = Hearth::JSON.parse(body)
          data.message = map['message'] unless map['message'].nil?
        end
        Errors::InvalidRestoreTimeException.new(data: data, **kwargs)
      end
    end

    class ItemCollectionKeyAttributeMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = AttributeValue.parse(value) unless value.nil?
        end
        data
      end
    end

    class ItemCollectionMetrics
      def self.parse(map)
        data = Types::ItemCollectionMetrics.new
        data.item_collection_key = ItemCollectionKeyAttributeMap.parse(map['ItemCollectionKey']) unless map['ItemCollectionKey'].nil?
        data.size_estimate_range_gb = ItemCollectionSizeEstimateRange.parse(map['SizeEstimateRangeGB']) unless map['SizeEstimateRangeGB'].nil?
        return data
      end
    end

    class ItemCollectionMetricsMultiple
      def self.parse(list)
        list.map do |value|
          ItemCollectionMetrics.parse(value) unless value.nil?
        end
      end
    end

    class ItemCollectionMetricsPerTable
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = ItemCollectionMetricsMultiple.parse(value) unless value.nil?
        end
        data
      end
    end

    class ItemCollectionSizeEstimateRange
      def self.parse(list)
        list.map do |value|
          Hearth::NumberHelper.deserialize(value) unless value.nil?
        end
      end
    end

    # Error Parser for ItemCollectionSizeLimitExceededException
    class ItemCollectionSizeLimitExceededException
      def self.parse(http_resp, **kwargs)
        data = Types::ItemCollectionSizeLimitExceededException.new
        body = http_resp.body.read
        unless body.empty?
          map = Hearth::JSON.parse(body)
          data.message = map['message'] unless map['message'].nil?
        end
        Errors::ItemCollectionSizeLimitExceededException.new(data: data, **kwargs)
      end
    end

    class ItemList
      def self.parse(list)
        list.map do |value|
          AttributeMap.parse(value) unless value.nil?
        end
      end
    end

    class ItemResponse
      def self.parse(map)
        data = Types::ItemResponse.new
        data.item = AttributeMap.parse(map['Item']) unless map['Item'].nil?
        return data
      end
    end

    class ItemResponseList
      def self.parse(list)
        list.map do |value|
          ItemResponse.parse(value) unless value.nil?
        end
      end
    end

    class Key
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = AttributeValue.parse(value) unless value.nil?
        end
        data
      end
    end

    class KeyList
      def self.parse(list)
        list.map do |value|
          Key.parse(value) unless value.nil?
        end
      end
    end

    class KeySchema
      def self.parse(list)
        list.map do |value|
          KeySchemaElement.parse(value) unless value.nil?
        end
      end
    end

    class KeySchemaElement
      def self.parse(map)
        data = Types::KeySchemaElement.new
        data.attribute_name = map['AttributeName'] unless map['AttributeName'].nil?
        data.key_type = map['KeyType'] unless map['KeyType'].nil?
        return data
      end
    end

    class KeysAndAttributes
      def self.parse(map)
        data = Types::KeysAndAttributes.new
        data.keys = KeyList.parse(map['Keys']) unless map['Keys'].nil?
        data.attributes_to_get = AttributeNameList.parse(map['AttributesToGet']) unless map['AttributesToGet'].nil?
        data.consistent_read = map['ConsistentRead'] unless map['ConsistentRead'].nil?
        data.projection_expression = map['ProjectionExpression'] unless map['ProjectionExpression'].nil?
        data.expression_attribute_names = ExpressionAttributeNameMap.parse(map['ExpressionAttributeNames']) unless map['ExpressionAttributeNames'].nil?
        return data
      end
    end

    class KinesisDataStreamDestination
      def self.parse(map)
        data = Types::KinesisDataStreamDestination.new
        data.stream_arn = map['StreamArn'] unless map['StreamArn'].nil?
        data.destination_status = map['DestinationStatus'] unless map['DestinationStatus'].nil?
        data.destination_status_description = map['DestinationStatusDescription'] unless map['DestinationStatusDescription'].nil?
        data.approximate_creation_date_time_precision = map['ApproximateCreationDateTimePrecision'] unless map['ApproximateCreationDateTimePrecision'].nil?
        return data
      end
    end

    class KinesisDataStreamDestinations
      def self.parse(list)
        list.map do |value|
          KinesisDataStreamDestination.parse(value) unless value.nil?
        end
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp, **kwargs)
        data = Types::LimitExceededException.new
        body = http_resp.body.read
        unless body.empty?
          map = Hearth::JSON.parse(body)
          data.message = map['message'] unless map['message'].nil?
        end
        Errors::LimitExceededException.new(data: data, **kwargs)
      end
    end

    class ListAttributeValue
      def self.parse(list)
        list.map do |value|
          AttributeValue.parse(value) unless value.nil?
        end
      end
    end

    class ListBackups
      def self.parse(http_resp)
        data = Types::ListBackupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.backup_summaries = BackupSummaries.parse(map['BackupSummaries']) unless map['BackupSummaries'].nil?
        data.last_evaluated_backup_arn = map['LastEvaluatedBackupArn'] unless map['LastEvaluatedBackupArn'].nil?
        data
      end
    end

    class ListContributorInsights
      def self.parse(http_resp)
        data = Types::ListContributorInsightsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.contributor_insights_summaries = ContributorInsightsSummaries.parse(map['ContributorInsightsSummaries']) unless map['ContributorInsightsSummaries'].nil?
        data.next_token = map['NextToken'] unless map['NextToken'].nil?
        data
      end
    end

    class ListExports
      def self.parse(http_resp)
        data = Types::ListExportsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.export_summaries = ExportSummaries.parse(map['ExportSummaries']) unless map['ExportSummaries'].nil?
        data.next_token = map['NextToken'] unless map['NextToken'].nil?
        data
      end
    end

    class ListGlobalTables
      def self.parse(http_resp)
        data = Types::ListGlobalTablesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.global_tables = GlobalTableList.parse(map['GlobalTables']) unless map['GlobalTables'].nil?
        data.last_evaluated_global_table_name = map['LastEvaluatedGlobalTableName'] unless map['LastEvaluatedGlobalTableName'].nil?
        data
      end
    end

    class ListImports
      def self.parse(http_resp)
        data = Types::ListImportsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.import_summary_list = ImportSummaryList.parse(map['ImportSummaryList']) unless map['ImportSummaryList'].nil?
        data.next_token = map['NextToken'] unless map['NextToken'].nil?
        data
      end
    end

    class ListTables
      def self.parse(http_resp)
        data = Types::ListTablesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.table_names = TableNameList.parse(map['TableNames']) unless map['TableNames'].nil?
        data.last_evaluated_table_name = map['LastEvaluatedTableName'] unless map['LastEvaluatedTableName'].nil?
        data
      end
    end

    class ListTagsOfResource
      def self.parse(http_resp)
        data = Types::ListTagsOfResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.tags = TagList.parse(map['Tags']) unless map['Tags'].nil?
        data.next_token = map['NextToken'] unless map['NextToken'].nil?
        data
      end
    end

    class LocalSecondaryIndexDescription
      def self.parse(map)
        data = Types::LocalSecondaryIndexDescription.new
        data.index_name = map['IndexName'] unless map['IndexName'].nil?
        data.key_schema = KeySchema.parse(map['KeySchema']) unless map['KeySchema'].nil?
        data.projection = Projection.parse(map['Projection']) unless map['Projection'].nil?
        data.index_size_bytes = map['IndexSizeBytes'] unless map['IndexSizeBytes'].nil?
        data.item_count = map['ItemCount'] unless map['ItemCount'].nil?
        data.index_arn = map['IndexArn'] unless map['IndexArn'].nil?
        return data
      end
    end

    class LocalSecondaryIndexDescriptionList
      def self.parse(list)
        list.map do |value|
          LocalSecondaryIndexDescription.parse(value) unless value.nil?
        end
      end
    end

    class LocalSecondaryIndexInfo
      def self.parse(map)
        data = Types::LocalSecondaryIndexInfo.new
        data.index_name = map['IndexName'] unless map['IndexName'].nil?
        data.key_schema = KeySchema.parse(map['KeySchema']) unless map['KeySchema'].nil?
        data.projection = Projection.parse(map['Projection']) unless map['Projection'].nil?
        return data
      end
    end

    class LocalSecondaryIndexes
      def self.parse(list)
        list.map do |value|
          LocalSecondaryIndexInfo.parse(value) unless value.nil?
        end
      end
    end

    class MapAttributeValue
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = AttributeValue.parse(value) unless value.nil?
        end
        data
      end
    end

    class NonKeyAttributeNameList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class NumberSetAttributeValue
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class PartiQLBatchResponse
      def self.parse(list)
        list.map do |value|
          BatchStatementResponse.parse(value) unless value.nil?
        end
      end
    end

    class PointInTimeRecoveryDescription
      def self.parse(map)
        data = Types::PointInTimeRecoveryDescription.new
        data.point_in_time_recovery_status = map['PointInTimeRecoveryStatus'] unless map['PointInTimeRecoveryStatus'].nil?
        data.earliest_restorable_date_time = Time.at(map['EarliestRestorableDateTime'].to_i) if map['EarliestRestorableDateTime']
        data.latest_restorable_date_time = Time.at(map['LatestRestorableDateTime'].to_i) if map['LatestRestorableDateTime']
        return data
      end
    end

    # Error Parser for PointInTimeRecoveryUnavailableException
    class PointInTimeRecoveryUnavailableException
      def self.parse(http_resp, **kwargs)
        data = Types::PointInTimeRecoveryUnavailableException.new
        body = http_resp.body.read
        unless body.empty?
          map = Hearth::JSON.parse(body)
          data.message = map['message'] unless map['message'].nil?
        end
        Errors::PointInTimeRecoveryUnavailableException.new(data: data, **kwargs)
      end
    end

    class Projection
      def self.parse(map)
        data = Types::Projection.new
        data.projection_type = map['ProjectionType'] unless map['ProjectionType'].nil?
        data.non_key_attributes = NonKeyAttributeNameList.parse(map['NonKeyAttributes']) unless map['NonKeyAttributes'].nil?
        return data
      end
    end

    class ProvisionedThroughput
      def self.parse(map)
        data = Types::ProvisionedThroughput.new
        data.read_capacity_units = map['ReadCapacityUnits'] unless map['ReadCapacityUnits'].nil?
        data.write_capacity_units = map['WriteCapacityUnits'] unless map['WriteCapacityUnits'].nil?
        return data
      end
    end

    class ProvisionedThroughputDescription
      def self.parse(map)
        data = Types::ProvisionedThroughputDescription.new
        data.last_increase_date_time = Time.at(map['LastIncreaseDateTime'].to_i) if map['LastIncreaseDateTime']
        data.last_decrease_date_time = Time.at(map['LastDecreaseDateTime'].to_i) if map['LastDecreaseDateTime']
        data.number_of_decreases_today = map['NumberOfDecreasesToday'] unless map['NumberOfDecreasesToday'].nil?
        data.read_capacity_units = map['ReadCapacityUnits'] unless map['ReadCapacityUnits'].nil?
        data.write_capacity_units = map['WriteCapacityUnits'] unless map['WriteCapacityUnits'].nil?
        return data
      end
    end

    # Error Parser for ProvisionedThroughputExceededException
    class ProvisionedThroughputExceededException
      def self.parse(http_resp, **kwargs)
        data = Types::ProvisionedThroughputExceededException.new
        body = http_resp.body.read
        unless body.empty?
          map = Hearth::JSON.parse(body)
          data.message = map['message'] unless map['message'].nil?
        end
        Errors::ProvisionedThroughputExceededException.new(data: data, **kwargs)
      end
    end

    class ProvisionedThroughputOverride
      def self.parse(map)
        data = Types::ProvisionedThroughputOverride.new
        data.read_capacity_units = map['ReadCapacityUnits'] unless map['ReadCapacityUnits'].nil?
        return data
      end
    end

    class PutItem
      def self.parse(http_resp)
        data = Types::PutItemOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.attributes = AttributeMap.parse(map['Attributes']) unless map['Attributes'].nil?
        data.consumed_capacity = ConsumedCapacity.parse(map['ConsumedCapacity']) unless map['ConsumedCapacity'].nil?
        data.item_collection_metrics = ItemCollectionMetrics.parse(map['ItemCollectionMetrics']) unless map['ItemCollectionMetrics'].nil?
        data
      end
    end

    class PutItemInputAttributeMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = AttributeValue.parse(value) unless value.nil?
        end
        data
      end
    end

    class PutRequest
      def self.parse(map)
        data = Types::PutRequest.new
        data.item = PutItemInputAttributeMap.parse(map['Item']) unless map['Item'].nil?
        return data
      end
    end

    class Query
      def self.parse(http_resp)
        data = Types::QueryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.items = ItemList.parse(map['Items']) unless map['Items'].nil?
        data.count = map['Count'] unless map['Count'].nil?
        data.scanned_count = map['ScannedCount'] unless map['ScannedCount'].nil?
        data.last_evaluated_key = Key.parse(map['LastEvaluatedKey']) unless map['LastEvaluatedKey'].nil?
        data.consumed_capacity = ConsumedCapacity.parse(map['ConsumedCapacity']) unless map['ConsumedCapacity'].nil?
        data
      end
    end

    class Replica
      def self.parse(map)
        data = Types::Replica.new
        data.region_name = map['RegionName'] unless map['RegionName'].nil?
        return data
      end
    end

    # Error Parser for ReplicaAlreadyExistsException
    class ReplicaAlreadyExistsException
      def self.parse(http_resp, **kwargs)
        data = Types::ReplicaAlreadyExistsException.new
        body = http_resp.body.read
        unless body.empty?
          map = Hearth::JSON.parse(body)
          data.message = map['message'] unless map['message'].nil?
        end
        Errors::ReplicaAlreadyExistsException.new(data: data, **kwargs)
      end
    end

    class ReplicaAutoScalingDescription
      def self.parse(map)
        data = Types::ReplicaAutoScalingDescription.new
        data.region_name = map['RegionName'] unless map['RegionName'].nil?
        data.global_secondary_indexes = ReplicaGlobalSecondaryIndexAutoScalingDescriptionList.parse(map['GlobalSecondaryIndexes']) unless map['GlobalSecondaryIndexes'].nil?
        data.replica_provisioned_read_capacity_auto_scaling_settings = AutoScalingSettingsDescription.parse(map['ReplicaProvisionedReadCapacityAutoScalingSettings']) unless map['ReplicaProvisionedReadCapacityAutoScalingSettings'].nil?
        data.replica_provisioned_write_capacity_auto_scaling_settings = AutoScalingSettingsDescription.parse(map['ReplicaProvisionedWriteCapacityAutoScalingSettings']) unless map['ReplicaProvisionedWriteCapacityAutoScalingSettings'].nil?
        data.replica_status = map['ReplicaStatus'] unless map['ReplicaStatus'].nil?
        return data
      end
    end

    class ReplicaAutoScalingDescriptionList
      def self.parse(list)
        list.map do |value|
          ReplicaAutoScalingDescription.parse(value) unless value.nil?
        end
      end
    end

    class ReplicaDescription
      def self.parse(map)
        data = Types::ReplicaDescription.new
        data.region_name = map['RegionName'] unless map['RegionName'].nil?
        data.replica_status = map['ReplicaStatus'] unless map['ReplicaStatus'].nil?
        data.replica_status_description = map['ReplicaStatusDescription'] unless map['ReplicaStatusDescription'].nil?
        data.replica_status_percent_progress = map['ReplicaStatusPercentProgress'] unless map['ReplicaStatusPercentProgress'].nil?
        data.kms_master_key_id = map['KMSMasterKeyId'] unless map['KMSMasterKeyId'].nil?
        data.provisioned_throughput_override = ProvisionedThroughputOverride.parse(map['ProvisionedThroughputOverride']) unless map['ProvisionedThroughputOverride'].nil?
        data.global_secondary_indexes = ReplicaGlobalSecondaryIndexDescriptionList.parse(map['GlobalSecondaryIndexes']) unless map['GlobalSecondaryIndexes'].nil?
        data.replica_inaccessible_date_time = Time.at(map['ReplicaInaccessibleDateTime'].to_i) if map['ReplicaInaccessibleDateTime']
        data.replica_table_class_summary = TableClassSummary.parse(map['ReplicaTableClassSummary']) unless map['ReplicaTableClassSummary'].nil?
        return data
      end
    end

    class ReplicaDescriptionList
      def self.parse(list)
        list.map do |value|
          ReplicaDescription.parse(value) unless value.nil?
        end
      end
    end

    class ReplicaGlobalSecondaryIndexAutoScalingDescription
      def self.parse(map)
        data = Types::ReplicaGlobalSecondaryIndexAutoScalingDescription.new
        data.index_name = map['IndexName'] unless map['IndexName'].nil?
        data.index_status = map['IndexStatus'] unless map['IndexStatus'].nil?
        data.provisioned_read_capacity_auto_scaling_settings = AutoScalingSettingsDescription.parse(map['ProvisionedReadCapacityAutoScalingSettings']) unless map['ProvisionedReadCapacityAutoScalingSettings'].nil?
        data.provisioned_write_capacity_auto_scaling_settings = AutoScalingSettingsDescription.parse(map['ProvisionedWriteCapacityAutoScalingSettings']) unless map['ProvisionedWriteCapacityAutoScalingSettings'].nil?
        return data
      end
    end

    class ReplicaGlobalSecondaryIndexAutoScalingDescriptionList
      def self.parse(list)
        list.map do |value|
          ReplicaGlobalSecondaryIndexAutoScalingDescription.parse(value) unless value.nil?
        end
      end
    end

    class ReplicaGlobalSecondaryIndexDescription
      def self.parse(map)
        data = Types::ReplicaGlobalSecondaryIndexDescription.new
        data.index_name = map['IndexName'] unless map['IndexName'].nil?
        data.provisioned_throughput_override = ProvisionedThroughputOverride.parse(map['ProvisionedThroughputOverride']) unless map['ProvisionedThroughputOverride'].nil?
        return data
      end
    end

    class ReplicaGlobalSecondaryIndexDescriptionList
      def self.parse(list)
        list.map do |value|
          ReplicaGlobalSecondaryIndexDescription.parse(value) unless value.nil?
        end
      end
    end

    class ReplicaGlobalSecondaryIndexSettingsDescription
      def self.parse(map)
        data = Types::ReplicaGlobalSecondaryIndexSettingsDescription.new
        data.index_name = map['IndexName'] unless map['IndexName'].nil?
        data.index_status = map['IndexStatus'] unless map['IndexStatus'].nil?
        data.provisioned_read_capacity_units = map['ProvisionedReadCapacityUnits'] unless map['ProvisionedReadCapacityUnits'].nil?
        data.provisioned_read_capacity_auto_scaling_settings = AutoScalingSettingsDescription.parse(map['ProvisionedReadCapacityAutoScalingSettings']) unless map['ProvisionedReadCapacityAutoScalingSettings'].nil?
        data.provisioned_write_capacity_units = map['ProvisionedWriteCapacityUnits'] unless map['ProvisionedWriteCapacityUnits'].nil?
        data.provisioned_write_capacity_auto_scaling_settings = AutoScalingSettingsDescription.parse(map['ProvisionedWriteCapacityAutoScalingSettings']) unless map['ProvisionedWriteCapacityAutoScalingSettings'].nil?
        return data
      end
    end

    class ReplicaGlobalSecondaryIndexSettingsDescriptionList
      def self.parse(list)
        list.map do |value|
          ReplicaGlobalSecondaryIndexSettingsDescription.parse(value) unless value.nil?
        end
      end
    end

    class ReplicaList
      def self.parse(list)
        list.map do |value|
          Replica.parse(value) unless value.nil?
        end
      end
    end

    # Error Parser for ReplicaNotFoundException
    class ReplicaNotFoundException
      def self.parse(http_resp, **kwargs)
        data = Types::ReplicaNotFoundException.new
        body = http_resp.body.read
        unless body.empty?
          map = Hearth::JSON.parse(body)
          data.message = map['message'] unless map['message'].nil?
        end
        Errors::ReplicaNotFoundException.new(data: data, **kwargs)
      end
    end

    class ReplicaSettingsDescription
      def self.parse(map)
        data = Types::ReplicaSettingsDescription.new
        data.region_name = map['RegionName'] unless map['RegionName'].nil?
        data.replica_status = map['ReplicaStatus'] unless map['ReplicaStatus'].nil?
        data.replica_billing_mode_summary = BillingModeSummary.parse(map['ReplicaBillingModeSummary']) unless map['ReplicaBillingModeSummary'].nil?
        data.replica_provisioned_read_capacity_units = map['ReplicaProvisionedReadCapacityUnits'] unless map['ReplicaProvisionedReadCapacityUnits'].nil?
        data.replica_provisioned_read_capacity_auto_scaling_settings = AutoScalingSettingsDescription.parse(map['ReplicaProvisionedReadCapacityAutoScalingSettings']) unless map['ReplicaProvisionedReadCapacityAutoScalingSettings'].nil?
        data.replica_provisioned_write_capacity_units = map['ReplicaProvisionedWriteCapacityUnits'] unless map['ReplicaProvisionedWriteCapacityUnits'].nil?
        data.replica_provisioned_write_capacity_auto_scaling_settings = AutoScalingSettingsDescription.parse(map['ReplicaProvisionedWriteCapacityAutoScalingSettings']) unless map['ReplicaProvisionedWriteCapacityAutoScalingSettings'].nil?
        data.replica_global_secondary_index_settings = ReplicaGlobalSecondaryIndexSettingsDescriptionList.parse(map['ReplicaGlobalSecondaryIndexSettings']) unless map['ReplicaGlobalSecondaryIndexSettings'].nil?
        data.replica_table_class_summary = TableClassSummary.parse(map['ReplicaTableClassSummary']) unless map['ReplicaTableClassSummary'].nil?
        return data
      end
    end

    class ReplicaSettingsDescriptionList
      def self.parse(list)
        list.map do |value|
          ReplicaSettingsDescription.parse(value) unless value.nil?
        end
      end
    end

    # Error Parser for RequestLimitExceeded
    class RequestLimitExceeded
      def self.parse(http_resp, **kwargs)
        data = Types::RequestLimitExceeded.new
        body = http_resp.body.read
        unless body.empty?
          map = Hearth::JSON.parse(body)
          data.message = map['message'] unless map['message'].nil?
        end
        Errors::RequestLimitExceeded.new(data: data, **kwargs)
      end
    end

    # Error Parser for ResourceInUseException
    class ResourceInUseException
      def self.parse(http_resp, **kwargs)
        data = Types::ResourceInUseException.new
        body = http_resp.body.read
        unless body.empty?
          map = Hearth::JSON.parse(body)
          data.message = map['message'] unless map['message'].nil?
        end
        Errors::ResourceInUseException.new(data: data, **kwargs)
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp, **kwargs)
        data = Types::ResourceNotFoundException.new
        body = http_resp.body.read
        unless body.empty?
          map = Hearth::JSON.parse(body)
          data.message = map['message'] unless map['message'].nil?
        end
        Errors::ResourceNotFoundException.new(data: data, **kwargs)
      end
    end

    class RestoreSummary
      def self.parse(map)
        data = Types::RestoreSummary.new
        data.source_backup_arn = map['SourceBackupArn'] unless map['SourceBackupArn'].nil?
        data.source_table_arn = map['SourceTableArn'] unless map['SourceTableArn'].nil?
        data.restore_date_time = Time.at(map['RestoreDateTime'].to_i) if map['RestoreDateTime']
        data.restore_in_progress = map['RestoreInProgress'] unless map['RestoreInProgress'].nil?
        return data
      end
    end

    class RestoreTableFromBackup
      def self.parse(http_resp)
        data = Types::RestoreTableFromBackupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.table_description = TableDescription.parse(map['TableDescription']) unless map['TableDescription'].nil?
        data
      end
    end

    class RestoreTableToPointInTime
      def self.parse(http_resp)
        data = Types::RestoreTableToPointInTimeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.table_description = TableDescription.parse(map['TableDescription']) unless map['TableDescription'].nil?
        data
      end
    end

    class S3BucketSource
      def self.parse(map)
        data = Types::S3BucketSource.new
        data.s3_bucket_owner = map['S3BucketOwner'] unless map['S3BucketOwner'].nil?
        data.s3_bucket = map['S3Bucket'] unless map['S3Bucket'].nil?
        data.s3_key_prefix = map['S3KeyPrefix'] unless map['S3KeyPrefix'].nil?
        return data
      end
    end

    class SSEDescription
      def self.parse(map)
        data = Types::SSEDescription.new
        data.status = map['Status'] unless map['Status'].nil?
        data.sse_type = map['SSEType'] unless map['SSEType'].nil?
        data.kms_master_key_arn = map['KMSMasterKeyArn'] unless map['KMSMasterKeyArn'].nil?
        data.inaccessible_encryption_date_time = Time.at(map['InaccessibleEncryptionDateTime'].to_i) if map['InaccessibleEncryptionDateTime']
        return data
      end
    end

    class SSESpecification
      def self.parse(map)
        data = Types::SSESpecification.new
        data.enabled = map['Enabled'] unless map['Enabled'].nil?
        data.sse_type = map['SSEType'] unless map['SSEType'].nil?
        data.kms_master_key_id = map['KMSMasterKeyId'] unless map['KMSMasterKeyId'].nil?
        return data
      end
    end

    class Scan
      def self.parse(http_resp)
        data = Types::ScanOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.items = ItemList.parse(map['Items']) unless map['Items'].nil?
        data.count = map['Count'] unless map['Count'].nil?
        data.scanned_count = map['ScannedCount'] unless map['ScannedCount'].nil?
        data.last_evaluated_key = Key.parse(map['LastEvaluatedKey']) unless map['LastEvaluatedKey'].nil?
        data.consumed_capacity = ConsumedCapacity.parse(map['ConsumedCapacity']) unless map['ConsumedCapacity'].nil?
        data
      end
    end

    class SecondaryIndexesCapacityMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Capacity.parse(value) unless value.nil?
        end
        data
      end
    end

    class SourceTableDetails
      def self.parse(map)
        data = Types::SourceTableDetails.new
        data.table_name = map['TableName'] unless map['TableName'].nil?
        data.table_id = map['TableId'] unless map['TableId'].nil?
        data.table_arn = map['TableArn'] unless map['TableArn'].nil?
        data.table_size_bytes = map['TableSizeBytes'] unless map['TableSizeBytes'].nil?
        data.key_schema = KeySchema.parse(map['KeySchema']) unless map['KeySchema'].nil?
        data.table_creation_date_time = Time.at(map['TableCreationDateTime'].to_i) if map['TableCreationDateTime']
        data.provisioned_throughput = ProvisionedThroughput.parse(map['ProvisionedThroughput']) unless map['ProvisionedThroughput'].nil?
        data.item_count = map['ItemCount'] unless map['ItemCount'].nil?
        data.billing_mode = map['BillingMode'] unless map['BillingMode'].nil?
        return data
      end
    end

    class SourceTableFeatureDetails
      def self.parse(map)
        data = Types::SourceTableFeatureDetails.new
        data.local_secondary_indexes = LocalSecondaryIndexes.parse(map['LocalSecondaryIndexes']) unless map['LocalSecondaryIndexes'].nil?
        data.global_secondary_indexes = GlobalSecondaryIndexes.parse(map['GlobalSecondaryIndexes']) unless map['GlobalSecondaryIndexes'].nil?
        data.stream_description = StreamSpecification.parse(map['StreamDescription']) unless map['StreamDescription'].nil?
        data.time_to_live_description = TimeToLiveDescription.parse(map['TimeToLiveDescription']) unless map['TimeToLiveDescription'].nil?
        data.sse_description = SSEDescription.parse(map['SSEDescription']) unless map['SSEDescription'].nil?
        return data
      end
    end

    class StreamSpecification
      def self.parse(map)
        data = Types::StreamSpecification.new
        data.stream_enabled = map['StreamEnabled'] unless map['StreamEnabled'].nil?
        data.stream_view_type = map['StreamViewType'] unless map['StreamViewType'].nil?
        return data
      end
    end

    class StringSetAttributeValue
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Error Parser for TableAlreadyExistsException
    class TableAlreadyExistsException
      def self.parse(http_resp, **kwargs)
        data = Types::TableAlreadyExistsException.new
        body = http_resp.body.read
        unless body.empty?
          map = Hearth::JSON.parse(body)
          data.message = map['message'] unless map['message'].nil?
        end
        Errors::TableAlreadyExistsException.new(data: data, **kwargs)
      end
    end

    class TableAutoScalingDescription
      def self.parse(map)
        data = Types::TableAutoScalingDescription.new
        data.table_name = map['TableName'] unless map['TableName'].nil?
        data.table_status = map['TableStatus'] unless map['TableStatus'].nil?
        data.replicas = ReplicaAutoScalingDescriptionList.parse(map['Replicas']) unless map['Replicas'].nil?
        return data
      end
    end

    class TableClassSummary
      def self.parse(map)
        data = Types::TableClassSummary.new
        data.table_class = map['TableClass'] unless map['TableClass'].nil?
        data.last_update_date_time = Time.at(map['LastUpdateDateTime'].to_i) if map['LastUpdateDateTime']
        return data
      end
    end

    class TableCreationParameters
      def self.parse(map)
        data = Types::TableCreationParameters.new
        data.table_name = map['TableName'] unless map['TableName'].nil?
        data.attribute_definitions = AttributeDefinitions.parse(map['AttributeDefinitions']) unless map['AttributeDefinitions'].nil?
        data.key_schema = KeySchema.parse(map['KeySchema']) unless map['KeySchema'].nil?
        data.billing_mode = map['BillingMode'] unless map['BillingMode'].nil?
        data.provisioned_throughput = ProvisionedThroughput.parse(map['ProvisionedThroughput']) unless map['ProvisionedThroughput'].nil?
        data.sse_specification = SSESpecification.parse(map['SSESpecification']) unless map['SSESpecification'].nil?
        data.global_secondary_indexes = GlobalSecondaryIndexList.parse(map['GlobalSecondaryIndexes']) unless map['GlobalSecondaryIndexes'].nil?
        return data
      end
    end

    class TableDescription
      def self.parse(map)
        data = Types::TableDescription.new
        data.attribute_definitions = AttributeDefinitions.parse(map['AttributeDefinitions']) unless map['AttributeDefinitions'].nil?
        data.table_name = map['TableName'] unless map['TableName'].nil?
        data.key_schema = KeySchema.parse(map['KeySchema']) unless map['KeySchema'].nil?
        data.table_status = map['TableStatus'] unless map['TableStatus'].nil?
        data.creation_date_time = Time.at(map['CreationDateTime'].to_i) if map['CreationDateTime']
        data.provisioned_throughput = ProvisionedThroughputDescription.parse(map['ProvisionedThroughput']) unless map['ProvisionedThroughput'].nil?
        data.table_size_bytes = map['TableSizeBytes'] unless map['TableSizeBytes'].nil?
        data.item_count = map['ItemCount'] unless map['ItemCount'].nil?
        data.table_arn = map['TableArn'] unless map['TableArn'].nil?
        data.table_id = map['TableId'] unless map['TableId'].nil?
        data.billing_mode_summary = BillingModeSummary.parse(map['BillingModeSummary']) unless map['BillingModeSummary'].nil?
        data.local_secondary_indexes = LocalSecondaryIndexDescriptionList.parse(map['LocalSecondaryIndexes']) unless map['LocalSecondaryIndexes'].nil?
        data.global_secondary_indexes = GlobalSecondaryIndexDescriptionList.parse(map['GlobalSecondaryIndexes']) unless map['GlobalSecondaryIndexes'].nil?
        data.stream_specification = StreamSpecification.parse(map['StreamSpecification']) unless map['StreamSpecification'].nil?
        data.latest_stream_label = map['LatestStreamLabel'] unless map['LatestStreamLabel'].nil?
        data.latest_stream_arn = map['LatestStreamArn'] unless map['LatestStreamArn'].nil?
        data.global_table_version = map['GlobalTableVersion'] unless map['GlobalTableVersion'].nil?
        data.replicas = ReplicaDescriptionList.parse(map['Replicas']) unless map['Replicas'].nil?
        data.restore_summary = RestoreSummary.parse(map['RestoreSummary']) unless map['RestoreSummary'].nil?
        data.sse_description = SSEDescription.parse(map['SSEDescription']) unless map['SSEDescription'].nil?
        data.archival_summary = ArchivalSummary.parse(map['ArchivalSummary']) unless map['ArchivalSummary'].nil?
        data.table_class_summary = TableClassSummary.parse(map['TableClassSummary']) unless map['TableClassSummary'].nil?
        data.deletion_protection_enabled = map['DeletionProtectionEnabled'] unless map['DeletionProtectionEnabled'].nil?
        return data
      end
    end

    # Error Parser for TableInUseException
    class TableInUseException
      def self.parse(http_resp, **kwargs)
        data = Types::TableInUseException.new
        body = http_resp.body.read
        unless body.empty?
          map = Hearth::JSON.parse(body)
          data.message = map['message'] unless map['message'].nil?
        end
        Errors::TableInUseException.new(data: data, **kwargs)
      end
    end

    class TableNameList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Error Parser for TableNotFoundException
    class TableNotFoundException
      def self.parse(http_resp, **kwargs)
        data = Types::TableNotFoundException.new
        body = http_resp.body.read
        unless body.empty?
          map = Hearth::JSON.parse(body)
          data.message = map['message'] unless map['message'].nil?
        end
        Errors::TableNotFoundException.new(data: data, **kwargs)
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.key = map['Key'] unless map['Key'].nil?
        data.value = map['Value'] unless map['Value'].nil?
        return data
      end
    end

    class TagList
      def self.parse(list)
        list.map do |value|
          Tag.parse(value) unless value.nil?
        end
      end
    end

    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data
      end
    end

    class TimeToLiveDescription
      def self.parse(map)
        data = Types::TimeToLiveDescription.new
        data.time_to_live_status = map['TimeToLiveStatus'] unless map['TimeToLiveStatus'].nil?
        data.attribute_name = map['AttributeName'] unless map['AttributeName'].nil?
        return data
      end
    end

    class TimeToLiveSpecification
      def self.parse(map)
        data = Types::TimeToLiveSpecification.new
        data.enabled = map['Enabled'] unless map['Enabled'].nil?
        data.attribute_name = map['AttributeName'] unless map['AttributeName'].nil?
        return data
      end
    end

    class TransactGetItems
      def self.parse(http_resp)
        data = Types::TransactGetItemsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.consumed_capacity = ConsumedCapacityMultiple.parse(map['ConsumedCapacity']) unless map['ConsumedCapacity'].nil?
        data.responses = ItemResponseList.parse(map['Responses']) unless map['Responses'].nil?
        data
      end
    end

    class TransactWriteItems
      def self.parse(http_resp)
        data = Types::TransactWriteItemsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.consumed_capacity = ConsumedCapacityMultiple.parse(map['ConsumedCapacity']) unless map['ConsumedCapacity'].nil?
        data.item_collection_metrics = ItemCollectionMetricsPerTable.parse(map['ItemCollectionMetrics']) unless map['ItemCollectionMetrics'].nil?
        data
      end
    end

    # Error Parser for TransactionCanceledException
    class TransactionCanceledException
      def self.parse(http_resp, **kwargs)
        data = Types::TransactionCanceledException.new
        body = http_resp.body.read
        unless body.empty?
          map = Hearth::JSON.parse(body)
          data.message = map['Message'] unless map['Message'].nil?
          data.cancellation_reasons = CancellationReasonList.parse(map['CancellationReasons']) unless map['CancellationReasons'].nil?
        end
        Errors::TransactionCanceledException.new(data: data, **kwargs)
      end
    end

    # Error Parser for TransactionConflictException
    class TransactionConflictException
      def self.parse(http_resp, **kwargs)
        data = Types::TransactionConflictException.new
        body = http_resp.body.read
        unless body.empty?
          map = Hearth::JSON.parse(body)
          data.message = map['message'] unless map['message'].nil?
        end
        Errors::TransactionConflictException.new(data: data, **kwargs)
      end
    end

    # Error Parser for TransactionInProgressException
    class TransactionInProgressException
      def self.parse(http_resp, **kwargs)
        data = Types::TransactionInProgressException.new
        body = http_resp.body.read
        unless body.empty?
          map = Hearth::JSON.parse(body)
          data.message = map['Message'] unless map['Message'].nil?
        end
        Errors::TransactionInProgressException.new(data: data, **kwargs)
      end
    end

    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data
      end
    end

    class UpdateContinuousBackups
      def self.parse(http_resp)
        data = Types::UpdateContinuousBackupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.continuous_backups_description = ContinuousBackupsDescription.parse(map['ContinuousBackupsDescription']) unless map['ContinuousBackupsDescription'].nil?
        data
      end
    end

    class UpdateContributorInsights
      def self.parse(http_resp)
        data = Types::UpdateContributorInsightsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.table_name = map['TableName'] unless map['TableName'].nil?
        data.index_name = map['IndexName'] unless map['IndexName'].nil?
        data.contributor_insights_status = map['ContributorInsightsStatus'] unless map['ContributorInsightsStatus'].nil?
        data
      end
    end

    class UpdateGlobalTable
      def self.parse(http_resp)
        data = Types::UpdateGlobalTableOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.global_table_description = GlobalTableDescription.parse(map['GlobalTableDescription']) unless map['GlobalTableDescription'].nil?
        data
      end
    end

    class UpdateGlobalTableSettings
      def self.parse(http_resp)
        data = Types::UpdateGlobalTableSettingsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.global_table_name = map['GlobalTableName'] unless map['GlobalTableName'].nil?
        data.replica_settings = ReplicaSettingsDescriptionList.parse(map['ReplicaSettings']) unless map['ReplicaSettings'].nil?
        data
      end
    end

    class UpdateItem
      def self.parse(http_resp)
        data = Types::UpdateItemOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.attributes = AttributeMap.parse(map['Attributes']) unless map['Attributes'].nil?
        data.consumed_capacity = ConsumedCapacity.parse(map['ConsumedCapacity']) unless map['ConsumedCapacity'].nil?
        data.item_collection_metrics = ItemCollectionMetrics.parse(map['ItemCollectionMetrics']) unless map['ItemCollectionMetrics'].nil?
        data
      end
    end

    class UpdateKinesisStreamingConfiguration
      def self.parse(map)
        data = Types::UpdateKinesisStreamingConfiguration.new
        data.approximate_creation_date_time_precision = map['ApproximateCreationDateTimePrecision'] unless map['ApproximateCreationDateTimePrecision'].nil?
        return data
      end
    end

    class UpdateKinesisStreamingDestination
      def self.parse(http_resp)
        data = Types::UpdateKinesisStreamingDestinationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.table_name = map['TableName'] unless map['TableName'].nil?
        data.stream_arn = map['StreamArn'] unless map['StreamArn'].nil?
        data.destination_status = map['DestinationStatus'] unless map['DestinationStatus'].nil?
        data.update_kinesis_streaming_configuration = UpdateKinesisStreamingConfiguration.parse(map['UpdateKinesisStreamingConfiguration']) unless map['UpdateKinesisStreamingConfiguration'].nil?
        data
      end
    end

    class UpdateTable
      def self.parse(http_resp)
        data = Types::UpdateTableOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.table_description = TableDescription.parse(map['TableDescription']) unless map['TableDescription'].nil?
        data
      end
    end

    class UpdateTableReplicaAutoScaling
      def self.parse(http_resp)
        data = Types::UpdateTableReplicaAutoScalingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.table_auto_scaling_description = TableAutoScalingDescription.parse(map['TableAutoScalingDescription']) unless map['TableAutoScalingDescription'].nil?
        data
      end
    end

    class UpdateTimeToLive
      def self.parse(http_resp)
        data = Types::UpdateTimeToLiveOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.parse(body)
        data.time_to_live_specification = TimeToLiveSpecification.parse(map['TimeToLiveSpecification']) unless map['TimeToLiveSpecification'].nil?
        data
      end
    end

    class WriteRequest
      def self.parse(map)
        data = Types::WriteRequest.new
        data.put_request = PutRequest.parse(map['PutRequest']) unless map['PutRequest'].nil?
        data.delete_request = DeleteRequest.parse(map['DeleteRequest']) unless map['DeleteRequest'].nil?
        return data
      end
    end

    class WriteRequests
      def self.parse(list)
        list.map do |value|
          WriteRequest.parse(value) unless value.nil?
        end
      end
    end
  end
end
