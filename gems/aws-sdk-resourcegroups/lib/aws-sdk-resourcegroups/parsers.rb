# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::ResourceGroups
  module Parsers

    # Operation Parser for CreateGroup
    class CreateGroup
      def self.parse(http_resp)
        data = Types::CreateGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.group = (Parsers::Group.parse(map['Group']) unless map['Group'].nil?)
        data.resource_query = (Parsers::ResourceQuery.parse(map['ResourceQuery']) unless map['ResourceQuery'].nil?)
        data.tags = (Parsers::Tags.parse(map['Tags']) unless map['Tags'].nil?)
        data.group_configuration = (Parsers::GroupConfiguration.parse(map['GroupConfiguration']) unless map['GroupConfiguration'].nil?)
        data
      end
    end

    class GroupConfiguration
      def self.parse(map)
        data = Types::GroupConfiguration.new
        data.configuration = (Parsers::GroupConfigurationList.parse(map['Configuration']) unless map['Configuration'].nil?)
        data.proposed_configuration = (Parsers::GroupConfigurationList.parse(map['ProposedConfiguration']) unless map['ProposedConfiguration'].nil?)
        data.status = map['Status']
        data.failure_reason = map['FailureReason']
        return data
      end
    end

    class GroupConfigurationList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::GroupConfigurationItem.parse(value) unless value.nil?
        end
        data
      end
    end

    class GroupConfigurationItem
      def self.parse(map)
        data = Types::GroupConfigurationItem.new
        data.type = map['Type']
        data.parameters = (Parsers::GroupParameterList.parse(map['Parameters']) unless map['Parameters'].nil?)
        return data
      end
    end

    class GroupParameterList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::GroupConfigurationParameter.parse(value) unless value.nil?
        end
        data
      end
    end

    class GroupConfigurationParameter
      def self.parse(map)
        data = Types::GroupConfigurationParameter.new
        data.name = map['Name']
        data.values = (Parsers::GroupConfigurationParameterValueList.parse(map['Values']) unless map['Values'].nil?)
        return data
      end
    end

    class GroupConfigurationParameterValueList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
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

    class ResourceQuery
      def self.parse(map)
        data = Types::ResourceQuery.new
        data.type = map['Type']
        data.query = map['Query']
        return data
      end
    end

    class Group
      def self.parse(map)
        data = Types::Group.new
        data.group_arn = map['GroupArn']
        data.name = map['Name']
        data.description = map['Description']
        return data
      end
    end

    # Error Parser for BadRequestException
    class BadRequestException
      def self.parse(http_resp)
        data = Types::BadRequestException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ForbiddenException
    class ForbiddenException
      def self.parse(http_resp)
        data = Types::ForbiddenException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InternalServerErrorException
    class InternalServerErrorException
      def self.parse(http_resp)
        data = Types::InternalServerErrorException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for MethodNotAllowedException
    class MethodNotAllowedException
      def self.parse(http_resp)
        data = Types::MethodNotAllowedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for TooManyRequestsException
    class TooManyRequestsException
      def self.parse(http_resp)
        data = Types::TooManyRequestsException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteGroup
    class DeleteGroup
      def self.parse(http_resp)
        data = Types::DeleteGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.group = (Parsers::Group.parse(map['Group']) unless map['Group'].nil?)
        data
      end
    end

    # Error Parser for NotFoundException
    class NotFoundException
      def self.parse(http_resp)
        data = Types::NotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for GetGroup
    class GetGroup
      def self.parse(http_resp)
        data = Types::GetGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.group = (Parsers::Group.parse(map['Group']) unless map['Group'].nil?)
        data
      end
    end

    # Operation Parser for GetGroupConfiguration
    class GetGroupConfiguration
      def self.parse(http_resp)
        data = Types::GetGroupConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.group_configuration = (Parsers::GroupConfiguration.parse(map['GroupConfiguration']) unless map['GroupConfiguration'].nil?)
        data
      end
    end

    # Operation Parser for GetGroupQuery
    class GetGroupQuery
      def self.parse(http_resp)
        data = Types::GetGroupQueryOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.group_query = (Parsers::GroupQuery.parse(map['GroupQuery']) unless map['GroupQuery'].nil?)
        data
      end
    end

    class GroupQuery
      def self.parse(map)
        data = Types::GroupQuery.new
        data.group_name = map['GroupName']
        data.resource_query = (Parsers::ResourceQuery.parse(map['ResourceQuery']) unless map['ResourceQuery'].nil?)
        return data
      end
    end

    # Operation Parser for GetTags
    class GetTags
      def self.parse(http_resp)
        data = Types::GetTagsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.tags = (Parsers::Tags.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    # Operation Parser for GroupResources
    class GroupResources
      def self.parse(http_resp)
        data = Types::GroupResourcesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.succeeded = (Parsers::ResourceArnList.parse(map['Succeeded']) unless map['Succeeded'].nil?)
        data.failed = (Parsers::FailedResourceList.parse(map['Failed']) unless map['Failed'].nil?)
        data.pending = (Parsers::PendingResourceList.parse(map['Pending']) unless map['Pending'].nil?)
        data
      end
    end

    class PendingResourceList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::PendingResource.parse(value) unless value.nil?
        end
        data
      end
    end

    class PendingResource
      def self.parse(map)
        data = Types::PendingResource.new
        data.resource_arn = map['ResourceArn']
        return data
      end
    end

    class FailedResourceList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::FailedResource.parse(value) unless value.nil?
        end
        data
      end
    end

    class FailedResource
      def self.parse(map)
        data = Types::FailedResource.new
        data.resource_arn = map['ResourceArn']
        data.error_message = map['ErrorMessage']
        data.error_code = map['ErrorCode']
        return data
      end
    end

    class ResourceArnList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListGroupResources
    class ListGroupResources
      def self.parse(http_resp)
        data = Types::ListGroupResourcesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.resources = (Parsers::ListGroupResourcesItemList.parse(map['Resources']) unless map['Resources'].nil?)
        data.resource_identifiers = (Parsers::ResourceIdentifierList.parse(map['ResourceIdentifiers']) unless map['ResourceIdentifiers'].nil?)
        data.next_token = map['NextToken']
        data.query_errors = (Parsers::QueryErrorList.parse(map['QueryErrors']) unless map['QueryErrors'].nil?)
        data
      end
    end

    class QueryErrorList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::QueryError.parse(value) unless value.nil?
        end
        data
      end
    end

    class QueryError
      def self.parse(map)
        data = Types::QueryError.new
        data.error_code = map['ErrorCode']
        data.message = map['Message']
        return data
      end
    end

    class ResourceIdentifierList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ResourceIdentifier.parse(value) unless value.nil?
        end
        data
      end
    end

    class ResourceIdentifier
      def self.parse(map)
        data = Types::ResourceIdentifier.new
        data.resource_arn = map['ResourceArn']
        data.resource_type = map['ResourceType']
        return data
      end
    end

    class ListGroupResourcesItemList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ListGroupResourcesItem.parse(value) unless value.nil?
        end
        data
      end
    end

    class ListGroupResourcesItem
      def self.parse(map)
        data = Types::ListGroupResourcesItem.new
        data.identifier = (Parsers::ResourceIdentifier.parse(map['Identifier']) unless map['Identifier'].nil?)
        data.status = (Parsers::ResourceStatus.parse(map['Status']) unless map['Status'].nil?)
        return data
      end
    end

    class ResourceStatus
      def self.parse(map)
        data = Types::ResourceStatus.new
        data.name = map['Name']
        return data
      end
    end

    # Error Parser for UnauthorizedException
    class UnauthorizedException
      def self.parse(http_resp)
        data = Types::UnauthorizedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for ListGroups
    class ListGroups
      def self.parse(http_resp)
        data = Types::ListGroupsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.group_identifiers = (Parsers::GroupIdentifierList.parse(map['GroupIdentifiers']) unless map['GroupIdentifiers'].nil?)
        data.groups = (Parsers::GroupList.parse(map['Groups']) unless map['Groups'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class GroupList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Group.parse(value) unless value.nil?
        end
        data
      end
    end

    class GroupIdentifierList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::GroupIdentifier.parse(value) unless value.nil?
        end
        data
      end
    end

    class GroupIdentifier
      def self.parse(map)
        data = Types::GroupIdentifier.new
        data.group_name = map['GroupName']
        data.group_arn = map['GroupArn']
        return data
      end
    end

    # Operation Parser for PutGroupConfiguration
    class PutGroupConfiguration
      def self.parse(http_resp)
        data = Types::PutGroupConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for SearchResources
    class SearchResources
      def self.parse(http_resp)
        data = Types::SearchResourcesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.resource_identifiers = (Parsers::ResourceIdentifierList.parse(map['ResourceIdentifiers']) unless map['ResourceIdentifiers'].nil?)
        data.next_token = map['NextToken']
        data.query_errors = (Parsers::QueryErrorList.parse(map['QueryErrors']) unless map['QueryErrors'].nil?)
        data
      end
    end

    # Operation Parser for Tag
    class Tag
      def self.parse(http_resp)
        data = Types::TagOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.tags = (Parsers::Tags.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    # Operation Parser for UngroupResources
    class UngroupResources
      def self.parse(http_resp)
        data = Types::UngroupResourcesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.succeeded = (Parsers::ResourceArnList.parse(map['Succeeded']) unless map['Succeeded'].nil?)
        data.failed = (Parsers::FailedResourceList.parse(map['Failed']) unless map['Failed'].nil?)
        data.pending = (Parsers::PendingResourceList.parse(map['Pending']) unless map['Pending'].nil?)
        data
      end
    end

    # Operation Parser for Untag
    class Untag
      def self.parse(http_resp)
        data = Types::UntagOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.keys = (Parsers::TagKeyList.parse(map['Keys']) unless map['Keys'].nil?)
        data
      end
    end

    class TagKeyList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for UpdateGroup
    class UpdateGroup
      def self.parse(http_resp)
        data = Types::UpdateGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.group = (Parsers::Group.parse(map['Group']) unless map['Group'].nil?)
        data
      end
    end

    # Operation Parser for UpdateGroupQuery
    class UpdateGroupQuery
      def self.parse(http_resp)
        data = Types::UpdateGroupQueryOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.group_query = (Parsers::GroupQuery.parse(map['GroupQuery']) unless map['GroupQuery'].nil?)
        data
      end
    end
  end
end
