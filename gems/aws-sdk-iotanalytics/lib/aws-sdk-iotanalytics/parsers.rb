# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::IoTAnalytics
  module Parsers

    # Operation Parser for BatchPutMessage
    class BatchPutMessage
      def self.parse(http_resp)
        data = Types::BatchPutMessageOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.batch_put_message_error_entries = (BatchPutMessageErrorEntries.parse(map['batchPutMessageErrorEntries']) unless map['batchPutMessageErrorEntries'].nil?)
        data
      end
    end

    class BatchPutMessageErrorEntries
      def self.parse(list)
        data = []
        list.map do |value|
          data << BatchPutMessageErrorEntry.parse(value) unless value.nil?
        end
        data
      end
    end

    class BatchPutMessageErrorEntry
      def self.parse(map)
        data = Types::BatchPutMessageErrorEntry.new
        data.message_id = map['messageId']
        data.error_code = map['errorCode']
        data.error_message = map['errorMessage']
        return data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ServiceUnavailableException
    class ServiceUnavailableException
      def self.parse(http_resp)
        data = Types::ServiceUnavailableException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InvalidRequestException
    class InvalidRequestException
      def self.parse(http_resp)
        data = Types::InvalidRequestException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InternalFailureException
    class InternalFailureException
      def self.parse(http_resp)
        data = Types::InternalFailureException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CancelPipelineReprocessing
    class CancelPipelineReprocessing
      def self.parse(http_resp)
        data = Types::CancelPipelineReprocessingOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for CreateChannel
    class CreateChannel
      def self.parse(http_resp)
        data = Types::CreateChannelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel_name = map['channelName']
        data.channel_arn = map['channelArn']
        data.retention_period = (RetentionPeriod.parse(map['retentionPeriod']) unless map['retentionPeriod'].nil?)
        data
      end
    end

    class RetentionPeriod
      def self.parse(map)
        data = Types::RetentionPeriod.new
        data.unlimited = map['unlimited']
        data.number_of_days = map['numberOfDays']
        return data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ResourceAlreadyExistsException
    class ResourceAlreadyExistsException
      def self.parse(http_resp)
        data = Types::ResourceAlreadyExistsException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.resource_id = map['resourceId']
        data.resource_arn = map['resourceArn']
        data
      end
    end

    # Operation Parser for CreateDataset
    class CreateDataset
      def self.parse(http_resp)
        data = Types::CreateDatasetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.dataset_name = map['datasetName']
        data.dataset_arn = map['datasetArn']
        data.retention_period = (RetentionPeriod.parse(map['retentionPeriod']) unless map['retentionPeriod'].nil?)
        data
      end
    end

    # Operation Parser for CreateDatasetContent
    class CreateDatasetContent
      def self.parse(http_resp)
        data = Types::CreateDatasetContentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.version_id = map['versionId']
        data
      end
    end

    # Operation Parser for CreateDatastore
    class CreateDatastore
      def self.parse(http_resp)
        data = Types::CreateDatastoreOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.datastore_name = map['datastoreName']
        data.datastore_arn = map['datastoreArn']
        data.retention_period = (RetentionPeriod.parse(map['retentionPeriod']) unless map['retentionPeriod'].nil?)
        data
      end
    end

    # Operation Parser for CreatePipeline
    class CreatePipeline
      def self.parse(http_resp)
        data = Types::CreatePipelineOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.pipeline_name = map['pipelineName']
        data.pipeline_arn = map['pipelineArn']
        data
      end
    end

    # Operation Parser for DeleteChannel
    class DeleteChannel
      def self.parse(http_resp)
        data = Types::DeleteChannelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteDataset
    class DeleteDataset
      def self.parse(http_resp)
        data = Types::DeleteDatasetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteDatasetContent
    class DeleteDatasetContent
      def self.parse(http_resp)
        data = Types::DeleteDatasetContentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteDatastore
    class DeleteDatastore
      def self.parse(http_resp)
        data = Types::DeleteDatastoreOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeletePipeline
    class DeletePipeline
      def self.parse(http_resp)
        data = Types::DeletePipelineOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DescribeChannel
    class DescribeChannel
      def self.parse(http_resp)
        data = Types::DescribeChannelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel = (Channel.parse(map['channel']) unless map['channel'].nil?)
        data.statistics = (ChannelStatistics.parse(map['statistics']) unless map['statistics'].nil?)
        data
      end
    end

    class ChannelStatistics
      def self.parse(map)
        data = Types::ChannelStatistics.new
        data.size = (EstimatedResourceSize.parse(map['size']) unless map['size'].nil?)
        return data
      end
    end

    class EstimatedResourceSize
      def self.parse(map)
        data = Types::EstimatedResourceSize.new
        data.estimated_size_in_bytes = Hearth::NumberHelper.deserialize(map['estimatedSizeInBytes'])
        data.estimated_on = Time.at(map['estimatedOn'].to_i) if map['estimatedOn']
        return data
      end
    end

    class Channel
      def self.parse(map)
        data = Types::Channel.new
        data.name = map['name']
        data.storage = (ChannelStorage.parse(map['storage']) unless map['storage'].nil?)
        data.arn = map['arn']
        data.status = map['status']
        data.retention_period = (RetentionPeriod.parse(map['retentionPeriod']) unless map['retentionPeriod'].nil?)
        data.creation_time = Time.at(map['creationTime'].to_i) if map['creationTime']
        data.last_update_time = Time.at(map['lastUpdateTime'].to_i) if map['lastUpdateTime']
        data.last_message_arrival_time = Time.at(map['lastMessageArrivalTime'].to_i) if map['lastMessageArrivalTime']
        return data
      end
    end

    class ChannelStorage
      def self.parse(map)
        data = Types::ChannelStorage.new
        data.service_managed_s3 = (ServiceManagedChannelS3Storage.parse(map['serviceManagedS3']) unless map['serviceManagedS3'].nil?)
        data.customer_managed_s3 = (CustomerManagedChannelS3Storage.parse(map['customerManagedS3']) unless map['customerManagedS3'].nil?)
        return data
      end
    end

    class CustomerManagedChannelS3Storage
      def self.parse(map)
        data = Types::CustomerManagedChannelS3Storage.new
        data.bucket = map['bucket']
        data.key_prefix = map['keyPrefix']
        data.role_arn = map['roleArn']
        return data
      end
    end

    class ServiceManagedChannelS3Storage
      def self.parse(map)
        data = Types::ServiceManagedChannelS3Storage.new
        return data
      end
    end

    # Operation Parser for DescribeDataset
    class DescribeDataset
      def self.parse(http_resp)
        data = Types::DescribeDatasetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.dataset = (Dataset.parse(map['dataset']) unless map['dataset'].nil?)
        data
      end
    end

    class Dataset
      def self.parse(map)
        data = Types::Dataset.new
        data.name = map['name']
        data.arn = map['arn']
        data.actions = (DatasetActions.parse(map['actions']) unless map['actions'].nil?)
        data.triggers = (DatasetTriggers.parse(map['triggers']) unless map['triggers'].nil?)
        data.content_delivery_rules = (DatasetContentDeliveryRules.parse(map['contentDeliveryRules']) unless map['contentDeliveryRules'].nil?)
        data.status = map['status']
        data.creation_time = Time.at(map['creationTime'].to_i) if map['creationTime']
        data.last_update_time = Time.at(map['lastUpdateTime'].to_i) if map['lastUpdateTime']
        data.retention_period = (RetentionPeriod.parse(map['retentionPeriod']) unless map['retentionPeriod'].nil?)
        data.versioning_configuration = (VersioningConfiguration.parse(map['versioningConfiguration']) unless map['versioningConfiguration'].nil?)
        data.late_data_rules = (LateDataRules.parse(map['lateDataRules']) unless map['lateDataRules'].nil?)
        return data
      end
    end

    class LateDataRules
      def self.parse(list)
        data = []
        list.map do |value|
          data << LateDataRule.parse(value) unless value.nil?
        end
        data
      end
    end

    class LateDataRule
      def self.parse(map)
        data = Types::LateDataRule.new
        data.rule_name = map['ruleName']
        data.rule_configuration = (LateDataRuleConfiguration.parse(map['ruleConfiguration']) unless map['ruleConfiguration'].nil?)
        return data
      end
    end

    class LateDataRuleConfiguration
      def self.parse(map)
        data = Types::LateDataRuleConfiguration.new
        data.delta_time_session_window_configuration = (DeltaTimeSessionWindowConfiguration.parse(map['deltaTimeSessionWindowConfiguration']) unless map['deltaTimeSessionWindowConfiguration'].nil?)
        return data
      end
    end

    class DeltaTimeSessionWindowConfiguration
      def self.parse(map)
        data = Types::DeltaTimeSessionWindowConfiguration.new
        data.timeout_in_minutes = map['timeoutInMinutes']
        return data
      end
    end

    class VersioningConfiguration
      def self.parse(map)
        data = Types::VersioningConfiguration.new
        data.unlimited = map['unlimited']
        data.max_versions = map['maxVersions']
        return data
      end
    end

    class DatasetContentDeliveryRules
      def self.parse(list)
        data = []
        list.map do |value|
          data << DatasetContentDeliveryRule.parse(value) unless value.nil?
        end
        data
      end
    end

    class DatasetContentDeliveryRule
      def self.parse(map)
        data = Types::DatasetContentDeliveryRule.new
        data.entry_name = map['entryName']
        data.destination = (DatasetContentDeliveryDestination.parse(map['destination']) unless map['destination'].nil?)
        return data
      end
    end

    class DatasetContentDeliveryDestination
      def self.parse(map)
        data = Types::DatasetContentDeliveryDestination.new
        data.iot_events_destination_configuration = (IotEventsDestinationConfiguration.parse(map['iotEventsDestinationConfiguration']) unless map['iotEventsDestinationConfiguration'].nil?)
        data.s3_destination_configuration = (S3DestinationConfiguration.parse(map['s3DestinationConfiguration']) unless map['s3DestinationConfiguration'].nil?)
        return data
      end
    end

    class S3DestinationConfiguration
      def self.parse(map)
        data = Types::S3DestinationConfiguration.new
        data.bucket = map['bucket']
        data.key = map['key']
        data.glue_configuration = (GlueConfiguration.parse(map['glueConfiguration']) unless map['glueConfiguration'].nil?)
        data.role_arn = map['roleArn']
        return data
      end
    end

    class GlueConfiguration
      def self.parse(map)
        data = Types::GlueConfiguration.new
        data.table_name = map['tableName']
        data.database_name = map['databaseName']
        return data
      end
    end

    class IotEventsDestinationConfiguration
      def self.parse(map)
        data = Types::IotEventsDestinationConfiguration.new
        data.input_name = map['inputName']
        data.role_arn = map['roleArn']
        return data
      end
    end

    class DatasetTriggers
      def self.parse(list)
        data = []
        list.map do |value|
          data << DatasetTrigger.parse(value) unless value.nil?
        end
        data
      end
    end

    class DatasetTrigger
      def self.parse(map)
        data = Types::DatasetTrigger.new
        data.schedule = (Schedule.parse(map['schedule']) unless map['schedule'].nil?)
        data.dataset = (TriggeringDataset.parse(map['dataset']) unless map['dataset'].nil?)
        return data
      end
    end

    class TriggeringDataset
      def self.parse(map)
        data = Types::TriggeringDataset.new
        data.name = map['name']
        return data
      end
    end

    class Schedule
      def self.parse(map)
        data = Types::Schedule.new
        data.expression = map['expression']
        return data
      end
    end

    class DatasetActions
      def self.parse(list)
        data = []
        list.map do |value|
          data << DatasetAction.parse(value) unless value.nil?
        end
        data
      end
    end

    class DatasetAction
      def self.parse(map)
        data = Types::DatasetAction.new
        data.action_name = map['actionName']
        data.query_action = (SqlQueryDatasetAction.parse(map['queryAction']) unless map['queryAction'].nil?)
        data.container_action = (ContainerDatasetAction.parse(map['containerAction']) unless map['containerAction'].nil?)
        return data
      end
    end

    class ContainerDatasetAction
      def self.parse(map)
        data = Types::ContainerDatasetAction.new
        data.image = map['image']
        data.execution_role_arn = map['executionRoleArn']
        data.resource_configuration = (ResourceConfiguration.parse(map['resourceConfiguration']) unless map['resourceConfiguration'].nil?)
        data.variables = (Variables.parse(map['variables']) unless map['variables'].nil?)
        return data
      end
    end

    class Variables
      def self.parse(list)
        data = []
        list.map do |value|
          data << Variable.parse(value) unless value.nil?
        end
        data
      end
    end

    class Variable
      def self.parse(map)
        data = Types::Variable.new
        data.name = map['name']
        data.string_value = map['stringValue']
        data.double_value = Hearth::NumberHelper.deserialize(map['doubleValue'])
        data.dataset_content_version_value = (DatasetContentVersionValue.parse(map['datasetContentVersionValue']) unless map['datasetContentVersionValue'].nil?)
        data.output_file_uri_value = (OutputFileUriValue.parse(map['outputFileUriValue']) unless map['outputFileUriValue'].nil?)
        return data
      end
    end

    class OutputFileUriValue
      def self.parse(map)
        data = Types::OutputFileUriValue.new
        data.file_name = map['fileName']
        return data
      end
    end

    class DatasetContentVersionValue
      def self.parse(map)
        data = Types::DatasetContentVersionValue.new
        data.dataset_name = map['datasetName']
        return data
      end
    end

    class ResourceConfiguration
      def self.parse(map)
        data = Types::ResourceConfiguration.new
        data.compute_type = map['computeType']
        data.volume_size_in_gb = map['volumeSizeInGB']
        return data
      end
    end

    class SqlQueryDatasetAction
      def self.parse(map)
        data = Types::SqlQueryDatasetAction.new
        data.sql_query = map['sqlQuery']
        data.filters = (QueryFilters.parse(map['filters']) unless map['filters'].nil?)
        return data
      end
    end

    class QueryFilters
      def self.parse(list)
        data = []
        list.map do |value|
          data << QueryFilter.parse(value) unless value.nil?
        end
        data
      end
    end

    class QueryFilter
      def self.parse(map)
        data = Types::QueryFilter.new
        data.delta_time = (DeltaTime.parse(map['deltaTime']) unless map['deltaTime'].nil?)
        return data
      end
    end

    class DeltaTime
      def self.parse(map)
        data = Types::DeltaTime.new
        data.offset_seconds = map['offsetSeconds']
        data.time_expression = map['timeExpression']
        return data
      end
    end

    # Operation Parser for DescribeDatastore
    class DescribeDatastore
      def self.parse(http_resp)
        data = Types::DescribeDatastoreOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.datastore = (Datastore.parse(map['datastore']) unless map['datastore'].nil?)
        data.statistics = (DatastoreStatistics.parse(map['statistics']) unless map['statistics'].nil?)
        data
      end
    end

    class DatastoreStatistics
      def self.parse(map)
        data = Types::DatastoreStatistics.new
        data.size = (EstimatedResourceSize.parse(map['size']) unless map['size'].nil?)
        return data
      end
    end

    class Datastore
      def self.parse(map)
        data = Types::Datastore.new
        data.name = map['name']
        data.storage = (DatastoreStorage.parse(map['storage']) unless map['storage'].nil?)
        data.arn = map['arn']
        data.status = map['status']
        data.retention_period = (RetentionPeriod.parse(map['retentionPeriod']) unless map['retentionPeriod'].nil?)
        data.creation_time = Time.at(map['creationTime'].to_i) if map['creationTime']
        data.last_update_time = Time.at(map['lastUpdateTime'].to_i) if map['lastUpdateTime']
        data.last_message_arrival_time = Time.at(map['lastMessageArrivalTime'].to_i) if map['lastMessageArrivalTime']
        data.file_format_configuration = (FileFormatConfiguration.parse(map['fileFormatConfiguration']) unless map['fileFormatConfiguration'].nil?)
        data.datastore_partitions = (DatastorePartitions.parse(map['datastorePartitions']) unless map['datastorePartitions'].nil?)
        return data
      end
    end

    class DatastorePartitions
      def self.parse(map)
        data = Types::DatastorePartitions.new
        data.partitions = (Partitions.parse(map['partitions']) unless map['partitions'].nil?)
        return data
      end
    end

    class Partitions
      def self.parse(list)
        data = []
        list.map do |value|
          data << DatastorePartition.parse(value) unless value.nil?
        end
        data
      end
    end

    class DatastorePartition
      def self.parse(map)
        data = Types::DatastorePartition.new
        data.attribute_partition = (Partition.parse(map['attributePartition']) unless map['attributePartition'].nil?)
        data.timestamp_partition = (TimestampPartition.parse(map['timestampPartition']) unless map['timestampPartition'].nil?)
        return data
      end
    end

    class TimestampPartition
      def self.parse(map)
        data = Types::TimestampPartition.new
        data.attribute_name = map['attributeName']
        data.timestamp_format = map['timestampFormat']
        return data
      end
    end

    class Partition
      def self.parse(map)
        data = Types::Partition.new
        data.attribute_name = map['attributeName']
        return data
      end
    end

    class FileFormatConfiguration
      def self.parse(map)
        data = Types::FileFormatConfiguration.new
        data.json_configuration = (JsonConfiguration.parse(map['jsonConfiguration']) unless map['jsonConfiguration'].nil?)
        data.parquet_configuration = (ParquetConfiguration.parse(map['parquetConfiguration']) unless map['parquetConfiguration'].nil?)
        return data
      end
    end

    class ParquetConfiguration
      def self.parse(map)
        data = Types::ParquetConfiguration.new
        data.schema_definition = (SchemaDefinition.parse(map['schemaDefinition']) unless map['schemaDefinition'].nil?)
        return data
      end
    end

    class SchemaDefinition
      def self.parse(map)
        data = Types::SchemaDefinition.new
        data.columns = (Columns.parse(map['columns']) unless map['columns'].nil?)
        return data
      end
    end

    class Columns
      def self.parse(list)
        data = []
        list.map do |value|
          data << Column.parse(value) unless value.nil?
        end
        data
      end
    end

    class Column
      def self.parse(map)
        data = Types::Column.new
        data.name = map['name']
        data.type = map['type']
        return data
      end
    end

    class JsonConfiguration
      def self.parse(map)
        data = Types::JsonConfiguration.new
        return data
      end
    end

    class DatastoreStorage
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'serviceManagedS3'
          value = (ServiceManagedDatastoreS3Storage.parse(value) unless value.nil?)
          Types::DatastoreStorage::ServiceManagedS3.new(value) if value
        when 'customerManagedS3'
          value = (CustomerManagedDatastoreS3Storage.parse(value) unless value.nil?)
          Types::DatastoreStorage::CustomerManagedS3.new(value) if value
        when 'iotSiteWiseMultiLayerStorage'
          value = (DatastoreIotSiteWiseMultiLayerStorage.parse(value) unless value.nil?)
          Types::DatastoreStorage::IotSiteWiseMultiLayerStorage.new(value) if value
        else
          Types::DatastoreStorage::Unknown.new({name: key, value: value})
        end
      end
    end

    class DatastoreIotSiteWiseMultiLayerStorage
      def self.parse(map)
        data = Types::DatastoreIotSiteWiseMultiLayerStorage.new
        data.customer_managed_s3_storage = (IotSiteWiseCustomerManagedDatastoreS3Storage.parse(map['customerManagedS3Storage']) unless map['customerManagedS3Storage'].nil?)
        return data
      end
    end

    class IotSiteWiseCustomerManagedDatastoreS3Storage
      def self.parse(map)
        data = Types::IotSiteWiseCustomerManagedDatastoreS3Storage.new
        data.bucket = map['bucket']
        data.key_prefix = map['keyPrefix']
        return data
      end
    end

    class CustomerManagedDatastoreS3Storage
      def self.parse(map)
        data = Types::CustomerManagedDatastoreS3Storage.new
        data.bucket = map['bucket']
        data.key_prefix = map['keyPrefix']
        data.role_arn = map['roleArn']
        return data
      end
    end

    class ServiceManagedDatastoreS3Storage
      def self.parse(map)
        data = Types::ServiceManagedDatastoreS3Storage.new
        return data
      end
    end

    # Operation Parser for DescribeLoggingOptions
    class DescribeLoggingOptions
      def self.parse(http_resp)
        data = Types::DescribeLoggingOptionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.logging_options = (LoggingOptions.parse(map['loggingOptions']) unless map['loggingOptions'].nil?)
        data
      end
    end

    class LoggingOptions
      def self.parse(map)
        data = Types::LoggingOptions.new
        data.role_arn = map['roleArn']
        data.level = map['level']
        data.enabled = map['enabled']
        return data
      end
    end

    # Operation Parser for DescribePipeline
    class DescribePipeline
      def self.parse(http_resp)
        data = Types::DescribePipelineOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.pipeline = (Pipeline.parse(map['pipeline']) unless map['pipeline'].nil?)
        data
      end
    end

    class Pipeline
      def self.parse(map)
        data = Types::Pipeline.new
        data.name = map['name']
        data.arn = map['arn']
        data.activities = (PipelineActivities.parse(map['activities']) unless map['activities'].nil?)
        data.reprocessing_summaries = (ReprocessingSummaries.parse(map['reprocessingSummaries']) unless map['reprocessingSummaries'].nil?)
        data.creation_time = Time.at(map['creationTime'].to_i) if map['creationTime']
        data.last_update_time = Time.at(map['lastUpdateTime'].to_i) if map['lastUpdateTime']
        return data
      end
    end

    class ReprocessingSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << ReprocessingSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ReprocessingSummary
      def self.parse(map)
        data = Types::ReprocessingSummary.new
        data.id = map['id']
        data.status = map['status']
        data.creation_time = Time.at(map['creationTime'].to_i) if map['creationTime']
        return data
      end
    end

    class PipelineActivities
      def self.parse(list)
        data = []
        list.map do |value|
          data << PipelineActivity.parse(value) unless value.nil?
        end
        data
      end
    end

    class PipelineActivity
      def self.parse(map)
        data = Types::PipelineActivity.new
        data.channel = (ChannelActivity.parse(map['channel']) unless map['channel'].nil?)
        data.lambda = (LambdaActivity.parse(map['lambda']) unless map['lambda'].nil?)
        data.datastore = (DatastoreActivity.parse(map['datastore']) unless map['datastore'].nil?)
        data.add_attributes = (AddAttributesActivity.parse(map['addAttributes']) unless map['addAttributes'].nil?)
        data.remove_attributes = (RemoveAttributesActivity.parse(map['removeAttributes']) unless map['removeAttributes'].nil?)
        data.select_attributes = (SelectAttributesActivity.parse(map['selectAttributes']) unless map['selectAttributes'].nil?)
        data.filter = (FilterActivity.parse(map['filter']) unless map['filter'].nil?)
        data.math = (MathActivity.parse(map['math']) unless map['math'].nil?)
        data.device_registry_enrich = (DeviceRegistryEnrichActivity.parse(map['deviceRegistryEnrich']) unless map['deviceRegistryEnrich'].nil?)
        data.device_shadow_enrich = (DeviceShadowEnrichActivity.parse(map['deviceShadowEnrich']) unless map['deviceShadowEnrich'].nil?)
        return data
      end
    end

    class DeviceShadowEnrichActivity
      def self.parse(map)
        data = Types::DeviceShadowEnrichActivity.new
        data.name = map['name']
        data.attribute = map['attribute']
        data.thing_name = map['thingName']
        data.role_arn = map['roleArn']
        data.next = map['next']
        return data
      end
    end

    class DeviceRegistryEnrichActivity
      def self.parse(map)
        data = Types::DeviceRegistryEnrichActivity.new
        data.name = map['name']
        data.attribute = map['attribute']
        data.thing_name = map['thingName']
        data.role_arn = map['roleArn']
        data.next = map['next']
        return data
      end
    end

    class MathActivity
      def self.parse(map)
        data = Types::MathActivity.new
        data.name = map['name']
        data.attribute = map['attribute']
        data.math = map['math']
        data.next = map['next']
        return data
      end
    end

    class FilterActivity
      def self.parse(map)
        data = Types::FilterActivity.new
        data.name = map['name']
        data.filter = map['filter']
        data.next = map['next']
        return data
      end
    end

    class SelectAttributesActivity
      def self.parse(map)
        data = Types::SelectAttributesActivity.new
        data.name = map['name']
        data.attributes = (AttributeNames.parse(map['attributes']) unless map['attributes'].nil?)
        data.next = map['next']
        return data
      end
    end

    class AttributeNames
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class RemoveAttributesActivity
      def self.parse(map)
        data = Types::RemoveAttributesActivity.new
        data.name = map['name']
        data.attributes = (AttributeNames.parse(map['attributes']) unless map['attributes'].nil?)
        data.next = map['next']
        return data
      end
    end

    class AddAttributesActivity
      def self.parse(map)
        data = Types::AddAttributesActivity.new
        data.name = map['name']
        data.attributes = (AttributeNameMapping.parse(map['attributes']) unless map['attributes'].nil?)
        data.next = map['next']
        return data
      end
    end

    class AttributeNameMapping
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class DatastoreActivity
      def self.parse(map)
        data = Types::DatastoreActivity.new
        data.name = map['name']
        data.datastore_name = map['datastoreName']
        return data
      end
    end

    class LambdaActivity
      def self.parse(map)
        data = Types::LambdaActivity.new
        data.name = map['name']
        data.lambda_name = map['lambdaName']
        data.batch_size = map['batchSize']
        data.next = map['next']
        return data
      end
    end

    class ChannelActivity
      def self.parse(map)
        data = Types::ChannelActivity.new
        data.name = map['name']
        data.channel_name = map['channelName']
        data.next = map['next']
        return data
      end
    end

    # Operation Parser for GetDatasetContent
    class GetDatasetContent
      def self.parse(http_resp)
        data = Types::GetDatasetContentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.entries = (DatasetEntries.parse(map['entries']) unless map['entries'].nil?)
        data.timestamp = Time.at(map['timestamp'].to_i) if map['timestamp']
        data.status = (DatasetContentStatus.parse(map['status']) unless map['status'].nil?)
        data
      end
    end

    class DatasetContentStatus
      def self.parse(map)
        data = Types::DatasetContentStatus.new
        data.state = map['state']
        data.reason = map['reason']
        return data
      end
    end

    class DatasetEntries
      def self.parse(list)
        data = []
        list.map do |value|
          data << DatasetEntry.parse(value) unless value.nil?
        end
        data
      end
    end

    class DatasetEntry
      def self.parse(map)
        data = Types::DatasetEntry.new
        data.entry_name = map['entryName']
        data.data_uri = map['dataURI']
        return data
      end
    end

    # Operation Parser for ListChannels
    class ListChannels
      def self.parse(http_resp)
        data = Types::ListChannelsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel_summaries = (ChannelSummaries.parse(map['channelSummaries']) unless map['channelSummaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ChannelSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << ChannelSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ChannelSummary
      def self.parse(map)
        data = Types::ChannelSummary.new
        data.channel_name = map['channelName']
        data.channel_storage = (ChannelStorageSummary.parse(map['channelStorage']) unless map['channelStorage'].nil?)
        data.status = map['status']
        data.creation_time = Time.at(map['creationTime'].to_i) if map['creationTime']
        data.last_update_time = Time.at(map['lastUpdateTime'].to_i) if map['lastUpdateTime']
        data.last_message_arrival_time = Time.at(map['lastMessageArrivalTime'].to_i) if map['lastMessageArrivalTime']
        return data
      end
    end

    class ChannelStorageSummary
      def self.parse(map)
        data = Types::ChannelStorageSummary.new
        data.service_managed_s3 = (ServiceManagedChannelS3StorageSummary.parse(map['serviceManagedS3']) unless map['serviceManagedS3'].nil?)
        data.customer_managed_s3 = (CustomerManagedChannelS3StorageSummary.parse(map['customerManagedS3']) unless map['customerManagedS3'].nil?)
        return data
      end
    end

    class CustomerManagedChannelS3StorageSummary
      def self.parse(map)
        data = Types::CustomerManagedChannelS3StorageSummary.new
        data.bucket = map['bucket']
        data.key_prefix = map['keyPrefix']
        data.role_arn = map['roleArn']
        return data
      end
    end

    class ServiceManagedChannelS3StorageSummary
      def self.parse(map)
        data = Types::ServiceManagedChannelS3StorageSummary.new
        return data
      end
    end

    # Operation Parser for ListDatasetContents
    class ListDatasetContents
      def self.parse(http_resp)
        data = Types::ListDatasetContentsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.dataset_content_summaries = (DatasetContentSummaries.parse(map['datasetContentSummaries']) unless map['datasetContentSummaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class DatasetContentSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << DatasetContentSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class DatasetContentSummary
      def self.parse(map)
        data = Types::DatasetContentSummary.new
        data.version = map['version']
        data.status = (DatasetContentStatus.parse(map['status']) unless map['status'].nil?)
        data.creation_time = Time.at(map['creationTime'].to_i) if map['creationTime']
        data.schedule_time = Time.at(map['scheduleTime'].to_i) if map['scheduleTime']
        data.completion_time = Time.at(map['completionTime'].to_i) if map['completionTime']
        return data
      end
    end

    # Operation Parser for ListDatasets
    class ListDatasets
      def self.parse(http_resp)
        data = Types::ListDatasetsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.dataset_summaries = (DatasetSummaries.parse(map['datasetSummaries']) unless map['datasetSummaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class DatasetSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << DatasetSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class DatasetSummary
      def self.parse(map)
        data = Types::DatasetSummary.new
        data.dataset_name = map['datasetName']
        data.status = map['status']
        data.creation_time = Time.at(map['creationTime'].to_i) if map['creationTime']
        data.last_update_time = Time.at(map['lastUpdateTime'].to_i) if map['lastUpdateTime']
        data.triggers = (DatasetTriggers.parse(map['triggers']) unless map['triggers'].nil?)
        data.actions = (DatasetActionSummaries.parse(map['actions']) unless map['actions'].nil?)
        return data
      end
    end

    class DatasetActionSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << DatasetActionSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class DatasetActionSummary
      def self.parse(map)
        data = Types::DatasetActionSummary.new
        data.action_name = map['actionName']
        data.action_type = map['actionType']
        return data
      end
    end

    # Operation Parser for ListDatastores
    class ListDatastores
      def self.parse(http_resp)
        data = Types::ListDatastoresOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.datastore_summaries = (DatastoreSummaries.parse(map['datastoreSummaries']) unless map['datastoreSummaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class DatastoreSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << DatastoreSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class DatastoreSummary
      def self.parse(map)
        data = Types::DatastoreSummary.new
        data.datastore_name = map['datastoreName']
        data.datastore_storage = (DatastoreStorageSummary.parse(map['datastoreStorage']) unless map['datastoreStorage'].nil?)
        data.status = map['status']
        data.creation_time = Time.at(map['creationTime'].to_i) if map['creationTime']
        data.last_update_time = Time.at(map['lastUpdateTime'].to_i) if map['lastUpdateTime']
        data.last_message_arrival_time = Time.at(map['lastMessageArrivalTime'].to_i) if map['lastMessageArrivalTime']
        data.file_format_type = map['fileFormatType']
        data.datastore_partitions = (DatastorePartitions.parse(map['datastorePartitions']) unless map['datastorePartitions'].nil?)
        return data
      end
    end

    class DatastoreStorageSummary
      def self.parse(map)
        data = Types::DatastoreStorageSummary.new
        data.service_managed_s3 = (ServiceManagedDatastoreS3StorageSummary.parse(map['serviceManagedS3']) unless map['serviceManagedS3'].nil?)
        data.customer_managed_s3 = (CustomerManagedDatastoreS3StorageSummary.parse(map['customerManagedS3']) unless map['customerManagedS3'].nil?)
        data.iot_site_wise_multi_layer_storage = (DatastoreIotSiteWiseMultiLayerStorageSummary.parse(map['iotSiteWiseMultiLayerStorage']) unless map['iotSiteWiseMultiLayerStorage'].nil?)
        return data
      end
    end

    class DatastoreIotSiteWiseMultiLayerStorageSummary
      def self.parse(map)
        data = Types::DatastoreIotSiteWiseMultiLayerStorageSummary.new
        data.customer_managed_s3_storage = (IotSiteWiseCustomerManagedDatastoreS3StorageSummary.parse(map['customerManagedS3Storage']) unless map['customerManagedS3Storage'].nil?)
        return data
      end
    end

    class IotSiteWiseCustomerManagedDatastoreS3StorageSummary
      def self.parse(map)
        data = Types::IotSiteWiseCustomerManagedDatastoreS3StorageSummary.new
        data.bucket = map['bucket']
        data.key_prefix = map['keyPrefix']
        return data
      end
    end

    class CustomerManagedDatastoreS3StorageSummary
      def self.parse(map)
        data = Types::CustomerManagedDatastoreS3StorageSummary.new
        data.bucket = map['bucket']
        data.key_prefix = map['keyPrefix']
        data.role_arn = map['roleArn']
        return data
      end
    end

    class ServiceManagedDatastoreS3StorageSummary
      def self.parse(map)
        data = Types::ServiceManagedDatastoreS3StorageSummary.new
        return data
      end
    end

    # Operation Parser for ListPipelines
    class ListPipelines
      def self.parse(http_resp)
        data = Types::ListPipelinesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.pipeline_summaries = (PipelineSummaries.parse(map['pipelineSummaries']) unless map['pipelineSummaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class PipelineSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << PipelineSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class PipelineSummary
      def self.parse(map)
        data = Types::PipelineSummary.new
        data.pipeline_name = map['pipelineName']
        data.reprocessing_summaries = (ReprocessingSummaries.parse(map['reprocessingSummaries']) unless map['reprocessingSummaries'].nil?)
        data.creation_time = Time.at(map['creationTime'].to_i) if map['creationTime']
        data.last_update_time = Time.at(map['lastUpdateTime'].to_i) if map['lastUpdateTime']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (TagList.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    class TagList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Tag.parse(value) unless value.nil?
        end
        data
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.key = map['key']
        data.value = map['value']
        return data
      end
    end

    # Operation Parser for PutLoggingOptions
    class PutLoggingOptions
      def self.parse(http_resp)
        data = Types::PutLoggingOptionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for RunPipelineActivity
    class RunPipelineActivity
      def self.parse(http_resp)
        data = Types::RunPipelineActivityOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.payloads = (MessagePayloads.parse(map['payloads']) unless map['payloads'].nil?)
        data.log_result = map['logResult']
        data
      end
    end

    class MessagePayloads
      def self.parse(list)
        data = []
        list.map do |value|
          data << Base64::decode64(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for SampleChannelData
    class SampleChannelData
      def self.parse(http_resp)
        data = Types::SampleChannelDataOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.payloads = (MessagePayloads.parse(map['payloads']) unless map['payloads'].nil?)
        data
      end
    end

    # Operation Parser for StartPipelineReprocessing
    class StartPipelineReprocessing
      def self.parse(http_resp)
        data = Types::StartPipelineReprocessingOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.reprocessing_id = map['reprocessingId']
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateChannel
    class UpdateChannel
      def self.parse(http_resp)
        data = Types::UpdateChannelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateDataset
    class UpdateDataset
      def self.parse(http_resp)
        data = Types::UpdateDatasetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateDatastore
    class UpdateDatastore
      def self.parse(http_resp)
        data = Types::UpdateDatastoreOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdatePipeline
    class UpdatePipeline
      def self.parse(http_resp)
        data = Types::UpdatePipelineOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end
  end
end
