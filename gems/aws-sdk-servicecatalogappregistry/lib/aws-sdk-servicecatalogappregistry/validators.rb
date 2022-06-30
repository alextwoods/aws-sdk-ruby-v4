# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ServiceCatalogAppRegistry
  module Validators

    class Application
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Application, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_update_time], ::Time, context: "#{context}[:last_update_time]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ApplicationSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ApplicationSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ApplicationSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplicationSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_update_time], ::Time, context: "#{context}[:last_update_time]")
      end
    end

    class AssociateAttributeGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateAttributeGroupInput, context: context)
        Hearth::Validator.validate!(input[:application], ::String, context: "#{context}[:application]")
        Hearth::Validator.validate!(input[:attribute_group], ::String, context: "#{context}[:attribute_group]")
      end
    end

    class AssociateAttributeGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateAttributeGroupOutput, context: context)
        Hearth::Validator.validate!(input[:application_arn], ::String, context: "#{context}[:application_arn]")
        Hearth::Validator.validate!(input[:attribute_group_arn], ::String, context: "#{context}[:attribute_group_arn]")
      end
    end

    class AssociateResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateResourceInput, context: context)
        Hearth::Validator.validate!(input[:application], ::String, context: "#{context}[:application]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:resource], ::String, context: "#{context}[:resource]")
      end
    end

    class AssociateResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateResourceOutput, context: context)
        Hearth::Validator.validate!(input[:application_arn], ::String, context: "#{context}[:application_arn]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class AttributeGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttributeGroup, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_update_time], ::Time, context: "#{context}[:last_update_time]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class AttributeGroupIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AttributeGroupSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AttributeGroupSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AttributeGroupSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttributeGroupSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_update_time], ::Time, context: "#{context}[:last_update_time]")
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateApplicationInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateApplicationOutput, context: context)
        Validators::Application.validate!(input[:application], context: "#{context}[:application]") unless input[:application].nil?
      end
    end

    class CreateAttributeGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAttributeGroupInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:attributes], ::String, context: "#{context}[:attributes]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateAttributeGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAttributeGroupOutput, context: context)
        Validators::AttributeGroup.validate!(input[:attribute_group], context: "#{context}[:attribute_group]") unless input[:attribute_group].nil?
      end
    end

    class DeleteApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApplicationInput, context: context)
        Hearth::Validator.validate!(input[:application], ::String, context: "#{context}[:application]")
      end
    end

    class DeleteApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApplicationOutput, context: context)
        Validators::ApplicationSummary.validate!(input[:application], context: "#{context}[:application]") unless input[:application].nil?
      end
    end

    class DeleteAttributeGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAttributeGroupInput, context: context)
        Hearth::Validator.validate!(input[:attribute_group], ::String, context: "#{context}[:attribute_group]")
      end
    end

    class DeleteAttributeGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAttributeGroupOutput, context: context)
        Validators::AttributeGroupSummary.validate!(input[:attribute_group], context: "#{context}[:attribute_group]") unless input[:attribute_group].nil?
      end
    end

    class DisassociateAttributeGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateAttributeGroupInput, context: context)
        Hearth::Validator.validate!(input[:application], ::String, context: "#{context}[:application]")
        Hearth::Validator.validate!(input[:attribute_group], ::String, context: "#{context}[:attribute_group]")
      end
    end

    class DisassociateAttributeGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateAttributeGroupOutput, context: context)
        Hearth::Validator.validate!(input[:application_arn], ::String, context: "#{context}[:application_arn]")
        Hearth::Validator.validate!(input[:attribute_group_arn], ::String, context: "#{context}[:attribute_group_arn]")
      end
    end

    class DisassociateResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateResourceInput, context: context)
        Hearth::Validator.validate!(input[:application], ::String, context: "#{context}[:application]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:resource], ::String, context: "#{context}[:resource]")
      end
    end

    class DisassociateResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateResourceOutput, context: context)
        Hearth::Validator.validate!(input[:application_arn], ::String, context: "#{context}[:application_arn]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class GetApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetApplicationInput, context: context)
        Hearth::Validator.validate!(input[:application], ::String, context: "#{context}[:application]")
      end
    end

    class GetApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetApplicationOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_update_time], ::Time, context: "#{context}[:last_update_time]")
        Hearth::Validator.validate!(input[:associated_resource_count], ::Integer, context: "#{context}[:associated_resource_count]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::Integrations.validate!(input[:integrations], context: "#{context}[:integrations]") unless input[:integrations].nil?
      end
    end

    class GetAssociatedResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAssociatedResourceInput, context: context)
        Hearth::Validator.validate!(input[:application], ::String, context: "#{context}[:application]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:resource], ::String, context: "#{context}[:resource]")
      end
    end

    class GetAssociatedResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAssociatedResourceOutput, context: context)
        Validators::Resource.validate!(input[:resource], context: "#{context}[:resource]") unless input[:resource].nil?
      end
    end

    class GetAttributeGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAttributeGroupInput, context: context)
        Hearth::Validator.validate!(input[:attribute_group], ::String, context: "#{context}[:attribute_group]")
      end
    end

    class GetAttributeGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAttributeGroupOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:attributes], ::String, context: "#{context}[:attributes]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_update_time], ::Time, context: "#{context}[:last_update_time]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class Integrations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Integrations, context: context)
        Validators::ResourceGroup.validate!(input[:resource_group], context: "#{context}[:resource_group]") unless input[:resource_group].nil?
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListApplicationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListApplicationsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListApplicationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListApplicationsOutput, context: context)
        Validators::ApplicationSummaries.validate!(input[:applications], context: "#{context}[:applications]") unless input[:applications].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAssociatedAttributeGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAssociatedAttributeGroupsInput, context: context)
        Hearth::Validator.validate!(input[:application], ::String, context: "#{context}[:application]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListAssociatedAttributeGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAssociatedAttributeGroupsOutput, context: context)
        Validators::AttributeGroupIds.validate!(input[:attribute_groups], context: "#{context}[:attribute_groups]") unless input[:attribute_groups].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAssociatedResourcesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAssociatedResourcesInput, context: context)
        Hearth::Validator.validate!(input[:application], ::String, context: "#{context}[:application]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListAssociatedResourcesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAssociatedResourcesOutput, context: context)
        Validators::Resources.validate!(input[:resources], context: "#{context}[:resources]") unless input[:resources].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAttributeGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAttributeGroupsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListAttributeGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAttributeGroupsOutput, context: context)
        Validators::AttributeGroupSummaries.validate!(input[:attribute_groups], context: "#{context}[:attribute_groups]") unless input[:attribute_groups].nil?
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
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class Resource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Resource, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:association_time], ::Time, context: "#{context}[:association_time]")
        Validators::ResourceIntegrations.validate!(input[:integrations], context: "#{context}[:integrations]") unless input[:integrations].nil?
      end
    end

    class ResourceGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceGroup, context: context)
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class ResourceInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceInfo, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class ResourceIntegrations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceIntegrations, context: context)
        Validators::ResourceGroup.validate!(input[:resource_group], context: "#{context}[:resource_group]") unless input[:resource_group].nil?
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Resources
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ResourceInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SyncResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SyncResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:resource], ::String, context: "#{context}[:resource]")
      end
    end

    class SyncResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SyncResourceOutput, context: context)
        Hearth::Validator.validate!(input[:application_arn], ::String, context: "#{context}[:application_arn]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:action_taken], ::String, context: "#{context}[:action_taken]")
      end
    end

    class TagKeys
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class Tags
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagKeys.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateApplicationInput, context: context)
        Hearth::Validator.validate!(input[:application], ::String, context: "#{context}[:application]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class UpdateApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateApplicationOutput, context: context)
        Validators::Application.validate!(input[:application], context: "#{context}[:application]") unless input[:application].nil?
      end
    end

    class UpdateAttributeGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAttributeGroupInput, context: context)
        Hearth::Validator.validate!(input[:attribute_group], ::String, context: "#{context}[:attribute_group]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:attributes], ::String, context: "#{context}[:attributes]")
      end
    end

    class UpdateAttributeGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAttributeGroupOutput, context: context)
        Validators::AttributeGroup.validate!(input[:attribute_group], context: "#{context}[:attribute_group]") unless input[:attribute_group].nil?
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

  end
end
