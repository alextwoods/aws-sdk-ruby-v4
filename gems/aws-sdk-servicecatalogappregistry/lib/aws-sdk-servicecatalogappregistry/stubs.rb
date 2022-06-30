# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ServiceCatalogAppRegistry
  module Stubs

    # Operation Stubber for AssociateAttributeGroup
    class AssociateAttributeGroup
      def self.default(visited=[])
        {
          application_arn: 'application_arn',
          attribute_group_arn: 'attribute_group_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['applicationArn'] = stub[:application_arn] unless stub[:application_arn].nil?
        data['attributeGroupArn'] = stub[:attribute_group_arn] unless stub[:attribute_group_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for AssociateResource
    class AssociateResource
      def self.default(visited=[])
        {
          application_arn: 'application_arn',
          resource_arn: 'resource_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['applicationArn'] = stub[:application_arn] unless stub[:application_arn].nil?
        data['resourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateApplication
    class CreateApplication
      def self.default(visited=[])
        {
          application: Stubs::Application.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['application'] = Stubs::Application.stub(stub[:application]) unless stub[:application].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Application
    class Application
      def self.default(visited=[])
        return nil if visited.include?('Application')
        visited = visited + ['Application']
        {
          id: 'id',
          arn: 'arn',
          name: 'name',
          description: 'description',
          creation_time: Time.now,
          last_update_time: Time.now,
          tags: Stubs::Tags.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Application.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['creationTime'] = Hearth::TimeHelper.to_date_time(stub[:creation_time]) unless stub[:creation_time].nil?
        data['lastUpdateTime'] = Hearth::TimeHelper.to_date_time(stub[:last_update_time]) unless stub[:last_update_time].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Map Stubber for Tags
    class Tags
      def self.default(visited=[])
        return nil if visited.include?('Tags')
        visited = visited + ['Tags']
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

    # Operation Stubber for CreateAttributeGroup
    class CreateAttributeGroup
      def self.default(visited=[])
        {
          attribute_group: Stubs::AttributeGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['attributeGroup'] = Stubs::AttributeGroup.stub(stub[:attribute_group]) unless stub[:attribute_group].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for AttributeGroup
    class AttributeGroup
      def self.default(visited=[])
        return nil if visited.include?('AttributeGroup')
        visited = visited + ['AttributeGroup']
        {
          id: 'id',
          arn: 'arn',
          name: 'name',
          description: 'description',
          creation_time: Time.now,
          last_update_time: Time.now,
          tags: Stubs::Tags.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AttributeGroup.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['creationTime'] = Hearth::TimeHelper.to_date_time(stub[:creation_time]) unless stub[:creation_time].nil?
        data['lastUpdateTime'] = Hearth::TimeHelper.to_date_time(stub[:last_update_time]) unless stub[:last_update_time].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for DeleteApplication
    class DeleteApplication
      def self.default(visited=[])
        {
          application: Stubs::ApplicationSummary.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['application'] = Stubs::ApplicationSummary.stub(stub[:application]) unless stub[:application].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ApplicationSummary
    class ApplicationSummary
      def self.default(visited=[])
        return nil if visited.include?('ApplicationSummary')
        visited = visited + ['ApplicationSummary']
        {
          id: 'id',
          arn: 'arn',
          name: 'name',
          description: 'description',
          creation_time: Time.now,
          last_update_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ApplicationSummary.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['creationTime'] = Hearth::TimeHelper.to_date_time(stub[:creation_time]) unless stub[:creation_time].nil?
        data['lastUpdateTime'] = Hearth::TimeHelper.to_date_time(stub[:last_update_time]) unless stub[:last_update_time].nil?
        data
      end
    end

    # Operation Stubber for DeleteAttributeGroup
    class DeleteAttributeGroup
      def self.default(visited=[])
        {
          attribute_group: Stubs::AttributeGroupSummary.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['attributeGroup'] = Stubs::AttributeGroupSummary.stub(stub[:attribute_group]) unless stub[:attribute_group].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for AttributeGroupSummary
    class AttributeGroupSummary
      def self.default(visited=[])
        return nil if visited.include?('AttributeGroupSummary')
        visited = visited + ['AttributeGroupSummary']
        {
          id: 'id',
          arn: 'arn',
          name: 'name',
          description: 'description',
          creation_time: Time.now,
          last_update_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::AttributeGroupSummary.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['creationTime'] = Hearth::TimeHelper.to_date_time(stub[:creation_time]) unless stub[:creation_time].nil?
        data['lastUpdateTime'] = Hearth::TimeHelper.to_date_time(stub[:last_update_time]) unless stub[:last_update_time].nil?
        data
      end
    end

    # Operation Stubber for DisassociateAttributeGroup
    class DisassociateAttributeGroup
      def self.default(visited=[])
        {
          application_arn: 'application_arn',
          attribute_group_arn: 'attribute_group_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['applicationArn'] = stub[:application_arn] unless stub[:application_arn].nil?
        data['attributeGroupArn'] = stub[:attribute_group_arn] unless stub[:attribute_group_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DisassociateResource
    class DisassociateResource
      def self.default(visited=[])
        {
          application_arn: 'application_arn',
          resource_arn: 'resource_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['applicationArn'] = stub[:application_arn] unless stub[:application_arn].nil?
        data['resourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetApplication
    class GetApplication
      def self.default(visited=[])
        {
          id: 'id',
          arn: 'arn',
          name: 'name',
          description: 'description',
          creation_time: Time.now,
          last_update_time: Time.now,
          associated_resource_count: 1,
          tags: Stubs::Tags.default(visited),
          integrations: Stubs::Integrations.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['id'] = stub[:id] unless stub[:id].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['creationTime'] = Hearth::TimeHelper.to_date_time(stub[:creation_time]) unless stub[:creation_time].nil?
        data['lastUpdateTime'] = Hearth::TimeHelper.to_date_time(stub[:last_update_time]) unless stub[:last_update_time].nil?
        data['associatedResourceCount'] = stub[:associated_resource_count] unless stub[:associated_resource_count].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['integrations'] = Stubs::Integrations.stub(stub[:integrations]) unless stub[:integrations].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Integrations
    class Integrations
      def self.default(visited=[])
        return nil if visited.include?('Integrations')
        visited = visited + ['Integrations']
        {
          resource_group: Stubs::ResourceGroup.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Integrations.new
        data = {}
        data['resourceGroup'] = Stubs::ResourceGroup.stub(stub[:resource_group]) unless stub[:resource_group].nil?
        data
      end
    end

    # Structure Stubber for ResourceGroup
    class ResourceGroup
      def self.default(visited=[])
        return nil if visited.include?('ResourceGroup')
        visited = visited + ['ResourceGroup']
        {
          state: 'state',
          arn: 'arn',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceGroup.new
        data = {}
        data['state'] = stub[:state] unless stub[:state].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['errorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # Operation Stubber for GetAssociatedResource
    class GetAssociatedResource
      def self.default(visited=[])
        {
          resource: Stubs::Resource.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['resource'] = Stubs::Resource.stub(stub[:resource]) unless stub[:resource].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Resource
    class Resource
      def self.default(visited=[])
        return nil if visited.include?('Resource')
        visited = visited + ['Resource']
        {
          name: 'name',
          arn: 'arn',
          association_time: Time.now,
          integrations: Stubs::ResourceIntegrations.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Resource.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['associationTime'] = Hearth::TimeHelper.to_date_time(stub[:association_time]) unless stub[:association_time].nil?
        data['integrations'] = Stubs::ResourceIntegrations.stub(stub[:integrations]) unless stub[:integrations].nil?
        data
      end
    end

    # Structure Stubber for ResourceIntegrations
    class ResourceIntegrations
      def self.default(visited=[])
        return nil if visited.include?('ResourceIntegrations')
        visited = visited + ['ResourceIntegrations']
        {
          resource_group: Stubs::ResourceGroup.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceIntegrations.new
        data = {}
        data['resourceGroup'] = Stubs::ResourceGroup.stub(stub[:resource_group]) unless stub[:resource_group].nil?
        data
      end
    end

    # Operation Stubber for GetAttributeGroup
    class GetAttributeGroup
      def self.default(visited=[])
        {
          id: 'id',
          arn: 'arn',
          name: 'name',
          description: 'description',
          attributes: 'attributes',
          creation_time: Time.now,
          last_update_time: Time.now,
          tags: Stubs::Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['id'] = stub[:id] unless stub[:id].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['attributes'] = stub[:attributes] unless stub[:attributes].nil?
        data['creationTime'] = Hearth::TimeHelper.to_date_time(stub[:creation_time]) unless stub[:creation_time].nil?
        data['lastUpdateTime'] = Hearth::TimeHelper.to_date_time(stub[:last_update_time]) unless stub[:last_update_time].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListApplications
    class ListApplications
      def self.default(visited=[])
        {
          applications: Stubs::ApplicationSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['applications'] = Stubs::ApplicationSummaries.stub(stub[:applications]) unless stub[:applications].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ApplicationSummaries
    class ApplicationSummaries
      def self.default(visited=[])
        return nil if visited.include?('ApplicationSummaries')
        visited = visited + ['ApplicationSummaries']
        [
          Stubs::ApplicationSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ApplicationSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListAssociatedAttributeGroups
    class ListAssociatedAttributeGroups
      def self.default(visited=[])
        {
          attribute_groups: Stubs::AttributeGroupIds.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['attributeGroups'] = Stubs::AttributeGroupIds.stub(stub[:attribute_groups]) unless stub[:attribute_groups].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AttributeGroupIds
    class AttributeGroupIds
      def self.default(visited=[])
        return nil if visited.include?('AttributeGroupIds')
        visited = visited + ['AttributeGroupIds']
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

    # Operation Stubber for ListAssociatedResources
    class ListAssociatedResources
      def self.default(visited=[])
        {
          resources: Stubs::Resources.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['resources'] = Stubs::Resources.stub(stub[:resources]) unless stub[:resources].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for Resources
    class Resources
      def self.default(visited=[])
        return nil if visited.include?('Resources')
        visited = visited + ['Resources']
        [
          Stubs::ResourceInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ResourceInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ResourceInfo
    class ResourceInfo
      def self.default(visited=[])
        return nil if visited.include?('ResourceInfo')
        visited = visited + ['ResourceInfo']
        {
          name: 'name',
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceInfo.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # Operation Stubber for ListAttributeGroups
    class ListAttributeGroups
      def self.default(visited=[])
        {
          attribute_groups: Stubs::AttributeGroupSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['attributeGroups'] = Stubs::AttributeGroupSummaries.stub(stub[:attribute_groups]) unless stub[:attribute_groups].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AttributeGroupSummaries
    class AttributeGroupSummaries
      def self.default(visited=[])
        return nil if visited.include?('AttributeGroupSummaries')
        visited = visited + ['AttributeGroupSummaries']
        [
          Stubs::AttributeGroupSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AttributeGroupSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: Stubs::Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for SyncResource
    class SyncResource
      def self.default(visited=[])
        {
          application_arn: 'application_arn',
          resource_arn: 'resource_arn',
          action_taken: 'action_taken',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['applicationArn'] = stub[:application_arn] unless stub[:application_arn].nil?
        data['resourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['actionTaken'] = stub[:action_taken] unless stub[:action_taken].nil?
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

    # Operation Stubber for UpdateApplication
    class UpdateApplication
      def self.default(visited=[])
        {
          application: Stubs::Application.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['application'] = Stubs::Application.stub(stub[:application]) unless stub[:application].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateAttributeGroup
    class UpdateAttributeGroup
      def self.default(visited=[])
        {
          attribute_group: Stubs::AttributeGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['attributeGroup'] = Stubs::AttributeGroup.stub(stub[:attribute_group]) unless stub[:attribute_group].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
