# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'
require 'stringio'

module AWS::SDK::IoTAnalytics
  module Builders

    # Operation Builder for BatchPutMessage
    class BatchPutMessage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/messages/batch')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['channelName'] = input[:channel_name] unless input[:channel_name].nil?
        data['messages'] = Messages.build(input[:messages]) unless input[:messages].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for Messages
    class Messages
      def self.build(input)
        data = []
        input.each do |element|
          data << Message.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Message
    class Message
      def self.build(input)
        data = {}
        data['messageId'] = input[:message_id] unless input[:message_id].nil?
        data['payload'] = ::Base64::encode64(input[:payload]).strip unless input[:payload].nil?
        data
      end
    end

    # Operation Builder for CancelPipelineReprocessing
    class CancelPipelineReprocessing
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:pipeline_name].to_s.empty?
          raise ArgumentError, "HTTP label :pipeline_name cannot be nil or empty."
        end
        if input[:reprocessing_id].to_s.empty?
          raise ArgumentError, "HTTP label :reprocessing_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/pipelines/%<pipelineName>s/reprocessing/%<reprocessingId>s',
            pipelineName: Hearth::HTTP.uri_escape(input[:pipeline_name].to_s),
            reprocessingId: Hearth::HTTP.uri_escape(input[:reprocessing_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for CreateChannel
    class CreateChannel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/channels')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['channelName'] = input[:channel_name] unless input[:channel_name].nil?
        data['channelStorage'] = ChannelStorage.build(input[:channel_storage]) unless input[:channel_storage].nil?
        data['retentionPeriod'] = RetentionPeriod.build(input[:retention_period]) unless input[:retention_period].nil?
        data['tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['key'] = input[:key] unless input[:key].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Structure Builder for RetentionPeriod
    class RetentionPeriod
      def self.build(input)
        data = {}
        data['unlimited'] = input[:unlimited] unless input[:unlimited].nil?
        data['numberOfDays'] = input[:number_of_days] unless input[:number_of_days].nil?
        data
      end
    end

    # Structure Builder for ChannelStorage
    class ChannelStorage
      def self.build(input)
        data = {}
        data['serviceManagedS3'] = ServiceManagedChannelS3Storage.build(input[:service_managed_s3]) unless input[:service_managed_s3].nil?
        data['customerManagedS3'] = CustomerManagedChannelS3Storage.build(input[:customer_managed_s3]) unless input[:customer_managed_s3].nil?
        data
      end
    end

    # Structure Builder for CustomerManagedChannelS3Storage
    class CustomerManagedChannelS3Storage
      def self.build(input)
        data = {}
        data['bucket'] = input[:bucket] unless input[:bucket].nil?
        data['keyPrefix'] = input[:key_prefix] unless input[:key_prefix].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data
      end
    end

    # Structure Builder for ServiceManagedChannelS3Storage
    class ServiceManagedChannelS3Storage
      def self.build(input)
        data = {}
        data
      end
    end

    # Operation Builder for CreateDataset
    class CreateDataset
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/datasets')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['datasetName'] = input[:dataset_name] unless input[:dataset_name].nil?
        data['actions'] = DatasetActions.build(input[:actions]) unless input[:actions].nil?
        data['triggers'] = DatasetTriggers.build(input[:triggers]) unless input[:triggers].nil?
        data['contentDeliveryRules'] = DatasetContentDeliveryRules.build(input[:content_delivery_rules]) unless input[:content_delivery_rules].nil?
        data['retentionPeriod'] = RetentionPeriod.build(input[:retention_period]) unless input[:retention_period].nil?
        data['versioningConfiguration'] = VersioningConfiguration.build(input[:versioning_configuration]) unless input[:versioning_configuration].nil?
        data['tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        data['lateDataRules'] = LateDataRules.build(input[:late_data_rules]) unless input[:late_data_rules].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for LateDataRules
    class LateDataRules
      def self.build(input)
        data = []
        input.each do |element|
          data << LateDataRule.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for LateDataRule
    class LateDataRule
      def self.build(input)
        data = {}
        data['ruleName'] = input[:rule_name] unless input[:rule_name].nil?
        data['ruleConfiguration'] = LateDataRuleConfiguration.build(input[:rule_configuration]) unless input[:rule_configuration].nil?
        data
      end
    end

    # Structure Builder for LateDataRuleConfiguration
    class LateDataRuleConfiguration
      def self.build(input)
        data = {}
        data['deltaTimeSessionWindowConfiguration'] = DeltaTimeSessionWindowConfiguration.build(input[:delta_time_session_window_configuration]) unless input[:delta_time_session_window_configuration].nil?
        data
      end
    end

    # Structure Builder for DeltaTimeSessionWindowConfiguration
    class DeltaTimeSessionWindowConfiguration
      def self.build(input)
        data = {}
        data['timeoutInMinutes'] = input[:timeout_in_minutes] unless input[:timeout_in_minutes].nil?
        data
      end
    end

    # Structure Builder for VersioningConfiguration
    class VersioningConfiguration
      def self.build(input)
        data = {}
        data['unlimited'] = input[:unlimited] unless input[:unlimited].nil?
        data['maxVersions'] = input[:max_versions] unless input[:max_versions].nil?
        data
      end
    end

    # List Builder for DatasetContentDeliveryRules
    class DatasetContentDeliveryRules
      def self.build(input)
        data = []
        input.each do |element|
          data << DatasetContentDeliveryRule.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DatasetContentDeliveryRule
    class DatasetContentDeliveryRule
      def self.build(input)
        data = {}
        data['entryName'] = input[:entry_name] unless input[:entry_name].nil?
        data['destination'] = DatasetContentDeliveryDestination.build(input[:destination]) unless input[:destination].nil?
        data
      end
    end

    # Structure Builder for DatasetContentDeliveryDestination
    class DatasetContentDeliveryDestination
      def self.build(input)
        data = {}
        data['iotEventsDestinationConfiguration'] = IotEventsDestinationConfiguration.build(input[:iot_events_destination_configuration]) unless input[:iot_events_destination_configuration].nil?
        data['s3DestinationConfiguration'] = S3DestinationConfiguration.build(input[:s3_destination_configuration]) unless input[:s3_destination_configuration].nil?
        data
      end
    end

    # Structure Builder for S3DestinationConfiguration
    class S3DestinationConfiguration
      def self.build(input)
        data = {}
        data['bucket'] = input[:bucket] unless input[:bucket].nil?
        data['key'] = input[:key] unless input[:key].nil?
        data['glueConfiguration'] = GlueConfiguration.build(input[:glue_configuration]) unless input[:glue_configuration].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data
      end
    end

    # Structure Builder for GlueConfiguration
    class GlueConfiguration
      def self.build(input)
        data = {}
        data['tableName'] = input[:table_name] unless input[:table_name].nil?
        data['databaseName'] = input[:database_name] unless input[:database_name].nil?
        data
      end
    end

    # Structure Builder for IotEventsDestinationConfiguration
    class IotEventsDestinationConfiguration
      def self.build(input)
        data = {}
        data['inputName'] = input[:input_name] unless input[:input_name].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data
      end
    end

    # List Builder for DatasetTriggers
    class DatasetTriggers
      def self.build(input)
        data = []
        input.each do |element|
          data << DatasetTrigger.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DatasetTrigger
    class DatasetTrigger
      def self.build(input)
        data = {}
        data['schedule'] = Schedule.build(input[:schedule]) unless input[:schedule].nil?
        data['dataset'] = TriggeringDataset.build(input[:dataset]) unless input[:dataset].nil?
        data
      end
    end

    # Structure Builder for TriggeringDataset
    class TriggeringDataset
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data
      end
    end

    # Structure Builder for Schedule
    class Schedule
      def self.build(input)
        data = {}
        data['expression'] = input[:expression] unless input[:expression].nil?
        data
      end
    end

    # List Builder for DatasetActions
    class DatasetActions
      def self.build(input)
        data = []
        input.each do |element|
          data << DatasetAction.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DatasetAction
    class DatasetAction
      def self.build(input)
        data = {}
        data['actionName'] = input[:action_name] unless input[:action_name].nil?
        data['queryAction'] = SqlQueryDatasetAction.build(input[:query_action]) unless input[:query_action].nil?
        data['containerAction'] = ContainerDatasetAction.build(input[:container_action]) unless input[:container_action].nil?
        data
      end
    end

    # Structure Builder for ContainerDatasetAction
    class ContainerDatasetAction
      def self.build(input)
        data = {}
        data['image'] = input[:image] unless input[:image].nil?
        data['executionRoleArn'] = input[:execution_role_arn] unless input[:execution_role_arn].nil?
        data['resourceConfiguration'] = ResourceConfiguration.build(input[:resource_configuration]) unless input[:resource_configuration].nil?
        data['variables'] = Variables.build(input[:variables]) unless input[:variables].nil?
        data
      end
    end

    # List Builder for Variables
    class Variables
      def self.build(input)
        data = []
        input.each do |element|
          data << Variable.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Variable
    class Variable
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['stringValue'] = input[:string_value] unless input[:string_value].nil?
        data['doubleValue'] = Hearth::NumberHelper.serialize(input[:double_value]) unless input[:double_value].nil?
        data['datasetContentVersionValue'] = DatasetContentVersionValue.build(input[:dataset_content_version_value]) unless input[:dataset_content_version_value].nil?
        data['outputFileUriValue'] = OutputFileUriValue.build(input[:output_file_uri_value]) unless input[:output_file_uri_value].nil?
        data
      end
    end

    # Structure Builder for OutputFileUriValue
    class OutputFileUriValue
      def self.build(input)
        data = {}
        data['fileName'] = input[:file_name] unless input[:file_name].nil?
        data
      end
    end

    # Structure Builder for DatasetContentVersionValue
    class DatasetContentVersionValue
      def self.build(input)
        data = {}
        data['datasetName'] = input[:dataset_name] unless input[:dataset_name].nil?
        data
      end
    end

    # Structure Builder for ResourceConfiguration
    class ResourceConfiguration
      def self.build(input)
        data = {}
        data['computeType'] = input[:compute_type] unless input[:compute_type].nil?
        data['volumeSizeInGB'] = input[:volume_size_in_gb] unless input[:volume_size_in_gb].nil?
        data
      end
    end

    # Structure Builder for SqlQueryDatasetAction
    class SqlQueryDatasetAction
      def self.build(input)
        data = {}
        data['sqlQuery'] = input[:sql_query] unless input[:sql_query].nil?
        data['filters'] = QueryFilters.build(input[:filters]) unless input[:filters].nil?
        data
      end
    end

    # List Builder for QueryFilters
    class QueryFilters
      def self.build(input)
        data = []
        input.each do |element|
          data << QueryFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for QueryFilter
    class QueryFilter
      def self.build(input)
        data = {}
        data['deltaTime'] = DeltaTime.build(input[:delta_time]) unless input[:delta_time].nil?
        data
      end
    end

    # Structure Builder for DeltaTime
    class DeltaTime
      def self.build(input)
        data = {}
        data['offsetSeconds'] = input[:offset_seconds] unless input[:offset_seconds].nil?
        data['timeExpression'] = input[:time_expression] unless input[:time_expression].nil?
        data
      end
    end

    # Operation Builder for CreateDatasetContent
    class CreateDatasetContent
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:dataset_name].to_s.empty?
          raise ArgumentError, "HTTP label :dataset_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/datasets/%<datasetName>s/content',
            datasetName: Hearth::HTTP.uri_escape(input[:dataset_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['versionId'] = input[:version_id] unless input[:version_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateDatastore
    class CreateDatastore
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/datastores')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['datastoreName'] = input[:datastore_name] unless input[:datastore_name].nil?
        data['datastoreStorage'] = DatastoreStorage.build(input[:datastore_storage]) unless input[:datastore_storage].nil?
        data['retentionPeriod'] = RetentionPeriod.build(input[:retention_period]) unless input[:retention_period].nil?
        data['tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        data['fileFormatConfiguration'] = FileFormatConfiguration.build(input[:file_format_configuration]) unless input[:file_format_configuration].nil?
        data['datastorePartitions'] = DatastorePartitions.build(input[:datastore_partitions]) unless input[:datastore_partitions].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for DatastorePartitions
    class DatastorePartitions
      def self.build(input)
        data = {}
        data['partitions'] = Partitions.build(input[:partitions]) unless input[:partitions].nil?
        data
      end
    end

    # List Builder for Partitions
    class Partitions
      def self.build(input)
        data = []
        input.each do |element|
          data << DatastorePartition.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DatastorePartition
    class DatastorePartition
      def self.build(input)
        data = {}
        data['attributePartition'] = Partition.build(input[:attribute_partition]) unless input[:attribute_partition].nil?
        data['timestampPartition'] = TimestampPartition.build(input[:timestamp_partition]) unless input[:timestamp_partition].nil?
        data
      end
    end

    # Structure Builder for TimestampPartition
    class TimestampPartition
      def self.build(input)
        data = {}
        data['attributeName'] = input[:attribute_name] unless input[:attribute_name].nil?
        data['timestampFormat'] = input[:timestamp_format] unless input[:timestamp_format].nil?
        data
      end
    end

    # Structure Builder for Partition
    class Partition
      def self.build(input)
        data = {}
        data['attributeName'] = input[:attribute_name] unless input[:attribute_name].nil?
        data
      end
    end

    # Structure Builder for FileFormatConfiguration
    class FileFormatConfiguration
      def self.build(input)
        data = {}
        data['jsonConfiguration'] = JsonConfiguration.build(input[:json_configuration]) unless input[:json_configuration].nil?
        data['parquetConfiguration'] = ParquetConfiguration.build(input[:parquet_configuration]) unless input[:parquet_configuration].nil?
        data
      end
    end

    # Structure Builder for ParquetConfiguration
    class ParquetConfiguration
      def self.build(input)
        data = {}
        data['schemaDefinition'] = SchemaDefinition.build(input[:schema_definition]) unless input[:schema_definition].nil?
        data
      end
    end

    # Structure Builder for SchemaDefinition
    class SchemaDefinition
      def self.build(input)
        data = {}
        data['columns'] = Columns.build(input[:columns]) unless input[:columns].nil?
        data
      end
    end

    # List Builder for Columns
    class Columns
      def self.build(input)
        data = []
        input.each do |element|
          data << Column.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Column
    class Column
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # Structure Builder for JsonConfiguration
    class JsonConfiguration
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for DatastoreStorage
    class DatastoreStorage
      def self.build(input)
        data = {}
        case input
        when Types::DatastoreStorage::ServiceManagedS3
          data['serviceManagedS3'] = (ServiceManagedDatastoreS3Storage.build(input) unless input.nil?)
        when Types::DatastoreStorage::CustomerManagedS3
          data['customerManagedS3'] = (CustomerManagedDatastoreS3Storage.build(input) unless input.nil?)
        when Types::DatastoreStorage::IotSiteWiseMultiLayerStorage
          data['iotSiteWiseMultiLayerStorage'] = (DatastoreIotSiteWiseMultiLayerStorage.build(input) unless input.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::DatastoreStorage"
        end

        data
      end
    end

    # Structure Builder for DatastoreIotSiteWiseMultiLayerStorage
    class DatastoreIotSiteWiseMultiLayerStorage
      def self.build(input)
        data = {}
        data['customerManagedS3Storage'] = IotSiteWiseCustomerManagedDatastoreS3Storage.build(input[:customer_managed_s3_storage]) unless input[:customer_managed_s3_storage].nil?
        data
      end
    end

    # Structure Builder for IotSiteWiseCustomerManagedDatastoreS3Storage
    class IotSiteWiseCustomerManagedDatastoreS3Storage
      def self.build(input)
        data = {}
        data['bucket'] = input[:bucket] unless input[:bucket].nil?
        data['keyPrefix'] = input[:key_prefix] unless input[:key_prefix].nil?
        data
      end
    end

    # Structure Builder for CustomerManagedDatastoreS3Storage
    class CustomerManagedDatastoreS3Storage
      def self.build(input)
        data = {}
        data['bucket'] = input[:bucket] unless input[:bucket].nil?
        data['keyPrefix'] = input[:key_prefix] unless input[:key_prefix].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data
      end
    end

    # Structure Builder for ServiceManagedDatastoreS3Storage
    class ServiceManagedDatastoreS3Storage
      def self.build(input)
        data = {}
        data
      end
    end

    # Operation Builder for CreatePipeline
    class CreatePipeline
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/pipelines')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['pipelineName'] = input[:pipeline_name] unless input[:pipeline_name].nil?
        data['pipelineActivities'] = PipelineActivities.build(input[:pipeline_activities]) unless input[:pipeline_activities].nil?
        data['tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for PipelineActivities
    class PipelineActivities
      def self.build(input)
        data = []
        input.each do |element|
          data << PipelineActivity.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for PipelineActivity
    class PipelineActivity
      def self.build(input)
        data = {}
        data['channel'] = ChannelActivity.build(input[:channel]) unless input[:channel].nil?
        data['lambda'] = LambdaActivity.build(input[:lambda]) unless input[:lambda].nil?
        data['datastore'] = DatastoreActivity.build(input[:datastore]) unless input[:datastore].nil?
        data['addAttributes'] = AddAttributesActivity.build(input[:add_attributes]) unless input[:add_attributes].nil?
        data['removeAttributes'] = RemoveAttributesActivity.build(input[:remove_attributes]) unless input[:remove_attributes].nil?
        data['selectAttributes'] = SelectAttributesActivity.build(input[:select_attributes]) unless input[:select_attributes].nil?
        data['filter'] = FilterActivity.build(input[:filter]) unless input[:filter].nil?
        data['math'] = MathActivity.build(input[:math]) unless input[:math].nil?
        data['deviceRegistryEnrich'] = DeviceRegistryEnrichActivity.build(input[:device_registry_enrich]) unless input[:device_registry_enrich].nil?
        data['deviceShadowEnrich'] = DeviceShadowEnrichActivity.build(input[:device_shadow_enrich]) unless input[:device_shadow_enrich].nil?
        data
      end
    end

    # Structure Builder for DeviceShadowEnrichActivity
    class DeviceShadowEnrichActivity
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['attribute'] = input[:attribute] unless input[:attribute].nil?
        data['thingName'] = input[:thing_name] unless input[:thing_name].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['next'] = input[:next] unless input[:next].nil?
        data
      end
    end

    # Structure Builder for DeviceRegistryEnrichActivity
    class DeviceRegistryEnrichActivity
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['attribute'] = input[:attribute] unless input[:attribute].nil?
        data['thingName'] = input[:thing_name] unless input[:thing_name].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['next'] = input[:next] unless input[:next].nil?
        data
      end
    end

    # Structure Builder for MathActivity
    class MathActivity
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['attribute'] = input[:attribute] unless input[:attribute].nil?
        data['math'] = input[:math] unless input[:math].nil?
        data['next'] = input[:next] unless input[:next].nil?
        data
      end
    end

    # Structure Builder for FilterActivity
    class FilterActivity
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['filter'] = input[:filter] unless input[:filter].nil?
        data['next'] = input[:next] unless input[:next].nil?
        data
      end
    end

    # Structure Builder for SelectAttributesActivity
    class SelectAttributesActivity
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['attributes'] = AttributeNames.build(input[:attributes]) unless input[:attributes].nil?
        data['next'] = input[:next] unless input[:next].nil?
        data
      end
    end

    # List Builder for AttributeNames
    class AttributeNames
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RemoveAttributesActivity
    class RemoveAttributesActivity
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['attributes'] = AttributeNames.build(input[:attributes]) unless input[:attributes].nil?
        data['next'] = input[:next] unless input[:next].nil?
        data
      end
    end

    # Structure Builder for AddAttributesActivity
    class AddAttributesActivity
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['attributes'] = AttributeNameMapping.build(input[:attributes]) unless input[:attributes].nil?
        data['next'] = input[:next] unless input[:next].nil?
        data
      end
    end

    # Map Builder for AttributeNameMapping
    class AttributeNameMapping
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for DatastoreActivity
    class DatastoreActivity
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['datastoreName'] = input[:datastore_name] unless input[:datastore_name].nil?
        data
      end
    end

    # Structure Builder for LambdaActivity
    class LambdaActivity
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['lambdaName'] = input[:lambda_name] unless input[:lambda_name].nil?
        data['batchSize'] = input[:batch_size] unless input[:batch_size].nil?
        data['next'] = input[:next] unless input[:next].nil?
        data
      end
    end

    # Structure Builder for ChannelActivity
    class ChannelActivity
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['channelName'] = input[:channel_name] unless input[:channel_name].nil?
        data['next'] = input[:next] unless input[:next].nil?
        data
      end
    end

    # Operation Builder for DeleteChannel
    class DeleteChannel
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:channel_name].to_s.empty?
          raise ArgumentError, "HTTP label :channel_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/channels/%<channelName>s',
            channelName: Hearth::HTTP.uri_escape(input[:channel_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteDataset
    class DeleteDataset
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:dataset_name].to_s.empty?
          raise ArgumentError, "HTTP label :dataset_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/datasets/%<datasetName>s',
            datasetName: Hearth::HTTP.uri_escape(input[:dataset_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteDatasetContent
    class DeleteDatasetContent
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:dataset_name].to_s.empty?
          raise ArgumentError, "HTTP label :dataset_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/datasets/%<datasetName>s/content',
            datasetName: Hearth::HTTP.uri_escape(input[:dataset_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['versionId'] = input[:version_id].to_s unless input[:version_id].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteDatastore
    class DeleteDatastore
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:datastore_name].to_s.empty?
          raise ArgumentError, "HTTP label :datastore_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/datastores/%<datastoreName>s',
            datastoreName: Hearth::HTTP.uri_escape(input[:datastore_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeletePipeline
    class DeletePipeline
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:pipeline_name].to_s.empty?
          raise ArgumentError, "HTTP label :pipeline_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/pipelines/%<pipelineName>s',
            pipelineName: Hearth::HTTP.uri_escape(input[:pipeline_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeChannel
    class DescribeChannel
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:channel_name].to_s.empty?
          raise ArgumentError, "HTTP label :channel_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/channels/%<channelName>s',
            channelName: Hearth::HTTP.uri_escape(input[:channel_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['includeStatistics'] = input[:include_statistics].to_s unless input[:include_statistics].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeDataset
    class DescribeDataset
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:dataset_name].to_s.empty?
          raise ArgumentError, "HTTP label :dataset_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/datasets/%<datasetName>s',
            datasetName: Hearth::HTTP.uri_escape(input[:dataset_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeDatastore
    class DescribeDatastore
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:datastore_name].to_s.empty?
          raise ArgumentError, "HTTP label :datastore_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/datastores/%<datastoreName>s',
            datastoreName: Hearth::HTTP.uri_escape(input[:datastore_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['includeStatistics'] = input[:include_statistics].to_s unless input[:include_statistics].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeLoggingOptions
    class DescribeLoggingOptions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/logging')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribePipeline
    class DescribePipeline
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:pipeline_name].to_s.empty?
          raise ArgumentError, "HTTP label :pipeline_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/pipelines/%<pipelineName>s',
            pipelineName: Hearth::HTTP.uri_escape(input[:pipeline_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetDatasetContent
    class GetDatasetContent
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:dataset_name].to_s.empty?
          raise ArgumentError, "HTTP label :dataset_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/datasets/%<datasetName>s/content',
            datasetName: Hearth::HTTP.uri_escape(input[:dataset_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['versionId'] = input[:version_id].to_s unless input[:version_id].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListChannels
    class ListChannels
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/channels')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListDatasetContents
    class ListDatasetContents
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:dataset_name].to_s.empty?
          raise ArgumentError, "HTTP label :dataset_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/datasets/%<datasetName>s/contents',
            datasetName: Hearth::HTTP.uri_escape(input[:dataset_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['scheduledOnOrAfter'] = Hearth::TimeHelper.to_date_time(input[:scheduled_on_or_after]) unless input[:scheduled_on_or_after].nil?
        params['scheduledBefore'] = Hearth::TimeHelper.to_date_time(input[:scheduled_before]) unless input[:scheduled_before].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListDatasets
    class ListDatasets
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/datasets')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListDatastores
    class ListDatastores
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/datastores')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListPipelines
    class ListPipelines
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/pipelines')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/tags')
        params = Hearth::Query::ParamList.new
        params['resourceArn'] = input[:resource_arn].to_s unless input[:resource_arn].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for PutLoggingOptions
    class PutLoggingOptions
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/logging')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['loggingOptions'] = LoggingOptions.build(input[:logging_options]) unless input[:logging_options].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for LoggingOptions
    class LoggingOptions
      def self.build(input)
        data = {}
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['level'] = input[:level] unless input[:level].nil?
        data['enabled'] = input[:enabled] unless input[:enabled].nil?
        data
      end
    end

    # Operation Builder for RunPipelineActivity
    class RunPipelineActivity
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/pipelineactivities/run')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['pipelineActivity'] = PipelineActivity.build(input[:pipeline_activity]) unless input[:pipeline_activity].nil?
        data['payloads'] = MessagePayloads.build(input[:payloads]) unless input[:payloads].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for MessagePayloads
    class MessagePayloads
      def self.build(input)
        data = []
        input.each do |element|
          data << ::Base64::encode64(element).strip unless element.nil?
        end
        data
      end
    end

    # Operation Builder for SampleChannelData
    class SampleChannelData
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:channel_name].to_s.empty?
          raise ArgumentError, "HTTP label :channel_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/channels/%<channelName>s/sample',
            channelName: Hearth::HTTP.uri_escape(input[:channel_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxMessages'] = input[:max_messages].to_s unless input[:max_messages].nil?
        params['startTime'] = Hearth::TimeHelper.to_date_time(input[:start_time]) unless input[:start_time].nil?
        params['endTime'] = Hearth::TimeHelper.to_date_time(input[:end_time]) unless input[:end_time].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for StartPipelineReprocessing
    class StartPipelineReprocessing
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:pipeline_name].to_s.empty?
          raise ArgumentError, "HTTP label :pipeline_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/pipelines/%<pipelineName>s/reprocessing',
            pipelineName: Hearth::HTTP.uri_escape(input[:pipeline_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['startTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:start_time]).to_i unless input[:start_time].nil?
        data['endTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:end_time]).to_i unless input[:end_time].nil?
        data['channelMessages'] = ChannelMessages.build(input[:channel_messages]) unless input[:channel_messages].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ChannelMessages
    class ChannelMessages
      def self.build(input)
        data = {}
        data['s3Paths'] = S3PathChannelMessages.build(input[:s3_paths]) unless input[:s3_paths].nil?
        data
      end
    end

    # List Builder for S3PathChannelMessages
    class S3PathChannelMessages
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/tags')
        params = Hearth::Query::ParamList.new
        params['resourceArn'] = input[:resource_arn].to_s unless input[:resource_arn].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        http_req.append_path('/tags')
        params = Hearth::Query::ParamList.new
        params['resourceArn'] = input[:resource_arn].to_s unless input[:resource_arn].nil?
        unless input[:tag_keys].nil? || input[:tag_keys].empty?
          params['tagKeys'] = input[:tag_keys].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateChannel
    class UpdateChannel
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:channel_name].to_s.empty?
          raise ArgumentError, "HTTP label :channel_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/channels/%<channelName>s',
            channelName: Hearth::HTTP.uri_escape(input[:channel_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['channelStorage'] = ChannelStorage.build(input[:channel_storage]) unless input[:channel_storage].nil?
        data['retentionPeriod'] = RetentionPeriod.build(input[:retention_period]) unless input[:retention_period].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateDataset
    class UpdateDataset
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:dataset_name].to_s.empty?
          raise ArgumentError, "HTTP label :dataset_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/datasets/%<datasetName>s',
            datasetName: Hearth::HTTP.uri_escape(input[:dataset_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['actions'] = DatasetActions.build(input[:actions]) unless input[:actions].nil?
        data['triggers'] = DatasetTriggers.build(input[:triggers]) unless input[:triggers].nil?
        data['contentDeliveryRules'] = DatasetContentDeliveryRules.build(input[:content_delivery_rules]) unless input[:content_delivery_rules].nil?
        data['retentionPeriod'] = RetentionPeriod.build(input[:retention_period]) unless input[:retention_period].nil?
        data['versioningConfiguration'] = VersioningConfiguration.build(input[:versioning_configuration]) unless input[:versioning_configuration].nil?
        data['lateDataRules'] = LateDataRules.build(input[:late_data_rules]) unless input[:late_data_rules].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateDatastore
    class UpdateDatastore
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:datastore_name].to_s.empty?
          raise ArgumentError, "HTTP label :datastore_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/datastores/%<datastoreName>s',
            datastoreName: Hearth::HTTP.uri_escape(input[:datastore_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['retentionPeriod'] = RetentionPeriod.build(input[:retention_period]) unless input[:retention_period].nil?
        data['datastoreStorage'] = DatastoreStorage.build(input[:datastore_storage]) unless input[:datastore_storage].nil?
        data['fileFormatConfiguration'] = FileFormatConfiguration.build(input[:file_format_configuration]) unless input[:file_format_configuration].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdatePipeline
    class UpdatePipeline
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:pipeline_name].to_s.empty?
          raise ArgumentError, "HTTP label :pipeline_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/pipelines/%<pipelineName>s',
            pipelineName: Hearth::HTTP.uri_escape(input[:pipeline_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['pipelineActivities'] = PipelineActivities.build(input[:pipeline_activities]) unless input[:pipeline_activities].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
