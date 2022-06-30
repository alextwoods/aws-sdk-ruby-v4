# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::RUM
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AppMonitor
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AppMonitor, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:created], ::String, context: "#{context}[:created]")
        Hearth::Validator.validate!(input[:last_modified], ::String, context: "#{context}[:last_modified]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Validators::AppMonitorConfiguration.validate!(input[:app_monitor_configuration], context: "#{context}[:app_monitor_configuration]") unless input[:app_monitor_configuration].nil?
        Validators::DataStorage.validate!(input[:data_storage], context: "#{context}[:data_storage]") unless input[:data_storage].nil?
      end
    end

    class AppMonitorConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AppMonitorConfiguration, context: context)
        Hearth::Validator.validate!(input[:identity_pool_id], ::String, context: "#{context}[:identity_pool_id]")
        Validators::Pages.validate!(input[:excluded_pages], context: "#{context}[:excluded_pages]") unless input[:excluded_pages].nil?
        Validators::Pages.validate!(input[:included_pages], context: "#{context}[:included_pages]") unless input[:included_pages].nil?
        Validators::FavoritePages.validate!(input[:favorite_pages], context: "#{context}[:favorite_pages]") unless input[:favorite_pages].nil?
        Hearth::Validator.validate!(input[:session_sample_rate], ::Float, context: "#{context}[:session_sample_rate]")
        Hearth::Validator.validate!(input[:guest_role_arn], ::String, context: "#{context}[:guest_role_arn]")
        Hearth::Validator.validate!(input[:allow_cookies], ::TrueClass, ::FalseClass, context: "#{context}[:allow_cookies]")
        Validators::Telemetries.validate!(input[:telemetries], context: "#{context}[:telemetries]") unless input[:telemetries].nil?
        Hearth::Validator.validate!(input[:enable_x_ray], ::TrueClass, ::FalseClass, context: "#{context}[:enable_x_ray]")
      end
    end

    class AppMonitorDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AppMonitorDetails, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class AppMonitorSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AppMonitorSummary, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:created], ::String, context: "#{context}[:created]")
        Hearth::Validator.validate!(input[:last_modified], ::String, context: "#{context}[:last_modified]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
      end
    end

    class AppMonitorSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AppMonitorSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class CreateAppMonitorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAppMonitorInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::AppMonitorConfiguration.validate!(input[:app_monitor_configuration], context: "#{context}[:app_monitor_configuration]") unless input[:app_monitor_configuration].nil?
        Hearth::Validator.validate!(input[:cw_log_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:cw_log_enabled]")
      end
    end

    class CreateAppMonitorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAppMonitorOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class CwLog
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CwLog, context: context)
        Hearth::Validator.validate!(input[:cw_log_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:cw_log_enabled]")
        Hearth::Validator.validate!(input[:cw_log_group], ::String, context: "#{context}[:cw_log_group]")
      end
    end

    class DataStorage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataStorage, context: context)
        Validators::CwLog.validate!(input[:cw_log], context: "#{context}[:cw_log]") unless input[:cw_log].nil?
      end
    end

    class DeleteAppMonitorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAppMonitorInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteAppMonitorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAppMonitorOutput, context: context)
      end
    end

    class EventDataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class FavoritePages
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class GetAppMonitorDataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAppMonitorDataInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::TimeRange.validate!(input[:time_range], context: "#{context}[:time_range]") unless input[:time_range].nil?
        Validators::QueryFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetAppMonitorDataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAppMonitorDataOutput, context: context)
        Validators::EventDataList.validate!(input[:events], context: "#{context}[:events]") unless input[:events].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetAppMonitorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAppMonitorInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class GetAppMonitorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAppMonitorOutput, context: context)
        Validators::AppMonitor.validate!(input[:app_monitor], context: "#{context}[:app_monitor]") unless input[:app_monitor].nil?
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:retry_after_seconds], ::Integer, context: "#{context}[:retry_after_seconds]")
      end
    end

    class ListAppMonitorsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAppMonitorsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAppMonitorsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAppMonitorsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::AppMonitorSummaryList.validate!(input[:app_monitor_summaries], context: "#{context}[:app_monitor_summaries]") unless input[:app_monitor_summaries].nil?
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
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class Pages
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PutRumEventsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutRumEventsInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:batch_id], ::String, context: "#{context}[:batch_id]")
        Validators::AppMonitorDetails.validate!(input[:app_monitor_details], context: "#{context}[:app_monitor_details]") unless input[:app_monitor_details].nil?
        Validators::UserDetails.validate!(input[:user_details], context: "#{context}[:user_details]") unless input[:user_details].nil?
        Validators::RumEventList.validate!(input[:rum_events], context: "#{context}[:rum_events]") unless input[:rum_events].nil?
      end
    end

    class PutRumEventsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutRumEventsOutput, context: context)
      end
    end

    class QueryFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QueryFilter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::QueryFilterValueList.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class QueryFilterValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
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

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class RumEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RumEvent, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:timestamp], ::Time, context: "#{context}[:timestamp]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:metadata], ::String, context: "#{context}[:metadata]")
        Hearth::Validator.validate!(input[:details], ::String, context: "#{context}[:details]")
      end
    end

    class RumEventList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RumEvent.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
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

    class TagMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class Telemetries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:service_code], ::String, context: "#{context}[:service_code]")
        Hearth::Validator.validate!(input[:quota_code], ::String, context: "#{context}[:quota_code]")
        Hearth::Validator.validate!(input[:retry_after_seconds], ::Integer, context: "#{context}[:retry_after_seconds]")
      end
    end

    class TimeRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TimeRange, context: context)
        Hearth::Validator.validate!(input[:after], ::Integer, context: "#{context}[:after]")
        Hearth::Validator.validate!(input[:before], ::Integer, context: "#{context}[:before]")
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

    class UpdateAppMonitorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAppMonitorInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Validators::AppMonitorConfiguration.validate!(input[:app_monitor_configuration], context: "#{context}[:app_monitor_configuration]") unless input[:app_monitor_configuration].nil?
        Hearth::Validator.validate!(input[:cw_log_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:cw_log_enabled]")
      end
    end

    class UpdateAppMonitorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAppMonitorOutput, context: context)
      end
    end

    class UserDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserDetails, context: context)
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:session_id], ::String, context: "#{context}[:session_id]")
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

  end
end
