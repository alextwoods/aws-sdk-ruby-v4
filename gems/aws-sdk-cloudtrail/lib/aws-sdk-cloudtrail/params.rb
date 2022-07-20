# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CloudTrail
  module Params

    module AddTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddTagsInput, context: context)
        type = Types::AddTagsInput.new
        type.resource_id = params[:resource_id]
        type.tags_list = TagsList.build(params[:tags_list], context: "#{context}[:tags_list]") unless params[:tags_list].nil?
        type
      end
    end

    module AddTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddTagsOutput, context: context)
        type = Types::AddTagsOutput.new
        type
      end
    end

    module AdvancedEventSelector
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdvancedEventSelector, context: context)
        type = Types::AdvancedEventSelector.new
        type.name = params[:name]
        type.field_selectors = AdvancedFieldSelectors.build(params[:field_selectors], context: "#{context}[:field_selectors]") unless params[:field_selectors].nil?
        type
      end
    end

    module AdvancedEventSelectors
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AdvancedEventSelector.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AdvancedFieldSelector
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdvancedFieldSelector, context: context)
        type = Types::AdvancedFieldSelector.new
        type.field = params[:field]
        type.equals = Operator.build(params[:equals], context: "#{context}[:equals]") unless params[:equals].nil?
        type.starts_with = Operator.build(params[:starts_with], context: "#{context}[:starts_with]") unless params[:starts_with].nil?
        type.ends_with = Operator.build(params[:ends_with], context: "#{context}[:ends_with]") unless params[:ends_with].nil?
        type.not_equals = Operator.build(params[:not_equals], context: "#{context}[:not_equals]") unless params[:not_equals].nil?
        type.not_starts_with = Operator.build(params[:not_starts_with], context: "#{context}[:not_starts_with]") unless params[:not_starts_with].nil?
        type.not_ends_with = Operator.build(params[:not_ends_with], context: "#{context}[:not_ends_with]") unless params[:not_ends_with].nil?
        type
      end
    end

    module AdvancedFieldSelectors
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AdvancedFieldSelector.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CancelQueryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelQueryInput, context: context)
        type = Types::CancelQueryInput.new
        type.event_data_store = params[:event_data_store]
        type.query_id = params[:query_id]
        type
      end
    end

    module CancelQueryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelQueryOutput, context: context)
        type = Types::CancelQueryOutput.new
        type.query_id = params[:query_id]
        type.query_status = params[:query_status]
        type
      end
    end

    module CloudTrailARNInvalidException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudTrailARNInvalidException, context: context)
        type = Types::CloudTrailARNInvalidException.new
        type.message = params[:message]
        type
      end
    end

    module CloudTrailAccessNotEnabledException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudTrailAccessNotEnabledException, context: context)
        type = Types::CloudTrailAccessNotEnabledException.new
        type.message = params[:message]
        type
      end
    end

    module CloudTrailInvalidClientTokenIdException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudTrailInvalidClientTokenIdException, context: context)
        type = Types::CloudTrailInvalidClientTokenIdException.new
        type.message = params[:message]
        type
      end
    end

    module CloudWatchLogsDeliveryUnavailableException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudWatchLogsDeliveryUnavailableException, context: context)
        type = Types::CloudWatchLogsDeliveryUnavailableException.new
        type.message = params[:message]
        type
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type
      end
    end

    module CreateEventDataStoreInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEventDataStoreInput, context: context)
        type = Types::CreateEventDataStoreInput.new
        type.name = params[:name]
        type.advanced_event_selectors = AdvancedEventSelectors.build(params[:advanced_event_selectors], context: "#{context}[:advanced_event_selectors]") unless params[:advanced_event_selectors].nil?
        type.multi_region_enabled = params[:multi_region_enabled]
        type.organization_enabled = params[:organization_enabled]
        type.retention_period = params[:retention_period]
        type.termination_protection_enabled = params[:termination_protection_enabled]
        type.tags_list = TagsList.build(params[:tags_list], context: "#{context}[:tags_list]") unless params[:tags_list].nil?
        type
      end
    end

    module CreateEventDataStoreOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEventDataStoreOutput, context: context)
        type = Types::CreateEventDataStoreOutput.new
        type.event_data_store_arn = params[:event_data_store_arn]
        type.name = params[:name]
        type.status = params[:status]
        type.advanced_event_selectors = AdvancedEventSelectors.build(params[:advanced_event_selectors], context: "#{context}[:advanced_event_selectors]") unless params[:advanced_event_selectors].nil?
        type.multi_region_enabled = params[:multi_region_enabled]
        type.organization_enabled = params[:organization_enabled]
        type.retention_period = params[:retention_period]
        type.termination_protection_enabled = params[:termination_protection_enabled]
        type.tags_list = TagsList.build(params[:tags_list], context: "#{context}[:tags_list]") unless params[:tags_list].nil?
        type.created_timestamp = params[:created_timestamp]
        type.updated_timestamp = params[:updated_timestamp]
        type
      end
    end

    module CreateTrailInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTrailInput, context: context)
        type = Types::CreateTrailInput.new
        type.name = params[:name]
        type.s3_bucket_name = params[:s3_bucket_name]
        type.s3_key_prefix = params[:s3_key_prefix]
        type.sns_topic_name = params[:sns_topic_name]
        type.include_global_service_events = params[:include_global_service_events]
        type.is_multi_region_trail = params[:is_multi_region_trail]
        type.enable_log_file_validation = params[:enable_log_file_validation]
        type.cloud_watch_logs_log_group_arn = params[:cloud_watch_logs_log_group_arn]
        type.cloud_watch_logs_role_arn = params[:cloud_watch_logs_role_arn]
        type.kms_key_id = params[:kms_key_id]
        type.is_organization_trail = params[:is_organization_trail]
        type.tags_list = TagsList.build(params[:tags_list], context: "#{context}[:tags_list]") unless params[:tags_list].nil?
        type
      end
    end

    module CreateTrailOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTrailOutput, context: context)
        type = Types::CreateTrailOutput.new
        type.name = params[:name]
        type.s3_bucket_name = params[:s3_bucket_name]
        type.s3_key_prefix = params[:s3_key_prefix]
        type.sns_topic_name = params[:sns_topic_name]
        type.sns_topic_arn = params[:sns_topic_arn]
        type.include_global_service_events = params[:include_global_service_events]
        type.is_multi_region_trail = params[:is_multi_region_trail]
        type.trail_arn = params[:trail_arn]
        type.log_file_validation_enabled = params[:log_file_validation_enabled]
        type.cloud_watch_logs_log_group_arn = params[:cloud_watch_logs_log_group_arn]
        type.cloud_watch_logs_role_arn = params[:cloud_watch_logs_role_arn]
        type.kms_key_id = params[:kms_key_id]
        type.is_organization_trail = params[:is_organization_trail]
        type
      end
    end

    module DataResource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataResource, context: context)
        type = Types::DataResource.new
        type.type = params[:type]
        type.values = DataResourceValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module DataResourceValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DataResources
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DataResource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeleteEventDataStoreInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEventDataStoreInput, context: context)
        type = Types::DeleteEventDataStoreInput.new
        type.event_data_store = params[:event_data_store]
        type
      end
    end

    module DeleteEventDataStoreOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEventDataStoreOutput, context: context)
        type = Types::DeleteEventDataStoreOutput.new
        type
      end
    end

    module DeleteTrailInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTrailInput, context: context)
        type = Types::DeleteTrailInput.new
        type.name = params[:name]
        type
      end
    end

    module DeleteTrailOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTrailOutput, context: context)
        type = Types::DeleteTrailOutput.new
        type
      end
    end

    module DescribeQueryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeQueryInput, context: context)
        type = Types::DescribeQueryInput.new
        type.event_data_store = params[:event_data_store]
        type.query_id = params[:query_id]
        type
      end
    end

    module DescribeQueryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeQueryOutput, context: context)
        type = Types::DescribeQueryOutput.new
        type.query_id = params[:query_id]
        type.query_string = params[:query_string]
        type.query_status = params[:query_status]
        type.query_statistics = QueryStatisticsForDescribeQuery.build(params[:query_statistics], context: "#{context}[:query_statistics]") unless params[:query_statistics].nil?
        type.error_message = params[:error_message]
        type
      end
    end

    module DescribeTrailsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTrailsInput, context: context)
        type = Types::DescribeTrailsInput.new
        type.trail_name_list = TrailNameList.build(params[:trail_name_list], context: "#{context}[:trail_name_list]") unless params[:trail_name_list].nil?
        type.include_shadow_trails = params[:include_shadow_trails]
        type
      end
    end

    module DescribeTrailsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTrailsOutput, context: context)
        type = Types::DescribeTrailsOutput.new
        type.trail_list = TrailList.build(params[:trail_list], context: "#{context}[:trail_list]") unless params[:trail_list].nil?
        type
      end
    end

    module Event
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Event, context: context)
        type = Types::Event.new
        type.event_id = params[:event_id]
        type.event_name = params[:event_name]
        type.read_only = params[:read_only]
        type.access_key_id = params[:access_key_id]
        type.event_time = params[:event_time]
        type.event_source = params[:event_source]
        type.username = params[:username]
        type.resources = ResourceList.build(params[:resources], context: "#{context}[:resources]") unless params[:resources].nil?
        type.cloud_trail_event = params[:cloud_trail_event]
        type
      end
    end

    module EventDataStore
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventDataStore, context: context)
        type = Types::EventDataStore.new
        type.event_data_store_arn = params[:event_data_store_arn]
        type.name = params[:name]
        type.termination_protection_enabled = params[:termination_protection_enabled]
        type.status = params[:status]
        type.advanced_event_selectors = AdvancedEventSelectors.build(params[:advanced_event_selectors], context: "#{context}[:advanced_event_selectors]") unless params[:advanced_event_selectors].nil?
        type.multi_region_enabled = params[:multi_region_enabled]
        type.organization_enabled = params[:organization_enabled]
        type.retention_period = params[:retention_period]
        type.created_timestamp = params[:created_timestamp]
        type.updated_timestamp = params[:updated_timestamp]
        type
      end
    end

    module EventDataStoreARNInvalidException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventDataStoreARNInvalidException, context: context)
        type = Types::EventDataStoreARNInvalidException.new
        type.message = params[:message]
        type
      end
    end

    module EventDataStoreAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventDataStoreAlreadyExistsException, context: context)
        type = Types::EventDataStoreAlreadyExistsException.new
        type.message = params[:message]
        type
      end
    end

    module EventDataStoreMaxLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventDataStoreMaxLimitExceededException, context: context)
        type = Types::EventDataStoreMaxLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module EventDataStoreNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventDataStoreNotFoundException, context: context)
        type = Types::EventDataStoreNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module EventDataStoreTerminationProtectedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventDataStoreTerminationProtectedException, context: context)
        type = Types::EventDataStoreTerminationProtectedException.new
        type.message = params[:message]
        type
      end
    end

    module EventDataStores
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EventDataStore.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EventSelector
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventSelector, context: context)
        type = Types::EventSelector.new
        type.read_write_type = params[:read_write_type]
        type.include_management_events = params[:include_management_events]
        type.data_resources = DataResources.build(params[:data_resources], context: "#{context}[:data_resources]") unless params[:data_resources].nil?
        type.exclude_management_event_sources = ExcludeManagementEventSources.build(params[:exclude_management_event_sources], context: "#{context}[:exclude_management_event_sources]") unless params[:exclude_management_event_sources].nil?
        type
      end
    end

    module EventSelectors
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EventSelector.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EventsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Event.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ExcludeManagementEventSources
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module GetEventDataStoreInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEventDataStoreInput, context: context)
        type = Types::GetEventDataStoreInput.new
        type.event_data_store = params[:event_data_store]
        type
      end
    end

    module GetEventDataStoreOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEventDataStoreOutput, context: context)
        type = Types::GetEventDataStoreOutput.new
        type.event_data_store_arn = params[:event_data_store_arn]
        type.name = params[:name]
        type.status = params[:status]
        type.advanced_event_selectors = AdvancedEventSelectors.build(params[:advanced_event_selectors], context: "#{context}[:advanced_event_selectors]") unless params[:advanced_event_selectors].nil?
        type.multi_region_enabled = params[:multi_region_enabled]
        type.organization_enabled = params[:organization_enabled]
        type.retention_period = params[:retention_period]
        type.termination_protection_enabled = params[:termination_protection_enabled]
        type.created_timestamp = params[:created_timestamp]
        type.updated_timestamp = params[:updated_timestamp]
        type
      end
    end

    module GetEventSelectorsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEventSelectorsInput, context: context)
        type = Types::GetEventSelectorsInput.new
        type.trail_name = params[:trail_name]
        type
      end
    end

    module GetEventSelectorsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEventSelectorsOutput, context: context)
        type = Types::GetEventSelectorsOutput.new
        type.trail_arn = params[:trail_arn]
        type.event_selectors = EventSelectors.build(params[:event_selectors], context: "#{context}[:event_selectors]") unless params[:event_selectors].nil?
        type.advanced_event_selectors = AdvancedEventSelectors.build(params[:advanced_event_selectors], context: "#{context}[:advanced_event_selectors]") unless params[:advanced_event_selectors].nil?
        type
      end
    end

    module GetInsightSelectorsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInsightSelectorsInput, context: context)
        type = Types::GetInsightSelectorsInput.new
        type.trail_name = params[:trail_name]
        type
      end
    end

    module GetInsightSelectorsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInsightSelectorsOutput, context: context)
        type = Types::GetInsightSelectorsOutput.new
        type.trail_arn = params[:trail_arn]
        type.insight_selectors = InsightSelectors.build(params[:insight_selectors], context: "#{context}[:insight_selectors]") unless params[:insight_selectors].nil?
        type
      end
    end

    module GetQueryResultsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetQueryResultsInput, context: context)
        type = Types::GetQueryResultsInput.new
        type.event_data_store = params[:event_data_store]
        type.query_id = params[:query_id]
        type.next_token = params[:next_token]
        type.max_query_results = params[:max_query_results]
        type
      end
    end

    module GetQueryResultsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetQueryResultsOutput, context: context)
        type = Types::GetQueryResultsOutput.new
        type.query_status = params[:query_status]
        type.query_statistics = QueryStatistics.build(params[:query_statistics], context: "#{context}[:query_statistics]") unless params[:query_statistics].nil?
        type.query_result_rows = QueryResultRows.build(params[:query_result_rows], context: "#{context}[:query_result_rows]") unless params[:query_result_rows].nil?
        type.next_token = params[:next_token]
        type.error_message = params[:error_message]
        type
      end
    end

    module GetTrailInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTrailInput, context: context)
        type = Types::GetTrailInput.new
        type.name = params[:name]
        type
      end
    end

    module GetTrailOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTrailOutput, context: context)
        type = Types::GetTrailOutput.new
        type.trail = Trail.build(params[:trail], context: "#{context}[:trail]") unless params[:trail].nil?
        type
      end
    end

    module GetTrailStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTrailStatusInput, context: context)
        type = Types::GetTrailStatusInput.new
        type.name = params[:name]
        type
      end
    end

    module GetTrailStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTrailStatusOutput, context: context)
        type = Types::GetTrailStatusOutput.new
        type.is_logging = params[:is_logging]
        type.latest_delivery_error = params[:latest_delivery_error]
        type.latest_notification_error = params[:latest_notification_error]
        type.latest_delivery_time = params[:latest_delivery_time]
        type.latest_notification_time = params[:latest_notification_time]
        type.start_logging_time = params[:start_logging_time]
        type.stop_logging_time = params[:stop_logging_time]
        type.latest_cloud_watch_logs_delivery_error = params[:latest_cloud_watch_logs_delivery_error]
        type.latest_cloud_watch_logs_delivery_time = params[:latest_cloud_watch_logs_delivery_time]
        type.latest_digest_delivery_time = params[:latest_digest_delivery_time]
        type.latest_digest_delivery_error = params[:latest_digest_delivery_error]
        type.latest_delivery_attempt_time = params[:latest_delivery_attempt_time]
        type.latest_notification_attempt_time = params[:latest_notification_attempt_time]
        type.latest_notification_attempt_succeeded = params[:latest_notification_attempt_succeeded]
        type.latest_delivery_attempt_succeeded = params[:latest_delivery_attempt_succeeded]
        type.time_logging_started = params[:time_logging_started]
        type.time_logging_stopped = params[:time_logging_stopped]
        type
      end
    end

    module InactiveEventDataStoreException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InactiveEventDataStoreException, context: context)
        type = Types::InactiveEventDataStoreException.new
        type.message = params[:message]
        type
      end
    end

    module InactiveQueryException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InactiveQueryException, context: context)
        type = Types::InactiveQueryException.new
        type.message = params[:message]
        type
      end
    end

    module InsightNotEnabledException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InsightNotEnabledException, context: context)
        type = Types::InsightNotEnabledException.new
        type.message = params[:message]
        type
      end
    end

    module InsightSelector
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InsightSelector, context: context)
        type = Types::InsightSelector.new
        type.insight_type = params[:insight_type]
        type
      end
    end

    module InsightSelectors
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InsightSelector.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InsufficientDependencyServiceAccessPermissionException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InsufficientDependencyServiceAccessPermissionException, context: context)
        type = Types::InsufficientDependencyServiceAccessPermissionException.new
        type.message = params[:message]
        type
      end
    end

    module InsufficientEncryptionPolicyException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InsufficientEncryptionPolicyException, context: context)
        type = Types::InsufficientEncryptionPolicyException.new
        type.message = params[:message]
        type
      end
    end

    module InsufficientS3BucketPolicyException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InsufficientS3BucketPolicyException, context: context)
        type = Types::InsufficientS3BucketPolicyException.new
        type.message = params[:message]
        type
      end
    end

    module InsufficientSnsTopicPolicyException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InsufficientSnsTopicPolicyException, context: context)
        type = Types::InsufficientSnsTopicPolicyException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidCloudWatchLogsLogGroupArnException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidCloudWatchLogsLogGroupArnException, context: context)
        type = Types::InvalidCloudWatchLogsLogGroupArnException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidCloudWatchLogsRoleArnException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidCloudWatchLogsRoleArnException, context: context)
        type = Types::InvalidCloudWatchLogsRoleArnException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidDateRangeException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidDateRangeException, context: context)
        type = Types::InvalidDateRangeException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidEventCategoryException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidEventCategoryException, context: context)
        type = Types::InvalidEventCategoryException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidEventDataStoreStatusException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidEventDataStoreStatusException, context: context)
        type = Types::InvalidEventDataStoreStatusException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidEventSelectorsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidEventSelectorsException, context: context)
        type = Types::InvalidEventSelectorsException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidHomeRegionException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidHomeRegionException, context: context)
        type = Types::InvalidHomeRegionException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidInsightSelectorsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidInsightSelectorsException, context: context)
        type = Types::InvalidInsightSelectorsException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidKmsKeyIdException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidKmsKeyIdException, context: context)
        type = Types::InvalidKmsKeyIdException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidLookupAttributesException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidLookupAttributesException, context: context)
        type = Types::InvalidLookupAttributesException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidMaxResultsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidMaxResultsException, context: context)
        type = Types::InvalidMaxResultsException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidNextTokenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidNextTokenException, context: context)
        type = Types::InvalidNextTokenException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidParameterCombinationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidParameterCombinationException, context: context)
        type = Types::InvalidParameterCombinationException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidParameterException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidParameterException, context: context)
        type = Types::InvalidParameterException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidQueryStatementException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidQueryStatementException, context: context)
        type = Types::InvalidQueryStatementException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidQueryStatusException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidQueryStatusException, context: context)
        type = Types::InvalidQueryStatusException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidS3BucketNameException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidS3BucketNameException, context: context)
        type = Types::InvalidS3BucketNameException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidS3PrefixException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidS3PrefixException, context: context)
        type = Types::InvalidS3PrefixException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidSnsTopicNameException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidSnsTopicNameException, context: context)
        type = Types::InvalidSnsTopicNameException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidTagParameterException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidTagParameterException, context: context)
        type = Types::InvalidTagParameterException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidTimeRangeException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidTimeRangeException, context: context)
        type = Types::InvalidTimeRangeException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidTokenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidTokenException, context: context)
        type = Types::InvalidTokenException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidTrailNameException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidTrailNameException, context: context)
        type = Types::InvalidTrailNameException.new
        type.message = params[:message]
        type
      end
    end

    module KmsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KmsException, context: context)
        type = Types::KmsException.new
        type.message = params[:message]
        type
      end
    end

    module KmsKeyDisabledException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KmsKeyDisabledException, context: context)
        type = Types::KmsKeyDisabledException.new
        type.message = params[:message]
        type
      end
    end

    module KmsKeyNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KmsKeyNotFoundException, context: context)
        type = Types::KmsKeyNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module ListEventDataStoresInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEventDataStoresInput, context: context)
        type = Types::ListEventDataStoresInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListEventDataStoresOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEventDataStoresOutput, context: context)
        type = Types::ListEventDataStoresOutput.new
        type.event_data_stores = EventDataStores.build(params[:event_data_stores], context: "#{context}[:event_data_stores]") unless params[:event_data_stores].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPublicKeysInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPublicKeysInput, context: context)
        type = Types::ListPublicKeysInput.new
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPublicKeysOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPublicKeysOutput, context: context)
        type = Types::ListPublicKeysOutput.new
        type.public_key_list = PublicKeyList.build(params[:public_key_list], context: "#{context}[:public_key_list]") unless params[:public_key_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListQueriesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListQueriesInput, context: context)
        type = Types::ListQueriesInput.new
        type.event_data_store = params[:event_data_store]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.query_status = params[:query_status]
        type
      end
    end

    module ListQueriesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListQueriesOutput, context: context)
        type = Types::ListQueriesOutput.new
        type.queries = Queries.build(params[:queries], context: "#{context}[:queries]") unless params[:queries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsInput, context: context)
        type = Types::ListTagsInput.new
        type.resource_id_list = ResourceIdList.build(params[:resource_id_list], context: "#{context}[:resource_id_list]") unless params[:resource_id_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsOutput, context: context)
        type = Types::ListTagsOutput.new
        type.resource_tag_list = ResourceTagList.build(params[:resource_tag_list], context: "#{context}[:resource_tag_list]") unless params[:resource_tag_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTrailsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTrailsInput, context: context)
        type = Types::ListTrailsInput.new
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTrailsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTrailsOutput, context: context)
        type = Types::ListTrailsOutput.new
        type.trails = Trails.build(params[:trails], context: "#{context}[:trails]") unless params[:trails].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module LookupAttribute
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LookupAttribute, context: context)
        type = Types::LookupAttribute.new
        type.attribute_key = params[:attribute_key]
        type.attribute_value = params[:attribute_value]
        type
      end
    end

    module LookupAttributesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LookupAttribute.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LookupEventsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LookupEventsInput, context: context)
        type = Types::LookupEventsInput.new
        type.lookup_attributes = LookupAttributesList.build(params[:lookup_attributes], context: "#{context}[:lookup_attributes]") unless params[:lookup_attributes].nil?
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.event_category = params[:event_category]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module LookupEventsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LookupEventsOutput, context: context)
        type = Types::LookupEventsOutput.new
        type.events = EventsList.build(params[:events], context: "#{context}[:events]") unless params[:events].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module MaxConcurrentQueriesException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MaxConcurrentQueriesException, context: context)
        type = Types::MaxConcurrentQueriesException.new
        type.message = params[:message]
        type
      end
    end

    module MaximumNumberOfTrailsExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MaximumNumberOfTrailsExceededException, context: context)
        type = Types::MaximumNumberOfTrailsExceededException.new
        type.message = params[:message]
        type
      end
    end

    module NotOrganizationMasterAccountException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotOrganizationMasterAccountException, context: context)
        type = Types::NotOrganizationMasterAccountException.new
        type.message = params[:message]
        type
      end
    end

    module OperationNotPermittedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OperationNotPermittedException, context: context)
        type = Types::OperationNotPermittedException.new
        type.message = params[:message]
        type
      end
    end

    module Operator
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module OrganizationNotInAllFeaturesModeException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OrganizationNotInAllFeaturesModeException, context: context)
        type = Types::OrganizationNotInAllFeaturesModeException.new
        type.message = params[:message]
        type
      end
    end

    module OrganizationsNotInUseException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OrganizationsNotInUseException, context: context)
        type = Types::OrganizationsNotInUseException.new
        type.message = params[:message]
        type
      end
    end

    module PublicKey
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PublicKey, context: context)
        type = Types::PublicKey.new
        type.value = params[:value]
        type.validity_start_time = params[:validity_start_time]
        type.validity_end_time = params[:validity_end_time]
        type.fingerprint = params[:fingerprint]
        type
      end
    end

    module PublicKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PublicKey.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PutEventSelectorsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutEventSelectorsInput, context: context)
        type = Types::PutEventSelectorsInput.new
        type.trail_name = params[:trail_name]
        type.event_selectors = EventSelectors.build(params[:event_selectors], context: "#{context}[:event_selectors]") unless params[:event_selectors].nil?
        type.advanced_event_selectors = AdvancedEventSelectors.build(params[:advanced_event_selectors], context: "#{context}[:advanced_event_selectors]") unless params[:advanced_event_selectors].nil?
        type
      end
    end

    module PutEventSelectorsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutEventSelectorsOutput, context: context)
        type = Types::PutEventSelectorsOutput.new
        type.trail_arn = params[:trail_arn]
        type.event_selectors = EventSelectors.build(params[:event_selectors], context: "#{context}[:event_selectors]") unless params[:event_selectors].nil?
        type.advanced_event_selectors = AdvancedEventSelectors.build(params[:advanced_event_selectors], context: "#{context}[:advanced_event_selectors]") unless params[:advanced_event_selectors].nil?
        type
      end
    end

    module PutInsightSelectorsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutInsightSelectorsInput, context: context)
        type = Types::PutInsightSelectorsInput.new
        type.trail_name = params[:trail_name]
        type.insight_selectors = InsightSelectors.build(params[:insight_selectors], context: "#{context}[:insight_selectors]") unless params[:insight_selectors].nil?
        type
      end
    end

    module PutInsightSelectorsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutInsightSelectorsOutput, context: context)
        type = Types::PutInsightSelectorsOutput.new
        type.trail_arn = params[:trail_arn]
        type.insight_selectors = InsightSelectors.build(params[:insight_selectors], context: "#{context}[:insight_selectors]") unless params[:insight_selectors].nil?
        type
      end
    end

    module Queries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Query.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Query
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Query, context: context)
        type = Types::Query.new
        type.query_id = params[:query_id]
        type.query_status = params[:query_status]
        type.creation_time = params[:creation_time]
        type
      end
    end

    module QueryIdNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QueryIdNotFoundException, context: context)
        type = Types::QueryIdNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module QueryResultColumn
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module QueryResultRow
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << QueryResultColumn.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module QueryResultRows
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << QueryResultRow.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module QueryStatistics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QueryStatistics, context: context)
        type = Types::QueryStatistics.new
        type.results_count = params[:results_count]
        type.total_results_count = params[:total_results_count]
        type.bytes_scanned = params[:bytes_scanned]
        type
      end
    end

    module QueryStatisticsForDescribeQuery
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QueryStatisticsForDescribeQuery, context: context)
        type = Types::QueryStatisticsForDescribeQuery.new
        type.events_matched = params[:events_matched]
        type.events_scanned = params[:events_scanned]
        type.bytes_scanned = params[:bytes_scanned]
        type.execution_time_in_millis = params[:execution_time_in_millis]
        type.creation_time = params[:creation_time]
        type
      end
    end

    module RemoveTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveTagsInput, context: context)
        type = Types::RemoveTagsInput.new
        type.resource_id = params[:resource_id]
        type.tags_list = TagsList.build(params[:tags_list], context: "#{context}[:tags_list]") unless params[:tags_list].nil?
        type
      end
    end

    module RemoveTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveTagsOutput, context: context)
        type = Types::RemoveTagsOutput.new
        type
      end
    end

    module Resource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Resource, context: context)
        type = Types::Resource.new
        type.resource_type = params[:resource_type]
        type.resource_name = params[:resource_name]
        type
      end
    end

    module ResourceIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ResourceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Resource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
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

    module ResourceTag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceTag, context: context)
        type = Types::ResourceTag.new
        type.resource_id = params[:resource_id]
        type.tags_list = TagsList.build(params[:tags_list], context: "#{context}[:tags_list]") unless params[:tags_list].nil?
        type
      end
    end

    module ResourceTagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResourceTag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceTypeNotSupportedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceTypeNotSupportedException, context: context)
        type = Types::ResourceTypeNotSupportedException.new
        type.message = params[:message]
        type
      end
    end

    module RestoreEventDataStoreInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RestoreEventDataStoreInput, context: context)
        type = Types::RestoreEventDataStoreInput.new
        type.event_data_store = params[:event_data_store]
        type
      end
    end

    module RestoreEventDataStoreOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RestoreEventDataStoreOutput, context: context)
        type = Types::RestoreEventDataStoreOutput.new
        type.event_data_store_arn = params[:event_data_store_arn]
        type.name = params[:name]
        type.status = params[:status]
        type.advanced_event_selectors = AdvancedEventSelectors.build(params[:advanced_event_selectors], context: "#{context}[:advanced_event_selectors]") unless params[:advanced_event_selectors].nil?
        type.multi_region_enabled = params[:multi_region_enabled]
        type.organization_enabled = params[:organization_enabled]
        type.retention_period = params[:retention_period]
        type.termination_protection_enabled = params[:termination_protection_enabled]
        type.created_timestamp = params[:created_timestamp]
        type.updated_timestamp = params[:updated_timestamp]
        type
      end
    end

    module S3BucketDoesNotExistException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3BucketDoesNotExistException, context: context)
        type = Types::S3BucketDoesNotExistException.new
        type.message = params[:message]
        type
      end
    end

    module StartLoggingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartLoggingInput, context: context)
        type = Types::StartLoggingInput.new
        type.name = params[:name]
        type
      end
    end

    module StartLoggingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartLoggingOutput, context: context)
        type = Types::StartLoggingOutput.new
        type
      end
    end

    module StartQueryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartQueryInput, context: context)
        type = Types::StartQueryInput.new
        type.query_statement = params[:query_statement]
        type
      end
    end

    module StartQueryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartQueryOutput, context: context)
        type = Types::StartQueryOutput.new
        type.query_id = params[:query_id]
        type
      end
    end

    module StopLoggingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopLoggingInput, context: context)
        type = Types::StopLoggingInput.new
        type.name = params[:name]
        type
      end
    end

    module StopLoggingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopLoggingOutput, context: context)
        type = Types::StopLoggingOutput.new
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

    module TagsLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagsLimitExceededException, context: context)
        type = Types::TagsLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module TagsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Trail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Trail, context: context)
        type = Types::Trail.new
        type.name = params[:name]
        type.s3_bucket_name = params[:s3_bucket_name]
        type.s3_key_prefix = params[:s3_key_prefix]
        type.sns_topic_name = params[:sns_topic_name]
        type.sns_topic_arn = params[:sns_topic_arn]
        type.include_global_service_events = params[:include_global_service_events]
        type.is_multi_region_trail = params[:is_multi_region_trail]
        type.home_region = params[:home_region]
        type.trail_arn = params[:trail_arn]
        type.log_file_validation_enabled = params[:log_file_validation_enabled]
        type.cloud_watch_logs_log_group_arn = params[:cloud_watch_logs_log_group_arn]
        type.cloud_watch_logs_role_arn = params[:cloud_watch_logs_role_arn]
        type.kms_key_id = params[:kms_key_id]
        type.has_custom_event_selectors = params[:has_custom_event_selectors]
        type.has_insight_selectors = params[:has_insight_selectors]
        type.is_organization_trail = params[:is_organization_trail]
        type
      end
    end

    module TrailAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TrailAlreadyExistsException, context: context)
        type = Types::TrailAlreadyExistsException.new
        type.message = params[:message]
        type
      end
    end

    module TrailInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TrailInfo, context: context)
        type = Types::TrailInfo.new
        type.trail_arn = params[:trail_arn]
        type.name = params[:name]
        type.home_region = params[:home_region]
        type
      end
    end

    module TrailList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Trail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TrailNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TrailNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TrailNotFoundException, context: context)
        type = Types::TrailNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module TrailNotProvidedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TrailNotProvidedException, context: context)
        type = Types::TrailNotProvidedException.new
        type.message = params[:message]
        type
      end
    end

    module Trails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TrailInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UnsupportedOperationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsupportedOperationException, context: context)
        type = Types::UnsupportedOperationException.new
        type.message = params[:message]
        type
      end
    end

    module UpdateEventDataStoreInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEventDataStoreInput, context: context)
        type = Types::UpdateEventDataStoreInput.new
        type.event_data_store = params[:event_data_store]
        type.name = params[:name]
        type.advanced_event_selectors = AdvancedEventSelectors.build(params[:advanced_event_selectors], context: "#{context}[:advanced_event_selectors]") unless params[:advanced_event_selectors].nil?
        type.multi_region_enabled = params[:multi_region_enabled]
        type.organization_enabled = params[:organization_enabled]
        type.retention_period = params[:retention_period]
        type.termination_protection_enabled = params[:termination_protection_enabled]
        type
      end
    end

    module UpdateEventDataStoreOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEventDataStoreOutput, context: context)
        type = Types::UpdateEventDataStoreOutput.new
        type.event_data_store_arn = params[:event_data_store_arn]
        type.name = params[:name]
        type.status = params[:status]
        type.advanced_event_selectors = AdvancedEventSelectors.build(params[:advanced_event_selectors], context: "#{context}[:advanced_event_selectors]") unless params[:advanced_event_selectors].nil?
        type.multi_region_enabled = params[:multi_region_enabled]
        type.organization_enabled = params[:organization_enabled]
        type.retention_period = params[:retention_period]
        type.termination_protection_enabled = params[:termination_protection_enabled]
        type.created_timestamp = params[:created_timestamp]
        type.updated_timestamp = params[:updated_timestamp]
        type
      end
    end

    module UpdateTrailInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTrailInput, context: context)
        type = Types::UpdateTrailInput.new
        type.name = params[:name]
        type.s3_bucket_name = params[:s3_bucket_name]
        type.s3_key_prefix = params[:s3_key_prefix]
        type.sns_topic_name = params[:sns_topic_name]
        type.include_global_service_events = params[:include_global_service_events]
        type.is_multi_region_trail = params[:is_multi_region_trail]
        type.enable_log_file_validation = params[:enable_log_file_validation]
        type.cloud_watch_logs_log_group_arn = params[:cloud_watch_logs_log_group_arn]
        type.cloud_watch_logs_role_arn = params[:cloud_watch_logs_role_arn]
        type.kms_key_id = params[:kms_key_id]
        type.is_organization_trail = params[:is_organization_trail]
        type
      end
    end

    module UpdateTrailOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTrailOutput, context: context)
        type = Types::UpdateTrailOutput.new
        type.name = params[:name]
        type.s3_bucket_name = params[:s3_bucket_name]
        type.s3_key_prefix = params[:s3_key_prefix]
        type.sns_topic_name = params[:sns_topic_name]
        type.sns_topic_arn = params[:sns_topic_arn]
        type.include_global_service_events = params[:include_global_service_events]
        type.is_multi_region_trail = params[:is_multi_region_trail]
        type.trail_arn = params[:trail_arn]
        type.log_file_validation_enabled = params[:log_file_validation_enabled]
        type.cloud_watch_logs_log_group_arn = params[:cloud_watch_logs_log_group_arn]
        type.cloud_watch_logs_role_arn = params[:cloud_watch_logs_role_arn]
        type.kms_key_id = params[:kms_key_id]
        type.is_organization_trail = params[:is_organization_trail]
        type
      end
    end

  end
end
