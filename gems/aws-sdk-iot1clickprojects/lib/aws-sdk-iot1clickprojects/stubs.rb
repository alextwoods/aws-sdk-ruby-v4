# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::IoT1ClickProjects
  module Stubs

    # Operation Stubber for AssociateDeviceWithPlacement
    class AssociateDeviceWithPlacement
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreatePlacement
    class CreatePlacement
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateProject
    class CreateProject
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeletePlacement
    class DeletePlacement
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteProject
    class DeleteProject
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribePlacement
    class DescribePlacement
      def self.default(visited=[])
        {
          placement: Stubs::PlacementDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['placement'] = Stubs::PlacementDescription.stub(stub[:placement]) unless stub[:placement].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for PlacementDescription
    class PlacementDescription
      def self.default(visited=[])
        return nil if visited.include?('PlacementDescription')
        visited = visited + ['PlacementDescription']
        {
          project_name: 'project_name',
          placement_name: 'placement_name',
          attributes: Stubs::PlacementAttributeMap.default(visited),
          created_date: Time.now,
          updated_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::PlacementDescription.new
        data = {}
        data['projectName'] = stub[:project_name] unless stub[:project_name].nil?
        data['placementName'] = stub[:placement_name] unless stub[:placement_name].nil?
        data['attributes'] = Stubs::PlacementAttributeMap.stub(stub[:attributes]) unless stub[:attributes].nil?
        data['createdDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['updatedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:updated_date]).to_i unless stub[:updated_date].nil?
        data
      end
    end

    # Map Stubber for PlacementAttributeMap
    class PlacementAttributeMap
      def self.default(visited=[])
        return nil if visited.include?('PlacementAttributeMap')
        visited = visited + ['PlacementAttributeMap']
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

    # Operation Stubber for DescribeProject
    class DescribeProject
      def self.default(visited=[])
        {
          project: Stubs::ProjectDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['project'] = Stubs::ProjectDescription.stub(stub[:project]) unless stub[:project].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ProjectDescription
    class ProjectDescription
      def self.default(visited=[])
        return nil if visited.include?('ProjectDescription')
        visited = visited + ['ProjectDescription']
        {
          arn: 'arn',
          project_name: 'project_name',
          description: 'description',
          created_date: Time.now,
          updated_date: Time.now,
          placement_template: Stubs::PlacementTemplate.default(visited),
          tags: Stubs::TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ProjectDescription.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['projectName'] = stub[:project_name] unless stub[:project_name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['createdDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['updatedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:updated_date]).to_i unless stub[:updated_date].nil?
        data['placementTemplate'] = Stubs::PlacementTemplate.stub(stub[:placement_template]) unless stub[:placement_template].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
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

    # Structure Stubber for PlacementTemplate
    class PlacementTemplate
      def self.default(visited=[])
        return nil if visited.include?('PlacementTemplate')
        visited = visited + ['PlacementTemplate']
        {
          default_attributes: Stubs::DefaultPlacementAttributeMap.default(visited),
          device_templates: Stubs::DeviceTemplateMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PlacementTemplate.new
        data = {}
        data['defaultAttributes'] = Stubs::DefaultPlacementAttributeMap.stub(stub[:default_attributes]) unless stub[:default_attributes].nil?
        data['deviceTemplates'] = Stubs::DeviceTemplateMap.stub(stub[:device_templates]) unless stub[:device_templates].nil?
        data
      end
    end

    # Map Stubber for DeviceTemplateMap
    class DeviceTemplateMap
      def self.default(visited=[])
        return nil if visited.include?('DeviceTemplateMap')
        visited = visited + ['DeviceTemplateMap']
        {
          test_key: Stubs::DeviceTemplate.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::DeviceTemplate.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for DeviceTemplate
    class DeviceTemplate
      def self.default(visited=[])
        return nil if visited.include?('DeviceTemplate')
        visited = visited + ['DeviceTemplate']
        {
          device_type: 'device_type',
          callback_overrides: Stubs::DeviceCallbackOverrideMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DeviceTemplate.new
        data = {}
        data['deviceType'] = stub[:device_type] unless stub[:device_type].nil?
        data['callbackOverrides'] = Stubs::DeviceCallbackOverrideMap.stub(stub[:callback_overrides]) unless stub[:callback_overrides].nil?
        data
      end
    end

    # Map Stubber for DeviceCallbackOverrideMap
    class DeviceCallbackOverrideMap
      def self.default(visited=[])
        return nil if visited.include?('DeviceCallbackOverrideMap')
        visited = visited + ['DeviceCallbackOverrideMap']
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

    # Map Stubber for DefaultPlacementAttributeMap
    class DefaultPlacementAttributeMap
      def self.default(visited=[])
        return nil if visited.include?('DefaultPlacementAttributeMap')
        visited = visited + ['DefaultPlacementAttributeMap']
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

    # Operation Stubber for DisassociateDeviceFromPlacement
    class DisassociateDeviceFromPlacement
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetDevicesInPlacement
    class GetDevicesInPlacement
      def self.default(visited=[])
        {
          devices: Stubs::DeviceMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['devices'] = Stubs::DeviceMap.stub(stub[:devices]) unless stub[:devices].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for DeviceMap
    class DeviceMap
      def self.default(visited=[])
        return nil if visited.include?('DeviceMap')
        visited = visited + ['DeviceMap']
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

    # Operation Stubber for ListPlacements
    class ListPlacements
      def self.default(visited=[])
        {
          placements: Stubs::PlacementSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['placements'] = Stubs::PlacementSummaryList.stub(stub[:placements]) unless stub[:placements].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for PlacementSummaryList
    class PlacementSummaryList
      def self.default(visited=[])
        return nil if visited.include?('PlacementSummaryList')
        visited = visited + ['PlacementSummaryList']
        [
          Stubs::PlacementSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PlacementSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PlacementSummary
    class PlacementSummary
      def self.default(visited=[])
        return nil if visited.include?('PlacementSummary')
        visited = visited + ['PlacementSummary']
        {
          project_name: 'project_name',
          placement_name: 'placement_name',
          created_date: Time.now,
          updated_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::PlacementSummary.new
        data = {}
        data['projectName'] = stub[:project_name] unless stub[:project_name].nil?
        data['placementName'] = stub[:placement_name] unless stub[:placement_name].nil?
        data['createdDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['updatedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:updated_date]).to_i unless stub[:updated_date].nil?
        data
      end
    end

    # Operation Stubber for ListProjects
    class ListProjects
      def self.default(visited=[])
        {
          projects: Stubs::ProjectSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['projects'] = Stubs::ProjectSummaryList.stub(stub[:projects]) unless stub[:projects].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ProjectSummaryList
    class ProjectSummaryList
      def self.default(visited=[])
        return nil if visited.include?('ProjectSummaryList')
        visited = visited + ['ProjectSummaryList']
        [
          Stubs::ProjectSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ProjectSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ProjectSummary
    class ProjectSummary
      def self.default(visited=[])
        return nil if visited.include?('ProjectSummary')
        visited = visited + ['ProjectSummary']
        {
          arn: 'arn',
          project_name: 'project_name',
          created_date: Time.now,
          updated_date: Time.now,
          tags: Stubs::TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ProjectSummary.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['projectName'] = stub[:project_name] unless stub[:project_name].nil?
        data['createdDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['updatedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:updated_date]).to_i unless stub[:updated_date].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: Stubs::TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Stubber for UpdatePlacement
    class UpdatePlacement
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateProject
    class UpdateProject
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
