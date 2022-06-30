# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ChimeSDKIdentity
  module Validators

    class AppInstance
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AppInstance, context: context)
        Hearth::Validator.validate!(input[:app_instance_arn], ::String, context: "#{context}[:app_instance_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
        Hearth::Validator.validate!(input[:last_updated_timestamp], ::Time, context: "#{context}[:last_updated_timestamp]")
        Hearth::Validator.validate!(input[:metadata], ::String, context: "#{context}[:metadata]")
      end
    end

    class AppInstanceAdmin
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AppInstanceAdmin, context: context)
        Validators::Identity.validate!(input[:admin], context: "#{context}[:admin]") unless input[:admin].nil?
        Hearth::Validator.validate!(input[:app_instance_arn], ::String, context: "#{context}[:app_instance_arn]")
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
      end
    end

    class AppInstanceAdminList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AppInstanceAdminSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AppInstanceAdminSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AppInstanceAdminSummary, context: context)
        Validators::Identity.validate!(input[:admin], context: "#{context}[:admin]") unless input[:admin].nil?
      end
    end

    class AppInstanceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AppInstanceSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AppInstanceRetentionSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AppInstanceRetentionSettings, context: context)
        Validators::ChannelRetentionSettings.validate!(input[:channel_retention_settings], context: "#{context}[:channel_retention_settings]") unless input[:channel_retention_settings].nil?
      end
    end

    class AppInstanceSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AppInstanceSummary, context: context)
        Hearth::Validator.validate!(input[:app_instance_arn], ::String, context: "#{context}[:app_instance_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:metadata], ::String, context: "#{context}[:metadata]")
      end
    end

    class AppInstanceUser
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AppInstanceUser, context: context)
        Hearth::Validator.validate!(input[:app_instance_user_arn], ::String, context: "#{context}[:app_instance_user_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:metadata], ::String, context: "#{context}[:metadata]")
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
        Hearth::Validator.validate!(input[:last_updated_timestamp], ::Time, context: "#{context}[:last_updated_timestamp]")
      end
    end

    class AppInstanceUserEndpoint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AppInstanceUserEndpoint, context: context)
        Hearth::Validator.validate!(input[:app_instance_user_arn], ::String, context: "#{context}[:app_instance_user_arn]")
        Hearth::Validator.validate!(input[:endpoint_id], ::String, context: "#{context}[:endpoint_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::EndpointAttributes.validate!(input[:endpoint_attributes], context: "#{context}[:endpoint_attributes]") unless input[:endpoint_attributes].nil?
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
        Hearth::Validator.validate!(input[:last_updated_timestamp], ::Time, context: "#{context}[:last_updated_timestamp]")
        Hearth::Validator.validate!(input[:allow_messages], ::String, context: "#{context}[:allow_messages]")
        Validators::EndpointState.validate!(input[:endpoint_state], context: "#{context}[:endpoint_state]") unless input[:endpoint_state].nil?
      end
    end

    class AppInstanceUserEndpointSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AppInstanceUserEndpointSummary, context: context)
        Hearth::Validator.validate!(input[:app_instance_user_arn], ::String, context: "#{context}[:app_instance_user_arn]")
        Hearth::Validator.validate!(input[:endpoint_id], ::String, context: "#{context}[:endpoint_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:allow_messages], ::String, context: "#{context}[:allow_messages]")
        Validators::EndpointState.validate!(input[:endpoint_state], context: "#{context}[:endpoint_state]") unless input[:endpoint_state].nil?
      end
    end

    class AppInstanceUserEndpointSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AppInstanceUserEndpointSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AppInstanceUserList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AppInstanceUserSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AppInstanceUserSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AppInstanceUserSummary, context: context)
        Hearth::Validator.validate!(input[:app_instance_user_arn], ::String, context: "#{context}[:app_instance_user_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:metadata], ::String, context: "#{context}[:metadata]")
      end
    end

    class BadRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BadRequestException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ChannelRetentionSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChannelRetentionSettings, context: context)
        Hearth::Validator.validate!(input[:retention_days], ::Integer, context: "#{context}[:retention_days]")
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateAppInstanceAdminInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAppInstanceAdminInput, context: context)
        Hearth::Validator.validate!(input[:app_instance_admin_arn], ::String, context: "#{context}[:app_instance_admin_arn]")
        Hearth::Validator.validate!(input[:app_instance_arn], ::String, context: "#{context}[:app_instance_arn]")
      end
    end

    class CreateAppInstanceAdminOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAppInstanceAdminOutput, context: context)
        Validators::Identity.validate!(input[:app_instance_admin], context: "#{context}[:app_instance_admin]") unless input[:app_instance_admin].nil?
        Hearth::Validator.validate!(input[:app_instance_arn], ::String, context: "#{context}[:app_instance_arn]")
      end
    end

    class CreateAppInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAppInstanceInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:metadata], ::String, context: "#{context}[:metadata]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateAppInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAppInstanceOutput, context: context)
        Hearth::Validator.validate!(input[:app_instance_arn], ::String, context: "#{context}[:app_instance_arn]")
      end
    end

    class CreateAppInstanceUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAppInstanceUserInput, context: context)
        Hearth::Validator.validate!(input[:app_instance_arn], ::String, context: "#{context}[:app_instance_arn]")
        Hearth::Validator.validate!(input[:app_instance_user_id], ::String, context: "#{context}[:app_instance_user_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:metadata], ::String, context: "#{context}[:metadata]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateAppInstanceUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAppInstanceUserOutput, context: context)
        Hearth::Validator.validate!(input[:app_instance_user_arn], ::String, context: "#{context}[:app_instance_user_arn]")
      end
    end

    class DeleteAppInstanceAdminInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAppInstanceAdminInput, context: context)
        Hearth::Validator.validate!(input[:app_instance_admin_arn], ::String, context: "#{context}[:app_instance_admin_arn]")
        Hearth::Validator.validate!(input[:app_instance_arn], ::String, context: "#{context}[:app_instance_arn]")
      end
    end

    class DeleteAppInstanceAdminOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAppInstanceAdminOutput, context: context)
      end
    end

    class DeleteAppInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAppInstanceInput, context: context)
        Hearth::Validator.validate!(input[:app_instance_arn], ::String, context: "#{context}[:app_instance_arn]")
      end
    end

    class DeleteAppInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAppInstanceOutput, context: context)
      end
    end

    class DeleteAppInstanceUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAppInstanceUserInput, context: context)
        Hearth::Validator.validate!(input[:app_instance_user_arn], ::String, context: "#{context}[:app_instance_user_arn]")
      end
    end

    class DeleteAppInstanceUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAppInstanceUserOutput, context: context)
      end
    end

    class DeregisterAppInstanceUserEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterAppInstanceUserEndpointInput, context: context)
        Hearth::Validator.validate!(input[:app_instance_user_arn], ::String, context: "#{context}[:app_instance_user_arn]")
        Hearth::Validator.validate!(input[:endpoint_id], ::String, context: "#{context}[:endpoint_id]")
      end
    end

    class DeregisterAppInstanceUserEndpointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterAppInstanceUserEndpointOutput, context: context)
      end
    end

    class DescribeAppInstanceAdminInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAppInstanceAdminInput, context: context)
        Hearth::Validator.validate!(input[:app_instance_admin_arn], ::String, context: "#{context}[:app_instance_admin_arn]")
        Hearth::Validator.validate!(input[:app_instance_arn], ::String, context: "#{context}[:app_instance_arn]")
      end
    end

    class DescribeAppInstanceAdminOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAppInstanceAdminOutput, context: context)
        Validators::AppInstanceAdmin.validate!(input[:app_instance_admin], context: "#{context}[:app_instance_admin]") unless input[:app_instance_admin].nil?
      end
    end

    class DescribeAppInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAppInstanceInput, context: context)
        Hearth::Validator.validate!(input[:app_instance_arn], ::String, context: "#{context}[:app_instance_arn]")
      end
    end

    class DescribeAppInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAppInstanceOutput, context: context)
        Validators::AppInstance.validate!(input[:app_instance], context: "#{context}[:app_instance]") unless input[:app_instance].nil?
      end
    end

    class DescribeAppInstanceUserEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAppInstanceUserEndpointInput, context: context)
        Hearth::Validator.validate!(input[:app_instance_user_arn], ::String, context: "#{context}[:app_instance_user_arn]")
        Hearth::Validator.validate!(input[:endpoint_id], ::String, context: "#{context}[:endpoint_id]")
      end
    end

    class DescribeAppInstanceUserEndpointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAppInstanceUserEndpointOutput, context: context)
        Validators::AppInstanceUserEndpoint.validate!(input[:app_instance_user_endpoint], context: "#{context}[:app_instance_user_endpoint]") unless input[:app_instance_user_endpoint].nil?
      end
    end

    class DescribeAppInstanceUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAppInstanceUserInput, context: context)
        Hearth::Validator.validate!(input[:app_instance_user_arn], ::String, context: "#{context}[:app_instance_user_arn]")
      end
    end

    class DescribeAppInstanceUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAppInstanceUserOutput, context: context)
        Validators::AppInstanceUser.validate!(input[:app_instance_user], context: "#{context}[:app_instance_user]") unless input[:app_instance_user].nil?
      end
    end

    class EndpointAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EndpointAttributes, context: context)
        Hearth::Validator.validate!(input[:device_token], ::String, context: "#{context}[:device_token]")
        Hearth::Validator.validate!(input[:voip_device_token], ::String, context: "#{context}[:voip_device_token]")
      end
    end

    class EndpointState
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EndpointState, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_reason], ::String, context: "#{context}[:status_reason]")
      end
    end

    class ForbiddenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ForbiddenException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class GetAppInstanceRetentionSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAppInstanceRetentionSettingsInput, context: context)
        Hearth::Validator.validate!(input[:app_instance_arn], ::String, context: "#{context}[:app_instance_arn]")
      end
    end

    class GetAppInstanceRetentionSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAppInstanceRetentionSettingsOutput, context: context)
        Validators::AppInstanceRetentionSettings.validate!(input[:app_instance_retention_settings], context: "#{context}[:app_instance_retention_settings]") unless input[:app_instance_retention_settings].nil?
        Hearth::Validator.validate!(input[:initiate_deletion_timestamp], ::Time, context: "#{context}[:initiate_deletion_timestamp]")
      end
    end

    class Identity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Identity, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class ListAppInstanceAdminsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAppInstanceAdminsInput, context: context)
        Hearth::Validator.validate!(input[:app_instance_arn], ::String, context: "#{context}[:app_instance_arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAppInstanceAdminsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAppInstanceAdminsOutput, context: context)
        Hearth::Validator.validate!(input[:app_instance_arn], ::String, context: "#{context}[:app_instance_arn]")
        Validators::AppInstanceAdminList.validate!(input[:app_instance_admins], context: "#{context}[:app_instance_admins]") unless input[:app_instance_admins].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAppInstanceUserEndpointsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAppInstanceUserEndpointsInput, context: context)
        Hearth::Validator.validate!(input[:app_instance_user_arn], ::String, context: "#{context}[:app_instance_user_arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAppInstanceUserEndpointsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAppInstanceUserEndpointsOutput, context: context)
        Validators::AppInstanceUserEndpointSummaryList.validate!(input[:app_instance_user_endpoints], context: "#{context}[:app_instance_user_endpoints]") unless input[:app_instance_user_endpoints].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAppInstanceUsersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAppInstanceUsersInput, context: context)
        Hearth::Validator.validate!(input[:app_instance_arn], ::String, context: "#{context}[:app_instance_arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAppInstanceUsersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAppInstanceUsersOutput, context: context)
        Hearth::Validator.validate!(input[:app_instance_arn], ::String, context: "#{context}[:app_instance_arn]")
        Validators::AppInstanceUserList.validate!(input[:app_instance_users], context: "#{context}[:app_instance_users]") unless input[:app_instance_users].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAppInstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAppInstancesInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAppInstancesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAppInstancesOutput, context: context)
        Validators::AppInstanceList.validate!(input[:app_instances], context: "#{context}[:app_instances]") unless input[:app_instances].nil?
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
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class PutAppInstanceRetentionSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutAppInstanceRetentionSettingsInput, context: context)
        Hearth::Validator.validate!(input[:app_instance_arn], ::String, context: "#{context}[:app_instance_arn]")
        Validators::AppInstanceRetentionSettings.validate!(input[:app_instance_retention_settings], context: "#{context}[:app_instance_retention_settings]") unless input[:app_instance_retention_settings].nil?
      end
    end

    class PutAppInstanceRetentionSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutAppInstanceRetentionSettingsOutput, context: context)
        Validators::AppInstanceRetentionSettings.validate!(input[:app_instance_retention_settings], context: "#{context}[:app_instance_retention_settings]") unless input[:app_instance_retention_settings].nil?
        Hearth::Validator.validate!(input[:initiate_deletion_timestamp], ::Time, context: "#{context}[:initiate_deletion_timestamp]")
      end
    end

    class RegisterAppInstanceUserEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterAppInstanceUserEndpointInput, context: context)
        Hearth::Validator.validate!(input[:app_instance_user_arn], ::String, context: "#{context}[:app_instance_user_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::EndpointAttributes.validate!(input[:endpoint_attributes], context: "#{context}[:endpoint_attributes]") unless input[:endpoint_attributes].nil?
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:allow_messages], ::String, context: "#{context}[:allow_messages]")
      end
    end

    class RegisterAppInstanceUserEndpointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterAppInstanceUserEndpointOutput, context: context)
        Hearth::Validator.validate!(input[:app_instance_user_arn], ::String, context: "#{context}[:app_instance_user_arn]")
        Hearth::Validator.validate!(input[:endpoint_id], ::String, context: "#{context}[:endpoint_id]")
      end
    end

    class ResourceLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ServiceFailureException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceFailureException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ServiceUnavailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceUnavailableException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
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

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class ThrottledClientException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottledClientException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UnauthorizedClientException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnauthorizedClientException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateAppInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAppInstanceInput, context: context)
        Hearth::Validator.validate!(input[:app_instance_arn], ::String, context: "#{context}[:app_instance_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:metadata], ::String, context: "#{context}[:metadata]")
      end
    end

    class UpdateAppInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAppInstanceOutput, context: context)
        Hearth::Validator.validate!(input[:app_instance_arn], ::String, context: "#{context}[:app_instance_arn]")
      end
    end

    class UpdateAppInstanceUserEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAppInstanceUserEndpointInput, context: context)
        Hearth::Validator.validate!(input[:app_instance_user_arn], ::String, context: "#{context}[:app_instance_user_arn]")
        Hearth::Validator.validate!(input[:endpoint_id], ::String, context: "#{context}[:endpoint_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:allow_messages], ::String, context: "#{context}[:allow_messages]")
      end
    end

    class UpdateAppInstanceUserEndpointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAppInstanceUserEndpointOutput, context: context)
        Hearth::Validator.validate!(input[:app_instance_user_arn], ::String, context: "#{context}[:app_instance_user_arn]")
        Hearth::Validator.validate!(input[:endpoint_id], ::String, context: "#{context}[:endpoint_id]")
      end
    end

    class UpdateAppInstanceUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAppInstanceUserInput, context: context)
        Hearth::Validator.validate!(input[:app_instance_user_arn], ::String, context: "#{context}[:app_instance_user_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:metadata], ::String, context: "#{context}[:metadata]")
      end
    end

    class UpdateAppInstanceUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAppInstanceUserOutput, context: context)
        Hearth::Validator.validate!(input[:app_instance_user_arn], ::String, context: "#{context}[:app_instance_user_arn]")
      end
    end

  end
end
