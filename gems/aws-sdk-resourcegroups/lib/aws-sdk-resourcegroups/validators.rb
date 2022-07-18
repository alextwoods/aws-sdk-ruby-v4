# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ResourceGroups
  module Validators

    class BadRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BadRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGroupInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        ResourceQuery.validate!(input[:resource_query], context: "#{context}[:resource_query]") unless input[:resource_query].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        GroupConfigurationList.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
      end
    end

    class CreateGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGroupOutput, context: context)
        Group.validate!(input[:group], context: "#{context}[:group]") unless input[:group].nil?
        ResourceQuery.validate!(input[:resource_query], context: "#{context}[:resource_query]") unless input[:resource_query].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        GroupConfiguration.validate!(input[:group_configuration], context: "#{context}[:group_configuration]") unless input[:group_configuration].nil?
      end
    end

    class DeleteGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteGroupInput, context: context)
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:group], ::String, context: "#{context}[:group]")
      end
    end

    class DeleteGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteGroupOutput, context: context)
        Group.validate!(input[:group], context: "#{context}[:group]") unless input[:group].nil?
      end
    end

    class FailedResource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FailedResource, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
      end
    end

    class FailedResourceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          FailedResource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ForbiddenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ForbiddenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class GetGroupConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetGroupConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:group], ::String, context: "#{context}[:group]")
      end
    end

    class GetGroupConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetGroupConfigurationOutput, context: context)
        GroupConfiguration.validate!(input[:group_configuration], context: "#{context}[:group_configuration]") unless input[:group_configuration].nil?
      end
    end

    class GetGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetGroupInput, context: context)
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:group], ::String, context: "#{context}[:group]")
      end
    end

    class GetGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetGroupOutput, context: context)
        Group.validate!(input[:group], context: "#{context}[:group]") unless input[:group].nil?
      end
    end

    class GetGroupQueryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetGroupQueryInput, context: context)
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:group], ::String, context: "#{context}[:group]")
      end
    end

    class GetGroupQueryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetGroupQueryOutput, context: context)
        GroupQuery.validate!(input[:group_query], context: "#{context}[:group_query]") unless input[:group_query].nil?
      end
    end

    class GetTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTagsInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class GetTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTagsOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class Group
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Group, context: context)
        Hearth::Validator.validate!(input[:group_arn], ::String, context: "#{context}[:group_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class GroupConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GroupConfiguration, context: context)
        GroupConfigurationList.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
        GroupConfigurationList.validate!(input[:proposed_configuration], context: "#{context}[:proposed_configuration]") unless input[:proposed_configuration].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
      end
    end

    class GroupConfigurationItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GroupConfigurationItem, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        GroupParameterList.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
      end
    end

    class GroupConfigurationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          GroupConfigurationItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GroupConfigurationParameter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GroupConfigurationParameter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        GroupConfigurationParameterValueList.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class GroupConfigurationParameterValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class GroupFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GroupFilter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        GroupFilterValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class GroupFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          GroupFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GroupFilterValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class GroupIdentifier
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GroupIdentifier, context: context)
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:group_arn], ::String, context: "#{context}[:group_arn]")
      end
    end

    class GroupIdentifierList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          GroupIdentifier.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GroupList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Group.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GroupParameterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          GroupConfigurationParameter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GroupQuery
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GroupQuery, context: context)
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        ResourceQuery.validate!(input[:resource_query], context: "#{context}[:resource_query]") unless input[:resource_query].nil?
      end
    end

    class GroupResourcesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GroupResourcesInput, context: context)
        Hearth::Validator.validate!(input[:group], ::String, context: "#{context}[:group]")
        ResourceArnList.validate!(input[:resource_arns], context: "#{context}[:resource_arns]") unless input[:resource_arns].nil?
      end
    end

    class GroupResourcesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GroupResourcesOutput, context: context)
        ResourceArnList.validate!(input[:succeeded], context: "#{context}[:succeeded]") unless input[:succeeded].nil?
        FailedResourceList.validate!(input[:failed], context: "#{context}[:failed]") unless input[:failed].nil?
        PendingResourceList.validate!(input[:pending], context: "#{context}[:pending]") unless input[:pending].nil?
      end
    end

    class InternalServerErrorException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerErrorException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListGroupResourcesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGroupResourcesInput, context: context)
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:group], ::String, context: "#{context}[:group]")
        ResourceFilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListGroupResourcesItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGroupResourcesItem, context: context)
        ResourceIdentifier.validate!(input[:identifier], context: "#{context}[:identifier]") unless input[:identifier].nil?
        ResourceStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
      end
    end

    class ListGroupResourcesItemList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ListGroupResourcesItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListGroupResourcesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGroupResourcesOutput, context: context)
        ListGroupResourcesItemList.validate!(input[:resources], context: "#{context}[:resources]") unless input[:resources].nil?
        ResourceIdentifierList.validate!(input[:resource_identifiers], context: "#{context}[:resource_identifiers]") unless input[:resource_identifiers].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        QueryErrorList.validate!(input[:query_errors], context: "#{context}[:query_errors]") unless input[:query_errors].nil?
      end
    end

    class ListGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGroupsInput, context: context)
        GroupFilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGroupsOutput, context: context)
        GroupIdentifierList.validate!(input[:group_identifiers], context: "#{context}[:group_identifiers]") unless input[:group_identifiers].nil?
        GroupList.validate!(input[:groups], context: "#{context}[:groups]") unless input[:groups].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class MethodNotAllowedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MethodNotAllowedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PendingResource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PendingResource, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class PendingResourceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PendingResource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PutGroupConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutGroupConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:group], ::String, context: "#{context}[:group]")
        GroupConfigurationList.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
      end
    end

    class PutGroupConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutGroupConfigurationOutput, context: context)
      end
    end

    class QueryError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QueryError, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class QueryErrorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          QueryError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ResourceFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceFilter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        ResourceFilterValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class ResourceFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ResourceFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceFilterValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ResourceIdentifier
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceIdentifier, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class ResourceIdentifierList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ResourceIdentifier.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceQuery
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceQuery, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:query], ::String, context: "#{context}[:query]")
      end
    end

    class ResourceStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceStatus, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class SearchResourcesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchResourcesInput, context: context)
        ResourceQuery.validate!(input[:resource_query], context: "#{context}[:resource_query]") unless input[:resource_query].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class SearchResourcesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchResourcesOutput, context: context)
        ResourceIdentifierList.validate!(input[:resource_identifiers], context: "#{context}[:resource_identifiers]") unless input[:resource_identifiers].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        QueryErrorList.validate!(input[:query_errors], context: "#{context}[:query_errors]") unless input[:query_errors].nil?
      end
    end

    class TagInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
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

    class TagOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
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

    class TooManyRequestsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyRequestsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UnauthorizedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnauthorizedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UngroupResourcesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UngroupResourcesInput, context: context)
        Hearth::Validator.validate!(input[:group], ::String, context: "#{context}[:group]")
        ResourceArnList.validate!(input[:resource_arns], context: "#{context}[:resource_arns]") unless input[:resource_arns].nil?
      end
    end

    class UngroupResourcesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UngroupResourcesOutput, context: context)
        ResourceArnList.validate!(input[:succeeded], context: "#{context}[:succeeded]") unless input[:succeeded].nil?
        FailedResourceList.validate!(input[:failed], context: "#{context}[:failed]") unless input[:failed].nil?
        PendingResourceList.validate!(input[:pending], context: "#{context}[:pending]") unless input[:pending].nil?
      end
    end

    class UntagInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        TagKeyList.validate!(input[:keys], context: "#{context}[:keys]") unless input[:keys].nil?
      end
    end

    class UntagOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        TagKeyList.validate!(input[:keys], context: "#{context}[:keys]") unless input[:keys].nil?
      end
    end

    class UpdateGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGroupInput, context: context)
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:group], ::String, context: "#{context}[:group]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class UpdateGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGroupOutput, context: context)
        Group.validate!(input[:group], context: "#{context}[:group]") unless input[:group].nil?
      end
    end

    class UpdateGroupQueryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGroupQueryInput, context: context)
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:group], ::String, context: "#{context}[:group]")
        ResourceQuery.validate!(input[:resource_query], context: "#{context}[:resource_query]") unless input[:resource_query].nil?
      end
    end

    class UpdateGroupQueryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGroupQueryOutput, context: context)
        GroupQuery.validate!(input[:group_query], context: "#{context}[:group_query]") unless input[:group_query].nil?
      end
    end

  end
end
