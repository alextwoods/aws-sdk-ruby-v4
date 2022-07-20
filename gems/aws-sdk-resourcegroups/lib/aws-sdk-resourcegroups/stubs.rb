# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::ResourceGroups
  module Stubs

    # Operation Stubber for CreateGroup
    class CreateGroup
      def self.default(visited=[])
        {
          group: Group.default(visited),
          resource_query: ResourceQuery.default(visited),
          tags: Tags.default(visited),
          group_configuration: GroupConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Group'] = Group.stub(stub[:group]) unless stub[:group].nil?
        data['ResourceQuery'] = ResourceQuery.stub(stub[:resource_query]) unless stub[:resource_query].nil?
        data['Tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['GroupConfiguration'] = GroupConfiguration.stub(stub[:group_configuration]) unless stub[:group_configuration].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for GroupConfiguration
    class GroupConfiguration
      def self.default(visited=[])
        return nil if visited.include?('GroupConfiguration')
        visited = visited + ['GroupConfiguration']
        {
          configuration: GroupConfigurationList.default(visited),
          proposed_configuration: GroupConfigurationList.default(visited),
          status: 'status',
          failure_reason: 'failure_reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::GroupConfiguration.new
        data = {}
        data['Configuration'] = GroupConfigurationList.stub(stub[:configuration]) unless stub[:configuration].nil?
        data['ProposedConfiguration'] = GroupConfigurationList.stub(stub[:proposed_configuration]) unless stub[:proposed_configuration].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data
      end
    end

    # List Stubber for GroupConfigurationList
    class GroupConfigurationList
      def self.default(visited=[])
        return nil if visited.include?('GroupConfigurationList')
        visited = visited + ['GroupConfigurationList']
        [
          GroupConfigurationItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << GroupConfigurationItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for GroupConfigurationItem
    class GroupConfigurationItem
      def self.default(visited=[])
        return nil if visited.include?('GroupConfigurationItem')
        visited = visited + ['GroupConfigurationItem']
        {
          type: 'type',
          parameters: GroupParameterList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GroupConfigurationItem.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Parameters'] = GroupParameterList.stub(stub[:parameters]) unless stub[:parameters].nil?
        data
      end
    end

    # List Stubber for GroupParameterList
    class GroupParameterList
      def self.default(visited=[])
        return nil if visited.include?('GroupParameterList')
        visited = visited + ['GroupParameterList']
        [
          GroupConfigurationParameter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << GroupConfigurationParameter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for GroupConfigurationParameter
    class GroupConfigurationParameter
      def self.default(visited=[])
        return nil if visited.include?('GroupConfigurationParameter')
        visited = visited + ['GroupConfigurationParameter']
        {
          name: 'name',
          values: GroupConfigurationParameterValueList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GroupConfigurationParameter.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Values'] = GroupConfigurationParameterValueList.stub(stub[:values]) unless stub[:values].nil?
        data
      end
    end

    # List Stubber for GroupConfigurationParameterValueList
    class GroupConfigurationParameterValueList
      def self.default(visited=[])
        return nil if visited.include?('GroupConfigurationParameterValueList')
        visited = visited + ['GroupConfigurationParameterValueList']
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

    # Structure Stubber for ResourceQuery
    class ResourceQuery
      def self.default(visited=[])
        return nil if visited.include?('ResourceQuery')
        visited = visited + ['ResourceQuery']
        {
          type: 'type',
          query: 'query',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceQuery.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Query'] = stub[:query] unless stub[:query].nil?
        data
      end
    end

    # Structure Stubber for Group
    class Group
      def self.default(visited=[])
        return nil if visited.include?('Group')
        visited = visited + ['Group']
        {
          group_arn: 'group_arn',
          name: 'name',
          description: 'description',
        }
      end

      def self.stub(stub)
        stub ||= Types::Group.new
        data = {}
        data['GroupArn'] = stub[:group_arn] unless stub[:group_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data
      end
    end

    # Operation Stubber for DeleteGroup
    class DeleteGroup
      def self.default(visited=[])
        {
          group: Group.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Group'] = Group.stub(stub[:group]) unless stub[:group].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetGroup
    class GetGroup
      def self.default(visited=[])
        {
          group: Group.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Group'] = Group.stub(stub[:group]) unless stub[:group].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetGroupConfiguration
    class GetGroupConfiguration
      def self.default(visited=[])
        {
          group_configuration: GroupConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['GroupConfiguration'] = GroupConfiguration.stub(stub[:group_configuration]) unless stub[:group_configuration].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetGroupQuery
    class GetGroupQuery
      def self.default(visited=[])
        {
          group_query: GroupQuery.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['GroupQuery'] = GroupQuery.stub(stub[:group_query]) unless stub[:group_query].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for GroupQuery
    class GroupQuery
      def self.default(visited=[])
        return nil if visited.include?('GroupQuery')
        visited = visited + ['GroupQuery']
        {
          group_name: 'group_name',
          resource_query: ResourceQuery.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GroupQuery.new
        data = {}
        data['GroupName'] = stub[:group_name] unless stub[:group_name].nil?
        data['ResourceQuery'] = ResourceQuery.stub(stub[:resource_query]) unless stub[:resource_query].nil?
        data
      end
    end

    # Operation Stubber for GetTags
    class GetTags
      def self.default(visited=[])
        {
          arn: 'arn',
          tags: Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GroupResources
    class GroupResources
      def self.default(visited=[])
        {
          succeeded: ResourceArnList.default(visited),
          failed: FailedResourceList.default(visited),
          pending: PendingResourceList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Succeeded'] = ResourceArnList.stub(stub[:succeeded]) unless stub[:succeeded].nil?
        data['Failed'] = FailedResourceList.stub(stub[:failed]) unless stub[:failed].nil?
        data['Pending'] = PendingResourceList.stub(stub[:pending]) unless stub[:pending].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for PendingResourceList
    class PendingResourceList
      def self.default(visited=[])
        return nil if visited.include?('PendingResourceList')
        visited = visited + ['PendingResourceList']
        [
          PendingResource.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << PendingResource.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PendingResource
    class PendingResource
      def self.default(visited=[])
        return nil if visited.include?('PendingResource')
        visited = visited + ['PendingResource']
        {
          resource_arn: 'resource_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::PendingResource.new
        data = {}
        data['ResourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data
      end
    end

    # List Stubber for FailedResourceList
    class FailedResourceList
      def self.default(visited=[])
        return nil if visited.include?('FailedResourceList')
        visited = visited + ['FailedResourceList']
        [
          FailedResource.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FailedResource.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FailedResource
    class FailedResource
      def self.default(visited=[])
        return nil if visited.include?('FailedResource')
        visited = visited + ['FailedResource']
        {
          resource_arn: 'resource_arn',
          error_message: 'error_message',
          error_code: 'error_code',
        }
      end

      def self.stub(stub)
        stub ||= Types::FailedResource.new
        data = {}
        data['ResourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data
      end
    end

    # List Stubber for ResourceArnList
    class ResourceArnList
      def self.default(visited=[])
        return nil if visited.include?('ResourceArnList')
        visited = visited + ['ResourceArnList']
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

    # Operation Stubber for ListGroupResources
    class ListGroupResources
      def self.default(visited=[])
        {
          resources: ListGroupResourcesItemList.default(visited),
          resource_identifiers: ResourceIdentifierList.default(visited),
          next_token: 'next_token',
          query_errors: QueryErrorList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Resources'] = ListGroupResourcesItemList.stub(stub[:resources]) unless stub[:resources].nil?
        data['ResourceIdentifiers'] = ResourceIdentifierList.stub(stub[:resource_identifiers]) unless stub[:resource_identifiers].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['QueryErrors'] = QueryErrorList.stub(stub[:query_errors]) unless stub[:query_errors].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for QueryErrorList
    class QueryErrorList
      def self.default(visited=[])
        return nil if visited.include?('QueryErrorList')
        visited = visited + ['QueryErrorList']
        [
          QueryError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << QueryError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for QueryError
    class QueryError
      def self.default(visited=[])
        return nil if visited.include?('QueryError')
        visited = visited + ['QueryError']
        {
          error_code: 'error_code',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::QueryError.new
        data = {}
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # List Stubber for ResourceIdentifierList
    class ResourceIdentifierList
      def self.default(visited=[])
        return nil if visited.include?('ResourceIdentifierList')
        visited = visited + ['ResourceIdentifierList']
        [
          ResourceIdentifier.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ResourceIdentifier.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ResourceIdentifier
    class ResourceIdentifier
      def self.default(visited=[])
        return nil if visited.include?('ResourceIdentifier')
        visited = visited + ['ResourceIdentifier']
        {
          resource_arn: 'resource_arn',
          resource_type: 'resource_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceIdentifier.new
        data = {}
        data['ResourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['ResourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data
      end
    end

    # List Stubber for ListGroupResourcesItemList
    class ListGroupResourcesItemList
      def self.default(visited=[])
        return nil if visited.include?('ListGroupResourcesItemList')
        visited = visited + ['ListGroupResourcesItemList']
        [
          ListGroupResourcesItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ListGroupResourcesItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ListGroupResourcesItem
    class ListGroupResourcesItem
      def self.default(visited=[])
        return nil if visited.include?('ListGroupResourcesItem')
        visited = visited + ['ListGroupResourcesItem']
        {
          identifier: ResourceIdentifier.default(visited),
          status: ResourceStatus.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ListGroupResourcesItem.new
        data = {}
        data['Identifier'] = ResourceIdentifier.stub(stub[:identifier]) unless stub[:identifier].nil?
        data['Status'] = ResourceStatus.stub(stub[:status]) unless stub[:status].nil?
        data
      end
    end

    # Structure Stubber for ResourceStatus
    class ResourceStatus
      def self.default(visited=[])
        return nil if visited.include?('ResourceStatus')
        visited = visited + ['ResourceStatus']
        {
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceStatus.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Operation Stubber for ListGroups
    class ListGroups
      def self.default(visited=[])
        {
          group_identifiers: GroupIdentifierList.default(visited),
          groups: GroupList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['GroupIdentifiers'] = GroupIdentifierList.stub(stub[:group_identifiers]) unless stub[:group_identifiers].nil?
        data['Groups'] = GroupList.stub(stub[:groups]) unless stub[:groups].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for GroupList
    class GroupList
      def self.default(visited=[])
        return nil if visited.include?('GroupList')
        visited = visited + ['GroupList']
        [
          Group.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Group.stub(element) unless element.nil?
        end
        data
      end
    end

    # List Stubber for GroupIdentifierList
    class GroupIdentifierList
      def self.default(visited=[])
        return nil if visited.include?('GroupIdentifierList')
        visited = visited + ['GroupIdentifierList']
        [
          GroupIdentifier.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << GroupIdentifier.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for GroupIdentifier
    class GroupIdentifier
      def self.default(visited=[])
        return nil if visited.include?('GroupIdentifier')
        visited = visited + ['GroupIdentifier']
        {
          group_name: 'group_name',
          group_arn: 'group_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::GroupIdentifier.new
        data = {}
        data['GroupName'] = stub[:group_name] unless stub[:group_name].nil?
        data['GroupArn'] = stub[:group_arn] unless stub[:group_arn].nil?
        data
      end
    end

    # Operation Stubber for PutGroupConfiguration
    class PutGroupConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
      end
    end

    # Operation Stubber for SearchResources
    class SearchResources
      def self.default(visited=[])
        {
          resource_identifiers: ResourceIdentifierList.default(visited),
          next_token: 'next_token',
          query_errors: QueryErrorList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ResourceIdentifiers'] = ResourceIdentifierList.stub(stub[:resource_identifiers]) unless stub[:resource_identifiers].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['QueryErrors'] = QueryErrorList.stub(stub[:query_errors]) unless stub[:query_errors].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for Tag
    class Tag
      def self.default(visited=[])
        {
          arn: 'arn',
          tags: Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UngroupResources
    class UngroupResources
      def self.default(visited=[])
        {
          succeeded: ResourceArnList.default(visited),
          failed: FailedResourceList.default(visited),
          pending: PendingResourceList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Succeeded'] = ResourceArnList.stub(stub[:succeeded]) unless stub[:succeeded].nil?
        data['Failed'] = FailedResourceList.stub(stub[:failed]) unless stub[:failed].nil?
        data['Pending'] = PendingResourceList.stub(stub[:pending]) unless stub[:pending].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for Untag
    class Untag
      def self.default(visited=[])
        {
          arn: 'arn',
          keys: TagKeyList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Keys'] = TagKeyList.stub(stub[:keys]) unless stub[:keys].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for TagKeyList
    class TagKeyList
      def self.default(visited=[])
        return nil if visited.include?('TagKeyList')
        visited = visited + ['TagKeyList']
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

    # Operation Stubber for UpdateGroup
    class UpdateGroup
      def self.default(visited=[])
        {
          group: Group.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Group'] = Group.stub(stub[:group]) unless stub[:group].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateGroupQuery
    class UpdateGroupQuery
      def self.default(visited=[])
        {
          group_query: GroupQuery.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['GroupQuery'] = GroupQuery.stub(stub[:group_query]) unless stub[:group_query].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
