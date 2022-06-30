# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::RUM
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module AppMonitor
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AppMonitor, context: context)
        type = Types::AppMonitor.new
        type.name = params[:name]
        type.domain = params[:domain]
        type.id = params[:id]
        type.created = params[:created]
        type.last_modified = params[:last_modified]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.state = params[:state]
        type.app_monitor_configuration = AppMonitorConfiguration.build(params[:app_monitor_configuration], context: "#{context}[:app_monitor_configuration]") unless params[:app_monitor_configuration].nil?
        type.data_storage = DataStorage.build(params[:data_storage], context: "#{context}[:data_storage]") unless params[:data_storage].nil?
        type
      end
    end

    module AppMonitorConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AppMonitorConfiguration, context: context)
        type = Types::AppMonitorConfiguration.new
        type.identity_pool_id = params[:identity_pool_id]
        type.excluded_pages = Pages.build(params[:excluded_pages], context: "#{context}[:excluded_pages]") unless params[:excluded_pages].nil?
        type.included_pages = Pages.build(params[:included_pages], context: "#{context}[:included_pages]") unless params[:included_pages].nil?
        type.favorite_pages = FavoritePages.build(params[:favorite_pages], context: "#{context}[:favorite_pages]") unless params[:favorite_pages].nil?
        type.session_sample_rate = params[:session_sample_rate]
        type.guest_role_arn = params[:guest_role_arn]
        type.allow_cookies = params[:allow_cookies]
        type.telemetries = Telemetries.build(params[:telemetries], context: "#{context}[:telemetries]") unless params[:telemetries].nil?
        type.enable_x_ray = params[:enable_x_ray]
        type
      end
    end

    module AppMonitorDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AppMonitorDetails, context: context)
        type = Types::AppMonitorDetails.new
        type.name = params[:name]
        type.id = params[:id]
        type.version = params[:version]
        type
      end
    end

    module AppMonitorSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AppMonitorSummary, context: context)
        type = Types::AppMonitorSummary.new
        type.name = params[:name]
        type.id = params[:id]
        type.created = params[:created]
        type.last_modified = params[:last_modified]
        type.state = params[:state]
        type
      end
    end

    module AppMonitorSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AppMonitorSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type.resource_name = params[:resource_name]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module CreateAppMonitorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAppMonitorInput, context: context)
        type = Types::CreateAppMonitorInput.new
        type.name = params[:name]
        type.domain = params[:domain]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.app_monitor_configuration = AppMonitorConfiguration.build(params[:app_monitor_configuration], context: "#{context}[:app_monitor_configuration]") unless params[:app_monitor_configuration].nil?
        type.cw_log_enabled = params[:cw_log_enabled]
        type
      end
    end

    module CreateAppMonitorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAppMonitorOutput, context: context)
        type = Types::CreateAppMonitorOutput.new
        type.id = params[:id]
        type
      end
    end

    module CwLog
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CwLog, context: context)
        type = Types::CwLog.new
        type.cw_log_enabled = params[:cw_log_enabled]
        type.cw_log_group = params[:cw_log_group]
        type
      end
    end

    module DataStorage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataStorage, context: context)
        type = Types::DataStorage.new
        type.cw_log = CwLog.build(params[:cw_log], context: "#{context}[:cw_log]") unless params[:cw_log].nil?
        type
      end
    end

    module DeleteAppMonitorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAppMonitorInput, context: context)
        type = Types::DeleteAppMonitorInput.new
        type.name = params[:name]
        type
      end
    end

    module DeleteAppMonitorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAppMonitorOutput, context: context)
        type = Types::DeleteAppMonitorOutput.new
        type
      end
    end

    module EventDataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module FavoritePages
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module GetAppMonitorDataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAppMonitorDataInput, context: context)
        type = Types::GetAppMonitorDataInput.new
        type.name = params[:name]
        type.time_range = TimeRange.build(params[:time_range], context: "#{context}[:time_range]") unless params[:time_range].nil?
        type.filters = QueryFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetAppMonitorDataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAppMonitorDataOutput, context: context)
        type = Types::GetAppMonitorDataOutput.new
        type.events = EventDataList.build(params[:events], context: "#{context}[:events]") unless params[:events].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetAppMonitorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAppMonitorInput, context: context)
        type = Types::GetAppMonitorInput.new
        type.name = params[:name]
        type
      end
    end

    module GetAppMonitorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAppMonitorOutput, context: context)
        type = Types::GetAppMonitorOutput.new
        type.app_monitor = AppMonitor.build(params[:app_monitor], context: "#{context}[:app_monitor]") unless params[:app_monitor].nil?
        type
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type.retry_after_seconds = params[:retry_after_seconds]
        type
      end
    end

    module ListAppMonitorsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAppMonitorsInput, context: context)
        type = Types::ListAppMonitorsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAppMonitorsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAppMonitorsOutput, context: context)
        type = Types::ListAppMonitorsOutput.new
        type.next_token = params[:next_token]
        type.app_monitor_summaries = AppMonitorSummaryList.build(params[:app_monitor_summaries], context: "#{context}[:app_monitor_summaries]") unless params[:app_monitor_summaries].nil?
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
        type.resource_arn = params[:resource_arn]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module Pages
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PutRumEventsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutRumEventsInput, context: context)
        type = Types::PutRumEventsInput.new
        type.id = params[:id]
        type.batch_id = params[:batch_id]
        type.app_monitor_details = AppMonitorDetails.build(params[:app_monitor_details], context: "#{context}[:app_monitor_details]") unless params[:app_monitor_details].nil?
        type.user_details = UserDetails.build(params[:user_details], context: "#{context}[:user_details]") unless params[:user_details].nil?
        type.rum_events = RumEventList.build(params[:rum_events], context: "#{context}[:rum_events]") unless params[:rum_events].nil?
        type
      end
    end

    module PutRumEventsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutRumEventsOutput, context: context)
        type = Types::PutRumEventsOutput.new
        type
      end
    end

    module QueryFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QueryFilter, context: context)
        type = Types::QueryFilter.new
        type.name = params[:name]
        type.values = QueryFilterValueList.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module QueryFilterValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
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

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type.resource_name = params[:resource_name]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module RumEvent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RumEvent, context: context)
        type = Types::RumEvent.new
        type.id = params[:id]
        type.timestamp = params[:timestamp]
        type.type = params[:type]
        type.metadata = params[:metadata]
        type.details = params[:details]
        type
      end
    end

    module RumEventList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RumEvent.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ServiceQuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceQuotaExceededException, context: context)
        type = Types::ServiceQuotaExceededException.new
        type.message = params[:message]
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

    module TagMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module Telemetries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type.service_code = params[:service_code]
        type.quota_code = params[:quota_code]
        type.retry_after_seconds = params[:retry_after_seconds]
        type
      end
    end

    module TimeRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TimeRange, context: context)
        type = Types::TimeRange.new
        type.after = params[:after]
        type.before = params[:before]
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

    module UpdateAppMonitorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAppMonitorInput, context: context)
        type = Types::UpdateAppMonitorInput.new
        type.name = params[:name]
        type.domain = params[:domain]
        type.app_monitor_configuration = AppMonitorConfiguration.build(params[:app_monitor_configuration], context: "#{context}[:app_monitor_configuration]") unless params[:app_monitor_configuration].nil?
        type.cw_log_enabled = params[:cw_log_enabled]
        type
      end
    end

    module UpdateAppMonitorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAppMonitorOutput, context: context)
        type = Types::UpdateAppMonitorOutput.new
        type
      end
    end

    module UserDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserDetails, context: context)
        type = Types::UserDetails.new
        type.user_id = params[:user_id]
        type.session_id = params[:session_id]
        type
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type
      end
    end

  end
end
