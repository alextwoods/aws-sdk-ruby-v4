# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::ChimeSDKIdentity
  module Params

    module AppInstance
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AppInstance, context: context)
        type = Types::AppInstance.new
        type.app_instance_arn = params[:app_instance_arn]
        type.name = params[:name]
        type.created_timestamp = params[:created_timestamp]
        type.last_updated_timestamp = params[:last_updated_timestamp]
        type.metadata = params[:metadata]
        type
      end
    end

    module AppInstanceAdmin
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AppInstanceAdmin, context: context)
        type = Types::AppInstanceAdmin.new
        type.admin = Identity.build(params[:admin], context: "#{context}[:admin]") unless params[:admin].nil?
        type.app_instance_arn = params[:app_instance_arn]
        type.created_timestamp = params[:created_timestamp]
        type
      end
    end

    module AppInstanceAdminList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AppInstanceAdminSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AppInstanceAdminSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AppInstanceAdminSummary, context: context)
        type = Types::AppInstanceAdminSummary.new
        type.admin = Identity.build(params[:admin], context: "#{context}[:admin]") unless params[:admin].nil?
        type
      end
    end

    module AppInstanceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AppInstanceSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AppInstanceRetentionSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AppInstanceRetentionSettings, context: context)
        type = Types::AppInstanceRetentionSettings.new
        type.channel_retention_settings = ChannelRetentionSettings.build(params[:channel_retention_settings], context: "#{context}[:channel_retention_settings]") unless params[:channel_retention_settings].nil?
        type
      end
    end

    module AppInstanceSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AppInstanceSummary, context: context)
        type = Types::AppInstanceSummary.new
        type.app_instance_arn = params[:app_instance_arn]
        type.name = params[:name]
        type.metadata = params[:metadata]
        type
      end
    end

    module AppInstanceUser
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AppInstanceUser, context: context)
        type = Types::AppInstanceUser.new
        type.app_instance_user_arn = params[:app_instance_user_arn]
        type.name = params[:name]
        type.metadata = params[:metadata]
        type.created_timestamp = params[:created_timestamp]
        type.last_updated_timestamp = params[:last_updated_timestamp]
        type
      end
    end

    module AppInstanceUserEndpoint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AppInstanceUserEndpoint, context: context)
        type = Types::AppInstanceUserEndpoint.new
        type.app_instance_user_arn = params[:app_instance_user_arn]
        type.endpoint_id = params[:endpoint_id]
        type.name = params[:name]
        type.type = params[:type]
        type.resource_arn = params[:resource_arn]
        type.endpoint_attributes = EndpointAttributes.build(params[:endpoint_attributes], context: "#{context}[:endpoint_attributes]") unless params[:endpoint_attributes].nil?
        type.created_timestamp = params[:created_timestamp]
        type.last_updated_timestamp = params[:last_updated_timestamp]
        type.allow_messages = params[:allow_messages]
        type.endpoint_state = EndpointState.build(params[:endpoint_state], context: "#{context}[:endpoint_state]") unless params[:endpoint_state].nil?
        type
      end
    end

    module AppInstanceUserEndpointSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AppInstanceUserEndpointSummary, context: context)
        type = Types::AppInstanceUserEndpointSummary.new
        type.app_instance_user_arn = params[:app_instance_user_arn]
        type.endpoint_id = params[:endpoint_id]
        type.name = params[:name]
        type.type = params[:type]
        type.allow_messages = params[:allow_messages]
        type.endpoint_state = EndpointState.build(params[:endpoint_state], context: "#{context}[:endpoint_state]") unless params[:endpoint_state].nil?
        type
      end
    end

    module AppInstanceUserEndpointSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AppInstanceUserEndpointSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AppInstanceUserList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AppInstanceUserSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AppInstanceUserSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AppInstanceUserSummary, context: context)
        type = Types::AppInstanceUserSummary.new
        type.app_instance_user_arn = params[:app_instance_user_arn]
        type.name = params[:name]
        type.metadata = params[:metadata]
        type
      end
    end

    module BadRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BadRequestException, context: context)
        type = Types::BadRequestException.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module ChannelRetentionSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChannelRetentionSettings, context: context)
        type = Types::ChannelRetentionSettings.new
        type.retention_days = params[:retention_days]
        type
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module CreateAppInstanceAdminInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAppInstanceAdminInput, context: context)
        type = Types::CreateAppInstanceAdminInput.new
        type.app_instance_admin_arn = params[:app_instance_admin_arn]
        type.app_instance_arn = params[:app_instance_arn]
        type
      end
    end

    module CreateAppInstanceAdminOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAppInstanceAdminOutput, context: context)
        type = Types::CreateAppInstanceAdminOutput.new
        type.app_instance_admin = Identity.build(params[:app_instance_admin], context: "#{context}[:app_instance_admin]") unless params[:app_instance_admin].nil?
        type.app_instance_arn = params[:app_instance_arn]
        type
      end
    end

    module CreateAppInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAppInstanceInput, context: context)
        type = Types::CreateAppInstanceInput.new
        type.name = params[:name]
        type.metadata = params[:metadata]
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateAppInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAppInstanceOutput, context: context)
        type = Types::CreateAppInstanceOutput.new
        type.app_instance_arn = params[:app_instance_arn]
        type
      end
    end

    module CreateAppInstanceUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAppInstanceUserInput, context: context)
        type = Types::CreateAppInstanceUserInput.new
        type.app_instance_arn = params[:app_instance_arn]
        type.app_instance_user_id = params[:app_instance_user_id]
        type.name = params[:name]
        type.metadata = params[:metadata]
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateAppInstanceUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAppInstanceUserOutput, context: context)
        type = Types::CreateAppInstanceUserOutput.new
        type.app_instance_user_arn = params[:app_instance_user_arn]
        type
      end
    end

    module DeleteAppInstanceAdminInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAppInstanceAdminInput, context: context)
        type = Types::DeleteAppInstanceAdminInput.new
        type.app_instance_admin_arn = params[:app_instance_admin_arn]
        type.app_instance_arn = params[:app_instance_arn]
        type
      end
    end

    module DeleteAppInstanceAdminOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAppInstanceAdminOutput, context: context)
        type = Types::DeleteAppInstanceAdminOutput.new
        type
      end
    end

    module DeleteAppInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAppInstanceInput, context: context)
        type = Types::DeleteAppInstanceInput.new
        type.app_instance_arn = params[:app_instance_arn]
        type
      end
    end

    module DeleteAppInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAppInstanceOutput, context: context)
        type = Types::DeleteAppInstanceOutput.new
        type
      end
    end

    module DeleteAppInstanceUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAppInstanceUserInput, context: context)
        type = Types::DeleteAppInstanceUserInput.new
        type.app_instance_user_arn = params[:app_instance_user_arn]
        type
      end
    end

    module DeleteAppInstanceUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAppInstanceUserOutput, context: context)
        type = Types::DeleteAppInstanceUserOutput.new
        type
      end
    end

    module DeregisterAppInstanceUserEndpointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterAppInstanceUserEndpointInput, context: context)
        type = Types::DeregisterAppInstanceUserEndpointInput.new
        type.app_instance_user_arn = params[:app_instance_user_arn]
        type.endpoint_id = params[:endpoint_id]
        type
      end
    end

    module DeregisterAppInstanceUserEndpointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterAppInstanceUserEndpointOutput, context: context)
        type = Types::DeregisterAppInstanceUserEndpointOutput.new
        type
      end
    end

    module DescribeAppInstanceAdminInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAppInstanceAdminInput, context: context)
        type = Types::DescribeAppInstanceAdminInput.new
        type.app_instance_admin_arn = params[:app_instance_admin_arn]
        type.app_instance_arn = params[:app_instance_arn]
        type
      end
    end

    module DescribeAppInstanceAdminOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAppInstanceAdminOutput, context: context)
        type = Types::DescribeAppInstanceAdminOutput.new
        type.app_instance_admin = AppInstanceAdmin.build(params[:app_instance_admin], context: "#{context}[:app_instance_admin]") unless params[:app_instance_admin].nil?
        type
      end
    end

    module DescribeAppInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAppInstanceInput, context: context)
        type = Types::DescribeAppInstanceInput.new
        type.app_instance_arn = params[:app_instance_arn]
        type
      end
    end

    module DescribeAppInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAppInstanceOutput, context: context)
        type = Types::DescribeAppInstanceOutput.new
        type.app_instance = AppInstance.build(params[:app_instance], context: "#{context}[:app_instance]") unless params[:app_instance].nil?
        type
      end
    end

    module DescribeAppInstanceUserEndpointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAppInstanceUserEndpointInput, context: context)
        type = Types::DescribeAppInstanceUserEndpointInput.new
        type.app_instance_user_arn = params[:app_instance_user_arn]
        type.endpoint_id = params[:endpoint_id]
        type
      end
    end

    module DescribeAppInstanceUserEndpointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAppInstanceUserEndpointOutput, context: context)
        type = Types::DescribeAppInstanceUserEndpointOutput.new
        type.app_instance_user_endpoint = AppInstanceUserEndpoint.build(params[:app_instance_user_endpoint], context: "#{context}[:app_instance_user_endpoint]") unless params[:app_instance_user_endpoint].nil?
        type
      end
    end

    module DescribeAppInstanceUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAppInstanceUserInput, context: context)
        type = Types::DescribeAppInstanceUserInput.new
        type.app_instance_user_arn = params[:app_instance_user_arn]
        type
      end
    end

    module DescribeAppInstanceUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAppInstanceUserOutput, context: context)
        type = Types::DescribeAppInstanceUserOutput.new
        type.app_instance_user = AppInstanceUser.build(params[:app_instance_user], context: "#{context}[:app_instance_user]") unless params[:app_instance_user].nil?
        type
      end
    end

    module EndpointAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EndpointAttributes, context: context)
        type = Types::EndpointAttributes.new
        type.device_token = params[:device_token]
        type.voip_device_token = params[:voip_device_token]
        type
      end
    end

    module EndpointState
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EndpointState, context: context)
        type = Types::EndpointState.new
        type.status = params[:status]
        type.status_reason = params[:status_reason]
        type
      end
    end

    module ForbiddenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ForbiddenException, context: context)
        type = Types::ForbiddenException.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module GetAppInstanceRetentionSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAppInstanceRetentionSettingsInput, context: context)
        type = Types::GetAppInstanceRetentionSettingsInput.new
        type.app_instance_arn = params[:app_instance_arn]
        type
      end
    end

    module GetAppInstanceRetentionSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAppInstanceRetentionSettingsOutput, context: context)
        type = Types::GetAppInstanceRetentionSettingsOutput.new
        type.app_instance_retention_settings = AppInstanceRetentionSettings.build(params[:app_instance_retention_settings], context: "#{context}[:app_instance_retention_settings]") unless params[:app_instance_retention_settings].nil?
        type.initiate_deletion_timestamp = params[:initiate_deletion_timestamp]
        type
      end
    end

    module Identity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Identity, context: context)
        type = Types::Identity.new
        type.arn = params[:arn]
        type.name = params[:name]
        type
      end
    end

    module ListAppInstanceAdminsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAppInstanceAdminsInput, context: context)
        type = Types::ListAppInstanceAdminsInput.new
        type.app_instance_arn = params[:app_instance_arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAppInstanceAdminsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAppInstanceAdminsOutput, context: context)
        type = Types::ListAppInstanceAdminsOutput.new
        type.app_instance_arn = params[:app_instance_arn]
        type.app_instance_admins = AppInstanceAdminList.build(params[:app_instance_admins], context: "#{context}[:app_instance_admins]") unless params[:app_instance_admins].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAppInstanceUserEndpointsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAppInstanceUserEndpointsInput, context: context)
        type = Types::ListAppInstanceUserEndpointsInput.new
        type.app_instance_user_arn = params[:app_instance_user_arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAppInstanceUserEndpointsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAppInstanceUserEndpointsOutput, context: context)
        type = Types::ListAppInstanceUserEndpointsOutput.new
        type.app_instance_user_endpoints = AppInstanceUserEndpointSummaryList.build(params[:app_instance_user_endpoints], context: "#{context}[:app_instance_user_endpoints]") unless params[:app_instance_user_endpoints].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAppInstanceUsersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAppInstanceUsersInput, context: context)
        type = Types::ListAppInstanceUsersInput.new
        type.app_instance_arn = params[:app_instance_arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAppInstanceUsersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAppInstanceUsersOutput, context: context)
        type = Types::ListAppInstanceUsersOutput.new
        type.app_instance_arn = params[:app_instance_arn]
        type.app_instance_users = AppInstanceUserList.build(params[:app_instance_users], context: "#{context}[:app_instance_users]") unless params[:app_instance_users].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAppInstancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAppInstancesInput, context: context)
        type = Types::ListAppInstancesInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAppInstancesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAppInstancesOutput, context: context)
        type = Types::ListAppInstancesOutput.new
        type.app_instances = AppInstanceList.build(params[:app_instances], context: "#{context}[:app_instances]") unless params[:app_instances].nil?
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
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module PutAppInstanceRetentionSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutAppInstanceRetentionSettingsInput, context: context)
        type = Types::PutAppInstanceRetentionSettingsInput.new
        type.app_instance_arn = params[:app_instance_arn]
        type.app_instance_retention_settings = AppInstanceRetentionSettings.build(params[:app_instance_retention_settings], context: "#{context}[:app_instance_retention_settings]") unless params[:app_instance_retention_settings].nil?
        type
      end
    end

    module PutAppInstanceRetentionSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutAppInstanceRetentionSettingsOutput, context: context)
        type = Types::PutAppInstanceRetentionSettingsOutput.new
        type.app_instance_retention_settings = AppInstanceRetentionSettings.build(params[:app_instance_retention_settings], context: "#{context}[:app_instance_retention_settings]") unless params[:app_instance_retention_settings].nil?
        type.initiate_deletion_timestamp = params[:initiate_deletion_timestamp]
        type
      end
    end

    module RegisterAppInstanceUserEndpointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterAppInstanceUserEndpointInput, context: context)
        type = Types::RegisterAppInstanceUserEndpointInput.new
        type.app_instance_user_arn = params[:app_instance_user_arn]
        type.name = params[:name]
        type.type = params[:type]
        type.resource_arn = params[:resource_arn]
        type.endpoint_attributes = EndpointAttributes.build(params[:endpoint_attributes], context: "#{context}[:endpoint_attributes]") unless params[:endpoint_attributes].nil?
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type.allow_messages = params[:allow_messages]
        type
      end
    end

    module RegisterAppInstanceUserEndpointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterAppInstanceUserEndpointOutput, context: context)
        type = Types::RegisterAppInstanceUserEndpointOutput.new
        type.app_instance_user_arn = params[:app_instance_user_arn]
        type.endpoint_id = params[:endpoint_id]
        type
      end
    end

    module ResourceLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceLimitExceededException, context: context)
        type = Types::ResourceLimitExceededException.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module ServiceFailureException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceFailureException, context: context)
        type = Types::ServiceFailureException.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module ServiceUnavailableException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceUnavailableException, context: context)
        type = Types::ServiceUnavailableException.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.key = params[:key]
        type.value = params[:value]
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

    module TagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module ThrottledClientException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottledClientException, context: context)
        type = Types::ThrottledClientException.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module UnauthorizedClientException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnauthorizedClientException, context: context)
        type = Types::UnauthorizedClientException.new
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

    module UpdateAppInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAppInstanceInput, context: context)
        type = Types::UpdateAppInstanceInput.new
        type.app_instance_arn = params[:app_instance_arn]
        type.name = params[:name]
        type.metadata = params[:metadata]
        type
      end
    end

    module UpdateAppInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAppInstanceOutput, context: context)
        type = Types::UpdateAppInstanceOutput.new
        type.app_instance_arn = params[:app_instance_arn]
        type
      end
    end

    module UpdateAppInstanceUserEndpointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAppInstanceUserEndpointInput, context: context)
        type = Types::UpdateAppInstanceUserEndpointInput.new
        type.app_instance_user_arn = params[:app_instance_user_arn]
        type.endpoint_id = params[:endpoint_id]
        type.name = params[:name]
        type.allow_messages = params[:allow_messages]
        type
      end
    end

    module UpdateAppInstanceUserEndpointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAppInstanceUserEndpointOutput, context: context)
        type = Types::UpdateAppInstanceUserEndpointOutput.new
        type.app_instance_user_arn = params[:app_instance_user_arn]
        type.endpoint_id = params[:endpoint_id]
        type
      end
    end

    module UpdateAppInstanceUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAppInstanceUserInput, context: context)
        type = Types::UpdateAppInstanceUserInput.new
        type.app_instance_user_arn = params[:app_instance_user_arn]
        type.name = params[:name]
        type.metadata = params[:metadata]
        type
      end
    end

    module UpdateAppInstanceUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAppInstanceUserOutput, context: context)
        type = Types::UpdateAppInstanceUserOutput.new
        type.app_instance_user_arn = params[:app_instance_user_arn]
        type
      end
    end

  end
end
