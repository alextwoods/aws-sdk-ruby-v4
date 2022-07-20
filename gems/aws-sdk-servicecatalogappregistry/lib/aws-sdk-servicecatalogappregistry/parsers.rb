# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ServiceCatalogAppRegistry
  module Parsers

    # Operation Parser for AssociateAttributeGroup
    class AssociateAttributeGroup
      def self.parse(http_resp)
        data = Types::AssociateAttributeGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.application_arn = map['applicationArn']
        data.attribute_group_arn = map['attributeGroupArn']
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
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

    # Operation Parser for AssociateResource
    class AssociateResource
      def self.parse(http_resp)
        data = Types::AssociateResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.application_arn = map['applicationArn']
        data.resource_arn = map['resourceArn']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CreateApplication
    class CreateApplication
      def self.parse(http_resp)
        data = Types::CreateApplicationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.application = (Parsers::Application.parse(map['application']) unless map['application'].nil?)
        data
      end
    end

    class Application
      def self.parse(map)
        data = Types::Application.new
        data.id = map['id']
        data.arn = map['arn']
        data.name = map['name']
        data.description = map['description']
        data.creation_time = Time.parse(map['creationTime']) if map['creationTime']
        data.last_update_time = Time.parse(map['lastUpdateTime']) if map['lastUpdateTime']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    class Tags
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for CreateAttributeGroup
    class CreateAttributeGroup
      def self.parse(http_resp)
        data = Types::CreateAttributeGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.attribute_group = (Parsers::AttributeGroup.parse(map['attributeGroup']) unless map['attributeGroup'].nil?)
        data
      end
    end

    class AttributeGroup
      def self.parse(map)
        data = Types::AttributeGroup.new
        data.id = map['id']
        data.arn = map['arn']
        data.name = map['name']
        data.description = map['description']
        data.creation_time = Time.parse(map['creationTime']) if map['creationTime']
        data.last_update_time = Time.parse(map['lastUpdateTime']) if map['lastUpdateTime']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    # Operation Parser for DeleteApplication
    class DeleteApplication
      def self.parse(http_resp)
        data = Types::DeleteApplicationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.application = (Parsers::ApplicationSummary.parse(map['application']) unless map['application'].nil?)
        data
      end
    end

    class ApplicationSummary
      def self.parse(map)
        data = Types::ApplicationSummary.new
        data.id = map['id']
        data.arn = map['arn']
        data.name = map['name']
        data.description = map['description']
        data.creation_time = Time.parse(map['creationTime']) if map['creationTime']
        data.last_update_time = Time.parse(map['lastUpdateTime']) if map['lastUpdateTime']
        return data
      end
    end

    # Operation Parser for DeleteAttributeGroup
    class DeleteAttributeGroup
      def self.parse(http_resp)
        data = Types::DeleteAttributeGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.attribute_group = (Parsers::AttributeGroupSummary.parse(map['attributeGroup']) unless map['attributeGroup'].nil?)
        data
      end
    end

    class AttributeGroupSummary
      def self.parse(map)
        data = Types::AttributeGroupSummary.new
        data.id = map['id']
        data.arn = map['arn']
        data.name = map['name']
        data.description = map['description']
        data.creation_time = Time.parse(map['creationTime']) if map['creationTime']
        data.last_update_time = Time.parse(map['lastUpdateTime']) if map['lastUpdateTime']
        return data
      end
    end

    # Operation Parser for DisassociateAttributeGroup
    class DisassociateAttributeGroup
      def self.parse(http_resp)
        data = Types::DisassociateAttributeGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.application_arn = map['applicationArn']
        data.attribute_group_arn = map['attributeGroupArn']
        data
      end
    end

    # Operation Parser for DisassociateResource
    class DisassociateResource
      def self.parse(http_resp)
        data = Types::DisassociateResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.application_arn = map['applicationArn']
        data.resource_arn = map['resourceArn']
        data
      end
    end

    # Operation Parser for GetApplication
    class GetApplication
      def self.parse(http_resp)
        data = Types::GetApplicationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['id']
        data.arn = map['arn']
        data.name = map['name']
        data.description = map['description']
        data.creation_time = Time.parse(map['creationTime']) if map['creationTime']
        data.last_update_time = Time.parse(map['lastUpdateTime']) if map['lastUpdateTime']
        data.associated_resource_count = map['associatedResourceCount']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data.integrations = (Parsers::Integrations.parse(map['integrations']) unless map['integrations'].nil?)
        data
      end
    end

    class Integrations
      def self.parse(map)
        data = Types::Integrations.new
        data.resource_group = (Parsers::ResourceGroup.parse(map['resourceGroup']) unless map['resourceGroup'].nil?)
        return data
      end
    end

    class ResourceGroup
      def self.parse(map)
        data = Types::ResourceGroup.new
        data.state = map['state']
        data.arn = map['arn']
        data.error_message = map['errorMessage']
        return data
      end
    end

    # Operation Parser for GetAssociatedResource
    class GetAssociatedResource
      def self.parse(http_resp)
        data = Types::GetAssociatedResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.resource = (Parsers::Resource.parse(map['resource']) unless map['resource'].nil?)
        data
      end
    end

    class Resource
      def self.parse(map)
        data = Types::Resource.new
        data.name = map['name']
        data.arn = map['arn']
        data.association_time = Time.parse(map['associationTime']) if map['associationTime']
        data.integrations = (Parsers::ResourceIntegrations.parse(map['integrations']) unless map['integrations'].nil?)
        return data
      end
    end

    class ResourceIntegrations
      def self.parse(map)
        data = Types::ResourceIntegrations.new
        data.resource_group = (Parsers::ResourceGroup.parse(map['resourceGroup']) unless map['resourceGroup'].nil?)
        return data
      end
    end

    # Operation Parser for GetAttributeGroup
    class GetAttributeGroup
      def self.parse(http_resp)
        data = Types::GetAttributeGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['id']
        data.arn = map['arn']
        data.name = map['name']
        data.description = map['description']
        data.attributes = map['attributes']
        data.creation_time = Time.parse(map['creationTime']) if map['creationTime']
        data.last_update_time = Time.parse(map['lastUpdateTime']) if map['lastUpdateTime']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for ListApplications
    class ListApplications
      def self.parse(http_resp)
        data = Types::ListApplicationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.applications = (Parsers::ApplicationSummaries.parse(map['applications']) unless map['applications'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ApplicationSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ApplicationSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListAssociatedAttributeGroups
    class ListAssociatedAttributeGroups
      def self.parse(http_resp)
        data = Types::ListAssociatedAttributeGroupsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.attribute_groups = (Parsers::AttributeGroupIds.parse(map['attributeGroups']) unless map['attributeGroups'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class AttributeGroupIds
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListAssociatedResources
    class ListAssociatedResources
      def self.parse(http_resp)
        data = Types::ListAssociatedResourcesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.resources = (Parsers::Resources.parse(map['resources']) unless map['resources'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class Resources
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ResourceInfo.parse(value) unless value.nil?
        end
        data
      end
    end

    class ResourceInfo
      def self.parse(map)
        data = Types::ResourceInfo.new
        data.name = map['name']
        data.arn = map['arn']
        return data
      end
    end

    # Operation Parser for ListAttributeGroups
    class ListAttributeGroups
      def self.parse(http_resp)
        data = Types::ListAttributeGroupsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.attribute_groups = (Parsers::AttributeGroupSummaries.parse(map['attributeGroups']) unless map['attributeGroups'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class AttributeGroupSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AttributeGroupSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for SyncResource
    class SyncResource
      def self.parse(http_resp)
        data = Types::SyncResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.application_arn = map['applicationArn']
        data.resource_arn = map['resourceArn']
        data.action_taken = map['actionTaken']
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

    # Operation Parser for UpdateApplication
    class UpdateApplication
      def self.parse(http_resp)
        data = Types::UpdateApplicationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.application = (Parsers::Application.parse(map['application']) unless map['application'].nil?)
        data
      end
    end

    # Operation Parser for UpdateAttributeGroup
    class UpdateAttributeGroup
      def self.parse(http_resp)
        data = Types::UpdateAttributeGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.attribute_group = (Parsers::AttributeGroup.parse(map['attributeGroup']) unless map['attributeGroup'].nil?)
        data
      end
    end
  end
end
