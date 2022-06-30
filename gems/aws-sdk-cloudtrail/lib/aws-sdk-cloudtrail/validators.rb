# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CloudTrail
  module Validators

    class AddTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddTagsInput, context: context)
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Validators::TagsList.validate!(input[:tags_list], context: "#{context}[:tags_list]") unless input[:tags_list].nil?
      end
    end

    class AddTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddTagsOutput, context: context)
      end
    end

    class AdvancedEventSelector
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdvancedEventSelector, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::AdvancedFieldSelectors.validate!(input[:field_selectors], context: "#{context}[:field_selectors]") unless input[:field_selectors].nil?
      end
    end

    class AdvancedEventSelectors
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AdvancedEventSelector.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AdvancedFieldSelector
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdvancedFieldSelector, context: context)
        Hearth::Validator.validate!(input[:field], ::String, context: "#{context}[:field]")
        Validators::Operator.validate!(input[:equals], context: "#{context}[:equals]") unless input[:equals].nil?
        Validators::Operator.validate!(input[:starts_with], context: "#{context}[:starts_with]") unless input[:starts_with].nil?
        Validators::Operator.validate!(input[:ends_with], context: "#{context}[:ends_with]") unless input[:ends_with].nil?
        Validators::Operator.validate!(input[:not_equals], context: "#{context}[:not_equals]") unless input[:not_equals].nil?
        Validators::Operator.validate!(input[:not_starts_with], context: "#{context}[:not_starts_with]") unless input[:not_starts_with].nil?
        Validators::Operator.validate!(input[:not_ends_with], context: "#{context}[:not_ends_with]") unless input[:not_ends_with].nil?
      end
    end

    class AdvancedFieldSelectors
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AdvancedFieldSelector.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CancelQueryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelQueryInput, context: context)
        Hearth::Validator.validate!(input[:event_data_store], ::String, context: "#{context}[:event_data_store]")
        Hearth::Validator.validate!(input[:query_id], ::String, context: "#{context}[:query_id]")
      end
    end

    class CancelQueryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelQueryOutput, context: context)
        Hearth::Validator.validate!(input[:query_id], ::String, context: "#{context}[:query_id]")
        Hearth::Validator.validate!(input[:query_status], ::String, context: "#{context}[:query_status]")
      end
    end

    class CloudTrailARNInvalidException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudTrailARNInvalidException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CloudTrailAccessNotEnabledException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudTrailAccessNotEnabledException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CloudTrailInvalidClientTokenIdException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudTrailInvalidClientTokenIdException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CloudWatchLogsDeliveryUnavailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudWatchLogsDeliveryUnavailableException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateEventDataStoreInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEventDataStoreInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::AdvancedEventSelectors.validate!(input[:advanced_event_selectors], context: "#{context}[:advanced_event_selectors]") unless input[:advanced_event_selectors].nil?
        Hearth::Validator.validate!(input[:multi_region_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:multi_region_enabled]")
        Hearth::Validator.validate!(input[:organization_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:organization_enabled]")
        Hearth::Validator.validate!(input[:retention_period], ::Integer, context: "#{context}[:retention_period]")
        Hearth::Validator.validate!(input[:termination_protection_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:termination_protection_enabled]")
        Validators::TagsList.validate!(input[:tags_list], context: "#{context}[:tags_list]") unless input[:tags_list].nil?
      end
    end

    class CreateEventDataStoreOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEventDataStoreOutput, context: context)
        Hearth::Validator.validate!(input[:event_data_store_arn], ::String, context: "#{context}[:event_data_store_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::AdvancedEventSelectors.validate!(input[:advanced_event_selectors], context: "#{context}[:advanced_event_selectors]") unless input[:advanced_event_selectors].nil?
        Hearth::Validator.validate!(input[:multi_region_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:multi_region_enabled]")
        Hearth::Validator.validate!(input[:organization_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:organization_enabled]")
        Hearth::Validator.validate!(input[:retention_period], ::Integer, context: "#{context}[:retention_period]")
        Hearth::Validator.validate!(input[:termination_protection_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:termination_protection_enabled]")
        Validators::TagsList.validate!(input[:tags_list], context: "#{context}[:tags_list]") unless input[:tags_list].nil?
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
        Hearth::Validator.validate!(input[:updated_timestamp], ::Time, context: "#{context}[:updated_timestamp]")
      end
    end

    class CreateTrailInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTrailInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:s3_bucket_name], ::String, context: "#{context}[:s3_bucket_name]")
        Hearth::Validator.validate!(input[:s3_key_prefix], ::String, context: "#{context}[:s3_key_prefix]")
        Hearth::Validator.validate!(input[:sns_topic_name], ::String, context: "#{context}[:sns_topic_name]")
        Hearth::Validator.validate!(input[:include_global_service_events], ::TrueClass, ::FalseClass, context: "#{context}[:include_global_service_events]")
        Hearth::Validator.validate!(input[:is_multi_region_trail], ::TrueClass, ::FalseClass, context: "#{context}[:is_multi_region_trail]")
        Hearth::Validator.validate!(input[:enable_log_file_validation], ::TrueClass, ::FalseClass, context: "#{context}[:enable_log_file_validation]")
        Hearth::Validator.validate!(input[:cloud_watch_logs_log_group_arn], ::String, context: "#{context}[:cloud_watch_logs_log_group_arn]")
        Hearth::Validator.validate!(input[:cloud_watch_logs_role_arn], ::String, context: "#{context}[:cloud_watch_logs_role_arn]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:is_organization_trail], ::TrueClass, ::FalseClass, context: "#{context}[:is_organization_trail]")
        Validators::TagsList.validate!(input[:tags_list], context: "#{context}[:tags_list]") unless input[:tags_list].nil?
      end
    end

    class CreateTrailOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTrailOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:s3_bucket_name], ::String, context: "#{context}[:s3_bucket_name]")
        Hearth::Validator.validate!(input[:s3_key_prefix], ::String, context: "#{context}[:s3_key_prefix]")
        Hearth::Validator.validate!(input[:sns_topic_name], ::String, context: "#{context}[:sns_topic_name]")
        Hearth::Validator.validate!(input[:sns_topic_arn], ::String, context: "#{context}[:sns_topic_arn]")
        Hearth::Validator.validate!(input[:include_global_service_events], ::TrueClass, ::FalseClass, context: "#{context}[:include_global_service_events]")
        Hearth::Validator.validate!(input[:is_multi_region_trail], ::TrueClass, ::FalseClass, context: "#{context}[:is_multi_region_trail]")
        Hearth::Validator.validate!(input[:trail_arn], ::String, context: "#{context}[:trail_arn]")
        Hearth::Validator.validate!(input[:log_file_validation_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:log_file_validation_enabled]")
        Hearth::Validator.validate!(input[:cloud_watch_logs_log_group_arn], ::String, context: "#{context}[:cloud_watch_logs_log_group_arn]")
        Hearth::Validator.validate!(input[:cloud_watch_logs_role_arn], ::String, context: "#{context}[:cloud_watch_logs_role_arn]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:is_organization_trail], ::TrueClass, ::FalseClass, context: "#{context}[:is_organization_trail]")
      end
    end

    class DataResource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataResource, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Validators::DataResourceValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class DataResourceValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DataResources
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DataResource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeleteEventDataStoreInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEventDataStoreInput, context: context)
        Hearth::Validator.validate!(input[:event_data_store], ::String, context: "#{context}[:event_data_store]")
      end
    end

    class DeleteEventDataStoreOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEventDataStoreOutput, context: context)
      end
    end

    class DeleteTrailInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTrailInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteTrailOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTrailOutput, context: context)
      end
    end

    class DescribeQueryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeQueryInput, context: context)
        Hearth::Validator.validate!(input[:event_data_store], ::String, context: "#{context}[:event_data_store]")
        Hearth::Validator.validate!(input[:query_id], ::String, context: "#{context}[:query_id]")
      end
    end

    class DescribeQueryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeQueryOutput, context: context)
        Hearth::Validator.validate!(input[:query_id], ::String, context: "#{context}[:query_id]")
        Hearth::Validator.validate!(input[:query_string], ::String, context: "#{context}[:query_string]")
        Hearth::Validator.validate!(input[:query_status], ::String, context: "#{context}[:query_status]")
        Validators::QueryStatisticsForDescribeQuery.validate!(input[:query_statistics], context: "#{context}[:query_statistics]") unless input[:query_statistics].nil?
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class DescribeTrailsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTrailsInput, context: context)
        Validators::TrailNameList.validate!(input[:trail_name_list], context: "#{context}[:trail_name_list]") unless input[:trail_name_list].nil?
        Hearth::Validator.validate!(input[:include_shadow_trails], ::TrueClass, ::FalseClass, context: "#{context}[:include_shadow_trails]")
      end
    end

    class DescribeTrailsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTrailsOutput, context: context)
        Validators::TrailList.validate!(input[:trail_list], context: "#{context}[:trail_list]") unless input[:trail_list].nil?
      end
    end

    class Event
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Event, context: context)
        Hearth::Validator.validate!(input[:event_id], ::String, context: "#{context}[:event_id]")
        Hearth::Validator.validate!(input[:event_name], ::String, context: "#{context}[:event_name]")
        Hearth::Validator.validate!(input[:read_only], ::String, context: "#{context}[:read_only]")
        Hearth::Validator.validate!(input[:access_key_id], ::String, context: "#{context}[:access_key_id]")
        Hearth::Validator.validate!(input[:event_time], ::Time, context: "#{context}[:event_time]")
        Hearth::Validator.validate!(input[:event_source], ::String, context: "#{context}[:event_source]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        Validators::ResourceList.validate!(input[:resources], context: "#{context}[:resources]") unless input[:resources].nil?
        Hearth::Validator.validate!(input[:cloud_trail_event], ::String, context: "#{context}[:cloud_trail_event]")
      end
    end

    class EventDataStore
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventDataStore, context: context)
        Hearth::Validator.validate!(input[:event_data_store_arn], ::String, context: "#{context}[:event_data_store_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:termination_protection_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:termination_protection_enabled]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::AdvancedEventSelectors.validate!(input[:advanced_event_selectors], context: "#{context}[:advanced_event_selectors]") unless input[:advanced_event_selectors].nil?
        Hearth::Validator.validate!(input[:multi_region_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:multi_region_enabled]")
        Hearth::Validator.validate!(input[:organization_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:organization_enabled]")
        Hearth::Validator.validate!(input[:retention_period], ::Integer, context: "#{context}[:retention_period]")
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
        Hearth::Validator.validate!(input[:updated_timestamp], ::Time, context: "#{context}[:updated_timestamp]")
      end
    end

    class EventDataStoreARNInvalidException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventDataStoreARNInvalidException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EventDataStoreAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventDataStoreAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EventDataStoreMaxLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventDataStoreMaxLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EventDataStoreNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventDataStoreNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EventDataStoreTerminationProtectedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventDataStoreTerminationProtectedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EventDataStores
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EventDataStore.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EventSelector
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventSelector, context: context)
        Hearth::Validator.validate!(input[:read_write_type], ::String, context: "#{context}[:read_write_type]")
        Hearth::Validator.validate!(input[:include_management_events], ::TrueClass, ::FalseClass, context: "#{context}[:include_management_events]")
        Validators::DataResources.validate!(input[:data_resources], context: "#{context}[:data_resources]") unless input[:data_resources].nil?
        Validators::ExcludeManagementEventSources.validate!(input[:exclude_management_event_sources], context: "#{context}[:exclude_management_event_sources]") unless input[:exclude_management_event_sources].nil?
      end
    end

    class EventSelectors
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EventSelector.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EventsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Event.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ExcludeManagementEventSources
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class GetEventDataStoreInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEventDataStoreInput, context: context)
        Hearth::Validator.validate!(input[:event_data_store], ::String, context: "#{context}[:event_data_store]")
      end
    end

    class GetEventDataStoreOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEventDataStoreOutput, context: context)
        Hearth::Validator.validate!(input[:event_data_store_arn], ::String, context: "#{context}[:event_data_store_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::AdvancedEventSelectors.validate!(input[:advanced_event_selectors], context: "#{context}[:advanced_event_selectors]") unless input[:advanced_event_selectors].nil?
        Hearth::Validator.validate!(input[:multi_region_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:multi_region_enabled]")
        Hearth::Validator.validate!(input[:organization_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:organization_enabled]")
        Hearth::Validator.validate!(input[:retention_period], ::Integer, context: "#{context}[:retention_period]")
        Hearth::Validator.validate!(input[:termination_protection_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:termination_protection_enabled]")
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
        Hearth::Validator.validate!(input[:updated_timestamp], ::Time, context: "#{context}[:updated_timestamp]")
      end
    end

    class GetEventSelectorsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEventSelectorsInput, context: context)
        Hearth::Validator.validate!(input[:trail_name], ::String, context: "#{context}[:trail_name]")
      end
    end

    class GetEventSelectorsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEventSelectorsOutput, context: context)
        Hearth::Validator.validate!(input[:trail_arn], ::String, context: "#{context}[:trail_arn]")
        Validators::EventSelectors.validate!(input[:event_selectors], context: "#{context}[:event_selectors]") unless input[:event_selectors].nil?
        Validators::AdvancedEventSelectors.validate!(input[:advanced_event_selectors], context: "#{context}[:advanced_event_selectors]") unless input[:advanced_event_selectors].nil?
      end
    end

    class GetInsightSelectorsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInsightSelectorsInput, context: context)
        Hearth::Validator.validate!(input[:trail_name], ::String, context: "#{context}[:trail_name]")
      end
    end

    class GetInsightSelectorsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInsightSelectorsOutput, context: context)
        Hearth::Validator.validate!(input[:trail_arn], ::String, context: "#{context}[:trail_arn]")
        Validators::InsightSelectors.validate!(input[:insight_selectors], context: "#{context}[:insight_selectors]") unless input[:insight_selectors].nil?
      end
    end

    class GetQueryResultsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetQueryResultsInput, context: context)
        Hearth::Validator.validate!(input[:event_data_store], ::String, context: "#{context}[:event_data_store]")
        Hearth::Validator.validate!(input[:query_id], ::String, context: "#{context}[:query_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_query_results], ::Integer, context: "#{context}[:max_query_results]")
      end
    end

    class GetQueryResultsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetQueryResultsOutput, context: context)
        Hearth::Validator.validate!(input[:query_status], ::String, context: "#{context}[:query_status]")
        Validators::QueryStatistics.validate!(input[:query_statistics], context: "#{context}[:query_statistics]") unless input[:query_statistics].nil?
        Validators::QueryResultRows.validate!(input[:query_result_rows], context: "#{context}[:query_result_rows]") unless input[:query_result_rows].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class GetTrailInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTrailInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class GetTrailOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTrailOutput, context: context)
        Validators::Trail.validate!(input[:trail], context: "#{context}[:trail]") unless input[:trail].nil?
      end
    end

    class GetTrailStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTrailStatusInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class GetTrailStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTrailStatusOutput, context: context)
        Hearth::Validator.validate!(input[:is_logging], ::TrueClass, ::FalseClass, context: "#{context}[:is_logging]")
        Hearth::Validator.validate!(input[:latest_delivery_error], ::String, context: "#{context}[:latest_delivery_error]")
        Hearth::Validator.validate!(input[:latest_notification_error], ::String, context: "#{context}[:latest_notification_error]")
        Hearth::Validator.validate!(input[:latest_delivery_time], ::Time, context: "#{context}[:latest_delivery_time]")
        Hearth::Validator.validate!(input[:latest_notification_time], ::Time, context: "#{context}[:latest_notification_time]")
        Hearth::Validator.validate!(input[:start_logging_time], ::Time, context: "#{context}[:start_logging_time]")
        Hearth::Validator.validate!(input[:stop_logging_time], ::Time, context: "#{context}[:stop_logging_time]")
        Hearth::Validator.validate!(input[:latest_cloud_watch_logs_delivery_error], ::String, context: "#{context}[:latest_cloud_watch_logs_delivery_error]")
        Hearth::Validator.validate!(input[:latest_cloud_watch_logs_delivery_time], ::Time, context: "#{context}[:latest_cloud_watch_logs_delivery_time]")
        Hearth::Validator.validate!(input[:latest_digest_delivery_time], ::Time, context: "#{context}[:latest_digest_delivery_time]")
        Hearth::Validator.validate!(input[:latest_digest_delivery_error], ::String, context: "#{context}[:latest_digest_delivery_error]")
        Hearth::Validator.validate!(input[:latest_delivery_attempt_time], ::String, context: "#{context}[:latest_delivery_attempt_time]")
        Hearth::Validator.validate!(input[:latest_notification_attempt_time], ::String, context: "#{context}[:latest_notification_attempt_time]")
        Hearth::Validator.validate!(input[:latest_notification_attempt_succeeded], ::String, context: "#{context}[:latest_notification_attempt_succeeded]")
        Hearth::Validator.validate!(input[:latest_delivery_attempt_succeeded], ::String, context: "#{context}[:latest_delivery_attempt_succeeded]")
        Hearth::Validator.validate!(input[:time_logging_started], ::String, context: "#{context}[:time_logging_started]")
        Hearth::Validator.validate!(input[:time_logging_stopped], ::String, context: "#{context}[:time_logging_stopped]")
      end
    end

    class InactiveEventDataStoreException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InactiveEventDataStoreException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InactiveQueryException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InactiveQueryException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InsightNotEnabledException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InsightNotEnabledException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InsightSelector
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InsightSelector, context: context)
        Hearth::Validator.validate!(input[:insight_type], ::String, context: "#{context}[:insight_type]")
      end
    end

    class InsightSelectors
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::InsightSelector.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InsufficientDependencyServiceAccessPermissionException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InsufficientDependencyServiceAccessPermissionException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InsufficientEncryptionPolicyException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InsufficientEncryptionPolicyException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InsufficientS3BucketPolicyException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InsufficientS3BucketPolicyException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InsufficientSnsTopicPolicyException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InsufficientSnsTopicPolicyException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidCloudWatchLogsLogGroupArnException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidCloudWatchLogsLogGroupArnException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidCloudWatchLogsRoleArnException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidCloudWatchLogsRoleArnException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidDateRangeException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidDateRangeException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidEventCategoryException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidEventCategoryException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidEventDataStoreStatusException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidEventDataStoreStatusException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidEventSelectorsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidEventSelectorsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidHomeRegionException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidHomeRegionException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidInsightSelectorsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidInsightSelectorsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidKmsKeyIdException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidKmsKeyIdException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidLookupAttributesException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidLookupAttributesException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidMaxResultsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidMaxResultsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidNextTokenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidNextTokenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidParameterCombinationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidParameterCombinationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidParameterException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidParameterException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidQueryStatementException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidQueryStatementException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidQueryStatusException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidQueryStatusException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidS3BucketNameException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidS3BucketNameException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidS3PrefixException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidS3PrefixException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidSnsTopicNameException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidSnsTopicNameException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidTagParameterException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidTagParameterException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidTimeRangeException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidTimeRangeException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidTokenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidTokenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidTrailNameException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidTrailNameException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KmsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KmsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KmsKeyDisabledException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KmsKeyDisabledException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KmsKeyNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KmsKeyNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListEventDataStoresInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEventDataStoresInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListEventDataStoresOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEventDataStoresOutput, context: context)
        Validators::EventDataStores.validate!(input[:event_data_stores], context: "#{context}[:event_data_stores]") unless input[:event_data_stores].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPublicKeysInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPublicKeysInput, context: context)
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPublicKeysOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPublicKeysOutput, context: context)
        Validators::PublicKeyList.validate!(input[:public_key_list], context: "#{context}[:public_key_list]") unless input[:public_key_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListQueriesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListQueriesInput, context: context)
        Hearth::Validator.validate!(input[:event_data_store], ::String, context: "#{context}[:event_data_store]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:query_status], ::String, context: "#{context}[:query_status]")
      end
    end

    class ListQueriesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListQueriesOutput, context: context)
        Validators::Queries.validate!(input[:queries], context: "#{context}[:queries]") unless input[:queries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsInput, context: context)
        Validators::ResourceIdList.validate!(input[:resource_id_list], context: "#{context}[:resource_id_list]") unless input[:resource_id_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsOutput, context: context)
        Validators::ResourceTagList.validate!(input[:resource_tag_list], context: "#{context}[:resource_tag_list]") unless input[:resource_tag_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTrailsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTrailsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTrailsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTrailsOutput, context: context)
        Validators::Trails.validate!(input[:trails], context: "#{context}[:trails]") unless input[:trails].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class LookupAttribute
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LookupAttribute, context: context)
        Hearth::Validator.validate!(input[:attribute_key], ::String, context: "#{context}[:attribute_key]")
        Hearth::Validator.validate!(input[:attribute_value], ::String, context: "#{context}[:attribute_value]")
      end
    end

    class LookupAttributesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LookupAttribute.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LookupEventsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LookupEventsInput, context: context)
        Validators::LookupAttributesList.validate!(input[:lookup_attributes], context: "#{context}[:lookup_attributes]") unless input[:lookup_attributes].nil?
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:event_category], ::String, context: "#{context}[:event_category]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class LookupEventsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LookupEventsOutput, context: context)
        Validators::EventsList.validate!(input[:events], context: "#{context}[:events]") unless input[:events].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class MaxConcurrentQueriesException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MaxConcurrentQueriesException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class MaximumNumberOfTrailsExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MaximumNumberOfTrailsExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NotOrganizationMasterAccountException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotOrganizationMasterAccountException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OperationNotPermittedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OperationNotPermittedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Operator
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class OrganizationNotInAllFeaturesModeException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OrganizationNotInAllFeaturesModeException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OrganizationsNotInUseException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OrganizationsNotInUseException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PublicKey
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PublicKey, context: context)
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:validity_start_time], ::Time, context: "#{context}[:validity_start_time]")
        Hearth::Validator.validate!(input[:validity_end_time], ::Time, context: "#{context}[:validity_end_time]")
        Hearth::Validator.validate!(input[:fingerprint], ::String, context: "#{context}[:fingerprint]")
      end
    end

    class PublicKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PublicKey.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PutEventSelectorsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutEventSelectorsInput, context: context)
        Hearth::Validator.validate!(input[:trail_name], ::String, context: "#{context}[:trail_name]")
        Validators::EventSelectors.validate!(input[:event_selectors], context: "#{context}[:event_selectors]") unless input[:event_selectors].nil?
        Validators::AdvancedEventSelectors.validate!(input[:advanced_event_selectors], context: "#{context}[:advanced_event_selectors]") unless input[:advanced_event_selectors].nil?
      end
    end

    class PutEventSelectorsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutEventSelectorsOutput, context: context)
        Hearth::Validator.validate!(input[:trail_arn], ::String, context: "#{context}[:trail_arn]")
        Validators::EventSelectors.validate!(input[:event_selectors], context: "#{context}[:event_selectors]") unless input[:event_selectors].nil?
        Validators::AdvancedEventSelectors.validate!(input[:advanced_event_selectors], context: "#{context}[:advanced_event_selectors]") unless input[:advanced_event_selectors].nil?
      end
    end

    class PutInsightSelectorsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutInsightSelectorsInput, context: context)
        Hearth::Validator.validate!(input[:trail_name], ::String, context: "#{context}[:trail_name]")
        Validators::InsightSelectors.validate!(input[:insight_selectors], context: "#{context}[:insight_selectors]") unless input[:insight_selectors].nil?
      end
    end

    class PutInsightSelectorsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutInsightSelectorsOutput, context: context)
        Hearth::Validator.validate!(input[:trail_arn], ::String, context: "#{context}[:trail_arn]")
        Validators::InsightSelectors.validate!(input[:insight_selectors], context: "#{context}[:insight_selectors]") unless input[:insight_selectors].nil?
      end
    end

    class Queries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Query.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Query
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Query, context: context)
        Hearth::Validator.validate!(input[:query_id], ::String, context: "#{context}[:query_id]")
        Hearth::Validator.validate!(input[:query_status], ::String, context: "#{context}[:query_status]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
      end
    end

    class QueryIdNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QueryIdNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class QueryResultColumn
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class QueryResultRow
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::QueryResultColumn.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class QueryResultRows
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::QueryResultRow.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class QueryStatistics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QueryStatistics, context: context)
        Hearth::Validator.validate!(input[:results_count], ::Integer, context: "#{context}[:results_count]")
        Hearth::Validator.validate!(input[:total_results_count], ::Integer, context: "#{context}[:total_results_count]")
        Hearth::Validator.validate!(input[:bytes_scanned], ::Integer, context: "#{context}[:bytes_scanned]")
      end
    end

    class QueryStatisticsForDescribeQuery
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QueryStatisticsForDescribeQuery, context: context)
        Hearth::Validator.validate!(input[:events_matched], ::Integer, context: "#{context}[:events_matched]")
        Hearth::Validator.validate!(input[:events_scanned], ::Integer, context: "#{context}[:events_scanned]")
        Hearth::Validator.validate!(input[:bytes_scanned], ::Integer, context: "#{context}[:bytes_scanned]")
        Hearth::Validator.validate!(input[:execution_time_in_millis], ::Integer, context: "#{context}[:execution_time_in_millis]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
      end
    end

    class RemoveTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveTagsInput, context: context)
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Validators::TagsList.validate!(input[:tags_list], context: "#{context}[:tags_list]") unless input[:tags_list].nil?
      end
    end

    class RemoveTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveTagsOutput, context: context)
      end
    end

    class Resource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Resource, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
      end
    end

    class ResourceIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ResourceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Resource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceTag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceTag, context: context)
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Validators::TagsList.validate!(input[:tags_list], context: "#{context}[:tags_list]") unless input[:tags_list].nil?
      end
    end

    class ResourceTagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ResourceTag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceTypeNotSupportedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceTypeNotSupportedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RestoreEventDataStoreInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestoreEventDataStoreInput, context: context)
        Hearth::Validator.validate!(input[:event_data_store], ::String, context: "#{context}[:event_data_store]")
      end
    end

    class RestoreEventDataStoreOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestoreEventDataStoreOutput, context: context)
        Hearth::Validator.validate!(input[:event_data_store_arn], ::String, context: "#{context}[:event_data_store_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::AdvancedEventSelectors.validate!(input[:advanced_event_selectors], context: "#{context}[:advanced_event_selectors]") unless input[:advanced_event_selectors].nil?
        Hearth::Validator.validate!(input[:multi_region_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:multi_region_enabled]")
        Hearth::Validator.validate!(input[:organization_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:organization_enabled]")
        Hearth::Validator.validate!(input[:retention_period], ::Integer, context: "#{context}[:retention_period]")
        Hearth::Validator.validate!(input[:termination_protection_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:termination_protection_enabled]")
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
        Hearth::Validator.validate!(input[:updated_timestamp], ::Time, context: "#{context}[:updated_timestamp]")
      end
    end

    class S3BucketDoesNotExistException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3BucketDoesNotExistException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class StartLoggingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartLoggingInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class StartLoggingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartLoggingOutput, context: context)
      end
    end

    class StartQueryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartQueryInput, context: context)
        Hearth::Validator.validate!(input[:query_statement], ::String, context: "#{context}[:query_statement]")
      end
    end

    class StartQueryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartQueryOutput, context: context)
        Hearth::Validator.validate!(input[:query_id], ::String, context: "#{context}[:query_id]")
      end
    end

    class StopLoggingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopLoggingInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class StopLoggingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopLoggingOutput, context: context)
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagsLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagsLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TagsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Trail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Trail, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:s3_bucket_name], ::String, context: "#{context}[:s3_bucket_name]")
        Hearth::Validator.validate!(input[:s3_key_prefix], ::String, context: "#{context}[:s3_key_prefix]")
        Hearth::Validator.validate!(input[:sns_topic_name], ::String, context: "#{context}[:sns_topic_name]")
        Hearth::Validator.validate!(input[:sns_topic_arn], ::String, context: "#{context}[:sns_topic_arn]")
        Hearth::Validator.validate!(input[:include_global_service_events], ::TrueClass, ::FalseClass, context: "#{context}[:include_global_service_events]")
        Hearth::Validator.validate!(input[:is_multi_region_trail], ::TrueClass, ::FalseClass, context: "#{context}[:is_multi_region_trail]")
        Hearth::Validator.validate!(input[:home_region], ::String, context: "#{context}[:home_region]")
        Hearth::Validator.validate!(input[:trail_arn], ::String, context: "#{context}[:trail_arn]")
        Hearth::Validator.validate!(input[:log_file_validation_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:log_file_validation_enabled]")
        Hearth::Validator.validate!(input[:cloud_watch_logs_log_group_arn], ::String, context: "#{context}[:cloud_watch_logs_log_group_arn]")
        Hearth::Validator.validate!(input[:cloud_watch_logs_role_arn], ::String, context: "#{context}[:cloud_watch_logs_role_arn]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:has_custom_event_selectors], ::TrueClass, ::FalseClass, context: "#{context}[:has_custom_event_selectors]")
        Hearth::Validator.validate!(input[:has_insight_selectors], ::TrueClass, ::FalseClass, context: "#{context}[:has_insight_selectors]")
        Hearth::Validator.validate!(input[:is_organization_trail], ::TrueClass, ::FalseClass, context: "#{context}[:is_organization_trail]")
      end
    end

    class TrailAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrailAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TrailInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrailInfo, context: context)
        Hearth::Validator.validate!(input[:trail_arn], ::String, context: "#{context}[:trail_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:home_region], ::String, context: "#{context}[:home_region]")
      end
    end

    class TrailList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Trail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TrailNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TrailNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrailNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TrailNotProvidedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrailNotProvidedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Trails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TrailInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UnsupportedOperationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsupportedOperationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UpdateEventDataStoreInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEventDataStoreInput, context: context)
        Hearth::Validator.validate!(input[:event_data_store], ::String, context: "#{context}[:event_data_store]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::AdvancedEventSelectors.validate!(input[:advanced_event_selectors], context: "#{context}[:advanced_event_selectors]") unless input[:advanced_event_selectors].nil?
        Hearth::Validator.validate!(input[:multi_region_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:multi_region_enabled]")
        Hearth::Validator.validate!(input[:organization_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:organization_enabled]")
        Hearth::Validator.validate!(input[:retention_period], ::Integer, context: "#{context}[:retention_period]")
        Hearth::Validator.validate!(input[:termination_protection_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:termination_protection_enabled]")
      end
    end

    class UpdateEventDataStoreOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEventDataStoreOutput, context: context)
        Hearth::Validator.validate!(input[:event_data_store_arn], ::String, context: "#{context}[:event_data_store_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::AdvancedEventSelectors.validate!(input[:advanced_event_selectors], context: "#{context}[:advanced_event_selectors]") unless input[:advanced_event_selectors].nil?
        Hearth::Validator.validate!(input[:multi_region_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:multi_region_enabled]")
        Hearth::Validator.validate!(input[:organization_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:organization_enabled]")
        Hearth::Validator.validate!(input[:retention_period], ::Integer, context: "#{context}[:retention_period]")
        Hearth::Validator.validate!(input[:termination_protection_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:termination_protection_enabled]")
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
        Hearth::Validator.validate!(input[:updated_timestamp], ::Time, context: "#{context}[:updated_timestamp]")
      end
    end

    class UpdateTrailInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTrailInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:s3_bucket_name], ::String, context: "#{context}[:s3_bucket_name]")
        Hearth::Validator.validate!(input[:s3_key_prefix], ::String, context: "#{context}[:s3_key_prefix]")
        Hearth::Validator.validate!(input[:sns_topic_name], ::String, context: "#{context}[:sns_topic_name]")
        Hearth::Validator.validate!(input[:include_global_service_events], ::TrueClass, ::FalseClass, context: "#{context}[:include_global_service_events]")
        Hearth::Validator.validate!(input[:is_multi_region_trail], ::TrueClass, ::FalseClass, context: "#{context}[:is_multi_region_trail]")
        Hearth::Validator.validate!(input[:enable_log_file_validation], ::TrueClass, ::FalseClass, context: "#{context}[:enable_log_file_validation]")
        Hearth::Validator.validate!(input[:cloud_watch_logs_log_group_arn], ::String, context: "#{context}[:cloud_watch_logs_log_group_arn]")
        Hearth::Validator.validate!(input[:cloud_watch_logs_role_arn], ::String, context: "#{context}[:cloud_watch_logs_role_arn]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:is_organization_trail], ::TrueClass, ::FalseClass, context: "#{context}[:is_organization_trail]")
      end
    end

    class UpdateTrailOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTrailOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:s3_bucket_name], ::String, context: "#{context}[:s3_bucket_name]")
        Hearth::Validator.validate!(input[:s3_key_prefix], ::String, context: "#{context}[:s3_key_prefix]")
        Hearth::Validator.validate!(input[:sns_topic_name], ::String, context: "#{context}[:sns_topic_name]")
        Hearth::Validator.validate!(input[:sns_topic_arn], ::String, context: "#{context}[:sns_topic_arn]")
        Hearth::Validator.validate!(input[:include_global_service_events], ::TrueClass, ::FalseClass, context: "#{context}[:include_global_service_events]")
        Hearth::Validator.validate!(input[:is_multi_region_trail], ::TrueClass, ::FalseClass, context: "#{context}[:is_multi_region_trail]")
        Hearth::Validator.validate!(input[:trail_arn], ::String, context: "#{context}[:trail_arn]")
        Hearth::Validator.validate!(input[:log_file_validation_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:log_file_validation_enabled]")
        Hearth::Validator.validate!(input[:cloud_watch_logs_log_group_arn], ::String, context: "#{context}[:cloud_watch_logs_log_group_arn]")
        Hearth::Validator.validate!(input[:cloud_watch_logs_role_arn], ::String, context: "#{context}[:cloud_watch_logs_role_arn]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:is_organization_trail], ::TrueClass, ::FalseClass, context: "#{context}[:is_organization_trail]")
      end
    end

  end
end
