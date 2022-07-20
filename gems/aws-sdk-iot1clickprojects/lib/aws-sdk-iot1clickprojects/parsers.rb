# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::IoT1ClickProjects
  module Parsers

    # Operation Parser for AssociateDeviceWithPlacement
    class AssociateDeviceWithPlacement
      def self.parse(http_resp)
        data = Types::AssociateDeviceWithPlacementOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for ResourceConflictException
    class ResourceConflictException
      def self.parse(http_resp)
        data = Types::ResourceConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['code']
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['code']
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InternalFailureException
    class InternalFailureException
      def self.parse(http_resp)
        data = Types::InternalFailureException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['code']
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InvalidRequestException
    class InvalidRequestException
      def self.parse(http_resp)
        data = Types::InvalidRequestException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['code']
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CreatePlacement
    class CreatePlacement
      def self.parse(http_resp)
        data = Types::CreatePlacementOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for CreateProject
    class CreateProject
      def self.parse(http_resp)
        data = Types::CreateProjectOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeletePlacement
    class DeletePlacement
      def self.parse(http_resp)
        data = Types::DeletePlacementOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for TooManyRequestsException
    class TooManyRequestsException
      def self.parse(http_resp)
        data = Types::TooManyRequestsException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['code']
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for DeleteProject
    class DeleteProject
      def self.parse(http_resp)
        data = Types::DeleteProjectOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DescribePlacement
    class DescribePlacement
      def self.parse(http_resp)
        data = Types::DescribePlacementOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.placement = (PlacementDescription.parse(map['placement']) unless map['placement'].nil?)
        data
      end
    end

    class PlacementDescription
      def self.parse(map)
        data = Types::PlacementDescription.new
        data.project_name = map['projectName']
        data.placement_name = map['placementName']
        data.attributes = (PlacementAttributeMap.parse(map['attributes']) unless map['attributes'].nil?)
        data.created_date = Time.at(map['createdDate'].to_i) if map['createdDate']
        data.updated_date = Time.at(map['updatedDate'].to_i) if map['updatedDate']
        return data
      end
    end

    class PlacementAttributeMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribeProject
    class DescribeProject
      def self.parse(http_resp)
        data = Types::DescribeProjectOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.project = (ProjectDescription.parse(map['project']) unless map['project'].nil?)
        data
      end
    end

    class ProjectDescription
      def self.parse(map)
        data = Types::ProjectDescription.new
        data.arn = map['arn']
        data.project_name = map['projectName']
        data.description = map['description']
        data.created_date = Time.at(map['createdDate'].to_i) if map['createdDate']
        data.updated_date = Time.at(map['updatedDate'].to_i) if map['updatedDate']
        data.placement_template = (PlacementTemplate.parse(map['placementTemplate']) unless map['placementTemplate'].nil?)
        data.tags = (TagMap.parse(map['tags']) unless map['tags'].nil?)
        return data
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

    class PlacementTemplate
      def self.parse(map)
        data = Types::PlacementTemplate.new
        data.default_attributes = (DefaultPlacementAttributeMap.parse(map['defaultAttributes']) unless map['defaultAttributes'].nil?)
        data.device_templates = (DeviceTemplateMap.parse(map['deviceTemplates']) unless map['deviceTemplates'].nil?)
        return data
      end
    end

    class DeviceTemplateMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = DeviceTemplate.parse(value) unless value.nil?
        end
        data
      end
    end

    class DeviceTemplate
      def self.parse(map)
        data = Types::DeviceTemplate.new
        data.device_type = map['deviceType']
        data.callback_overrides = (DeviceCallbackOverrideMap.parse(map['callbackOverrides']) unless map['callbackOverrides'].nil?)
        return data
      end
    end

    class DeviceCallbackOverrideMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class DefaultPlacementAttributeMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DisassociateDeviceFromPlacement
    class DisassociateDeviceFromPlacement
      def self.parse(http_resp)
        data = Types::DisassociateDeviceFromPlacementOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for GetDevicesInPlacement
    class GetDevicesInPlacement
      def self.parse(http_resp)
        data = Types::GetDevicesInPlacementOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.devices = (DeviceMap.parse(map['devices']) unless map['devices'].nil?)
        data
      end
    end

    class DeviceMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListPlacements
    class ListPlacements
      def self.parse(http_resp)
        data = Types::ListPlacementsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.placements = (PlacementSummaryList.parse(map['placements']) unless map['placements'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class PlacementSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << PlacementSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class PlacementSummary
      def self.parse(map)
        data = Types::PlacementSummary.new
        data.project_name = map['projectName']
        data.placement_name = map['placementName']
        data.created_date = Time.at(map['createdDate'].to_i) if map['createdDate']
        data.updated_date = Time.at(map['updatedDate'].to_i) if map['updatedDate']
        return data
      end
    end

    # Operation Parser for ListProjects
    class ListProjects
      def self.parse(http_resp)
        data = Types::ListProjectsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.projects = (ProjectSummaryList.parse(map['projects']) unless map['projects'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ProjectSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ProjectSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ProjectSummary
      def self.parse(map)
        data = Types::ProjectSummary.new
        data.arn = map['arn']
        data.project_name = map['projectName']
        data.created_date = Time.at(map['createdDate'].to_i) if map['createdDate']
        data.updated_date = Time.at(map['updatedDate'].to_i) if map['updatedDate']
        data.tags = (TagMap.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (TagMap.parse(map['tags']) unless map['tags'].nil?)
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

    # Operation Parser for UpdatePlacement
    class UpdatePlacement
      def self.parse(http_resp)
        data = Types::UpdatePlacementOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateProject
    class UpdateProject
      def self.parse(http_resp)
        data = Types::UpdateProjectOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end
  end
end
