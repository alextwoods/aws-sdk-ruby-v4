# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::RUM
  module Parsers

    # Operation Parser for CreateAppMonitor
    class CreateAppMonitor
      def self.parse(http_resp)
        data = Types::CreateAppMonitorOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['Id']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        data.retry_after_seconds = http_resp.headers['Retry-After'].to_i unless http_resp.headers['Retry-After'].nil?
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.service_code = map['serviceCode']
        data.quota_code = map['quotaCode']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.resource_name = map['resourceName']
        data.resource_type = map['resourceType']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        data.retry_after_seconds = http_resp.headers['Retry-After'].to_i unless http_resp.headers['Retry-After'].nil?
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for DeleteAppMonitor
    class DeleteAppMonitor
      def self.parse(http_resp)
        data = Types::DeleteAppMonitorOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.resource_name = map['resourceName']
        data.resource_type = map['resourceType']
        data
      end
    end

    # Operation Parser for GetAppMonitor
    class GetAppMonitor
      def self.parse(http_resp)
        data = Types::GetAppMonitorOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_monitor = (AppMonitor.parse(map['AppMonitor']) unless map['AppMonitor'].nil?)
        data
      end
    end

    class AppMonitor
      def self.parse(map)
        data = Types::AppMonitor.new
        data.name = map['Name']
        data.domain = map['Domain']
        data.id = map['Id']
        data.created = map['Created']
        data.last_modified = map['LastModified']
        data.tags = (TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data.state = map['State']
        data.app_monitor_configuration = (AppMonitorConfiguration.parse(map['AppMonitorConfiguration']) unless map['AppMonitorConfiguration'].nil?)
        data.data_storage = (DataStorage.parse(map['DataStorage']) unless map['DataStorage'].nil?)
        return data
      end
    end

    class DataStorage
      def self.parse(map)
        data = Types::DataStorage.new
        data.cw_log = (CwLog.parse(map['CwLog']) unless map['CwLog'].nil?)
        return data
      end
    end

    class CwLog
      def self.parse(map)
        data = Types::CwLog.new
        data.cw_log_enabled = map['CwLogEnabled']
        data.cw_log_group = map['CwLogGroup']
        return data
      end
    end

    class AppMonitorConfiguration
      def self.parse(map)
        data = Types::AppMonitorConfiguration.new
        data.identity_pool_id = map['IdentityPoolId']
        data.excluded_pages = (Pages.parse(map['ExcludedPages']) unless map['ExcludedPages'].nil?)
        data.included_pages = (Pages.parse(map['IncludedPages']) unless map['IncludedPages'].nil?)
        data.favorite_pages = (FavoritePages.parse(map['FavoritePages']) unless map['FavoritePages'].nil?)
        data.session_sample_rate = Hearth::NumberHelper.deserialize(map['SessionSampleRate'])
        data.guest_role_arn = map['GuestRoleArn']
        data.allow_cookies = map['AllowCookies']
        data.telemetries = (Telemetries.parse(map['Telemetries']) unless map['Telemetries'].nil?)
        data.enable_x_ray = map['EnableXRay']
        return data
      end
    end

    class Telemetries
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class FavoritePages
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class Pages
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class TagMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetAppMonitorData
    class GetAppMonitorData
      def self.parse(http_resp)
        data = Types::GetAppMonitorDataOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.events = (EventDataList.parse(map['Events']) unless map['Events'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class EventDataList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListAppMonitors
    class ListAppMonitors
      def self.parse(http_resp)
        data = Types::ListAppMonitorsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['NextToken']
        data.app_monitor_summaries = (AppMonitorSummaryList.parse(map['AppMonitorSummaries']) unless map['AppMonitorSummaries'].nil?)
        data
      end
    end

    class AppMonitorSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << AppMonitorSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class AppMonitorSummary
      def self.parse(map)
        data = Types::AppMonitorSummary.new
        data.name = map['Name']
        data.id = map['Id']
        data.created = map['Created']
        data.last_modified = map['LastModified']
        data.state = map['State']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.resource_arn = map['ResourceArn']
        data.tags = (TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    # Operation Parser for PutRumEvents
    class PutRumEvents
      def self.parse(http_resp)
        data = Types::PutRumEventsOutput.new
        map = Hearth::JSON.load(http_resp.body)
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

    # Operation Parser for UpdateAppMonitor
    class UpdateAppMonitor
      def self.parse(http_resp)
        data = Types::UpdateAppMonitorOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end
  end
end
