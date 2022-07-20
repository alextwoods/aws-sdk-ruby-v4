# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::IoT1ClickDevicesService
  module Builders

    # Operation Builder for ClaimDevicesByClaimCode
    class ClaimDevicesByClaimCode
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:claim_code].to_s.empty?
          raise ArgumentError, "HTTP label :claim_code cannot be nil or empty."
        end
        http_req.append_path(format(
            '/claims/%<ClaimCode>s',
            ClaimCode: Hearth::HTTP.uri_escape(input[:claim_code].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeDevice
    class DescribeDevice
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:device_id].to_s.empty?
          raise ArgumentError, "HTTP label :device_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/devices/%<DeviceId>s',
            DeviceId: Hearth::HTTP.uri_escape(input[:device_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for FinalizeDeviceClaim
    class FinalizeDeviceClaim
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:device_id].to_s.empty?
          raise ArgumentError, "HTTP label :device_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/devices/%<DeviceId>s/finalize-claim',
            DeviceId: Hearth::HTTP.uri_escape(input[:device_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['tags'] = Builders::Map____mapOf__string.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for __mapOf__string
    class Map____mapOf__string
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for GetDeviceMethods
    class GetDeviceMethods
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:device_id].to_s.empty?
          raise ArgumentError, "HTTP label :device_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/devices/%<DeviceId>s/methods',
            DeviceId: Hearth::HTTP.uri_escape(input[:device_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for InitiateDeviceClaim
    class InitiateDeviceClaim
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:device_id].to_s.empty?
          raise ArgumentError, "HTTP label :device_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/devices/%<DeviceId>s/initiate-claim',
            DeviceId: Hearth::HTTP.uri_escape(input[:device_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for InvokeDeviceMethod
    class InvokeDeviceMethod
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:device_id].to_s.empty?
          raise ArgumentError, "HTTP label :device_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/devices/%<DeviceId>s/methods',
            DeviceId: Hearth::HTTP.uri_escape(input[:device_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['deviceMethod'] = Builders::DeviceMethod.build(input[:device_method]) unless input[:device_method].nil?
        data['deviceMethodParameters'] = input[:device_method_parameters] unless input[:device_method_parameters].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for DeviceMethod
    class DeviceMethod
      def self.build(input)
        data = {}
        data['deviceType'] = input[:device_type] unless input[:device_type].nil?
        data['methodName'] = input[:method_name] unless input[:method_name].nil?
        data
      end
    end

    # Operation Builder for ListDeviceEvents
    class ListDeviceEvents
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:device_id].to_s.empty?
          raise ArgumentError, "HTTP label :device_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/devices/%<DeviceId>s/events',
            DeviceId: Hearth::HTTP.uri_escape(input[:device_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['fromTimeStamp'] = Hearth::TimeHelper.to_date_time(input[:from_time_stamp]) unless input[:from_time_stamp].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['toTimeStamp'] = Hearth::TimeHelper.to_date_time(input[:to_time_stamp]) unless input[:to_time_stamp].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListDevices
    class ListDevices
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/devices')
        params = Hearth::Query::ParamList.new
        params['deviceType'] = input[:device_type].to_s unless input[:device_type].nil?
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
        data['tags'] = Builders::Map____mapOf__string.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UnclaimDevice
    class UnclaimDevice
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:device_id].to_s.empty?
          raise ArgumentError, "HTTP label :device_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/devices/%<DeviceId>s/unclaim',
            DeviceId: Hearth::HTTP.uri_escape(input[:device_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
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

    # List Builder for __listOf__string
    class List____listOf__string
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateDeviceState
    class UpdateDeviceState
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:device_id].to_s.empty?
          raise ArgumentError, "HTTP label :device_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/devices/%<DeviceId>s/state',
            DeviceId: Hearth::HTTP.uri_escape(input[:device_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['enabled'] = input[:enabled] unless input[:enabled].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
