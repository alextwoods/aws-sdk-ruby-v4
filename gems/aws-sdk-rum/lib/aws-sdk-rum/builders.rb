# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::RUM
  module Builders

    # Operation Builder for CreateAppMonitor
    class CreateAppMonitor
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/appmonitor')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Domain'] = input[:domain] unless input[:domain].nil?
        data['Tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
        data['AppMonitorConfiguration'] = AppMonitorConfiguration.build(input[:app_monitor_configuration]) unless input[:app_monitor_configuration].nil?
        data['CwLogEnabled'] = input[:cw_log_enabled] unless input[:cw_log_enabled].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for AppMonitorConfiguration
    class AppMonitorConfiguration
      def self.build(input)
        data = {}
        data['IdentityPoolId'] = input[:identity_pool_id] unless input[:identity_pool_id].nil?
        data['ExcludedPages'] = Pages.build(input[:excluded_pages]) unless input[:excluded_pages].nil?
        data['IncludedPages'] = Pages.build(input[:included_pages]) unless input[:included_pages].nil?
        data['FavoritePages'] = FavoritePages.build(input[:favorite_pages]) unless input[:favorite_pages].nil?
        data['SessionSampleRate'] = Hearth::NumberHelper.serialize(input[:session_sample_rate]) unless input[:session_sample_rate].nil?
        data['GuestRoleArn'] = input[:guest_role_arn] unless input[:guest_role_arn].nil?
        data['AllowCookies'] = input[:allow_cookies] unless input[:allow_cookies].nil?
        data['Telemetries'] = Telemetries.build(input[:telemetries]) unless input[:telemetries].nil?
        data['EnableXRay'] = input[:enable_x_ray] unless input[:enable_x_ray].nil?
        data
      end
    end

    # List Builder for Telemetries
    class Telemetries
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for FavoritePages
    class FavoritePages
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for Pages
    class Pages
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Map Builder for TagMap
    class TagMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for DeleteAppMonitor
    class DeleteAppMonitor
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/appmonitor/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetAppMonitor
    class GetAppMonitor
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/appmonitor/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetAppMonitorData
    class GetAppMonitorData
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/appmonitor/%<Name>s/data',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['TimeRange'] = TimeRange.build(input[:time_range]) unless input[:time_range].nil?
        data['Filters'] = QueryFilters.build(input[:filters]) unless input[:filters].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
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
        data['Name'] = input[:name] unless input[:name].nil?
        data['Values'] = QueryFilterValueList.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for QueryFilterValueList
    class QueryFilterValueList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for TimeRange
    class TimeRange
      def self.build(input)
        data = {}
        data['After'] = input[:after] unless input[:after].nil?
        data['Before'] = input[:before] unless input[:before].nil?
        data
      end
    end

    # Operation Builder for ListAppMonitors
    class ListAppMonitors
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/appmonitors')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for PutRumEvents
    class PutRumEvents
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/appmonitors/%<Id>s/',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['BatchId'] = input[:batch_id] unless input[:batch_id].nil?
        data['AppMonitorDetails'] = AppMonitorDetails.build(input[:app_monitor_details]) unless input[:app_monitor_details].nil?
        data['UserDetails'] = UserDetails.build(input[:user_details]) unless input[:user_details].nil?
        data['RumEvents'] = RumEventList.build(input[:rum_events]) unless input[:rum_events].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for RumEventList
    class RumEventList
      def self.build(input)
        data = []
        input.each do |element|
          data << RumEvent.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RumEvent
    class RumEvent
      def self.build(input)
        data = {}
        data['id'] = input[:id] unless input[:id].nil?
        data['timestamp'] = Hearth::TimeHelper.to_epoch_seconds(input[:timestamp]).to_i unless input[:timestamp].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data['metadata'] = input[:metadata] unless input[:metadata].nil?
        data['details'] = input[:details] unless input[:details].nil?
        data
      end
    end

    # Structure Builder for UserDetails
    class UserDetails
      def self.build(input)
        data = {}
        data['userId'] = input[:user_id] unless input[:user_id].nil?
        data['sessionId'] = input[:session_id] unless input[:session_id].nil?
        data
      end
    end

    # Structure Builder for AppMonitorDetails
    class AppMonitorDetails
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['id'] = input[:id] unless input[:id].nil?
        data['version'] = input[:version] unless input[:version].nil?
        data
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
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

    # Operation Builder for UpdateAppMonitor
    class UpdateAppMonitor
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/appmonitor/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Domain'] = input[:domain] unless input[:domain].nil?
        data['AppMonitorConfiguration'] = AppMonitorConfiguration.build(input[:app_monitor_configuration]) unless input[:app_monitor_configuration].nil?
        data['CwLogEnabled'] = input[:cw_log_enabled] unless input[:cw_log_enabled].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
