# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::IoTAnalytics
  module Validators

    class AddAttributesActivity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddAttributesActivity, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::AttributeNameMapping.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        Hearth::Validator.validate!(input[:next], ::String, context: "#{context}[:next]")
      end
    end

    class AttributeNameMapping
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class AttributeNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class BatchPutMessageErrorEntries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BatchPutMessageErrorEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchPutMessageErrorEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchPutMessageErrorEntry, context: context)
        Hearth::Validator.validate!(input[:message_id], ::String, context: "#{context}[:message_id]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class BatchPutMessageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchPutMessageInput, context: context)
        Hearth::Validator.validate!(input[:channel_name], ::String, context: "#{context}[:channel_name]")
        Validators::Messages.validate!(input[:messages], context: "#{context}[:messages]") unless input[:messages].nil?
      end
    end

    class BatchPutMessageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchPutMessageOutput, context: context)
        Validators::BatchPutMessageErrorEntries.validate!(input[:batch_put_message_error_entries], context: "#{context}[:batch_put_message_error_entries]") unless input[:batch_put_message_error_entries].nil?
      end
    end

    class CancelPipelineReprocessingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelPipelineReprocessingInput, context: context)
        Hearth::Validator.validate!(input[:pipeline_name], ::String, context: "#{context}[:pipeline_name]")
        Hearth::Validator.validate!(input[:reprocessing_id], ::String, context: "#{context}[:reprocessing_id]")
      end
    end

    class CancelPipelineReprocessingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelPipelineReprocessingOutput, context: context)
      end
    end

    class Channel
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Channel, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::ChannelStorage.validate!(input[:storage], context: "#{context}[:storage]") unless input[:storage].nil?
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::RetentionPeriod.validate!(input[:retention_period], context: "#{context}[:retention_period]") unless input[:retention_period].nil?
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_update_time], ::Time, context: "#{context}[:last_update_time]")
        Hearth::Validator.validate!(input[:last_message_arrival_time], ::Time, context: "#{context}[:last_message_arrival_time]")
      end
    end

    class ChannelActivity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChannelActivity, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:channel_name], ::String, context: "#{context}[:channel_name]")
        Hearth::Validator.validate!(input[:next], ::String, context: "#{context}[:next]")
      end
    end

    class ChannelMessages
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChannelMessages, context: context)
        Validators::S3PathChannelMessages.validate!(input[:s3_paths], context: "#{context}[:s3_paths]") unless input[:s3_paths].nil?
      end
    end

    class ChannelStatistics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChannelStatistics, context: context)
        Validators::EstimatedResourceSize.validate!(input[:size], context: "#{context}[:size]") unless input[:size].nil?
      end
    end

    class ChannelStorage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChannelStorage, context: context)
        Validators::ServiceManagedChannelS3Storage.validate!(input[:service_managed_s3], context: "#{context}[:service_managed_s3]") unless input[:service_managed_s3].nil?
        Validators::CustomerManagedChannelS3Storage.validate!(input[:customer_managed_s3], context: "#{context}[:customer_managed_s3]") unless input[:customer_managed_s3].nil?
      end
    end

    class ChannelStorageSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChannelStorageSummary, context: context)
        Validators::ServiceManagedChannelS3StorageSummary.validate!(input[:service_managed_s3], context: "#{context}[:service_managed_s3]") unless input[:service_managed_s3].nil?
        Validators::CustomerManagedChannelS3StorageSummary.validate!(input[:customer_managed_s3], context: "#{context}[:customer_managed_s3]") unless input[:customer_managed_s3].nil?
      end
    end

    class ChannelSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ChannelSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ChannelSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChannelSummary, context: context)
        Hearth::Validator.validate!(input[:channel_name], ::String, context: "#{context}[:channel_name]")
        Validators::ChannelStorageSummary.validate!(input[:channel_storage], context: "#{context}[:channel_storage]") unless input[:channel_storage].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_update_time], ::Time, context: "#{context}[:last_update_time]")
        Hearth::Validator.validate!(input[:last_message_arrival_time], ::Time, context: "#{context}[:last_message_arrival_time]")
      end
    end

    class Column
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Column, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class Columns
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Column.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ContainerDatasetAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContainerDatasetAction, context: context)
        Hearth::Validator.validate!(input[:image], ::String, context: "#{context}[:image]")
        Hearth::Validator.validate!(input[:execution_role_arn], ::String, context: "#{context}[:execution_role_arn]")
        Validators::ResourceConfiguration.validate!(input[:resource_configuration], context: "#{context}[:resource_configuration]") unless input[:resource_configuration].nil?
        Validators::Variables.validate!(input[:variables], context: "#{context}[:variables]") unless input[:variables].nil?
      end
    end

    class CreateChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateChannelInput, context: context)
        Hearth::Validator.validate!(input[:channel_name], ::String, context: "#{context}[:channel_name]")
        Validators::ChannelStorage.validate!(input[:channel_storage], context: "#{context}[:channel_storage]") unless input[:channel_storage].nil?
        Validators::RetentionPeriod.validate!(input[:retention_period], context: "#{context}[:retention_period]") unless input[:retention_period].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateChannelOutput, context: context)
        Hearth::Validator.validate!(input[:channel_name], ::String, context: "#{context}[:channel_name]")
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Validators::RetentionPeriod.validate!(input[:retention_period], context: "#{context}[:retention_period]") unless input[:retention_period].nil?
      end
    end

    class CreateDatasetContentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDatasetContentInput, context: context)
        Hearth::Validator.validate!(input[:dataset_name], ::String, context: "#{context}[:dataset_name]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
      end
    end

    class CreateDatasetContentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDatasetContentOutput, context: context)
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
      end
    end

    class CreateDatasetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDatasetInput, context: context)
        Hearth::Validator.validate!(input[:dataset_name], ::String, context: "#{context}[:dataset_name]")
        Validators::DatasetActions.validate!(input[:actions], context: "#{context}[:actions]") unless input[:actions].nil?
        Validators::DatasetTriggers.validate!(input[:triggers], context: "#{context}[:triggers]") unless input[:triggers].nil?
        Validators::DatasetContentDeliveryRules.validate!(input[:content_delivery_rules], context: "#{context}[:content_delivery_rules]") unless input[:content_delivery_rules].nil?
        Validators::RetentionPeriod.validate!(input[:retention_period], context: "#{context}[:retention_period]") unless input[:retention_period].nil?
        Validators::VersioningConfiguration.validate!(input[:versioning_configuration], context: "#{context}[:versioning_configuration]") unless input[:versioning_configuration].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::LateDataRules.validate!(input[:late_data_rules], context: "#{context}[:late_data_rules]") unless input[:late_data_rules].nil?
      end
    end

    class CreateDatasetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDatasetOutput, context: context)
        Hearth::Validator.validate!(input[:dataset_name], ::String, context: "#{context}[:dataset_name]")
        Hearth::Validator.validate!(input[:dataset_arn], ::String, context: "#{context}[:dataset_arn]")
        Validators::RetentionPeriod.validate!(input[:retention_period], context: "#{context}[:retention_period]") unless input[:retention_period].nil?
      end
    end

    class CreateDatastoreInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDatastoreInput, context: context)
        Hearth::Validator.validate!(input[:datastore_name], ::String, context: "#{context}[:datastore_name]")
        Validators::DatastoreStorage.validate!(input[:datastore_storage], context: "#{context}[:datastore_storage]") unless input[:datastore_storage].nil?
        Validators::RetentionPeriod.validate!(input[:retention_period], context: "#{context}[:retention_period]") unless input[:retention_period].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::FileFormatConfiguration.validate!(input[:file_format_configuration], context: "#{context}[:file_format_configuration]") unless input[:file_format_configuration].nil?
        Validators::DatastorePartitions.validate!(input[:datastore_partitions], context: "#{context}[:datastore_partitions]") unless input[:datastore_partitions].nil?
      end
    end

    class CreateDatastoreOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDatastoreOutput, context: context)
        Hearth::Validator.validate!(input[:datastore_name], ::String, context: "#{context}[:datastore_name]")
        Hearth::Validator.validate!(input[:datastore_arn], ::String, context: "#{context}[:datastore_arn]")
        Validators::RetentionPeriod.validate!(input[:retention_period], context: "#{context}[:retention_period]") unless input[:retention_period].nil?
      end
    end

    class CreatePipelineInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePipelineInput, context: context)
        Hearth::Validator.validate!(input[:pipeline_name], ::String, context: "#{context}[:pipeline_name]")
        Validators::PipelineActivities.validate!(input[:pipeline_activities], context: "#{context}[:pipeline_activities]") unless input[:pipeline_activities].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreatePipelineOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePipelineOutput, context: context)
        Hearth::Validator.validate!(input[:pipeline_name], ::String, context: "#{context}[:pipeline_name]")
        Hearth::Validator.validate!(input[:pipeline_arn], ::String, context: "#{context}[:pipeline_arn]")
      end
    end

    class CustomerManagedChannelS3Storage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomerManagedChannelS3Storage, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:key_prefix], ::String, context: "#{context}[:key_prefix]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class CustomerManagedChannelS3StorageSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomerManagedChannelS3StorageSummary, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:key_prefix], ::String, context: "#{context}[:key_prefix]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class CustomerManagedDatastoreS3Storage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomerManagedDatastoreS3Storage, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:key_prefix], ::String, context: "#{context}[:key_prefix]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class CustomerManagedDatastoreS3StorageSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomerManagedDatastoreS3StorageSummary, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:key_prefix], ::String, context: "#{context}[:key_prefix]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class Dataset
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Dataset, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Validators::DatasetActions.validate!(input[:actions], context: "#{context}[:actions]") unless input[:actions].nil?
        Validators::DatasetTriggers.validate!(input[:triggers], context: "#{context}[:triggers]") unless input[:triggers].nil?
        Validators::DatasetContentDeliveryRules.validate!(input[:content_delivery_rules], context: "#{context}[:content_delivery_rules]") unless input[:content_delivery_rules].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_update_time], ::Time, context: "#{context}[:last_update_time]")
        Validators::RetentionPeriod.validate!(input[:retention_period], context: "#{context}[:retention_period]") unless input[:retention_period].nil?
        Validators::VersioningConfiguration.validate!(input[:versioning_configuration], context: "#{context}[:versioning_configuration]") unless input[:versioning_configuration].nil?
        Validators::LateDataRules.validate!(input[:late_data_rules], context: "#{context}[:late_data_rules]") unless input[:late_data_rules].nil?
      end
    end

    class DatasetAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatasetAction, context: context)
        Hearth::Validator.validate!(input[:action_name], ::String, context: "#{context}[:action_name]")
        Validators::SqlQueryDatasetAction.validate!(input[:query_action], context: "#{context}[:query_action]") unless input[:query_action].nil?
        Validators::ContainerDatasetAction.validate!(input[:container_action], context: "#{context}[:container_action]") unless input[:container_action].nil?
      end
    end

    class DatasetActionSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DatasetActionSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DatasetActionSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatasetActionSummary, context: context)
        Hearth::Validator.validate!(input[:action_name], ::String, context: "#{context}[:action_name]")
        Hearth::Validator.validate!(input[:action_type], ::String, context: "#{context}[:action_type]")
      end
    end

    class DatasetActions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DatasetAction.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DatasetContentDeliveryDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatasetContentDeliveryDestination, context: context)
        Validators::IotEventsDestinationConfiguration.validate!(input[:iot_events_destination_configuration], context: "#{context}[:iot_events_destination_configuration]") unless input[:iot_events_destination_configuration].nil?
        Validators::S3DestinationConfiguration.validate!(input[:s3_destination_configuration], context: "#{context}[:s3_destination_configuration]") unless input[:s3_destination_configuration].nil?
      end
    end

    class DatasetContentDeliveryRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatasetContentDeliveryRule, context: context)
        Hearth::Validator.validate!(input[:entry_name], ::String, context: "#{context}[:entry_name]")
        Validators::DatasetContentDeliveryDestination.validate!(input[:destination], context: "#{context}[:destination]") unless input[:destination].nil?
      end
    end

    class DatasetContentDeliveryRules
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DatasetContentDeliveryRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DatasetContentStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatasetContentStatus, context: context)
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

    class DatasetContentSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DatasetContentSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DatasetContentSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatasetContentSummary, context: context)
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Validators::DatasetContentStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:schedule_time], ::Time, context: "#{context}[:schedule_time]")
        Hearth::Validator.validate!(input[:completion_time], ::Time, context: "#{context}[:completion_time]")
      end
    end

    class DatasetContentVersionValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatasetContentVersionValue, context: context)
        Hearth::Validator.validate!(input[:dataset_name], ::String, context: "#{context}[:dataset_name]")
      end
    end

    class DatasetEntries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DatasetEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DatasetEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatasetEntry, context: context)
        Hearth::Validator.validate!(input[:entry_name], ::String, context: "#{context}[:entry_name]")
        Hearth::Validator.validate!(input[:data_uri], ::String, context: "#{context}[:data_uri]")
      end
    end

    class DatasetSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DatasetSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DatasetSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatasetSummary, context: context)
        Hearth::Validator.validate!(input[:dataset_name], ::String, context: "#{context}[:dataset_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_update_time], ::Time, context: "#{context}[:last_update_time]")
        Validators::DatasetTriggers.validate!(input[:triggers], context: "#{context}[:triggers]") unless input[:triggers].nil?
        Validators::DatasetActionSummaries.validate!(input[:actions], context: "#{context}[:actions]") unless input[:actions].nil?
      end
    end

    class DatasetTrigger
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatasetTrigger, context: context)
        Validators::Schedule.validate!(input[:schedule], context: "#{context}[:schedule]") unless input[:schedule].nil?
        Validators::TriggeringDataset.validate!(input[:dataset], context: "#{context}[:dataset]") unless input[:dataset].nil?
      end
    end

    class DatasetTriggers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DatasetTrigger.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Datastore
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Datastore, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::DatastoreStorage.validate!(input[:storage], context: "#{context}[:storage]") unless input[:storage].nil?
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::RetentionPeriod.validate!(input[:retention_period], context: "#{context}[:retention_period]") unless input[:retention_period].nil?
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_update_time], ::Time, context: "#{context}[:last_update_time]")
        Hearth::Validator.validate!(input[:last_message_arrival_time], ::Time, context: "#{context}[:last_message_arrival_time]")
        Validators::FileFormatConfiguration.validate!(input[:file_format_configuration], context: "#{context}[:file_format_configuration]") unless input[:file_format_configuration].nil?
        Validators::DatastorePartitions.validate!(input[:datastore_partitions], context: "#{context}[:datastore_partitions]") unless input[:datastore_partitions].nil?
      end
    end

    class DatastoreActivity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatastoreActivity, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:datastore_name], ::String, context: "#{context}[:datastore_name]")
      end
    end

    class DatastoreIotSiteWiseMultiLayerStorage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatastoreIotSiteWiseMultiLayerStorage, context: context)
        Validators::IotSiteWiseCustomerManagedDatastoreS3Storage.validate!(input[:customer_managed_s3_storage], context: "#{context}[:customer_managed_s3_storage]") unless input[:customer_managed_s3_storage].nil?
      end
    end

    class DatastoreIotSiteWiseMultiLayerStorageSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatastoreIotSiteWiseMultiLayerStorageSummary, context: context)
        Validators::IotSiteWiseCustomerManagedDatastoreS3StorageSummary.validate!(input[:customer_managed_s3_storage], context: "#{context}[:customer_managed_s3_storage]") unless input[:customer_managed_s3_storage].nil?
      end
    end

    class DatastorePartition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatastorePartition, context: context)
        Validators::Partition.validate!(input[:attribute_partition], context: "#{context}[:attribute_partition]") unless input[:attribute_partition].nil?
        Validators::TimestampPartition.validate!(input[:timestamp_partition], context: "#{context}[:timestamp_partition]") unless input[:timestamp_partition].nil?
      end
    end

    class DatastorePartitions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatastorePartitions, context: context)
        Validators::Partitions.validate!(input[:partitions], context: "#{context}[:partitions]") unless input[:partitions].nil?
      end
    end

    class DatastoreStatistics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatastoreStatistics, context: context)
        Validators::EstimatedResourceSize.validate!(input[:size], context: "#{context}[:size]") unless input[:size].nil?
      end
    end

    class DatastoreStorage
      def self.validate!(input, context:)
        case input
        when Types::DatastoreStorage::ServiceManagedS3
          Validators::ServiceManagedDatastoreS3Storage.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::DatastoreStorage::CustomerManagedS3
          Validators::CustomerManagedDatastoreS3Storage.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::DatastoreStorage::IotSiteWiseMultiLayerStorage
          Validators::DatastoreIotSiteWiseMultiLayerStorage.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::DatastoreStorage, got #{input.class}."
        end
      end

      class ServiceManagedS3
        def self.validate!(input, context:)
          Validators::ServiceManagedDatastoreS3Storage.validate!(input, context: context) unless input.nil?
        end
      end

      class CustomerManagedS3
        def self.validate!(input, context:)
          Validators::CustomerManagedDatastoreS3Storage.validate!(input, context: context) unless input.nil?
        end
      end

      class IotSiteWiseMultiLayerStorage
        def self.validate!(input, context:)
          Validators::DatastoreIotSiteWiseMultiLayerStorage.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class DatastoreStorageSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatastoreStorageSummary, context: context)
        Validators::ServiceManagedDatastoreS3StorageSummary.validate!(input[:service_managed_s3], context: "#{context}[:service_managed_s3]") unless input[:service_managed_s3].nil?
        Validators::CustomerManagedDatastoreS3StorageSummary.validate!(input[:customer_managed_s3], context: "#{context}[:customer_managed_s3]") unless input[:customer_managed_s3].nil?
        Validators::DatastoreIotSiteWiseMultiLayerStorageSummary.validate!(input[:iot_site_wise_multi_layer_storage], context: "#{context}[:iot_site_wise_multi_layer_storage]") unless input[:iot_site_wise_multi_layer_storage].nil?
      end
    end

    class DatastoreSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DatastoreSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DatastoreSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatastoreSummary, context: context)
        Hearth::Validator.validate!(input[:datastore_name], ::String, context: "#{context}[:datastore_name]")
        Validators::DatastoreStorageSummary.validate!(input[:datastore_storage], context: "#{context}[:datastore_storage]") unless input[:datastore_storage].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_update_time], ::Time, context: "#{context}[:last_update_time]")
        Hearth::Validator.validate!(input[:last_message_arrival_time], ::Time, context: "#{context}[:last_message_arrival_time]")
        Hearth::Validator.validate!(input[:file_format_type], ::String, context: "#{context}[:file_format_type]")
        Validators::DatastorePartitions.validate!(input[:datastore_partitions], context: "#{context}[:datastore_partitions]") unless input[:datastore_partitions].nil?
      end
    end

    class DeleteChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteChannelInput, context: context)
        Hearth::Validator.validate!(input[:channel_name], ::String, context: "#{context}[:channel_name]")
      end
    end

    class DeleteChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteChannelOutput, context: context)
      end
    end

    class DeleteDatasetContentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDatasetContentInput, context: context)
        Hearth::Validator.validate!(input[:dataset_name], ::String, context: "#{context}[:dataset_name]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
      end
    end

    class DeleteDatasetContentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDatasetContentOutput, context: context)
      end
    end

    class DeleteDatasetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDatasetInput, context: context)
        Hearth::Validator.validate!(input[:dataset_name], ::String, context: "#{context}[:dataset_name]")
      end
    end

    class DeleteDatasetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDatasetOutput, context: context)
      end
    end

    class DeleteDatastoreInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDatastoreInput, context: context)
        Hearth::Validator.validate!(input[:datastore_name], ::String, context: "#{context}[:datastore_name]")
      end
    end

    class DeleteDatastoreOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDatastoreOutput, context: context)
      end
    end

    class DeletePipelineInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePipelineInput, context: context)
        Hearth::Validator.validate!(input[:pipeline_name], ::String, context: "#{context}[:pipeline_name]")
      end
    end

    class DeletePipelineOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePipelineOutput, context: context)
      end
    end

    class DeltaTime
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeltaTime, context: context)
        Hearth::Validator.validate!(input[:offset_seconds], ::Integer, context: "#{context}[:offset_seconds]")
        Hearth::Validator.validate!(input[:time_expression], ::String, context: "#{context}[:time_expression]")
      end
    end

    class DeltaTimeSessionWindowConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeltaTimeSessionWindowConfiguration, context: context)
        Hearth::Validator.validate!(input[:timeout_in_minutes], ::Integer, context: "#{context}[:timeout_in_minutes]")
      end
    end

    class DescribeChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeChannelInput, context: context)
        Hearth::Validator.validate!(input[:channel_name], ::String, context: "#{context}[:channel_name]")
        Hearth::Validator.validate!(input[:include_statistics], ::TrueClass, ::FalseClass, context: "#{context}[:include_statistics]")
      end
    end

    class DescribeChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeChannelOutput, context: context)
        Validators::Channel.validate!(input[:channel], context: "#{context}[:channel]") unless input[:channel].nil?
        Validators::ChannelStatistics.validate!(input[:statistics], context: "#{context}[:statistics]") unless input[:statistics].nil?
      end
    end

    class DescribeDatasetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDatasetInput, context: context)
        Hearth::Validator.validate!(input[:dataset_name], ::String, context: "#{context}[:dataset_name]")
      end
    end

    class DescribeDatasetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDatasetOutput, context: context)
        Validators::Dataset.validate!(input[:dataset], context: "#{context}[:dataset]") unless input[:dataset].nil?
      end
    end

    class DescribeDatastoreInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDatastoreInput, context: context)
        Hearth::Validator.validate!(input[:datastore_name], ::String, context: "#{context}[:datastore_name]")
        Hearth::Validator.validate!(input[:include_statistics], ::TrueClass, ::FalseClass, context: "#{context}[:include_statistics]")
      end
    end

    class DescribeDatastoreOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDatastoreOutput, context: context)
        Validators::Datastore.validate!(input[:datastore], context: "#{context}[:datastore]") unless input[:datastore].nil?
        Validators::DatastoreStatistics.validate!(input[:statistics], context: "#{context}[:statistics]") unless input[:statistics].nil?
      end
    end

    class DescribeLoggingOptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLoggingOptionsInput, context: context)
      end
    end

    class DescribeLoggingOptionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLoggingOptionsOutput, context: context)
        Validators::LoggingOptions.validate!(input[:logging_options], context: "#{context}[:logging_options]") unless input[:logging_options].nil?
      end
    end

    class DescribePipelineInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePipelineInput, context: context)
        Hearth::Validator.validate!(input[:pipeline_name], ::String, context: "#{context}[:pipeline_name]")
      end
    end

    class DescribePipelineOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePipelineOutput, context: context)
        Validators::Pipeline.validate!(input[:pipeline], context: "#{context}[:pipeline]") unless input[:pipeline].nil?
      end
    end

    class DeviceRegistryEnrichActivity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeviceRegistryEnrichActivity, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:attribute], ::String, context: "#{context}[:attribute]")
        Hearth::Validator.validate!(input[:thing_name], ::String, context: "#{context}[:thing_name]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:next], ::String, context: "#{context}[:next]")
      end
    end

    class DeviceShadowEnrichActivity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeviceShadowEnrichActivity, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:attribute], ::String, context: "#{context}[:attribute]")
        Hearth::Validator.validate!(input[:thing_name], ::String, context: "#{context}[:thing_name]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:next], ::String, context: "#{context}[:next]")
      end
    end

    class EstimatedResourceSize
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EstimatedResourceSize, context: context)
        Hearth::Validator.validate!(input[:estimated_size_in_bytes], ::Float, context: "#{context}[:estimated_size_in_bytes]")
        Hearth::Validator.validate!(input[:estimated_on], ::Time, context: "#{context}[:estimated_on]")
      end
    end

    class FileFormatConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FileFormatConfiguration, context: context)
        Validators::JsonConfiguration.validate!(input[:json_configuration], context: "#{context}[:json_configuration]") unless input[:json_configuration].nil?
        Validators::ParquetConfiguration.validate!(input[:parquet_configuration], context: "#{context}[:parquet_configuration]") unless input[:parquet_configuration].nil?
      end
    end

    class FilterActivity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FilterActivity, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:filter], ::String, context: "#{context}[:filter]")
        Hearth::Validator.validate!(input[:next], ::String, context: "#{context}[:next]")
      end
    end

    class GetDatasetContentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDatasetContentInput, context: context)
        Hearth::Validator.validate!(input[:dataset_name], ::String, context: "#{context}[:dataset_name]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
      end
    end

    class GetDatasetContentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDatasetContentOutput, context: context)
        Validators::DatasetEntries.validate!(input[:entries], context: "#{context}[:entries]") unless input[:entries].nil?
        Hearth::Validator.validate!(input[:timestamp], ::Time, context: "#{context}[:timestamp]")
        Validators::DatasetContentStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
      end
    end

    class GlueConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GlueConfiguration, context: context)
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
      end
    end

    class InternalFailureException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalFailureException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class IotEventsDestinationConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IotEventsDestinationConfiguration, context: context)
        Hearth::Validator.validate!(input[:input_name], ::String, context: "#{context}[:input_name]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class IotSiteWiseCustomerManagedDatastoreS3Storage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IotSiteWiseCustomerManagedDatastoreS3Storage, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:key_prefix], ::String, context: "#{context}[:key_prefix]")
      end
    end

    class IotSiteWiseCustomerManagedDatastoreS3StorageSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IotSiteWiseCustomerManagedDatastoreS3StorageSummary, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:key_prefix], ::String, context: "#{context}[:key_prefix]")
      end
    end

    class JsonConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JsonConfiguration, context: context)
      end
    end

    class LambdaActivity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LambdaActivity, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:lambda_name], ::String, context: "#{context}[:lambda_name]")
        Hearth::Validator.validate!(input[:batch_size], ::Integer, context: "#{context}[:batch_size]")
        Hearth::Validator.validate!(input[:next], ::String, context: "#{context}[:next]")
      end
    end

    class LateDataRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LateDataRule, context: context)
        Hearth::Validator.validate!(input[:rule_name], ::String, context: "#{context}[:rule_name]")
        Validators::LateDataRuleConfiguration.validate!(input[:rule_configuration], context: "#{context}[:rule_configuration]") unless input[:rule_configuration].nil?
      end
    end

    class LateDataRuleConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LateDataRuleConfiguration, context: context)
        Validators::DeltaTimeSessionWindowConfiguration.validate!(input[:delta_time_session_window_configuration], context: "#{context}[:delta_time_session_window_configuration]") unless input[:delta_time_session_window_configuration].nil?
      end
    end

    class LateDataRules
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LateDataRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListChannelsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListChannelsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListChannelsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListChannelsOutput, context: context)
        Validators::ChannelSummaries.validate!(input[:channel_summaries], context: "#{context}[:channel_summaries]") unless input[:channel_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDatasetContentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDatasetContentsInput, context: context)
        Hearth::Validator.validate!(input[:dataset_name], ::String, context: "#{context}[:dataset_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:scheduled_on_or_after], ::Time, context: "#{context}[:scheduled_on_or_after]")
        Hearth::Validator.validate!(input[:scheduled_before], ::Time, context: "#{context}[:scheduled_before]")
      end
    end

    class ListDatasetContentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDatasetContentsOutput, context: context)
        Validators::DatasetContentSummaries.validate!(input[:dataset_content_summaries], context: "#{context}[:dataset_content_summaries]") unless input[:dataset_content_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDatasetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDatasetsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListDatasetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDatasetsOutput, context: context)
        Validators::DatasetSummaries.validate!(input[:dataset_summaries], context: "#{context}[:dataset_summaries]") unless input[:dataset_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDatastoresInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDatastoresInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListDatastoresOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDatastoresOutput, context: context)
        Validators::DatastoreSummaries.validate!(input[:datastore_summaries], context: "#{context}[:datastore_summaries]") unless input[:datastore_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPipelinesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPipelinesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListPipelinesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPipelinesOutput, context: context)
        Validators::PipelineSummaries.validate!(input[:pipeline_summaries], context: "#{context}[:pipeline_summaries]") unless input[:pipeline_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class LoggingOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoggingOptions, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:level], ::String, context: "#{context}[:level]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class MathActivity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MathActivity, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:attribute], ::String, context: "#{context}[:attribute]")
        Hearth::Validator.validate!(input[:math], ::String, context: "#{context}[:math]")
        Hearth::Validator.validate!(input[:next], ::String, context: "#{context}[:next]")
      end
    end

    class Message
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Message, context: context)
        Hearth::Validator.validate!(input[:message_id], ::String, context: "#{context}[:message_id]")
        Hearth::Validator.validate!(input[:payload], ::String, context: "#{context}[:payload]")
      end
    end

    class MessagePayloads
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Messages
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Message.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OutputFileUriValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OutputFileUriValue, context: context)
        Hearth::Validator.validate!(input[:file_name], ::String, context: "#{context}[:file_name]")
      end
    end

    class ParquetConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ParquetConfiguration, context: context)
        Validators::SchemaDefinition.validate!(input[:schema_definition], context: "#{context}[:schema_definition]") unless input[:schema_definition].nil?
      end
    end

    class Partition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Partition, context: context)
        Hearth::Validator.validate!(input[:attribute_name], ::String, context: "#{context}[:attribute_name]")
      end
    end

    class Partitions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DatastorePartition.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Pipeline
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Pipeline, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Validators::PipelineActivities.validate!(input[:activities], context: "#{context}[:activities]") unless input[:activities].nil?
        Validators::ReprocessingSummaries.validate!(input[:reprocessing_summaries], context: "#{context}[:reprocessing_summaries]") unless input[:reprocessing_summaries].nil?
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_update_time], ::Time, context: "#{context}[:last_update_time]")
      end
    end

    class PipelineActivities
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PipelineActivity.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PipelineActivity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PipelineActivity, context: context)
        Validators::ChannelActivity.validate!(input[:channel], context: "#{context}[:channel]") unless input[:channel].nil?
        Validators::LambdaActivity.validate!(input[:lambda], context: "#{context}[:lambda]") unless input[:lambda].nil?
        Validators::DatastoreActivity.validate!(input[:datastore], context: "#{context}[:datastore]") unless input[:datastore].nil?
        Validators::AddAttributesActivity.validate!(input[:add_attributes], context: "#{context}[:add_attributes]") unless input[:add_attributes].nil?
        Validators::RemoveAttributesActivity.validate!(input[:remove_attributes], context: "#{context}[:remove_attributes]") unless input[:remove_attributes].nil?
        Validators::SelectAttributesActivity.validate!(input[:select_attributes], context: "#{context}[:select_attributes]") unless input[:select_attributes].nil?
        Validators::FilterActivity.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Validators::MathActivity.validate!(input[:math], context: "#{context}[:math]") unless input[:math].nil?
        Validators::DeviceRegistryEnrichActivity.validate!(input[:device_registry_enrich], context: "#{context}[:device_registry_enrich]") unless input[:device_registry_enrich].nil?
        Validators::DeviceShadowEnrichActivity.validate!(input[:device_shadow_enrich], context: "#{context}[:device_shadow_enrich]") unless input[:device_shadow_enrich].nil?
      end
    end

    class PipelineSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PipelineSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PipelineSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PipelineSummary, context: context)
        Hearth::Validator.validate!(input[:pipeline_name], ::String, context: "#{context}[:pipeline_name]")
        Validators::ReprocessingSummaries.validate!(input[:reprocessing_summaries], context: "#{context}[:reprocessing_summaries]") unless input[:reprocessing_summaries].nil?
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_update_time], ::Time, context: "#{context}[:last_update_time]")
      end
    end

    class PutLoggingOptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutLoggingOptionsInput, context: context)
        Validators::LoggingOptions.validate!(input[:logging_options], context: "#{context}[:logging_options]") unless input[:logging_options].nil?
      end
    end

    class PutLoggingOptionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutLoggingOptionsOutput, context: context)
      end
    end

    class QueryFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QueryFilter, context: context)
        Validators::DeltaTime.validate!(input[:delta_time], context: "#{context}[:delta_time]") unless input[:delta_time].nil?
      end
    end

    class QueryFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::QueryFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RemoveAttributesActivity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveAttributesActivity, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::AttributeNames.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        Hearth::Validator.validate!(input[:next], ::String, context: "#{context}[:next]")
      end
    end

    class ReprocessingSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ReprocessingSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReprocessingSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReprocessingSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
      end
    end

    class ResourceAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ResourceConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceConfiguration, context: context)
        Hearth::Validator.validate!(input[:compute_type], ::String, context: "#{context}[:compute_type]")
        Hearth::Validator.validate!(input[:volume_size_in_gb], ::Integer, context: "#{context}[:volume_size_in_gb]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RetentionPeriod
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RetentionPeriod, context: context)
        Hearth::Validator.validate!(input[:unlimited], ::TrueClass, ::FalseClass, context: "#{context}[:unlimited]")
        Hearth::Validator.validate!(input[:number_of_days], ::Integer, context: "#{context}[:number_of_days]")
      end
    end

    class RunPipelineActivityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RunPipelineActivityInput, context: context)
        Validators::PipelineActivity.validate!(input[:pipeline_activity], context: "#{context}[:pipeline_activity]") unless input[:pipeline_activity].nil?
        Validators::MessagePayloads.validate!(input[:payloads], context: "#{context}[:payloads]") unless input[:payloads].nil?
      end
    end

    class RunPipelineActivityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RunPipelineActivityOutput, context: context)
        Validators::MessagePayloads.validate!(input[:payloads], context: "#{context}[:payloads]") unless input[:payloads].nil?
        Hearth::Validator.validate!(input[:log_result], ::String, context: "#{context}[:log_result]")
      end
    end

    class S3DestinationConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3DestinationConfiguration, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Validators::GlueConfiguration.validate!(input[:glue_configuration], context: "#{context}[:glue_configuration]") unless input[:glue_configuration].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class S3PathChannelMessages
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SampleChannelDataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SampleChannelDataInput, context: context)
        Hearth::Validator.validate!(input[:channel_name], ::String, context: "#{context}[:channel_name]")
        Hearth::Validator.validate!(input[:max_messages], ::Integer, context: "#{context}[:max_messages]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
      end
    end

    class SampleChannelDataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SampleChannelDataOutput, context: context)
        Validators::MessagePayloads.validate!(input[:payloads], context: "#{context}[:payloads]") unless input[:payloads].nil?
      end
    end

    class Schedule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Schedule, context: context)
        Hearth::Validator.validate!(input[:expression], ::String, context: "#{context}[:expression]")
      end
    end

    class SchemaDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SchemaDefinition, context: context)
        Validators::Columns.validate!(input[:columns], context: "#{context}[:columns]") unless input[:columns].nil?
      end
    end

    class SelectAttributesActivity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SelectAttributesActivity, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::AttributeNames.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        Hearth::Validator.validate!(input[:next], ::String, context: "#{context}[:next]")
      end
    end

    class ServiceManagedChannelS3Storage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceManagedChannelS3Storage, context: context)
      end
    end

    class ServiceManagedChannelS3StorageSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceManagedChannelS3StorageSummary, context: context)
      end
    end

    class ServiceManagedDatastoreS3Storage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceManagedDatastoreS3Storage, context: context)
      end
    end

    class ServiceManagedDatastoreS3StorageSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceManagedDatastoreS3StorageSummary, context: context)
      end
    end

    class ServiceUnavailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceUnavailableException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SqlQueryDatasetAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SqlQueryDatasetAction, context: context)
        Hearth::Validator.validate!(input[:sql_query], ::String, context: "#{context}[:sql_query]")
        Validators::QueryFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class StartPipelineReprocessingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartPipelineReprocessingInput, context: context)
        Hearth::Validator.validate!(input[:pipeline_name], ::String, context: "#{context}[:pipeline_name]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Validators::ChannelMessages.validate!(input[:channel_messages], context: "#{context}[:channel_messages]") unless input[:channel_messages].nil?
      end
    end

    class StartPipelineReprocessingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartPipelineReprocessingOutput, context: context)
        Hearth::Validator.validate!(input[:reprocessing_id], ::String, context: "#{context}[:reprocessing_id]")
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
          Validators::Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TimestampPartition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TimestampPartition, context: context)
        Hearth::Validator.validate!(input[:attribute_name], ::String, context: "#{context}[:attribute_name]")
        Hearth::Validator.validate!(input[:timestamp_format], ::String, context: "#{context}[:timestamp_format]")
      end
    end

    class TriggeringDataset
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TriggeringDataset, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateChannelInput, context: context)
        Hearth::Validator.validate!(input[:channel_name], ::String, context: "#{context}[:channel_name]")
        Validators::ChannelStorage.validate!(input[:channel_storage], context: "#{context}[:channel_storage]") unless input[:channel_storage].nil?
        Validators::RetentionPeriod.validate!(input[:retention_period], context: "#{context}[:retention_period]") unless input[:retention_period].nil?
      end
    end

    class UpdateChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateChannelOutput, context: context)
      end
    end

    class UpdateDatasetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDatasetInput, context: context)
        Hearth::Validator.validate!(input[:dataset_name], ::String, context: "#{context}[:dataset_name]")
        Validators::DatasetActions.validate!(input[:actions], context: "#{context}[:actions]") unless input[:actions].nil?
        Validators::DatasetTriggers.validate!(input[:triggers], context: "#{context}[:triggers]") unless input[:triggers].nil?
        Validators::DatasetContentDeliveryRules.validate!(input[:content_delivery_rules], context: "#{context}[:content_delivery_rules]") unless input[:content_delivery_rules].nil?
        Validators::RetentionPeriod.validate!(input[:retention_period], context: "#{context}[:retention_period]") unless input[:retention_period].nil?
        Validators::VersioningConfiguration.validate!(input[:versioning_configuration], context: "#{context}[:versioning_configuration]") unless input[:versioning_configuration].nil?
        Validators::LateDataRules.validate!(input[:late_data_rules], context: "#{context}[:late_data_rules]") unless input[:late_data_rules].nil?
      end
    end

    class UpdateDatasetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDatasetOutput, context: context)
      end
    end

    class UpdateDatastoreInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDatastoreInput, context: context)
        Hearth::Validator.validate!(input[:datastore_name], ::String, context: "#{context}[:datastore_name]")
        Validators::RetentionPeriod.validate!(input[:retention_period], context: "#{context}[:retention_period]") unless input[:retention_period].nil?
        Validators::DatastoreStorage.validate!(input[:datastore_storage], context: "#{context}[:datastore_storage]") unless input[:datastore_storage].nil?
        Validators::FileFormatConfiguration.validate!(input[:file_format_configuration], context: "#{context}[:file_format_configuration]") unless input[:file_format_configuration].nil?
      end
    end

    class UpdateDatastoreOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDatastoreOutput, context: context)
      end
    end

    class UpdatePipelineInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePipelineInput, context: context)
        Hearth::Validator.validate!(input[:pipeline_name], ::String, context: "#{context}[:pipeline_name]")
        Validators::PipelineActivities.validate!(input[:pipeline_activities], context: "#{context}[:pipeline_activities]") unless input[:pipeline_activities].nil?
      end
    end

    class UpdatePipelineOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePipelineOutput, context: context)
      end
    end

    class Variable
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Variable, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:string_value], ::String, context: "#{context}[:string_value]")
        Hearth::Validator.validate!(input[:double_value], ::Float, context: "#{context}[:double_value]")
        Validators::DatasetContentVersionValue.validate!(input[:dataset_content_version_value], context: "#{context}[:dataset_content_version_value]") unless input[:dataset_content_version_value].nil?
        Validators::OutputFileUriValue.validate!(input[:output_file_uri_value], context: "#{context}[:output_file_uri_value]") unless input[:output_file_uri_value].nil?
      end
    end

    class Variables
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Variable.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class VersioningConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VersioningConfiguration, context: context)
        Hearth::Validator.validate!(input[:unlimited], ::TrueClass, ::FalseClass, context: "#{context}[:unlimited]")
        Hearth::Validator.validate!(input[:max_versions], ::Integer, context: "#{context}[:max_versions]")
      end
    end

  end
end
