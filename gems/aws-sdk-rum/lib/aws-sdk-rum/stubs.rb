# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::RUM
  module Stubs

    # Operation Stubber for CreateAppMonitor
    class CreateAppMonitor
      def self.default(visited=[])
        {
          id: 'id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Id'] = stub[:id] unless stub[:id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteAppMonitor
    class DeleteAppMonitor
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetAppMonitor
    class GetAppMonitor
      def self.default(visited=[])
        {
          app_monitor: AppMonitor.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AppMonitor'] = Stubs::AppMonitor.stub(stub[:app_monitor]) unless stub[:app_monitor].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for AppMonitor
    class AppMonitor
      def self.default(visited=[])
        return nil if visited.include?('AppMonitor')
        visited = visited + ['AppMonitor']
        {
          name: 'name',
          domain: 'domain',
          id: 'id',
          created: 'created',
          last_modified: 'last_modified',
          tags: TagMap.default(visited),
          state: 'state',
          app_monitor_configuration: AppMonitorConfiguration.default(visited),
          data_storage: DataStorage.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AppMonitor.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Domain'] = stub[:domain] unless stub[:domain].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Created'] = stub[:created] unless stub[:created].nil?
        data['LastModified'] = stub[:last_modified] unless stub[:last_modified].nil?
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['AppMonitorConfiguration'] = Stubs::AppMonitorConfiguration.stub(stub[:app_monitor_configuration]) unless stub[:app_monitor_configuration].nil?
        data['DataStorage'] = Stubs::DataStorage.stub(stub[:data_storage]) unless stub[:data_storage].nil?
        data
      end
    end

    # Structure Stubber for DataStorage
    class DataStorage
      def self.default(visited=[])
        return nil if visited.include?('DataStorage')
        visited = visited + ['DataStorage']
        {
          cw_log: CwLog.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DataStorage.new
        data = {}
        data['CwLog'] = Stubs::CwLog.stub(stub[:cw_log]) unless stub[:cw_log].nil?
        data
      end
    end

    # Structure Stubber for CwLog
    class CwLog
      def self.default(visited=[])
        return nil if visited.include?('CwLog')
        visited = visited + ['CwLog']
        {
          cw_log_enabled: false,
          cw_log_group: 'cw_log_group',
        }
      end

      def self.stub(stub)
        stub ||= Types::CwLog.new
        data = {}
        data['CwLogEnabled'] = stub[:cw_log_enabled] unless stub[:cw_log_enabled].nil?
        data['CwLogGroup'] = stub[:cw_log_group] unless stub[:cw_log_group].nil?
        data
      end
    end

    # Structure Stubber for AppMonitorConfiguration
    class AppMonitorConfiguration
      def self.default(visited=[])
        return nil if visited.include?('AppMonitorConfiguration')
        visited = visited + ['AppMonitorConfiguration']
        {
          identity_pool_id: 'identity_pool_id',
          excluded_pages: Pages.default(visited),
          included_pages: Pages.default(visited),
          favorite_pages: FavoritePages.default(visited),
          session_sample_rate: 1.0,
          guest_role_arn: 'guest_role_arn',
          allow_cookies: false,
          telemetries: Telemetries.default(visited),
          enable_x_ray: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::AppMonitorConfiguration.new
        data = {}
        data['IdentityPoolId'] = stub[:identity_pool_id] unless stub[:identity_pool_id].nil?
        data['ExcludedPages'] = Stubs::Pages.stub(stub[:excluded_pages]) unless stub[:excluded_pages].nil?
        data['IncludedPages'] = Stubs::Pages.stub(stub[:included_pages]) unless stub[:included_pages].nil?
        data['FavoritePages'] = Stubs::FavoritePages.stub(stub[:favorite_pages]) unless stub[:favorite_pages].nil?
        data['SessionSampleRate'] = Hearth::NumberHelper.serialize(stub[:session_sample_rate])
        data['GuestRoleArn'] = stub[:guest_role_arn] unless stub[:guest_role_arn].nil?
        data['AllowCookies'] = stub[:allow_cookies] unless stub[:allow_cookies].nil?
        data['Telemetries'] = Stubs::Telemetries.stub(stub[:telemetries]) unless stub[:telemetries].nil?
        data['EnableXRay'] = stub[:enable_x_ray] unless stub[:enable_x_ray].nil?
        data
      end
    end

    # List Stubber for Telemetries
    class Telemetries
      def self.default(visited=[])
        return nil if visited.include?('Telemetries')
        visited = visited + ['Telemetries']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for FavoritePages
    class FavoritePages
      def self.default(visited=[])
        return nil if visited.include?('FavoritePages')
        visited = visited + ['FavoritePages']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for Pages
    class Pages
      def self.default(visited=[])
        return nil if visited.include?('Pages')
        visited = visited + ['Pages']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Map Stubber for TagMap
    class TagMap
      def self.default(visited=[])
        return nil if visited.include?('TagMap')
        visited = visited + ['TagMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for GetAppMonitorData
    class GetAppMonitorData
      def self.default(visited=[])
        {
          events: EventDataList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Events'] = Stubs::EventDataList.stub(stub[:events]) unless stub[:events].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for EventDataList
    class EventDataList
      def self.default(visited=[])
        return nil if visited.include?('EventDataList')
        visited = visited + ['EventDataList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListAppMonitors
    class ListAppMonitors
      def self.default(visited=[])
        {
          next_token: 'next_token',
          app_monitor_summaries: AppMonitorSummaryList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['AppMonitorSummaries'] = Stubs::AppMonitorSummaryList.stub(stub[:app_monitor_summaries]) unless stub[:app_monitor_summaries].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AppMonitorSummaryList
    class AppMonitorSummaryList
      def self.default(visited=[])
        return nil if visited.include?('AppMonitorSummaryList')
        visited = visited + ['AppMonitorSummaryList']
        [
          AppMonitorSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AppMonitorSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AppMonitorSummary
    class AppMonitorSummary
      def self.default(visited=[])
        return nil if visited.include?('AppMonitorSummary')
        visited = visited + ['AppMonitorSummary']
        {
          name: 'name',
          id: 'id',
          created: 'created',
          last_modified: 'last_modified',
          state: 'state',
        }
      end

      def self.stub(stub)
        stub ||= Types::AppMonitorSummary.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Created'] = stub[:created] unless stub[:created].nil?
        data['LastModified'] = stub[:last_modified] unless stub[:last_modified].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          resource_arn: 'resource_arn',
          tags: TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ResourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for PutRumEvents
    class PutRumEvents
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateAppMonitor
    class UpdateAppMonitor
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end
  end
end
