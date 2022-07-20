# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MigrationHubConfig
  module Stubs

    # Operation Stubber for CreateHomeRegionControl
    class CreateHomeRegionControl
      def self.default(visited=[])
        {
          home_region_control: HomeRegionControl.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['HomeRegionControl'] = Stubs::HomeRegionControl.stub(stub[:home_region_control]) unless stub[:home_region_control].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for HomeRegionControl
    class HomeRegionControl
      def self.default(visited=[])
        return nil if visited.include?('HomeRegionControl')
        visited = visited + ['HomeRegionControl']
        {
          control_id: 'control_id',
          home_region: 'home_region',
          target: Target.default(visited),
          requested_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::HomeRegionControl.new
        data = {}
        data['ControlId'] = stub[:control_id] unless stub[:control_id].nil?
        data['HomeRegion'] = stub[:home_region] unless stub[:home_region].nil?
        data['Target'] = Stubs::Target.stub(stub[:target]) unless stub[:target].nil?
        data['RequestedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:requested_time]).to_i unless stub[:requested_time].nil?
        data
      end
    end

    # Structure Stubber for Target
    class Target
      def self.default(visited=[])
        return nil if visited.include?('Target')
        visited = visited + ['Target']
        {
          type: 'type',
          id: 'id',
        }
      end

      def self.stub(stub)
        stub ||= Types::Target.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data
      end
    end

    # Operation Stubber for DescribeHomeRegionControls
    class DescribeHomeRegionControls
      def self.default(visited=[])
        {
          home_region_controls: HomeRegionControls.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['HomeRegionControls'] = Stubs::HomeRegionControls.stub(stub[:home_region_controls]) unless stub[:home_region_controls].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for HomeRegionControls
    class HomeRegionControls
      def self.default(visited=[])
        return nil if visited.include?('HomeRegionControls')
        visited = visited + ['HomeRegionControls']
        [
          HomeRegionControl.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::HomeRegionControl.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetHomeRegion
    class GetHomeRegion
      def self.default(visited=[])
        {
          home_region: 'home_region',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['HomeRegion'] = stub[:home_region] unless stub[:home_region].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
