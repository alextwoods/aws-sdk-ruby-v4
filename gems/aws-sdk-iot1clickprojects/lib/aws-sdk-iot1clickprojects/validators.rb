# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::IoT1ClickProjects
  module Validators

    class AssociateDeviceWithPlacementInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateDeviceWithPlacementInput, context: context)
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate!(input[:placement_name], ::String, context: "#{context}[:placement_name]")
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
        Hearth::Validator.validate!(input[:device_template_name], ::String, context: "#{context}[:device_template_name]")
      end
    end

    class AssociateDeviceWithPlacementOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateDeviceWithPlacementOutput, context: context)
      end
    end

    class CreatePlacementInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePlacementInput, context: context)
        Hearth::Validator.validate!(input[:placement_name], ::String, context: "#{context}[:placement_name]")
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
        PlacementAttributeMap.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class CreatePlacementOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePlacementOutput, context: context)
      end
    end

    class CreateProjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateProjectInput, context: context)
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        PlacementTemplate.validate!(input[:placement_template], context: "#{context}[:placement_template]") unless input[:placement_template].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateProjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateProjectOutput, context: context)
      end
    end

    class DefaultPlacementAttributeMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class DeletePlacementInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePlacementInput, context: context)
        Hearth::Validator.validate!(input[:placement_name], ::String, context: "#{context}[:placement_name]")
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
      end
    end

    class DeletePlacementOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePlacementOutput, context: context)
      end
    end

    class DeleteProjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteProjectInput, context: context)
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
      end
    end

    class DeleteProjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteProjectOutput, context: context)
      end
    end

    class DescribePlacementInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePlacementInput, context: context)
        Hearth::Validator.validate!(input[:placement_name], ::String, context: "#{context}[:placement_name]")
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
      end
    end

    class DescribePlacementOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePlacementOutput, context: context)
        PlacementDescription.validate!(input[:placement], context: "#{context}[:placement]") unless input[:placement].nil?
      end
    end

    class DescribeProjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeProjectInput, context: context)
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
      end
    end

    class DescribeProjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeProjectOutput, context: context)
        ProjectDescription.validate!(input[:project], context: "#{context}[:project]") unless input[:project].nil?
      end
    end

    class DeviceCallbackOverrideMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class DeviceMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class DeviceTemplate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeviceTemplate, context: context)
        Hearth::Validator.validate!(input[:device_type], ::String, context: "#{context}[:device_type]")
        DeviceCallbackOverrideMap.validate!(input[:callback_overrides], context: "#{context}[:callback_overrides]") unless input[:callback_overrides].nil?
      end
    end

    class DeviceTemplateMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          DeviceTemplate.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class DisassociateDeviceFromPlacementInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateDeviceFromPlacementInput, context: context)
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate!(input[:placement_name], ::String, context: "#{context}[:placement_name]")
        Hearth::Validator.validate!(input[:device_template_name], ::String, context: "#{context}[:device_template_name]")
      end
    end

    class DisassociateDeviceFromPlacementOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateDeviceFromPlacementOutput, context: context)
      end
    end

    class GetDevicesInPlacementInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDevicesInPlacementInput, context: context)
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate!(input[:placement_name], ::String, context: "#{context}[:placement_name]")
      end
    end

    class GetDevicesInPlacementOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDevicesInPlacementOutput, context: context)
        DeviceMap.validate!(input[:devices], context: "#{context}[:devices]") unless input[:devices].nil?
      end
    end

    class InternalFailureException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalFailureException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRequestException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListPlacementsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPlacementsInput, context: context)
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListPlacementsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPlacementsOutput, context: context)
        PlacementSummaryList.validate!(input[:placements], context: "#{context}[:placements]") unless input[:placements].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListProjectsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProjectsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListProjectsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProjectsOutput, context: context)
        ProjectSummaryList.validate!(input[:projects], context: "#{context}[:projects]") unless input[:projects].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class PlacementAttributeMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class PlacementDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PlacementDescription, context: context)
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate!(input[:placement_name], ::String, context: "#{context}[:placement_name]")
        PlacementAttributeMap.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:updated_date], ::Time, context: "#{context}[:updated_date]")
      end
    end

    class PlacementSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PlacementSummary, context: context)
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate!(input[:placement_name], ::String, context: "#{context}[:placement_name]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:updated_date], ::Time, context: "#{context}[:updated_date]")
      end
    end

    class PlacementSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PlacementSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PlacementTemplate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PlacementTemplate, context: context)
        DefaultPlacementAttributeMap.validate!(input[:default_attributes], context: "#{context}[:default_attributes]") unless input[:default_attributes].nil?
        DeviceTemplateMap.validate!(input[:device_templates], context: "#{context}[:device_templates]") unless input[:device_templates].nil?
      end
    end

    class ProjectDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProjectDescription, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:updated_date], ::Time, context: "#{context}[:updated_date]")
        PlacementTemplate.validate!(input[:placement_template], context: "#{context}[:placement_template]") unless input[:placement_template].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ProjectSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProjectSummary, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:updated_date], ::Time, context: "#{context}[:updated_date]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ProjectSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ProjectSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceConflictException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TooManyRequestsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyRequestsException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdatePlacementInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePlacementInput, context: context)
        Hearth::Validator.validate!(input[:placement_name], ::String, context: "#{context}[:placement_name]")
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
        PlacementAttributeMap.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class UpdatePlacementOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePlacementOutput, context: context)
      end
    end

    class UpdateProjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateProjectInput, context: context)
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        PlacementTemplate.validate!(input[:placement_template], context: "#{context}[:placement_template]") unless input[:placement_template].nil?
      end
    end

    class UpdateProjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateProjectOutput, context: context)
      end
    end

  end
end
