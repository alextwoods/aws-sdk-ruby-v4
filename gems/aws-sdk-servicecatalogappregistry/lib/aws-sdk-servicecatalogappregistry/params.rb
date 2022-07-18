# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::ServiceCatalogAppRegistry
  module Params

    module Application
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Application, context: context)
        type = Types::Application.new
        type.id = params[:id]
        type.arn = params[:arn]
        type.name = params[:name]
        type.description = params[:description]
        type.creation_time = params[:creation_time]
        type.last_update_time = params[:last_update_time]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ApplicationSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ApplicationSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ApplicationSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplicationSummary, context: context)
        type = Types::ApplicationSummary.new
        type.id = params[:id]
        type.arn = params[:arn]
        type.name = params[:name]
        type.description = params[:description]
        type.creation_time = params[:creation_time]
        type.last_update_time = params[:last_update_time]
        type
      end
    end

    module AssociateAttributeGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateAttributeGroupInput, context: context)
        type = Types::AssociateAttributeGroupInput.new
        type.application = params[:application]
        type.attribute_group = params[:attribute_group]
        type
      end
    end

    module AssociateAttributeGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateAttributeGroupOutput, context: context)
        type = Types::AssociateAttributeGroupOutput.new
        type.application_arn = params[:application_arn]
        type.attribute_group_arn = params[:attribute_group_arn]
        type
      end
    end

    module AssociateResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateResourceInput, context: context)
        type = Types::AssociateResourceInput.new
        type.application = params[:application]
        type.resource_type = params[:resource_type]
        type.resource = params[:resource]
        type
      end
    end

    module AssociateResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateResourceOutput, context: context)
        type = Types::AssociateResourceOutput.new
        type.application_arn = params[:application_arn]
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module AttributeGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttributeGroup, context: context)
        type = Types::AttributeGroup.new
        type.id = params[:id]
        type.arn = params[:arn]
        type.name = params[:name]
        type.description = params[:description]
        type.creation_time = params[:creation_time]
        type.last_update_time = params[:last_update_time]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module AttributeGroupIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AttributeGroupSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AttributeGroupSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AttributeGroupSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttributeGroupSummary, context: context)
        type = Types::AttributeGroupSummary.new
        type.id = params[:id]
        type.arn = params[:arn]
        type.name = params[:name]
        type.description = params[:description]
        type.creation_time = params[:creation_time]
        type.last_update_time = params[:last_update_time]
        type
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type
      end
    end

    module CreateApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateApplicationInput, context: context)
        type = Types::CreateApplicationInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module CreateApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateApplicationOutput, context: context)
        type = Types::CreateApplicationOutput.new
        type.application = Application.build(params[:application], context: "#{context}[:application]") unless params[:application].nil?
        type
      end
    end

    module CreateAttributeGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAttributeGroupInput, context: context)
        type = Types::CreateAttributeGroupInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.attributes = params[:attributes]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module CreateAttributeGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAttributeGroupOutput, context: context)
        type = Types::CreateAttributeGroupOutput.new
        type.attribute_group = AttributeGroup.build(params[:attribute_group], context: "#{context}[:attribute_group]") unless params[:attribute_group].nil?
        type
      end
    end

    module DeleteApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApplicationInput, context: context)
        type = Types::DeleteApplicationInput.new
        type.application = params[:application]
        type
      end
    end

    module DeleteApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApplicationOutput, context: context)
        type = Types::DeleteApplicationOutput.new
        type.application = ApplicationSummary.build(params[:application], context: "#{context}[:application]") unless params[:application].nil?
        type
      end
    end

    module DeleteAttributeGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAttributeGroupInput, context: context)
        type = Types::DeleteAttributeGroupInput.new
        type.attribute_group = params[:attribute_group]
        type
      end
    end

    module DeleteAttributeGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAttributeGroupOutput, context: context)
        type = Types::DeleteAttributeGroupOutput.new
        type.attribute_group = AttributeGroupSummary.build(params[:attribute_group], context: "#{context}[:attribute_group]") unless params[:attribute_group].nil?
        type
      end
    end

    module DisassociateAttributeGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateAttributeGroupInput, context: context)
        type = Types::DisassociateAttributeGroupInput.new
        type.application = params[:application]
        type.attribute_group = params[:attribute_group]
        type
      end
    end

    module DisassociateAttributeGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateAttributeGroupOutput, context: context)
        type = Types::DisassociateAttributeGroupOutput.new
        type.application_arn = params[:application_arn]
        type.attribute_group_arn = params[:attribute_group_arn]
        type
      end
    end

    module DisassociateResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateResourceInput, context: context)
        type = Types::DisassociateResourceInput.new
        type.application = params[:application]
        type.resource_type = params[:resource_type]
        type.resource = params[:resource]
        type
      end
    end

    module DisassociateResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateResourceOutput, context: context)
        type = Types::DisassociateResourceOutput.new
        type.application_arn = params[:application_arn]
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module GetApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetApplicationInput, context: context)
        type = Types::GetApplicationInput.new
        type.application = params[:application]
        type
      end
    end

    module GetApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetApplicationOutput, context: context)
        type = Types::GetApplicationOutput.new
        type.id = params[:id]
        type.arn = params[:arn]
        type.name = params[:name]
        type.description = params[:description]
        type.creation_time = params[:creation_time]
        type.last_update_time = params[:last_update_time]
        type.associated_resource_count = params[:associated_resource_count]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.integrations = Integrations.build(params[:integrations], context: "#{context}[:integrations]") unless params[:integrations].nil?
        type
      end
    end

    module GetAssociatedResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAssociatedResourceInput, context: context)
        type = Types::GetAssociatedResourceInput.new
        type.application = params[:application]
        type.resource_type = params[:resource_type]
        type.resource = params[:resource]
        type
      end
    end

    module GetAssociatedResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAssociatedResourceOutput, context: context)
        type = Types::GetAssociatedResourceOutput.new
        type.resource = Resource.build(params[:resource], context: "#{context}[:resource]") unless params[:resource].nil?
        type
      end
    end

    module GetAttributeGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAttributeGroupInput, context: context)
        type = Types::GetAttributeGroupInput.new
        type.attribute_group = params[:attribute_group]
        type
      end
    end

    module GetAttributeGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAttributeGroupOutput, context: context)
        type = Types::GetAttributeGroupOutput.new
        type.id = params[:id]
        type.arn = params[:arn]
        type.name = params[:name]
        type.description = params[:description]
        type.attributes = params[:attributes]
        type.creation_time = params[:creation_time]
        type.last_update_time = params[:last_update_time]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module Integrations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Integrations, context: context)
        type = Types::Integrations.new
        type.resource_group = ResourceGroup.build(params[:resource_group], context: "#{context}[:resource_group]") unless params[:resource_group].nil?
        type
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type
      end
    end

    module ListApplicationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListApplicationsInput, context: context)
        type = Types::ListApplicationsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListApplicationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListApplicationsOutput, context: context)
        type = Types::ListApplicationsOutput.new
        type.applications = ApplicationSummaries.build(params[:applications], context: "#{context}[:applications]") unless params[:applications].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAssociatedAttributeGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAssociatedAttributeGroupsInput, context: context)
        type = Types::ListAssociatedAttributeGroupsInput.new
        type.application = params[:application]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListAssociatedAttributeGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAssociatedAttributeGroupsOutput, context: context)
        type = Types::ListAssociatedAttributeGroupsOutput.new
        type.attribute_groups = AttributeGroupIds.build(params[:attribute_groups], context: "#{context}[:attribute_groups]") unless params[:attribute_groups].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAssociatedResourcesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAssociatedResourcesInput, context: context)
        type = Types::ListAssociatedResourcesInput.new
        type.application = params[:application]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListAssociatedResourcesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAssociatedResourcesOutput, context: context)
        type = Types::ListAssociatedResourcesOutput.new
        type.resources = Resources.build(params[:resources], context: "#{context}[:resources]") unless params[:resources].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAttributeGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAttributeGroupsInput, context: context)
        type = Types::ListAttributeGroupsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListAttributeGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAttributeGroupsOutput, context: context)
        type = Types::ListAttributeGroupsOutput.new
        type.attribute_groups = AttributeGroupSummaries.build(params[:attribute_groups], context: "#{context}[:attribute_groups]") unless params[:attribute_groups].nil?
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
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module Resource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Resource, context: context)
        type = Types::Resource.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.association_time = params[:association_time]
        type.integrations = ResourceIntegrations.build(params[:integrations], context: "#{context}[:integrations]") unless params[:integrations].nil?
        type
      end
    end

    module ResourceGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceGroup, context: context)
        type = Types::ResourceGroup.new
        type.state = params[:state]
        type.arn = params[:arn]
        type.error_message = params[:error_message]
        type
      end
    end

    module ResourceInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceInfo, context: context)
        type = Types::ResourceInfo.new
        type.name = params[:name]
        type.arn = params[:arn]
        type
      end
    end

    module ResourceIntegrations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceIntegrations, context: context)
        type = Types::ResourceIntegrations.new
        type.resource_group = ResourceGroup.build(params[:resource_group], context: "#{context}[:resource_group]") unless params[:resource_group].nil?
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module Resources
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResourceInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ServiceQuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceQuotaExceededException, context: context)
        type = Types::ServiceQuotaExceededException.new
        type.message = params[:message]
        type
      end
    end

    module SyncResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SyncResourceInput, context: context)
        type = Types::SyncResourceInput.new
        type.resource_type = params[:resource_type]
        type.resource = params[:resource]
        type
      end
    end

    module SyncResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SyncResourceOutput, context: context)
        type = Types::SyncResourceOutput.new
        type.application_arn = params[:application_arn]
        type.resource_arn = params[:resource_arn]
        type.action_taken = params[:action_taken]
        type
      end
    end

    module TagKeys
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module Tags
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeys.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
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

    module UpdateApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateApplicationInput, context: context)
        type = Types::UpdateApplicationInput.new
        type.application = params[:application]
        type.name = params[:name]
        type.description = params[:description]
        type
      end
    end

    module UpdateApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateApplicationOutput, context: context)
        type = Types::UpdateApplicationOutput.new
        type.application = Application.build(params[:application], context: "#{context}[:application]") unless params[:application].nil?
        type
      end
    end

    module UpdateAttributeGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAttributeGroupInput, context: context)
        type = Types::UpdateAttributeGroupInput.new
        type.attribute_group = params[:attribute_group]
        type.name = params[:name]
        type.description = params[:description]
        type.attributes = params[:attributes]
        type
      end
    end

    module UpdateAttributeGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAttributeGroupOutput, context: context)
        type = Types::UpdateAttributeGroupOutput.new
        type.attribute_group = AttributeGroup.build(params[:attribute_group], context: "#{context}[:attribute_group]") unless params[:attribute_group].nil?
        type
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type
      end
    end

  end
end
