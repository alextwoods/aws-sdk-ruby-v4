# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::ResourceGroups
  module Params

    module BadRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BadRequestException, context: context)
        type = Types::BadRequestException.new
        type.message = params[:message]
        type
      end
    end

    module CreateGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateGroupInput, context: context)
        type = Types::CreateGroupInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.resource_query = ResourceQuery.build(params[:resource_query], context: "#{context}[:resource_query]") unless params[:resource_query].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.configuration = GroupConfigurationList.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type
      end
    end

    module CreateGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateGroupOutput, context: context)
        type = Types::CreateGroupOutput.new
        type.group = Group.build(params[:group], context: "#{context}[:group]") unless params[:group].nil?
        type.resource_query = ResourceQuery.build(params[:resource_query], context: "#{context}[:resource_query]") unless params[:resource_query].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.group_configuration = GroupConfiguration.build(params[:group_configuration], context: "#{context}[:group_configuration]") unless params[:group_configuration].nil?
        type
      end
    end

    module DeleteGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteGroupInput, context: context)
        type = Types::DeleteGroupInput.new
        type.group_name = params[:group_name]
        type.group = params[:group]
        type
      end
    end

    module DeleteGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteGroupOutput, context: context)
        type = Types::DeleteGroupOutput.new
        type.group = Group.build(params[:group], context: "#{context}[:group]") unless params[:group].nil?
        type
      end
    end

    module FailedResource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FailedResource, context: context)
        type = Types::FailedResource.new
        type.resource_arn = params[:resource_arn]
        type.error_message = params[:error_message]
        type.error_code = params[:error_code]
        type
      end
    end

    module FailedResourceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FailedResource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ForbiddenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ForbiddenException, context: context)
        type = Types::ForbiddenException.new
        type.message = params[:message]
        type
      end
    end

    module GetGroupConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetGroupConfigurationInput, context: context)
        type = Types::GetGroupConfigurationInput.new
        type.group = params[:group]
        type
      end
    end

    module GetGroupConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetGroupConfigurationOutput, context: context)
        type = Types::GetGroupConfigurationOutput.new
        type.group_configuration = GroupConfiguration.build(params[:group_configuration], context: "#{context}[:group_configuration]") unless params[:group_configuration].nil?
        type
      end
    end

    module GetGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetGroupInput, context: context)
        type = Types::GetGroupInput.new
        type.group_name = params[:group_name]
        type.group = params[:group]
        type
      end
    end

    module GetGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetGroupOutput, context: context)
        type = Types::GetGroupOutput.new
        type.group = Group.build(params[:group], context: "#{context}[:group]") unless params[:group].nil?
        type
      end
    end

    module GetGroupQueryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetGroupQueryInput, context: context)
        type = Types::GetGroupQueryInput.new
        type.group_name = params[:group_name]
        type.group = params[:group]
        type
      end
    end

    module GetGroupQueryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetGroupQueryOutput, context: context)
        type = Types::GetGroupQueryOutput.new
        type.group_query = GroupQuery.build(params[:group_query], context: "#{context}[:group_query]") unless params[:group_query].nil?
        type
      end
    end

    module GetTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTagsInput, context: context)
        type = Types::GetTagsInput.new
        type.arn = params[:arn]
        type
      end
    end

    module GetTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTagsOutput, context: context)
        type = Types::GetTagsOutput.new
        type.arn = params[:arn]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module Group
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Group, context: context)
        type = Types::Group.new
        type.group_arn = params[:group_arn]
        type.name = params[:name]
        type.description = params[:description]
        type
      end
    end

    module GroupConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GroupConfiguration, context: context)
        type = Types::GroupConfiguration.new
        type.configuration = GroupConfigurationList.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type.proposed_configuration = GroupConfigurationList.build(params[:proposed_configuration], context: "#{context}[:proposed_configuration]") unless params[:proposed_configuration].nil?
        type.status = params[:status]
        type.failure_reason = params[:failure_reason]
        type
      end
    end

    module GroupConfigurationItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GroupConfigurationItem, context: context)
        type = Types::GroupConfigurationItem.new
        type.type = params[:type]
        type.parameters = GroupParameterList.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type
      end
    end

    module GroupConfigurationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GroupConfigurationItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GroupConfigurationParameter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GroupConfigurationParameter, context: context)
        type = Types::GroupConfigurationParameter.new
        type.name = params[:name]
        type.values = GroupConfigurationParameterValueList.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module GroupConfigurationParameterValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module GroupFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GroupFilter, context: context)
        type = Types::GroupFilter.new
        type.name = params[:name]
        type.values = GroupFilterValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module GroupFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GroupFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GroupFilterValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module GroupIdentifier
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GroupIdentifier, context: context)
        type = Types::GroupIdentifier.new
        type.group_name = params[:group_name]
        type.group_arn = params[:group_arn]
        type
      end
    end

    module GroupIdentifierList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GroupIdentifier.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GroupList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Group.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GroupParameterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GroupConfigurationParameter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GroupQuery
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GroupQuery, context: context)
        type = Types::GroupQuery.new
        type.group_name = params[:group_name]
        type.resource_query = ResourceQuery.build(params[:resource_query], context: "#{context}[:resource_query]") unless params[:resource_query].nil?
        type
      end
    end

    module GroupResourcesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GroupResourcesInput, context: context)
        type = Types::GroupResourcesInput.new
        type.group = params[:group]
        type.resource_arns = ResourceArnList.build(params[:resource_arns], context: "#{context}[:resource_arns]") unless params[:resource_arns].nil?
        type
      end
    end

    module GroupResourcesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GroupResourcesOutput, context: context)
        type = Types::GroupResourcesOutput.new
        type.succeeded = ResourceArnList.build(params[:succeeded], context: "#{context}[:succeeded]") unless params[:succeeded].nil?
        type.failed = FailedResourceList.build(params[:failed], context: "#{context}[:failed]") unless params[:failed].nil?
        type.pending = PendingResourceList.build(params[:pending], context: "#{context}[:pending]") unless params[:pending].nil?
        type
      end
    end

    module InternalServerErrorException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerErrorException, context: context)
        type = Types::InternalServerErrorException.new
        type.message = params[:message]
        type
      end
    end

    module ListGroupResourcesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGroupResourcesInput, context: context)
        type = Types::ListGroupResourcesInput.new
        type.group_name = params[:group_name]
        type.group = params[:group]
        type.filters = ResourceFilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListGroupResourcesItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGroupResourcesItem, context: context)
        type = Types::ListGroupResourcesItem.new
        type.identifier = ResourceIdentifier.build(params[:identifier], context: "#{context}[:identifier]") unless params[:identifier].nil?
        type.status = ResourceStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type
      end
    end

    module ListGroupResourcesItemList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ListGroupResourcesItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListGroupResourcesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGroupResourcesOutput, context: context)
        type = Types::ListGroupResourcesOutput.new
        type.resources = ListGroupResourcesItemList.build(params[:resources], context: "#{context}[:resources]") unless params[:resources].nil?
        type.resource_identifiers = ResourceIdentifierList.build(params[:resource_identifiers], context: "#{context}[:resource_identifiers]") unless params[:resource_identifiers].nil?
        type.next_token = params[:next_token]
        type.query_errors = QueryErrorList.build(params[:query_errors], context: "#{context}[:query_errors]") unless params[:query_errors].nil?
        type
      end
    end

    module ListGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGroupsInput, context: context)
        type = Types::ListGroupsInput.new
        type.filters = GroupFilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGroupsOutput, context: context)
        type = Types::ListGroupsOutput.new
        type.group_identifiers = GroupIdentifierList.build(params[:group_identifiers], context: "#{context}[:group_identifiers]") unless params[:group_identifiers].nil?
        type.groups = GroupList.build(params[:groups], context: "#{context}[:groups]") unless params[:groups].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module MethodNotAllowedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MethodNotAllowedException, context: context)
        type = Types::MethodNotAllowedException.new
        type.message = params[:message]
        type
      end
    end

    module NotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotFoundException, context: context)
        type = Types::NotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module PendingResource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PendingResource, context: context)
        type = Types::PendingResource.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module PendingResourceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PendingResource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PutGroupConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutGroupConfigurationInput, context: context)
        type = Types::PutGroupConfigurationInput.new
        type.group = params[:group]
        type.configuration = GroupConfigurationList.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type
      end
    end

    module PutGroupConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutGroupConfigurationOutput, context: context)
        type = Types::PutGroupConfigurationOutput.new
        type
      end
    end

    module QueryError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QueryError, context: context)
        type = Types::QueryError.new
        type.error_code = params[:error_code]
        type.message = params[:message]
        type
      end
    end

    module QueryErrorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << QueryError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ResourceFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceFilter, context: context)
        type = Types::ResourceFilter.new
        type.name = params[:name]
        type.values = ResourceFilterValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module ResourceFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResourceFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceFilterValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ResourceIdentifier
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceIdentifier, context: context)
        type = Types::ResourceIdentifier.new
        type.resource_arn = params[:resource_arn]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module ResourceIdentifierList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResourceIdentifier.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceQuery
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceQuery, context: context)
        type = Types::ResourceQuery.new
        type.type = params[:type]
        type.query = params[:query]
        type
      end
    end

    module ResourceStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceStatus, context: context)
        type = Types::ResourceStatus.new
        type.name = params[:name]
        type
      end
    end

    module SearchResourcesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchResourcesInput, context: context)
        type = Types::SearchResourcesInput.new
        type.resource_query = ResourceQuery.build(params[:resource_query], context: "#{context}[:resource_query]") unless params[:resource_query].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module SearchResourcesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchResourcesOutput, context: context)
        type = Types::SearchResourcesOutput.new
        type.resource_identifiers = ResourceIdentifierList.build(params[:resource_identifiers], context: "#{context}[:resource_identifiers]") unless params[:resource_identifiers].nil?
        type.next_token = params[:next_token]
        type.query_errors = QueryErrorList.build(params[:query_errors], context: "#{context}[:query_errors]") unless params[:query_errors].nil?
        type
      end
    end

    module TagInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagInput, context: context)
        type = Types::TagInput.new
        type.arn = params[:arn]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module TagOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagOutput, context: context)
        type = Types::TagOutput.new
        type.arn = params[:arn]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module TooManyRequestsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyRequestsException, context: context)
        type = Types::TooManyRequestsException.new
        type.message = params[:message]
        type
      end
    end

    module UnauthorizedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnauthorizedException, context: context)
        type = Types::UnauthorizedException.new
        type.message = params[:message]
        type
      end
    end

    module UngroupResourcesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UngroupResourcesInput, context: context)
        type = Types::UngroupResourcesInput.new
        type.group = params[:group]
        type.resource_arns = ResourceArnList.build(params[:resource_arns], context: "#{context}[:resource_arns]") unless params[:resource_arns].nil?
        type
      end
    end

    module UngroupResourcesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UngroupResourcesOutput, context: context)
        type = Types::UngroupResourcesOutput.new
        type.succeeded = ResourceArnList.build(params[:succeeded], context: "#{context}[:succeeded]") unless params[:succeeded].nil?
        type.failed = FailedResourceList.build(params[:failed], context: "#{context}[:failed]") unless params[:failed].nil?
        type.pending = PendingResourceList.build(params[:pending], context: "#{context}[:pending]") unless params[:pending].nil?
        type
      end
    end

    module UntagInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagInput, context: context)
        type = Types::UntagInput.new
        type.arn = params[:arn]
        type.keys = TagKeyList.build(params[:keys], context: "#{context}[:keys]") unless params[:keys].nil?
        type
      end
    end

    module UntagOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagOutput, context: context)
        type = Types::UntagOutput.new
        type.arn = params[:arn]
        type.keys = TagKeyList.build(params[:keys], context: "#{context}[:keys]") unless params[:keys].nil?
        type
      end
    end

    module UpdateGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGroupInput, context: context)
        type = Types::UpdateGroupInput.new
        type.group_name = params[:group_name]
        type.group = params[:group]
        type.description = params[:description]
        type
      end
    end

    module UpdateGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGroupOutput, context: context)
        type = Types::UpdateGroupOutput.new
        type.group = Group.build(params[:group], context: "#{context}[:group]") unless params[:group].nil?
        type
      end
    end

    module UpdateGroupQueryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGroupQueryInput, context: context)
        type = Types::UpdateGroupQueryInput.new
        type.group_name = params[:group_name]
        type.group = params[:group]
        type.resource_query = ResourceQuery.build(params[:resource_query], context: "#{context}[:resource_query]") unless params[:resource_query].nil?
        type
      end
    end

    module UpdateGroupQueryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGroupQueryOutput, context: context)
        type = Types::UpdateGroupQueryOutput.new
        type.group_query = GroupQuery.build(params[:group_query], context: "#{context}[:group_query]") unless params[:group_query].nil?
        type
      end
    end

  end
end
