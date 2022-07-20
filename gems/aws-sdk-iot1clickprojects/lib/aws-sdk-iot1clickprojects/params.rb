# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::IoT1ClickProjects
  module Params

    module AssociateDeviceWithPlacementInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateDeviceWithPlacementInput, context: context)
        type = Types::AssociateDeviceWithPlacementInput.new
        type.project_name = params[:project_name]
        type.placement_name = params[:placement_name]
        type.device_id = params[:device_id]
        type.device_template_name = params[:device_template_name]
        type
      end
    end

    module AssociateDeviceWithPlacementOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateDeviceWithPlacementOutput, context: context)
        type = Types::AssociateDeviceWithPlacementOutput.new
        type
      end
    end

    module CreatePlacementInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePlacementInput, context: context)
        type = Types::CreatePlacementInput.new
        type.placement_name = params[:placement_name]
        type.project_name = params[:project_name]
        type.attributes = PlacementAttributeMap.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module CreatePlacementOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePlacementOutput, context: context)
        type = Types::CreatePlacementOutput.new
        type
      end
    end

    module CreateProjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateProjectInput, context: context)
        type = Types::CreateProjectInput.new
        type.project_name = params[:project_name]
        type.description = params[:description]
        type.placement_template = PlacementTemplate.build(params[:placement_template], context: "#{context}[:placement_template]") unless params[:placement_template].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateProjectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateProjectOutput, context: context)
        type = Types::CreateProjectOutput.new
        type
      end
    end

    module DefaultPlacementAttributeMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module DeletePlacementInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePlacementInput, context: context)
        type = Types::DeletePlacementInput.new
        type.placement_name = params[:placement_name]
        type.project_name = params[:project_name]
        type
      end
    end

    module DeletePlacementOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePlacementOutput, context: context)
        type = Types::DeletePlacementOutput.new
        type
      end
    end

    module DeleteProjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteProjectInput, context: context)
        type = Types::DeleteProjectInput.new
        type.project_name = params[:project_name]
        type
      end
    end

    module DeleteProjectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteProjectOutput, context: context)
        type = Types::DeleteProjectOutput.new
        type
      end
    end

    module DescribePlacementInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePlacementInput, context: context)
        type = Types::DescribePlacementInput.new
        type.placement_name = params[:placement_name]
        type.project_name = params[:project_name]
        type
      end
    end

    module DescribePlacementOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePlacementOutput, context: context)
        type = Types::DescribePlacementOutput.new
        type.placement = PlacementDescription.build(params[:placement], context: "#{context}[:placement]") unless params[:placement].nil?
        type
      end
    end

    module DescribeProjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeProjectInput, context: context)
        type = Types::DescribeProjectInput.new
        type.project_name = params[:project_name]
        type
      end
    end

    module DescribeProjectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeProjectOutput, context: context)
        type = Types::DescribeProjectOutput.new
        type.project = ProjectDescription.build(params[:project], context: "#{context}[:project]") unless params[:project].nil?
        type
      end
    end

    module DeviceCallbackOverrideMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module DeviceMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module DeviceTemplate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeviceTemplate, context: context)
        type = Types::DeviceTemplate.new
        type.device_type = params[:device_type]
        type.callback_overrides = DeviceCallbackOverrideMap.build(params[:callback_overrides], context: "#{context}[:callback_overrides]") unless params[:callback_overrides].nil?
        type
      end
    end

    module DeviceTemplateMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = DeviceTemplate.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module DisassociateDeviceFromPlacementInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateDeviceFromPlacementInput, context: context)
        type = Types::DisassociateDeviceFromPlacementInput.new
        type.project_name = params[:project_name]
        type.placement_name = params[:placement_name]
        type.device_template_name = params[:device_template_name]
        type
      end
    end

    module DisassociateDeviceFromPlacementOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateDeviceFromPlacementOutput, context: context)
        type = Types::DisassociateDeviceFromPlacementOutput.new
        type
      end
    end

    module GetDevicesInPlacementInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDevicesInPlacementInput, context: context)
        type = Types::GetDevicesInPlacementInput.new
        type.project_name = params[:project_name]
        type.placement_name = params[:placement_name]
        type
      end
    end

    module GetDevicesInPlacementOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDevicesInPlacementOutput, context: context)
        type = Types::GetDevicesInPlacementOutput.new
        type.devices = DeviceMap.build(params[:devices], context: "#{context}[:devices]") unless params[:devices].nil?
        type
      end
    end

    module InternalFailureException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalFailureException, context: context)
        type = Types::InternalFailureException.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module InvalidRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidRequestException, context: context)
        type = Types::InvalidRequestException.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module ListPlacementsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPlacementsInput, context: context)
        type = Types::ListPlacementsInput.new
        type.project_name = params[:project_name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListPlacementsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPlacementsOutput, context: context)
        type = Types::ListPlacementsOutput.new
        type.placements = PlacementSummaryList.build(params[:placements], context: "#{context}[:placements]") unless params[:placements].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListProjectsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProjectsInput, context: context)
        type = Types::ListProjectsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListProjectsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProjectsOutput, context: context)
        type = Types::ListProjectsOutput.new
        type.projects = ProjectSummaryList.build(params[:projects], context: "#{context}[:projects]") unless params[:projects].nil?
        type.next_token = params[:next_token]
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
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module PlacementAttributeMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module PlacementDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PlacementDescription, context: context)
        type = Types::PlacementDescription.new
        type.project_name = params[:project_name]
        type.placement_name = params[:placement_name]
        type.attributes = PlacementAttributeMap.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.created_date = params[:created_date]
        type.updated_date = params[:updated_date]
        type
      end
    end

    module PlacementSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PlacementSummary, context: context)
        type = Types::PlacementSummary.new
        type.project_name = params[:project_name]
        type.placement_name = params[:placement_name]
        type.created_date = params[:created_date]
        type.updated_date = params[:updated_date]
        type
      end
    end

    module PlacementSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PlacementSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PlacementTemplate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PlacementTemplate, context: context)
        type = Types::PlacementTemplate.new
        type.default_attributes = DefaultPlacementAttributeMap.build(params[:default_attributes], context: "#{context}[:default_attributes]") unless params[:default_attributes].nil?
        type.device_templates = DeviceTemplateMap.build(params[:device_templates], context: "#{context}[:device_templates]") unless params[:device_templates].nil?
        type
      end
    end

    module ProjectDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProjectDescription, context: context)
        type = Types::ProjectDescription.new
        type.arn = params[:arn]
        type.project_name = params[:project_name]
        type.description = params[:description]
        type.created_date = params[:created_date]
        type.updated_date = params[:updated_date]
        type.placement_template = PlacementTemplate.build(params[:placement_template], context: "#{context}[:placement_template]") unless params[:placement_template].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ProjectSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProjectSummary, context: context)
        type = Types::ProjectSummary.new
        type.arn = params[:arn]
        type.project_name = params[:project_name]
        type.created_date = params[:created_date]
        type.updated_date = params[:updated_date]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ProjectSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProjectSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceConflictException, context: context)
        type = Types::ResourceConflictException.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.code = params[:code]
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

    module TooManyRequestsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyRequestsException, context: context)
        type = Types::TooManyRequestsException.new
        type.code = params[:code]
        type.message = params[:message]
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

    module UpdatePlacementInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePlacementInput, context: context)
        type = Types::UpdatePlacementInput.new
        type.placement_name = params[:placement_name]
        type.project_name = params[:project_name]
        type.attributes = PlacementAttributeMap.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module UpdatePlacementOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePlacementOutput, context: context)
        type = Types::UpdatePlacementOutput.new
        type
      end
    end

    module UpdateProjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateProjectInput, context: context)
        type = Types::UpdateProjectInput.new
        type.project_name = params[:project_name]
        type.description = params[:description]
        type.placement_template = PlacementTemplate.build(params[:placement_template], context: "#{context}[:placement_template]") unless params[:placement_template].nil?
        type
      end
    end

    module UpdateProjectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateProjectOutput, context: context)
        type = Types::UpdateProjectOutput.new
        type
      end
    end

  end
end
