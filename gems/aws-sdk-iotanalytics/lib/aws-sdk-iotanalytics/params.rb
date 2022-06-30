# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::IoTAnalytics
  module Params

    module AddAttributesActivity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddAttributesActivity, context: context)
        type = Types::AddAttributesActivity.new
        type.name = params[:name]
        type.attributes = AttributeNameMapping.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.next = params[:next]
        type
      end
    end

    module AttributeNameMapping
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module AttributeNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module BatchPutMessageErrorEntries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchPutMessageErrorEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchPutMessageErrorEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchPutMessageErrorEntry, context: context)
        type = Types::BatchPutMessageErrorEntry.new
        type.message_id = params[:message_id]
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type
      end
    end

    module BatchPutMessageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchPutMessageInput, context: context)
        type = Types::BatchPutMessageInput.new
        type.channel_name = params[:channel_name]
        type.messages = Messages.build(params[:messages], context: "#{context}[:messages]") unless params[:messages].nil?
        type
      end
    end

    module BatchPutMessageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchPutMessageOutput, context: context)
        type = Types::BatchPutMessageOutput.new
        type.batch_put_message_error_entries = BatchPutMessageErrorEntries.build(params[:batch_put_message_error_entries], context: "#{context}[:batch_put_message_error_entries]") unless params[:batch_put_message_error_entries].nil?
        type
      end
    end

    module CancelPipelineReprocessingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelPipelineReprocessingInput, context: context)
        type = Types::CancelPipelineReprocessingInput.new
        type.pipeline_name = params[:pipeline_name]
        type.reprocessing_id = params[:reprocessing_id]
        type
      end
    end

    module CancelPipelineReprocessingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelPipelineReprocessingOutput, context: context)
        type = Types::CancelPipelineReprocessingOutput.new
        type
      end
    end

    module Channel
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Channel, context: context)
        type = Types::Channel.new
        type.name = params[:name]
        type.storage = ChannelStorage.build(params[:storage], context: "#{context}[:storage]") unless params[:storage].nil?
        type.arn = params[:arn]
        type.status = params[:status]
        type.retention_period = RetentionPeriod.build(params[:retention_period], context: "#{context}[:retention_period]") unless params[:retention_period].nil?
        type.creation_time = params[:creation_time]
        type.last_update_time = params[:last_update_time]
        type.last_message_arrival_time = params[:last_message_arrival_time]
        type
      end
    end

    module ChannelActivity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChannelActivity, context: context)
        type = Types::ChannelActivity.new
        type.name = params[:name]
        type.channel_name = params[:channel_name]
        type.next = params[:next]
        type
      end
    end

    module ChannelMessages
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChannelMessages, context: context)
        type = Types::ChannelMessages.new
        type.s3_paths = S3PathChannelMessages.build(params[:s3_paths], context: "#{context}[:s3_paths]") unless params[:s3_paths].nil?
        type
      end
    end

    module ChannelStatistics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChannelStatistics, context: context)
        type = Types::ChannelStatistics.new
        type.size = EstimatedResourceSize.build(params[:size], context: "#{context}[:size]") unless params[:size].nil?
        type
      end
    end

    module ChannelStorage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChannelStorage, context: context)
        type = Types::ChannelStorage.new
        type.service_managed_s3 = ServiceManagedChannelS3Storage.build(params[:service_managed_s3], context: "#{context}[:service_managed_s3]") unless params[:service_managed_s3].nil?
        type.customer_managed_s3 = CustomerManagedChannelS3Storage.build(params[:customer_managed_s3], context: "#{context}[:customer_managed_s3]") unless params[:customer_managed_s3].nil?
        type
      end
    end

    module ChannelStorageSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChannelStorageSummary, context: context)
        type = Types::ChannelStorageSummary.new
        type.service_managed_s3 = ServiceManagedChannelS3StorageSummary.build(params[:service_managed_s3], context: "#{context}[:service_managed_s3]") unless params[:service_managed_s3].nil?
        type.customer_managed_s3 = CustomerManagedChannelS3StorageSummary.build(params[:customer_managed_s3], context: "#{context}[:customer_managed_s3]") unless params[:customer_managed_s3].nil?
        type
      end
    end

    module ChannelSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ChannelSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ChannelSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChannelSummary, context: context)
        type = Types::ChannelSummary.new
        type.channel_name = params[:channel_name]
        type.channel_storage = ChannelStorageSummary.build(params[:channel_storage], context: "#{context}[:channel_storage]") unless params[:channel_storage].nil?
        type.status = params[:status]
        type.creation_time = params[:creation_time]
        type.last_update_time = params[:last_update_time]
        type.last_message_arrival_time = params[:last_message_arrival_time]
        type
      end
    end

    module Column
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Column, context: context)
        type = Types::Column.new
        type.name = params[:name]
        type.type = params[:type]
        type
      end
    end

    module Columns
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Column.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ContainerDatasetAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContainerDatasetAction, context: context)
        type = Types::ContainerDatasetAction.new
        type.image = params[:image]
        type.execution_role_arn = params[:execution_role_arn]
        type.resource_configuration = ResourceConfiguration.build(params[:resource_configuration], context: "#{context}[:resource_configuration]") unless params[:resource_configuration].nil?
        type.variables = Variables.build(params[:variables], context: "#{context}[:variables]") unless params[:variables].nil?
        type
      end
    end

    module CreateChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateChannelInput, context: context)
        type = Types::CreateChannelInput.new
        type.channel_name = params[:channel_name]
        type.channel_storage = ChannelStorage.build(params[:channel_storage], context: "#{context}[:channel_storage]") unless params[:channel_storage].nil?
        type.retention_period = RetentionPeriod.build(params[:retention_period], context: "#{context}[:retention_period]") unless params[:retention_period].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateChannelOutput, context: context)
        type = Types::CreateChannelOutput.new
        type.channel_name = params[:channel_name]
        type.channel_arn = params[:channel_arn]
        type.retention_period = RetentionPeriod.build(params[:retention_period], context: "#{context}[:retention_period]") unless params[:retention_period].nil?
        type
      end
    end

    module CreateDatasetContentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDatasetContentInput, context: context)
        type = Types::CreateDatasetContentInput.new
        type.dataset_name = params[:dataset_name]
        type.version_id = params[:version_id]
        type
      end
    end

    module CreateDatasetContentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDatasetContentOutput, context: context)
        type = Types::CreateDatasetContentOutput.new
        type.version_id = params[:version_id]
        type
      end
    end

    module CreateDatasetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDatasetInput, context: context)
        type = Types::CreateDatasetInput.new
        type.dataset_name = params[:dataset_name]
        type.actions = DatasetActions.build(params[:actions], context: "#{context}[:actions]") unless params[:actions].nil?
        type.triggers = DatasetTriggers.build(params[:triggers], context: "#{context}[:triggers]") unless params[:triggers].nil?
        type.content_delivery_rules = DatasetContentDeliveryRules.build(params[:content_delivery_rules], context: "#{context}[:content_delivery_rules]") unless params[:content_delivery_rules].nil?
        type.retention_period = RetentionPeriod.build(params[:retention_period], context: "#{context}[:retention_period]") unless params[:retention_period].nil?
        type.versioning_configuration = VersioningConfiguration.build(params[:versioning_configuration], context: "#{context}[:versioning_configuration]") unless params[:versioning_configuration].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.late_data_rules = LateDataRules.build(params[:late_data_rules], context: "#{context}[:late_data_rules]") unless params[:late_data_rules].nil?
        type
      end
    end

    module CreateDatasetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDatasetOutput, context: context)
        type = Types::CreateDatasetOutput.new
        type.dataset_name = params[:dataset_name]
        type.dataset_arn = params[:dataset_arn]
        type.retention_period = RetentionPeriod.build(params[:retention_period], context: "#{context}[:retention_period]") unless params[:retention_period].nil?
        type
      end
    end

    module CreateDatastoreInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDatastoreInput, context: context)
        type = Types::CreateDatastoreInput.new
        type.datastore_name = params[:datastore_name]
        type.datastore_storage = DatastoreStorage.build(params[:datastore_storage], context: "#{context}[:datastore_storage]") unless params[:datastore_storage].nil?
        type.retention_period = RetentionPeriod.build(params[:retention_period], context: "#{context}[:retention_period]") unless params[:retention_period].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.file_format_configuration = FileFormatConfiguration.build(params[:file_format_configuration], context: "#{context}[:file_format_configuration]") unless params[:file_format_configuration].nil?
        type.datastore_partitions = DatastorePartitions.build(params[:datastore_partitions], context: "#{context}[:datastore_partitions]") unless params[:datastore_partitions].nil?
        type
      end
    end

    module CreateDatastoreOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDatastoreOutput, context: context)
        type = Types::CreateDatastoreOutput.new
        type.datastore_name = params[:datastore_name]
        type.datastore_arn = params[:datastore_arn]
        type.retention_period = RetentionPeriod.build(params[:retention_period], context: "#{context}[:retention_period]") unless params[:retention_period].nil?
        type
      end
    end

    module CreatePipelineInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePipelineInput, context: context)
        type = Types::CreatePipelineInput.new
        type.pipeline_name = params[:pipeline_name]
        type.pipeline_activities = PipelineActivities.build(params[:pipeline_activities], context: "#{context}[:pipeline_activities]") unless params[:pipeline_activities].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreatePipelineOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePipelineOutput, context: context)
        type = Types::CreatePipelineOutput.new
        type.pipeline_name = params[:pipeline_name]
        type.pipeline_arn = params[:pipeline_arn]
        type
      end
    end

    module CustomerManagedChannelS3Storage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomerManagedChannelS3Storage, context: context)
        type = Types::CustomerManagedChannelS3Storage.new
        type.bucket = params[:bucket]
        type.key_prefix = params[:key_prefix]
        type.role_arn = params[:role_arn]
        type
      end
    end

    module CustomerManagedChannelS3StorageSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomerManagedChannelS3StorageSummary, context: context)
        type = Types::CustomerManagedChannelS3StorageSummary.new
        type.bucket = params[:bucket]
        type.key_prefix = params[:key_prefix]
        type.role_arn = params[:role_arn]
        type
      end
    end

    module CustomerManagedDatastoreS3Storage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomerManagedDatastoreS3Storage, context: context)
        type = Types::CustomerManagedDatastoreS3Storage.new
        type.bucket = params[:bucket]
        type.key_prefix = params[:key_prefix]
        type.role_arn = params[:role_arn]
        type
      end
    end

    module CustomerManagedDatastoreS3StorageSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomerManagedDatastoreS3StorageSummary, context: context)
        type = Types::CustomerManagedDatastoreS3StorageSummary.new
        type.bucket = params[:bucket]
        type.key_prefix = params[:key_prefix]
        type.role_arn = params[:role_arn]
        type
      end
    end

    module Dataset
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Dataset, context: context)
        type = Types::Dataset.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.actions = DatasetActions.build(params[:actions], context: "#{context}[:actions]") unless params[:actions].nil?
        type.triggers = DatasetTriggers.build(params[:triggers], context: "#{context}[:triggers]") unless params[:triggers].nil?
        type.content_delivery_rules = DatasetContentDeliveryRules.build(params[:content_delivery_rules], context: "#{context}[:content_delivery_rules]") unless params[:content_delivery_rules].nil?
        type.status = params[:status]
        type.creation_time = params[:creation_time]
        type.last_update_time = params[:last_update_time]
        type.retention_period = RetentionPeriod.build(params[:retention_period], context: "#{context}[:retention_period]") unless params[:retention_period].nil?
        type.versioning_configuration = VersioningConfiguration.build(params[:versioning_configuration], context: "#{context}[:versioning_configuration]") unless params[:versioning_configuration].nil?
        type.late_data_rules = LateDataRules.build(params[:late_data_rules], context: "#{context}[:late_data_rules]") unless params[:late_data_rules].nil?
        type
      end
    end

    module DatasetAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatasetAction, context: context)
        type = Types::DatasetAction.new
        type.action_name = params[:action_name]
        type.query_action = SqlQueryDatasetAction.build(params[:query_action], context: "#{context}[:query_action]") unless params[:query_action].nil?
        type.container_action = ContainerDatasetAction.build(params[:container_action], context: "#{context}[:container_action]") unless params[:container_action].nil?
        type
      end
    end

    module DatasetActionSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DatasetActionSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DatasetActionSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatasetActionSummary, context: context)
        type = Types::DatasetActionSummary.new
        type.action_name = params[:action_name]
        type.action_type = params[:action_type]
        type
      end
    end

    module DatasetActions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DatasetAction.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DatasetContentDeliveryDestination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatasetContentDeliveryDestination, context: context)
        type = Types::DatasetContentDeliveryDestination.new
        type.iot_events_destination_configuration = IotEventsDestinationConfiguration.build(params[:iot_events_destination_configuration], context: "#{context}[:iot_events_destination_configuration]") unless params[:iot_events_destination_configuration].nil?
        type.s3_destination_configuration = S3DestinationConfiguration.build(params[:s3_destination_configuration], context: "#{context}[:s3_destination_configuration]") unless params[:s3_destination_configuration].nil?
        type
      end
    end

    module DatasetContentDeliveryRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatasetContentDeliveryRule, context: context)
        type = Types::DatasetContentDeliveryRule.new
        type.entry_name = params[:entry_name]
        type.destination = DatasetContentDeliveryDestination.build(params[:destination], context: "#{context}[:destination]") unless params[:destination].nil?
        type
      end
    end

    module DatasetContentDeliveryRules
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DatasetContentDeliveryRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DatasetContentStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatasetContentStatus, context: context)
        type = Types::DatasetContentStatus.new
        type.state = params[:state]
        type.reason = params[:reason]
        type
      end
    end

    module DatasetContentSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DatasetContentSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DatasetContentSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatasetContentSummary, context: context)
        type = Types::DatasetContentSummary.new
        type.version = params[:version]
        type.status = DatasetContentStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type.creation_time = params[:creation_time]
        type.schedule_time = params[:schedule_time]
        type.completion_time = params[:completion_time]
        type
      end
    end

    module DatasetContentVersionValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatasetContentVersionValue, context: context)
        type = Types::DatasetContentVersionValue.new
        type.dataset_name = params[:dataset_name]
        type
      end
    end

    module DatasetEntries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DatasetEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DatasetEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatasetEntry, context: context)
        type = Types::DatasetEntry.new
        type.entry_name = params[:entry_name]
        type.data_uri = params[:data_uri]
        type
      end
    end

    module DatasetSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DatasetSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DatasetSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatasetSummary, context: context)
        type = Types::DatasetSummary.new
        type.dataset_name = params[:dataset_name]
        type.status = params[:status]
        type.creation_time = params[:creation_time]
        type.last_update_time = params[:last_update_time]
        type.triggers = DatasetTriggers.build(params[:triggers], context: "#{context}[:triggers]") unless params[:triggers].nil?
        type.actions = DatasetActionSummaries.build(params[:actions], context: "#{context}[:actions]") unless params[:actions].nil?
        type
      end
    end

    module DatasetTrigger
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatasetTrigger, context: context)
        type = Types::DatasetTrigger.new
        type.schedule = Schedule.build(params[:schedule], context: "#{context}[:schedule]") unless params[:schedule].nil?
        type.dataset = TriggeringDataset.build(params[:dataset], context: "#{context}[:dataset]") unless params[:dataset].nil?
        type
      end
    end

    module DatasetTriggers
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DatasetTrigger.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Datastore
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Datastore, context: context)
        type = Types::Datastore.new
        type.name = params[:name]
        type.storage = DatastoreStorage.build(params[:storage], context: "#{context}[:storage]") unless params[:storage].nil?
        type.arn = params[:arn]
        type.status = params[:status]
        type.retention_period = RetentionPeriod.build(params[:retention_period], context: "#{context}[:retention_period]") unless params[:retention_period].nil?
        type.creation_time = params[:creation_time]
        type.last_update_time = params[:last_update_time]
        type.last_message_arrival_time = params[:last_message_arrival_time]
        type.file_format_configuration = FileFormatConfiguration.build(params[:file_format_configuration], context: "#{context}[:file_format_configuration]") unless params[:file_format_configuration].nil?
        type.datastore_partitions = DatastorePartitions.build(params[:datastore_partitions], context: "#{context}[:datastore_partitions]") unless params[:datastore_partitions].nil?
        type
      end
    end

    module DatastoreActivity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatastoreActivity, context: context)
        type = Types::DatastoreActivity.new
        type.name = params[:name]
        type.datastore_name = params[:datastore_name]
        type
      end
    end

    module DatastoreIotSiteWiseMultiLayerStorage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatastoreIotSiteWiseMultiLayerStorage, context: context)
        type = Types::DatastoreIotSiteWiseMultiLayerStorage.new
        type.customer_managed_s3_storage = IotSiteWiseCustomerManagedDatastoreS3Storage.build(params[:customer_managed_s3_storage], context: "#{context}[:customer_managed_s3_storage]") unless params[:customer_managed_s3_storage].nil?
        type
      end
    end

    module DatastoreIotSiteWiseMultiLayerStorageSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatastoreIotSiteWiseMultiLayerStorageSummary, context: context)
        type = Types::DatastoreIotSiteWiseMultiLayerStorageSummary.new
        type.customer_managed_s3_storage = IotSiteWiseCustomerManagedDatastoreS3StorageSummary.build(params[:customer_managed_s3_storage], context: "#{context}[:customer_managed_s3_storage]") unless params[:customer_managed_s3_storage].nil?
        type
      end
    end

    module DatastorePartition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatastorePartition, context: context)
        type = Types::DatastorePartition.new
        type.attribute_partition = Partition.build(params[:attribute_partition], context: "#{context}[:attribute_partition]") unless params[:attribute_partition].nil?
        type.timestamp_partition = TimestampPartition.build(params[:timestamp_partition], context: "#{context}[:timestamp_partition]") unless params[:timestamp_partition].nil?
        type
      end
    end

    module DatastorePartitions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatastorePartitions, context: context)
        type = Types::DatastorePartitions.new
        type.partitions = Partitions.build(params[:partitions], context: "#{context}[:partitions]") unless params[:partitions].nil?
        type
      end
    end

    module DatastoreStatistics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatastoreStatistics, context: context)
        type = Types::DatastoreStatistics.new
        type.size = EstimatedResourceSize.build(params[:size], context: "#{context}[:size]") unless params[:size].nil?
        type
      end
    end

    module DatastoreStorage
      def self.build(params, context: '')
        return params if params.is_a?(Types::DatastoreStorage)
        Hearth::Validator.validate!(params, ::Hash, Types::DatastoreStorage, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :service_managed_s3
          Types::DatastoreStorage::ServiceManagedS3.new(
            (ServiceManagedDatastoreS3Storage.build(params[:service_managed_s3], context: "#{context}[:service_managed_s3]") unless params[:service_managed_s3].nil?)
          )
        when :customer_managed_s3
          Types::DatastoreStorage::CustomerManagedS3.new(
            (CustomerManagedDatastoreS3Storage.build(params[:customer_managed_s3], context: "#{context}[:customer_managed_s3]") unless params[:customer_managed_s3].nil?)
          )
        when :iot_site_wise_multi_layer_storage
          Types::DatastoreStorage::IotSiteWiseMultiLayerStorage.new(
            (DatastoreIotSiteWiseMultiLayerStorage.build(params[:iot_site_wise_multi_layer_storage], context: "#{context}[:iot_site_wise_multi_layer_storage]") unless params[:iot_site_wise_multi_layer_storage].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :service_managed_s3, :customer_managed_s3, :iot_site_wise_multi_layer_storage set"
        end
      end
    end

    module DatastoreStorageSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatastoreStorageSummary, context: context)
        type = Types::DatastoreStorageSummary.new
        type.service_managed_s3 = ServiceManagedDatastoreS3StorageSummary.build(params[:service_managed_s3], context: "#{context}[:service_managed_s3]") unless params[:service_managed_s3].nil?
        type.customer_managed_s3 = CustomerManagedDatastoreS3StorageSummary.build(params[:customer_managed_s3], context: "#{context}[:customer_managed_s3]") unless params[:customer_managed_s3].nil?
        type.iot_site_wise_multi_layer_storage = DatastoreIotSiteWiseMultiLayerStorageSummary.build(params[:iot_site_wise_multi_layer_storage], context: "#{context}[:iot_site_wise_multi_layer_storage]") unless params[:iot_site_wise_multi_layer_storage].nil?
        type
      end
    end

    module DatastoreSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DatastoreSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DatastoreSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatastoreSummary, context: context)
        type = Types::DatastoreSummary.new
        type.datastore_name = params[:datastore_name]
        type.datastore_storage = DatastoreStorageSummary.build(params[:datastore_storage], context: "#{context}[:datastore_storage]") unless params[:datastore_storage].nil?
        type.status = params[:status]
        type.creation_time = params[:creation_time]
        type.last_update_time = params[:last_update_time]
        type.last_message_arrival_time = params[:last_message_arrival_time]
        type.file_format_type = params[:file_format_type]
        type.datastore_partitions = DatastorePartitions.build(params[:datastore_partitions], context: "#{context}[:datastore_partitions]") unless params[:datastore_partitions].nil?
        type
      end
    end

    module DeleteChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteChannelInput, context: context)
        type = Types::DeleteChannelInput.new
        type.channel_name = params[:channel_name]
        type
      end
    end

    module DeleteChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteChannelOutput, context: context)
        type = Types::DeleteChannelOutput.new
        type
      end
    end

    module DeleteDatasetContentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDatasetContentInput, context: context)
        type = Types::DeleteDatasetContentInput.new
        type.dataset_name = params[:dataset_name]
        type.version_id = params[:version_id]
        type
      end
    end

    module DeleteDatasetContentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDatasetContentOutput, context: context)
        type = Types::DeleteDatasetContentOutput.new
        type
      end
    end

    module DeleteDatasetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDatasetInput, context: context)
        type = Types::DeleteDatasetInput.new
        type.dataset_name = params[:dataset_name]
        type
      end
    end

    module DeleteDatasetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDatasetOutput, context: context)
        type = Types::DeleteDatasetOutput.new
        type
      end
    end

    module DeleteDatastoreInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDatastoreInput, context: context)
        type = Types::DeleteDatastoreInput.new
        type.datastore_name = params[:datastore_name]
        type
      end
    end

    module DeleteDatastoreOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDatastoreOutput, context: context)
        type = Types::DeleteDatastoreOutput.new
        type
      end
    end

    module DeletePipelineInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePipelineInput, context: context)
        type = Types::DeletePipelineInput.new
        type.pipeline_name = params[:pipeline_name]
        type
      end
    end

    module DeletePipelineOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePipelineOutput, context: context)
        type = Types::DeletePipelineOutput.new
        type
      end
    end

    module DeltaTime
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeltaTime, context: context)
        type = Types::DeltaTime.new
        type.offset_seconds = params[:offset_seconds]
        type.time_expression = params[:time_expression]
        type
      end
    end

    module DeltaTimeSessionWindowConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeltaTimeSessionWindowConfiguration, context: context)
        type = Types::DeltaTimeSessionWindowConfiguration.new
        type.timeout_in_minutes = params[:timeout_in_minutes]
        type
      end
    end

    module DescribeChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeChannelInput, context: context)
        type = Types::DescribeChannelInput.new
        type.channel_name = params[:channel_name]
        type.include_statistics = params[:include_statistics]
        type
      end
    end

    module DescribeChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeChannelOutput, context: context)
        type = Types::DescribeChannelOutput.new
        type.channel = Channel.build(params[:channel], context: "#{context}[:channel]") unless params[:channel].nil?
        type.statistics = ChannelStatistics.build(params[:statistics], context: "#{context}[:statistics]") unless params[:statistics].nil?
        type
      end
    end

    module DescribeDatasetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDatasetInput, context: context)
        type = Types::DescribeDatasetInput.new
        type.dataset_name = params[:dataset_name]
        type
      end
    end

    module DescribeDatasetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDatasetOutput, context: context)
        type = Types::DescribeDatasetOutput.new
        type.dataset = Dataset.build(params[:dataset], context: "#{context}[:dataset]") unless params[:dataset].nil?
        type
      end
    end

    module DescribeDatastoreInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDatastoreInput, context: context)
        type = Types::DescribeDatastoreInput.new
        type.datastore_name = params[:datastore_name]
        type.include_statistics = params[:include_statistics]
        type
      end
    end

    module DescribeDatastoreOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDatastoreOutput, context: context)
        type = Types::DescribeDatastoreOutput.new
        type.datastore = Datastore.build(params[:datastore], context: "#{context}[:datastore]") unless params[:datastore].nil?
        type.statistics = DatastoreStatistics.build(params[:statistics], context: "#{context}[:statistics]") unless params[:statistics].nil?
        type
      end
    end

    module DescribeLoggingOptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLoggingOptionsInput, context: context)
        type = Types::DescribeLoggingOptionsInput.new
        type
      end
    end

    module DescribeLoggingOptionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLoggingOptionsOutput, context: context)
        type = Types::DescribeLoggingOptionsOutput.new
        type.logging_options = LoggingOptions.build(params[:logging_options], context: "#{context}[:logging_options]") unless params[:logging_options].nil?
        type
      end
    end

    module DescribePipelineInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePipelineInput, context: context)
        type = Types::DescribePipelineInput.new
        type.pipeline_name = params[:pipeline_name]
        type
      end
    end

    module DescribePipelineOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePipelineOutput, context: context)
        type = Types::DescribePipelineOutput.new
        type.pipeline = Pipeline.build(params[:pipeline], context: "#{context}[:pipeline]") unless params[:pipeline].nil?
        type
      end
    end

    module DeviceRegistryEnrichActivity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeviceRegistryEnrichActivity, context: context)
        type = Types::DeviceRegistryEnrichActivity.new
        type.name = params[:name]
        type.attribute = params[:attribute]
        type.thing_name = params[:thing_name]
        type.role_arn = params[:role_arn]
        type.next = params[:next]
        type
      end
    end

    module DeviceShadowEnrichActivity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeviceShadowEnrichActivity, context: context)
        type = Types::DeviceShadowEnrichActivity.new
        type.name = params[:name]
        type.attribute = params[:attribute]
        type.thing_name = params[:thing_name]
        type.role_arn = params[:role_arn]
        type.next = params[:next]
        type
      end
    end

    module EstimatedResourceSize
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EstimatedResourceSize, context: context)
        type = Types::EstimatedResourceSize.new
        type.estimated_size_in_bytes = params[:estimated_size_in_bytes]
        type.estimated_on = params[:estimated_on]
        type
      end
    end

    module FileFormatConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FileFormatConfiguration, context: context)
        type = Types::FileFormatConfiguration.new
        type.json_configuration = JsonConfiguration.build(params[:json_configuration], context: "#{context}[:json_configuration]") unless params[:json_configuration].nil?
        type.parquet_configuration = ParquetConfiguration.build(params[:parquet_configuration], context: "#{context}[:parquet_configuration]") unless params[:parquet_configuration].nil?
        type
      end
    end

    module FilterActivity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FilterActivity, context: context)
        type = Types::FilterActivity.new
        type.name = params[:name]
        type.filter = params[:filter]
        type.next = params[:next]
        type
      end
    end

    module GetDatasetContentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDatasetContentInput, context: context)
        type = Types::GetDatasetContentInput.new
        type.dataset_name = params[:dataset_name]
        type.version_id = params[:version_id]
        type
      end
    end

    module GetDatasetContentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDatasetContentOutput, context: context)
        type = Types::GetDatasetContentOutput.new
        type.entries = DatasetEntries.build(params[:entries], context: "#{context}[:entries]") unless params[:entries].nil?
        type.timestamp = params[:timestamp]
        type.status = DatasetContentStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type
      end
    end

    module GlueConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GlueConfiguration, context: context)
        type = Types::GlueConfiguration.new
        type.table_name = params[:table_name]
        type.database_name = params[:database_name]
        type
      end
    end

    module InternalFailureException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalFailureException, context: context)
        type = Types::InternalFailureException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidRequestException, context: context)
        type = Types::InvalidRequestException.new
        type.message = params[:message]
        type
      end
    end

    module IotEventsDestinationConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IotEventsDestinationConfiguration, context: context)
        type = Types::IotEventsDestinationConfiguration.new
        type.input_name = params[:input_name]
        type.role_arn = params[:role_arn]
        type
      end
    end

    module IotSiteWiseCustomerManagedDatastoreS3Storage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IotSiteWiseCustomerManagedDatastoreS3Storage, context: context)
        type = Types::IotSiteWiseCustomerManagedDatastoreS3Storage.new
        type.bucket = params[:bucket]
        type.key_prefix = params[:key_prefix]
        type
      end
    end

    module IotSiteWiseCustomerManagedDatastoreS3StorageSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IotSiteWiseCustomerManagedDatastoreS3StorageSummary, context: context)
        type = Types::IotSiteWiseCustomerManagedDatastoreS3StorageSummary.new
        type.bucket = params[:bucket]
        type.key_prefix = params[:key_prefix]
        type
      end
    end

    module JsonConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JsonConfiguration, context: context)
        type = Types::JsonConfiguration.new
        type
      end
    end

    module LambdaActivity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LambdaActivity, context: context)
        type = Types::LambdaActivity.new
        type.name = params[:name]
        type.lambda_name = params[:lambda_name]
        type.batch_size = params[:batch_size]
        type.next = params[:next]
        type
      end
    end

    module LateDataRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LateDataRule, context: context)
        type = Types::LateDataRule.new
        type.rule_name = params[:rule_name]
        type.rule_configuration = LateDataRuleConfiguration.build(params[:rule_configuration], context: "#{context}[:rule_configuration]") unless params[:rule_configuration].nil?
        type
      end
    end

    module LateDataRuleConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LateDataRuleConfiguration, context: context)
        type = Types::LateDataRuleConfiguration.new
        type.delta_time_session_window_configuration = DeltaTimeSessionWindowConfiguration.build(params[:delta_time_session_window_configuration], context: "#{context}[:delta_time_session_window_configuration]") unless params[:delta_time_session_window_configuration].nil?
        type
      end
    end

    module LateDataRules
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LateDataRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ListChannelsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListChannelsInput, context: context)
        type = Types::ListChannelsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListChannelsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListChannelsOutput, context: context)
        type = Types::ListChannelsOutput.new
        type.channel_summaries = ChannelSummaries.build(params[:channel_summaries], context: "#{context}[:channel_summaries]") unless params[:channel_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDatasetContentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDatasetContentsInput, context: context)
        type = Types::ListDatasetContentsInput.new
        type.dataset_name = params[:dataset_name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.scheduled_on_or_after = params[:scheduled_on_or_after]
        type.scheduled_before = params[:scheduled_before]
        type
      end
    end

    module ListDatasetContentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDatasetContentsOutput, context: context)
        type = Types::ListDatasetContentsOutput.new
        type.dataset_content_summaries = DatasetContentSummaries.build(params[:dataset_content_summaries], context: "#{context}[:dataset_content_summaries]") unless params[:dataset_content_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDatasetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDatasetsInput, context: context)
        type = Types::ListDatasetsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListDatasetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDatasetsOutput, context: context)
        type = Types::ListDatasetsOutput.new
        type.dataset_summaries = DatasetSummaries.build(params[:dataset_summaries], context: "#{context}[:dataset_summaries]") unless params[:dataset_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDatastoresInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDatastoresInput, context: context)
        type = Types::ListDatastoresInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListDatastoresOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDatastoresOutput, context: context)
        type = Types::ListDatastoresOutput.new
        type.datastore_summaries = DatastoreSummaries.build(params[:datastore_summaries], context: "#{context}[:datastore_summaries]") unless params[:datastore_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPipelinesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPipelinesInput, context: context)
        type = Types::ListPipelinesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListPipelinesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPipelinesOutput, context: context)
        type = Types::ListPipelinesOutput.new
        type.pipeline_summaries = PipelineSummaries.build(params[:pipeline_summaries], context: "#{context}[:pipeline_summaries]") unless params[:pipeline_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module LoggingOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoggingOptions, context: context)
        type = Types::LoggingOptions.new
        type.role_arn = params[:role_arn]
        type.level = params[:level]
        type.enabled = params[:enabled]
        type
      end
    end

    module MathActivity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MathActivity, context: context)
        type = Types::MathActivity.new
        type.name = params[:name]
        type.attribute = params[:attribute]
        type.math = params[:math]
        type.next = params[:next]
        type
      end
    end

    module Message
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Message, context: context)
        type = Types::Message.new
        type.message_id = params[:message_id]
        type.payload = params[:payload]
        type
      end
    end

    module MessagePayloads
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Messages
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Message.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OutputFileUriValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OutputFileUriValue, context: context)
        type = Types::OutputFileUriValue.new
        type.file_name = params[:file_name]
        type
      end
    end

    module ParquetConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ParquetConfiguration, context: context)
        type = Types::ParquetConfiguration.new
        type.schema_definition = SchemaDefinition.build(params[:schema_definition], context: "#{context}[:schema_definition]") unless params[:schema_definition].nil?
        type
      end
    end

    module Partition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Partition, context: context)
        type = Types::Partition.new
        type.attribute_name = params[:attribute_name]
        type
      end
    end

    module Partitions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DatastorePartition.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Pipeline
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Pipeline, context: context)
        type = Types::Pipeline.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.activities = PipelineActivities.build(params[:activities], context: "#{context}[:activities]") unless params[:activities].nil?
        type.reprocessing_summaries = ReprocessingSummaries.build(params[:reprocessing_summaries], context: "#{context}[:reprocessing_summaries]") unless params[:reprocessing_summaries].nil?
        type.creation_time = params[:creation_time]
        type.last_update_time = params[:last_update_time]
        type
      end
    end

    module PipelineActivities
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PipelineActivity.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PipelineActivity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PipelineActivity, context: context)
        type = Types::PipelineActivity.new
        type.channel = ChannelActivity.build(params[:channel], context: "#{context}[:channel]") unless params[:channel].nil?
        type.lambda = LambdaActivity.build(params[:lambda], context: "#{context}[:lambda]") unless params[:lambda].nil?
        type.datastore = DatastoreActivity.build(params[:datastore], context: "#{context}[:datastore]") unless params[:datastore].nil?
        type.add_attributes = AddAttributesActivity.build(params[:add_attributes], context: "#{context}[:add_attributes]") unless params[:add_attributes].nil?
        type.remove_attributes = RemoveAttributesActivity.build(params[:remove_attributes], context: "#{context}[:remove_attributes]") unless params[:remove_attributes].nil?
        type.select_attributes = SelectAttributesActivity.build(params[:select_attributes], context: "#{context}[:select_attributes]") unless params[:select_attributes].nil?
        type.filter = FilterActivity.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.math = MathActivity.build(params[:math], context: "#{context}[:math]") unless params[:math].nil?
        type.device_registry_enrich = DeviceRegistryEnrichActivity.build(params[:device_registry_enrich], context: "#{context}[:device_registry_enrich]") unless params[:device_registry_enrich].nil?
        type.device_shadow_enrich = DeviceShadowEnrichActivity.build(params[:device_shadow_enrich], context: "#{context}[:device_shadow_enrich]") unless params[:device_shadow_enrich].nil?
        type
      end
    end

    module PipelineSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PipelineSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PipelineSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PipelineSummary, context: context)
        type = Types::PipelineSummary.new
        type.pipeline_name = params[:pipeline_name]
        type.reprocessing_summaries = ReprocessingSummaries.build(params[:reprocessing_summaries], context: "#{context}[:reprocessing_summaries]") unless params[:reprocessing_summaries].nil?
        type.creation_time = params[:creation_time]
        type.last_update_time = params[:last_update_time]
        type
      end
    end

    module PutLoggingOptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutLoggingOptionsInput, context: context)
        type = Types::PutLoggingOptionsInput.new
        type.logging_options = LoggingOptions.build(params[:logging_options], context: "#{context}[:logging_options]") unless params[:logging_options].nil?
        type
      end
    end

    module PutLoggingOptionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutLoggingOptionsOutput, context: context)
        type = Types::PutLoggingOptionsOutput.new
        type
      end
    end

    module QueryFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QueryFilter, context: context)
        type = Types::QueryFilter.new
        type.delta_time = DeltaTime.build(params[:delta_time], context: "#{context}[:delta_time]") unless params[:delta_time].nil?
        type
      end
    end

    module QueryFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << QueryFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RemoveAttributesActivity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveAttributesActivity, context: context)
        type = Types::RemoveAttributesActivity.new
        type.name = params[:name]
        type.attributes = AttributeNames.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.next = params[:next]
        type
      end
    end

    module ReprocessingSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReprocessingSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReprocessingSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReprocessingSummary, context: context)
        type = Types::ReprocessingSummary.new
        type.id = params[:id]
        type.status = params[:status]
        type.creation_time = params[:creation_time]
        type
      end
    end

    module ResourceAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceAlreadyExistsException, context: context)
        type = Types::ResourceAlreadyExistsException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ResourceConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceConfiguration, context: context)
        type = Types::ResourceConfiguration.new
        type.compute_type = params[:compute_type]
        type.volume_size_in_gb = params[:volume_size_in_gb]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module RetentionPeriod
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RetentionPeriod, context: context)
        type = Types::RetentionPeriod.new
        type.unlimited = params[:unlimited]
        type.number_of_days = params[:number_of_days]
        type
      end
    end

    module RunPipelineActivityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RunPipelineActivityInput, context: context)
        type = Types::RunPipelineActivityInput.new
        type.pipeline_activity = PipelineActivity.build(params[:pipeline_activity], context: "#{context}[:pipeline_activity]") unless params[:pipeline_activity].nil?
        type.payloads = MessagePayloads.build(params[:payloads], context: "#{context}[:payloads]") unless params[:payloads].nil?
        type
      end
    end

    module RunPipelineActivityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RunPipelineActivityOutput, context: context)
        type = Types::RunPipelineActivityOutput.new
        type.payloads = MessagePayloads.build(params[:payloads], context: "#{context}[:payloads]") unless params[:payloads].nil?
        type.log_result = params[:log_result]
        type
      end
    end

    module S3DestinationConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3DestinationConfiguration, context: context)
        type = Types::S3DestinationConfiguration.new
        type.bucket = params[:bucket]
        type.key = params[:key]
        type.glue_configuration = GlueConfiguration.build(params[:glue_configuration], context: "#{context}[:glue_configuration]") unless params[:glue_configuration].nil?
        type.role_arn = params[:role_arn]
        type
      end
    end

    module S3PathChannelMessages
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SampleChannelDataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SampleChannelDataInput, context: context)
        type = Types::SampleChannelDataInput.new
        type.channel_name = params[:channel_name]
        type.max_messages = params[:max_messages]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type
      end
    end

    module SampleChannelDataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SampleChannelDataOutput, context: context)
        type = Types::SampleChannelDataOutput.new
        type.payloads = MessagePayloads.build(params[:payloads], context: "#{context}[:payloads]") unless params[:payloads].nil?
        type
      end
    end

    module Schedule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Schedule, context: context)
        type = Types::Schedule.new
        type.expression = params[:expression]
        type
      end
    end

    module SchemaDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SchemaDefinition, context: context)
        type = Types::SchemaDefinition.new
        type.columns = Columns.build(params[:columns], context: "#{context}[:columns]") unless params[:columns].nil?
        type
      end
    end

    module SelectAttributesActivity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SelectAttributesActivity, context: context)
        type = Types::SelectAttributesActivity.new
        type.name = params[:name]
        type.attributes = AttributeNames.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.next = params[:next]
        type
      end
    end

    module ServiceManagedChannelS3Storage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceManagedChannelS3Storage, context: context)
        type = Types::ServiceManagedChannelS3Storage.new
        type
      end
    end

    module ServiceManagedChannelS3StorageSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceManagedChannelS3StorageSummary, context: context)
        type = Types::ServiceManagedChannelS3StorageSummary.new
        type
      end
    end

    module ServiceManagedDatastoreS3Storage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceManagedDatastoreS3Storage, context: context)
        type = Types::ServiceManagedDatastoreS3Storage.new
        type
      end
    end

    module ServiceManagedDatastoreS3StorageSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceManagedDatastoreS3StorageSummary, context: context)
        type = Types::ServiceManagedDatastoreS3StorageSummary.new
        type
      end
    end

    module ServiceUnavailableException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceUnavailableException, context: context)
        type = Types::ServiceUnavailableException.new
        type.message = params[:message]
        type
      end
    end

    module SqlQueryDatasetAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SqlQueryDatasetAction, context: context)
        type = Types::SqlQueryDatasetAction.new
        type.sql_query = params[:sql_query]
        type.filters = QueryFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module StartPipelineReprocessingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartPipelineReprocessingInput, context: context)
        type = Types::StartPipelineReprocessingInput.new
        type.pipeline_name = params[:pipeline_name]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.channel_messages = ChannelMessages.build(params[:channel_messages], context: "#{context}[:channel_messages]") unless params[:channel_messages].nil?
        type
      end
    end

    module StartPipelineReprocessingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartPipelineReprocessingOutput, context: context)
        type = Types::StartPipelineReprocessingOutput.new
        type.reprocessing_id = params[:reprocessing_id]
        type
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
        params.each do |element|
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

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type
      end
    end

    module TimestampPartition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TimestampPartition, context: context)
        type = Types::TimestampPartition.new
        type.attribute_name = params[:attribute_name]
        type.timestamp_format = params[:timestamp_format]
        type
      end
    end

    module TriggeringDataset
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TriggeringDataset, context: context)
        type = Types::TriggeringDataset.new
        type.name = params[:name]
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

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

    module UpdateChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateChannelInput, context: context)
        type = Types::UpdateChannelInput.new
        type.channel_name = params[:channel_name]
        type.channel_storage = ChannelStorage.build(params[:channel_storage], context: "#{context}[:channel_storage]") unless params[:channel_storage].nil?
        type.retention_period = RetentionPeriod.build(params[:retention_period], context: "#{context}[:retention_period]") unless params[:retention_period].nil?
        type
      end
    end

    module UpdateChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateChannelOutput, context: context)
        type = Types::UpdateChannelOutput.new
        type
      end
    end

    module UpdateDatasetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDatasetInput, context: context)
        type = Types::UpdateDatasetInput.new
        type.dataset_name = params[:dataset_name]
        type.actions = DatasetActions.build(params[:actions], context: "#{context}[:actions]") unless params[:actions].nil?
        type.triggers = DatasetTriggers.build(params[:triggers], context: "#{context}[:triggers]") unless params[:triggers].nil?
        type.content_delivery_rules = DatasetContentDeliveryRules.build(params[:content_delivery_rules], context: "#{context}[:content_delivery_rules]") unless params[:content_delivery_rules].nil?
        type.retention_period = RetentionPeriod.build(params[:retention_period], context: "#{context}[:retention_period]") unless params[:retention_period].nil?
        type.versioning_configuration = VersioningConfiguration.build(params[:versioning_configuration], context: "#{context}[:versioning_configuration]") unless params[:versioning_configuration].nil?
        type.late_data_rules = LateDataRules.build(params[:late_data_rules], context: "#{context}[:late_data_rules]") unless params[:late_data_rules].nil?
        type
      end
    end

    module UpdateDatasetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDatasetOutput, context: context)
        type = Types::UpdateDatasetOutput.new
        type
      end
    end

    module UpdateDatastoreInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDatastoreInput, context: context)
        type = Types::UpdateDatastoreInput.new
        type.datastore_name = params[:datastore_name]
        type.retention_period = RetentionPeriod.build(params[:retention_period], context: "#{context}[:retention_period]") unless params[:retention_period].nil?
        type.datastore_storage = DatastoreStorage.build(params[:datastore_storage], context: "#{context}[:datastore_storage]") unless params[:datastore_storage].nil?
        type.file_format_configuration = FileFormatConfiguration.build(params[:file_format_configuration], context: "#{context}[:file_format_configuration]") unless params[:file_format_configuration].nil?
        type
      end
    end

    module UpdateDatastoreOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDatastoreOutput, context: context)
        type = Types::UpdateDatastoreOutput.new
        type
      end
    end

    module UpdatePipelineInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePipelineInput, context: context)
        type = Types::UpdatePipelineInput.new
        type.pipeline_name = params[:pipeline_name]
        type.pipeline_activities = PipelineActivities.build(params[:pipeline_activities], context: "#{context}[:pipeline_activities]") unless params[:pipeline_activities].nil?
        type
      end
    end

    module UpdatePipelineOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePipelineOutput, context: context)
        type = Types::UpdatePipelineOutput.new
        type
      end
    end

    module Variable
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Variable, context: context)
        type = Types::Variable.new
        type.name = params[:name]
        type.string_value = params[:string_value]
        type.double_value = params[:double_value]
        type.dataset_content_version_value = DatasetContentVersionValue.build(params[:dataset_content_version_value], context: "#{context}[:dataset_content_version_value]") unless params[:dataset_content_version_value].nil?
        type.output_file_uri_value = OutputFileUriValue.build(params[:output_file_uri_value], context: "#{context}[:output_file_uri_value]") unless params[:output_file_uri_value].nil?
        type
      end
    end

    module Variables
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Variable.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module VersioningConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VersioningConfiguration, context: context)
        type = Types::VersioningConfiguration.new
        type.unlimited = params[:unlimited]
        type.max_versions = params[:max_versions]
        type
      end
    end

  end
end
