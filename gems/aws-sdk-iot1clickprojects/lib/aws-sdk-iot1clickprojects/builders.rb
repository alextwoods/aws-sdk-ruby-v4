# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::IoT1ClickProjects
  module Builders

    # Operation Builder for AssociateDeviceWithPlacement
    class AssociateDeviceWithPlacement
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:project_name].to_s.empty?
          raise ArgumentError, "HTTP label :project_name cannot be nil or empty."
        end
        if input[:placement_name].to_s.empty?
          raise ArgumentError, "HTTP label :placement_name cannot be nil or empty."
        end
        if input[:device_template_name].to_s.empty?
          raise ArgumentError, "HTTP label :device_template_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/projects/%<projectName>s/placements/%<placementName>s/devices/%<deviceTemplateName>s',
            projectName: Hearth::HTTP.uri_escape(input[:project_name].to_s),
            placementName: Hearth::HTTP.uri_escape(input[:placement_name].to_s),
            deviceTemplateName: Hearth::HTTP.uri_escape(input[:device_template_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['deviceId'] = input[:device_id] unless input[:device_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreatePlacement
    class CreatePlacement
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:project_name].to_s.empty?
          raise ArgumentError, "HTTP label :project_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/projects/%<projectName>s/placements',
            projectName: Hearth::HTTP.uri_escape(input[:project_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['placementName'] = input[:placement_name] unless input[:placement_name].nil?
        data['attributes'] = PlacementAttributeMap.build(input[:attributes]) unless input[:attributes].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for PlacementAttributeMap
    class PlacementAttributeMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for CreateProject
    class CreateProject
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/projects')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['projectName'] = input[:project_name] unless input[:project_name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['placementTemplate'] = PlacementTemplate.build(input[:placement_template]) unless input[:placement_template].nil?
        data['tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
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

    # Structure Builder for PlacementTemplate
    class PlacementTemplate
      def self.build(input)
        data = {}
        data['defaultAttributes'] = DefaultPlacementAttributeMap.build(input[:default_attributes]) unless input[:default_attributes].nil?
        data['deviceTemplates'] = DeviceTemplateMap.build(input[:device_templates]) unless input[:device_templates].nil?
        data
      end
    end

    # Map Builder for DeviceTemplateMap
    class DeviceTemplateMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = DeviceTemplate.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for DeviceTemplate
    class DeviceTemplate
      def self.build(input)
        data = {}
        data['deviceType'] = input[:device_type] unless input[:device_type].nil?
        data['callbackOverrides'] = DeviceCallbackOverrideMap.build(input[:callback_overrides]) unless input[:callback_overrides].nil?
        data
      end
    end

    # Map Builder for DeviceCallbackOverrideMap
    class DeviceCallbackOverrideMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Map Builder for DefaultPlacementAttributeMap
    class DefaultPlacementAttributeMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for DeletePlacement
    class DeletePlacement
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:placement_name].to_s.empty?
          raise ArgumentError, "HTTP label :placement_name cannot be nil or empty."
        end
        if input[:project_name].to_s.empty?
          raise ArgumentError, "HTTP label :project_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/projects/%<projectName>s/placements/%<placementName>s',
            placementName: Hearth::HTTP.uri_escape(input[:placement_name].to_s),
            projectName: Hearth::HTTP.uri_escape(input[:project_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteProject
    class DeleteProject
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:project_name].to_s.empty?
          raise ArgumentError, "HTTP label :project_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/projects/%<projectName>s',
            projectName: Hearth::HTTP.uri_escape(input[:project_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribePlacement
    class DescribePlacement
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:placement_name].to_s.empty?
          raise ArgumentError, "HTTP label :placement_name cannot be nil or empty."
        end
        if input[:project_name].to_s.empty?
          raise ArgumentError, "HTTP label :project_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/projects/%<projectName>s/placements/%<placementName>s',
            placementName: Hearth::HTTP.uri_escape(input[:placement_name].to_s),
            projectName: Hearth::HTTP.uri_escape(input[:project_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeProject
    class DescribeProject
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:project_name].to_s.empty?
          raise ArgumentError, "HTTP label :project_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/projects/%<projectName>s',
            projectName: Hearth::HTTP.uri_escape(input[:project_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DisassociateDeviceFromPlacement
    class DisassociateDeviceFromPlacement
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:project_name].to_s.empty?
          raise ArgumentError, "HTTP label :project_name cannot be nil or empty."
        end
        if input[:placement_name].to_s.empty?
          raise ArgumentError, "HTTP label :placement_name cannot be nil or empty."
        end
        if input[:device_template_name].to_s.empty?
          raise ArgumentError, "HTTP label :device_template_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/projects/%<projectName>s/placements/%<placementName>s/devices/%<deviceTemplateName>s',
            projectName: Hearth::HTTP.uri_escape(input[:project_name].to_s),
            placementName: Hearth::HTTP.uri_escape(input[:placement_name].to_s),
            deviceTemplateName: Hearth::HTTP.uri_escape(input[:device_template_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetDevicesInPlacement
    class GetDevicesInPlacement
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:project_name].to_s.empty?
          raise ArgumentError, "HTTP label :project_name cannot be nil or empty."
        end
        if input[:placement_name].to_s.empty?
          raise ArgumentError, "HTTP label :placement_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/projects/%<projectName>s/placements/%<placementName>s/devices',
            projectName: Hearth::HTTP.uri_escape(input[:project_name].to_s),
            placementName: Hearth::HTTP.uri_escape(input[:placement_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListPlacements
    class ListPlacements
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:project_name].to_s.empty?
          raise ArgumentError, "HTTP label :project_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/projects/%<projectName>s/placements',
            projectName: Hearth::HTTP.uri_escape(input[:project_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListProjects
    class ListProjects
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/projects')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
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
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
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
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
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
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
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

    # Operation Builder for UpdatePlacement
    class UpdatePlacement
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:placement_name].to_s.empty?
          raise ArgumentError, "HTTP label :placement_name cannot be nil or empty."
        end
        if input[:project_name].to_s.empty?
          raise ArgumentError, "HTTP label :project_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/projects/%<projectName>s/placements/%<placementName>s',
            placementName: Hearth::HTTP.uri_escape(input[:placement_name].to_s),
            projectName: Hearth::HTTP.uri_escape(input[:project_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['attributes'] = PlacementAttributeMap.build(input[:attributes]) unless input[:attributes].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateProject
    class UpdateProject
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:project_name].to_s.empty?
          raise ArgumentError, "HTTP label :project_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/projects/%<projectName>s',
            projectName: Hearth::HTTP.uri_escape(input[:project_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['description'] = input[:description] unless input[:description].nil?
        data['placementTemplate'] = PlacementTemplate.build(input[:placement_template]) unless input[:placement_template].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
