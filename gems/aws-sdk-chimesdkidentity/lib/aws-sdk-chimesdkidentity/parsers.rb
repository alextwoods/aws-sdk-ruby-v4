# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::ChimeSDKIdentity
  module Parsers

    # Operation Parser for CreateAppInstance
    class CreateAppInstance
      def self.parse(http_resp)
        data = Types::CreateAppInstanceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_instance_arn = map['AppInstanceArn']
        data
      end
    end

    # Error Parser for ThrottledClientException
    class ThrottledClientException
      def self.parse(http_resp)
        data = Types::ThrottledClientException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['Code']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for BadRequestException
    class BadRequestException
      def self.parse(http_resp)
        data = Types::BadRequestException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['Code']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ResourceLimitExceededException
    class ResourceLimitExceededException
      def self.parse(http_resp)
        data = Types::ResourceLimitExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['Code']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ServiceUnavailableException
    class ServiceUnavailableException
      def self.parse(http_resp)
        data = Types::ServiceUnavailableException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['Code']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['Code']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ForbiddenException
    class ForbiddenException
      def self.parse(http_resp)
        data = Types::ForbiddenException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['Code']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for UnauthorizedClientException
    class UnauthorizedClientException
      def self.parse(http_resp)
        data = Types::UnauthorizedClientException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['Code']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ServiceFailureException
    class ServiceFailureException
      def self.parse(http_resp)
        data = Types::ServiceFailureException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['Code']
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateAppInstanceAdmin
    class CreateAppInstanceAdmin
      def self.parse(http_resp)
        data = Types::CreateAppInstanceAdminOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_instance_admin = (Parsers::Identity.parse(map['AppInstanceAdmin']) unless map['AppInstanceAdmin'].nil?)
        data.app_instance_arn = map['AppInstanceArn']
        data
      end
    end

    class Identity
      def self.parse(map)
        data = Types::Identity.new
        data.arn = map['Arn']
        data.name = map['Name']
        return data
      end
    end

    # Operation Parser for CreateAppInstanceUser
    class CreateAppInstanceUser
      def self.parse(http_resp)
        data = Types::CreateAppInstanceUserOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_instance_user_arn = map['AppInstanceUserArn']
        data
      end
    end

    # Operation Parser for DeleteAppInstance
    class DeleteAppInstance
      def self.parse(http_resp)
        data = Types::DeleteAppInstanceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteAppInstanceAdmin
    class DeleteAppInstanceAdmin
      def self.parse(http_resp)
        data = Types::DeleteAppInstanceAdminOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteAppInstanceUser
    class DeleteAppInstanceUser
      def self.parse(http_resp)
        data = Types::DeleteAppInstanceUserOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeregisterAppInstanceUserEndpoint
    class DeregisterAppInstanceUserEndpoint
      def self.parse(http_resp)
        data = Types::DeregisterAppInstanceUserEndpointOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DescribeAppInstance
    class DescribeAppInstance
      def self.parse(http_resp)
        data = Types::DescribeAppInstanceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_instance = (Parsers::AppInstance.parse(map['AppInstance']) unless map['AppInstance'].nil?)
        data
      end
    end

    class AppInstance
      def self.parse(map)
        data = Types::AppInstance.new
        data.app_instance_arn = map['AppInstanceArn']
        data.name = map['Name']
        data.created_timestamp = Time.at(map['CreatedTimestamp'].to_i) if map['CreatedTimestamp']
        data.last_updated_timestamp = Time.at(map['LastUpdatedTimestamp'].to_i) if map['LastUpdatedTimestamp']
        data.metadata = map['Metadata']
        return data
      end
    end

    # Operation Parser for DescribeAppInstanceAdmin
    class DescribeAppInstanceAdmin
      def self.parse(http_resp)
        data = Types::DescribeAppInstanceAdminOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_instance_admin = (Parsers::AppInstanceAdmin.parse(map['AppInstanceAdmin']) unless map['AppInstanceAdmin'].nil?)
        data
      end
    end

    class AppInstanceAdmin
      def self.parse(map)
        data = Types::AppInstanceAdmin.new
        data.admin = (Parsers::Identity.parse(map['Admin']) unless map['Admin'].nil?)
        data.app_instance_arn = map['AppInstanceArn']
        data.created_timestamp = Time.at(map['CreatedTimestamp'].to_i) if map['CreatedTimestamp']
        return data
      end
    end

    # Operation Parser for DescribeAppInstanceUser
    class DescribeAppInstanceUser
      def self.parse(http_resp)
        data = Types::DescribeAppInstanceUserOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_instance_user = (Parsers::AppInstanceUser.parse(map['AppInstanceUser']) unless map['AppInstanceUser'].nil?)
        data
      end
    end

    class AppInstanceUser
      def self.parse(map)
        data = Types::AppInstanceUser.new
        data.app_instance_user_arn = map['AppInstanceUserArn']
        data.name = map['Name']
        data.metadata = map['Metadata']
        data.created_timestamp = Time.at(map['CreatedTimestamp'].to_i) if map['CreatedTimestamp']
        data.last_updated_timestamp = Time.at(map['LastUpdatedTimestamp'].to_i) if map['LastUpdatedTimestamp']
        return data
      end
    end

    # Operation Parser for DescribeAppInstanceUserEndpoint
    class DescribeAppInstanceUserEndpoint
      def self.parse(http_resp)
        data = Types::DescribeAppInstanceUserEndpointOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_instance_user_endpoint = (Parsers::AppInstanceUserEndpoint.parse(map['AppInstanceUserEndpoint']) unless map['AppInstanceUserEndpoint'].nil?)
        data
      end
    end

    class AppInstanceUserEndpoint
      def self.parse(map)
        data = Types::AppInstanceUserEndpoint.new
        data.app_instance_user_arn = map['AppInstanceUserArn']
        data.endpoint_id = map['EndpointId']
        data.name = map['Name']
        data.type = map['Type']
        data.resource_arn = map['ResourceArn']
        data.endpoint_attributes = (Parsers::EndpointAttributes.parse(map['EndpointAttributes']) unless map['EndpointAttributes'].nil?)
        data.created_timestamp = Time.at(map['CreatedTimestamp'].to_i) if map['CreatedTimestamp']
        data.last_updated_timestamp = Time.at(map['LastUpdatedTimestamp'].to_i) if map['LastUpdatedTimestamp']
        data.allow_messages = map['AllowMessages']
        data.endpoint_state = (Parsers::EndpointState.parse(map['EndpointState']) unless map['EndpointState'].nil?)
        return data
      end
    end

    class EndpointState
      def self.parse(map)
        data = Types::EndpointState.new
        data.status = map['Status']
        data.status_reason = map['StatusReason']
        return data
      end
    end

    class EndpointAttributes
      def self.parse(map)
        data = Types::EndpointAttributes.new
        data.device_token = map['DeviceToken']
        data.voip_device_token = map['VoipDeviceToken']
        return data
      end
    end

    # Operation Parser for GetAppInstanceRetentionSettings
    class GetAppInstanceRetentionSettings
      def self.parse(http_resp)
        data = Types::GetAppInstanceRetentionSettingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_instance_retention_settings = (Parsers::AppInstanceRetentionSettings.parse(map['AppInstanceRetentionSettings']) unless map['AppInstanceRetentionSettings'].nil?)
        data.initiate_deletion_timestamp = Time.at(map['InitiateDeletionTimestamp'].to_i) if map['InitiateDeletionTimestamp']
        data
      end
    end

    class AppInstanceRetentionSettings
      def self.parse(map)
        data = Types::AppInstanceRetentionSettings.new
        data.channel_retention_settings = (Parsers::ChannelRetentionSettings.parse(map['ChannelRetentionSettings']) unless map['ChannelRetentionSettings'].nil?)
        return data
      end
    end

    class ChannelRetentionSettings
      def self.parse(map)
        data = Types::ChannelRetentionSettings.new
        data.retention_days = map['RetentionDays']
        return data
      end
    end

    # Operation Parser for ListAppInstanceAdmins
    class ListAppInstanceAdmins
      def self.parse(http_resp)
        data = Types::ListAppInstanceAdminsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_instance_arn = map['AppInstanceArn']
        data.app_instance_admins = (Parsers::AppInstanceAdminList.parse(map['AppInstanceAdmins']) unless map['AppInstanceAdmins'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class AppInstanceAdminList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AppInstanceAdminSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class AppInstanceAdminSummary
      def self.parse(map)
        data = Types::AppInstanceAdminSummary.new
        data.admin = (Parsers::Identity.parse(map['Admin']) unless map['Admin'].nil?)
        return data
      end
    end

    # Operation Parser for ListAppInstanceUserEndpoints
    class ListAppInstanceUserEndpoints
      def self.parse(http_resp)
        data = Types::ListAppInstanceUserEndpointsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_instance_user_endpoints = (Parsers::AppInstanceUserEndpointSummaryList.parse(map['AppInstanceUserEndpoints']) unless map['AppInstanceUserEndpoints'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class AppInstanceUserEndpointSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AppInstanceUserEndpointSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class AppInstanceUserEndpointSummary
      def self.parse(map)
        data = Types::AppInstanceUserEndpointSummary.new
        data.app_instance_user_arn = map['AppInstanceUserArn']
        data.endpoint_id = map['EndpointId']
        data.name = map['Name']
        data.type = map['Type']
        data.allow_messages = map['AllowMessages']
        data.endpoint_state = (Parsers::EndpointState.parse(map['EndpointState']) unless map['EndpointState'].nil?)
        return data
      end
    end

    # Operation Parser for ListAppInstanceUsers
    class ListAppInstanceUsers
      def self.parse(http_resp)
        data = Types::ListAppInstanceUsersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_instance_arn = map['AppInstanceArn']
        data.app_instance_users = (Parsers::AppInstanceUserList.parse(map['AppInstanceUsers']) unless map['AppInstanceUsers'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class AppInstanceUserList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AppInstanceUserSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class AppInstanceUserSummary
      def self.parse(map)
        data = Types::AppInstanceUserSummary.new
        data.app_instance_user_arn = map['AppInstanceUserArn']
        data.name = map['Name']
        data.metadata = map['Metadata']
        return data
      end
    end

    # Operation Parser for ListAppInstances
    class ListAppInstances
      def self.parse(http_resp)
        data = Types::ListAppInstancesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_instances = (Parsers::AppInstanceList.parse(map['AppInstances']) unless map['AppInstances'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class AppInstanceList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AppInstanceSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class AppInstanceSummary
      def self.parse(map)
        data = Types::AppInstanceSummary.new
        data.app_instance_arn = map['AppInstanceArn']
        data.name = map['Name']
        data.metadata = map['Metadata']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    class TagList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Tag.parse(value) unless value.nil?
        end
        data
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.key = map['Key']
        data.value = map['Value']
        return data
      end
    end

    # Operation Parser for PutAppInstanceRetentionSettings
    class PutAppInstanceRetentionSettings
      def self.parse(http_resp)
        data = Types::PutAppInstanceRetentionSettingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_instance_retention_settings = (Parsers::AppInstanceRetentionSettings.parse(map['AppInstanceRetentionSettings']) unless map['AppInstanceRetentionSettings'].nil?)
        data.initiate_deletion_timestamp = Time.at(map['InitiateDeletionTimestamp'].to_i) if map['InitiateDeletionTimestamp']
        data
      end
    end

    # Operation Parser for RegisterAppInstanceUserEndpoint
    class RegisterAppInstanceUserEndpoint
      def self.parse(http_resp)
        data = Types::RegisterAppInstanceUserEndpointOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_instance_user_arn = map['AppInstanceUserArn']
        data.endpoint_id = map['EndpointId']
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

    # Operation Parser for UpdateAppInstance
    class UpdateAppInstance
      def self.parse(http_resp)
        data = Types::UpdateAppInstanceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_instance_arn = map['AppInstanceArn']
        data
      end
    end

    # Operation Parser for UpdateAppInstanceUser
    class UpdateAppInstanceUser
      def self.parse(http_resp)
        data = Types::UpdateAppInstanceUserOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_instance_user_arn = map['AppInstanceUserArn']
        data
      end
    end

    # Operation Parser for UpdateAppInstanceUserEndpoint
    class UpdateAppInstanceUserEndpoint
      def self.parse(http_resp)
        data = Types::UpdateAppInstanceUserEndpointOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_instance_user_arn = map['AppInstanceUserArn']
        data.endpoint_id = map['EndpointId']
        data
      end
    end
  end
end
