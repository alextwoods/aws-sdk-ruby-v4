# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ChimeSDKIdentity
  module Stubs

    # Operation Stubber for CreateAppInstance
    class CreateAppInstance
      def self.default(visited=[])
        {
          app_instance_arn: 'app_instance_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['AppInstanceArn'] = stub[:app_instance_arn] unless stub[:app_instance_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateAppInstanceAdmin
    class CreateAppInstanceAdmin
      def self.default(visited=[])
        {
          app_instance_admin: Identity.default(visited),
          app_instance_arn: 'app_instance_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['AppInstanceAdmin'] = Stubs::Identity.stub(stub[:app_instance_admin]) unless stub[:app_instance_admin].nil?
        data['AppInstanceArn'] = stub[:app_instance_arn] unless stub[:app_instance_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Identity
    class Identity
      def self.default(visited=[])
        return nil if visited.include?('Identity')
        visited = visited + ['Identity']
        {
          arn: 'arn',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::Identity.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Operation Stubber for CreateAppInstanceUser
    class CreateAppInstanceUser
      def self.default(visited=[])
        {
          app_instance_user_arn: 'app_instance_user_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['AppInstanceUserArn'] = stub[:app_instance_user_arn] unless stub[:app_instance_user_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteAppInstance
    class DeleteAppInstance
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteAppInstanceAdmin
    class DeleteAppInstanceAdmin
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteAppInstanceUser
    class DeleteAppInstanceUser
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeregisterAppInstanceUserEndpoint
    class DeregisterAppInstanceUserEndpoint
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DescribeAppInstance
    class DescribeAppInstance
      def self.default(visited=[])
        {
          app_instance: AppInstance.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AppInstance'] = Stubs::AppInstance.stub(stub[:app_instance]) unless stub[:app_instance].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for AppInstance
    class AppInstance
      def self.default(visited=[])
        return nil if visited.include?('AppInstance')
        visited = visited + ['AppInstance']
        {
          app_instance_arn: 'app_instance_arn',
          name: 'name',
          created_timestamp: Time.now,
          last_updated_timestamp: Time.now,
          metadata: 'metadata',
        }
      end

      def self.stub(stub)
        stub ||= Types::AppInstance.new
        data = {}
        data['AppInstanceArn'] = stub[:app_instance_arn] unless stub[:app_instance_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['CreatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_timestamp]).to_i unless stub[:created_timestamp].nil?
        data['LastUpdatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_timestamp]).to_i unless stub[:last_updated_timestamp].nil?
        data['Metadata'] = stub[:metadata] unless stub[:metadata].nil?
        data
      end
    end

    # Operation Stubber for DescribeAppInstanceAdmin
    class DescribeAppInstanceAdmin
      def self.default(visited=[])
        {
          app_instance_admin: AppInstanceAdmin.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AppInstanceAdmin'] = Stubs::AppInstanceAdmin.stub(stub[:app_instance_admin]) unless stub[:app_instance_admin].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for AppInstanceAdmin
    class AppInstanceAdmin
      def self.default(visited=[])
        return nil if visited.include?('AppInstanceAdmin')
        visited = visited + ['AppInstanceAdmin']
        {
          admin: Identity.default(visited),
          app_instance_arn: 'app_instance_arn',
          created_timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::AppInstanceAdmin.new
        data = {}
        data['Admin'] = Stubs::Identity.stub(stub[:admin]) unless stub[:admin].nil?
        data['AppInstanceArn'] = stub[:app_instance_arn] unless stub[:app_instance_arn].nil?
        data['CreatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_timestamp]).to_i unless stub[:created_timestamp].nil?
        data
      end
    end

    # Operation Stubber for DescribeAppInstanceUser
    class DescribeAppInstanceUser
      def self.default(visited=[])
        {
          app_instance_user: AppInstanceUser.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AppInstanceUser'] = Stubs::AppInstanceUser.stub(stub[:app_instance_user]) unless stub[:app_instance_user].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for AppInstanceUser
    class AppInstanceUser
      def self.default(visited=[])
        return nil if visited.include?('AppInstanceUser')
        visited = visited + ['AppInstanceUser']
        {
          app_instance_user_arn: 'app_instance_user_arn',
          name: 'name',
          metadata: 'metadata',
          created_timestamp: Time.now,
          last_updated_timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::AppInstanceUser.new
        data = {}
        data['AppInstanceUserArn'] = stub[:app_instance_user_arn] unless stub[:app_instance_user_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Metadata'] = stub[:metadata] unless stub[:metadata].nil?
        data['CreatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_timestamp]).to_i unless stub[:created_timestamp].nil?
        data['LastUpdatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_timestamp]).to_i unless stub[:last_updated_timestamp].nil?
        data
      end
    end

    # Operation Stubber for DescribeAppInstanceUserEndpoint
    class DescribeAppInstanceUserEndpoint
      def self.default(visited=[])
        {
          app_instance_user_endpoint: AppInstanceUserEndpoint.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AppInstanceUserEndpoint'] = Stubs::AppInstanceUserEndpoint.stub(stub[:app_instance_user_endpoint]) unless stub[:app_instance_user_endpoint].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for AppInstanceUserEndpoint
    class AppInstanceUserEndpoint
      def self.default(visited=[])
        return nil if visited.include?('AppInstanceUserEndpoint')
        visited = visited + ['AppInstanceUserEndpoint']
        {
          app_instance_user_arn: 'app_instance_user_arn',
          endpoint_id: 'endpoint_id',
          name: 'name',
          type: 'type',
          resource_arn: 'resource_arn',
          endpoint_attributes: EndpointAttributes.default(visited),
          created_timestamp: Time.now,
          last_updated_timestamp: Time.now,
          allow_messages: 'allow_messages',
          endpoint_state: EndpointState.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AppInstanceUserEndpoint.new
        data = {}
        data['AppInstanceUserArn'] = stub[:app_instance_user_arn] unless stub[:app_instance_user_arn].nil?
        data['EndpointId'] = stub[:endpoint_id] unless stub[:endpoint_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['ResourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['EndpointAttributes'] = Stubs::EndpointAttributes.stub(stub[:endpoint_attributes]) unless stub[:endpoint_attributes].nil?
        data['CreatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_timestamp]).to_i unless stub[:created_timestamp].nil?
        data['LastUpdatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_timestamp]).to_i unless stub[:last_updated_timestamp].nil?
        data['AllowMessages'] = stub[:allow_messages] unless stub[:allow_messages].nil?
        data['EndpointState'] = Stubs::EndpointState.stub(stub[:endpoint_state]) unless stub[:endpoint_state].nil?
        data
      end
    end

    # Structure Stubber for EndpointState
    class EndpointState
      def self.default(visited=[])
        return nil if visited.include?('EndpointState')
        visited = visited + ['EndpointState']
        {
          status: 'status',
          status_reason: 'status_reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::EndpointState.new
        data = {}
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusReason'] = stub[:status_reason] unless stub[:status_reason].nil?
        data
      end
    end

    # Structure Stubber for EndpointAttributes
    class EndpointAttributes
      def self.default(visited=[])
        return nil if visited.include?('EndpointAttributes')
        visited = visited + ['EndpointAttributes']
        {
          device_token: 'device_token',
          voip_device_token: 'voip_device_token',
        }
      end

      def self.stub(stub)
        stub ||= Types::EndpointAttributes.new
        data = {}
        data['DeviceToken'] = stub[:device_token] unless stub[:device_token].nil?
        data['VoipDeviceToken'] = stub[:voip_device_token] unless stub[:voip_device_token].nil?
        data
      end
    end

    # Operation Stubber for GetAppInstanceRetentionSettings
    class GetAppInstanceRetentionSettings
      def self.default(visited=[])
        {
          app_instance_retention_settings: AppInstanceRetentionSettings.default(visited),
          initiate_deletion_timestamp: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AppInstanceRetentionSettings'] = Stubs::AppInstanceRetentionSettings.stub(stub[:app_instance_retention_settings]) unless stub[:app_instance_retention_settings].nil?
        data['InitiateDeletionTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:initiate_deletion_timestamp]).to_i unless stub[:initiate_deletion_timestamp].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for AppInstanceRetentionSettings
    class AppInstanceRetentionSettings
      def self.default(visited=[])
        return nil if visited.include?('AppInstanceRetentionSettings')
        visited = visited + ['AppInstanceRetentionSettings']
        {
          channel_retention_settings: ChannelRetentionSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AppInstanceRetentionSettings.new
        data = {}
        data['ChannelRetentionSettings'] = Stubs::ChannelRetentionSettings.stub(stub[:channel_retention_settings]) unless stub[:channel_retention_settings].nil?
        data
      end
    end

    # Structure Stubber for ChannelRetentionSettings
    class ChannelRetentionSettings
      def self.default(visited=[])
        return nil if visited.include?('ChannelRetentionSettings')
        visited = visited + ['ChannelRetentionSettings']
        {
          retention_days: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ChannelRetentionSettings.new
        data = {}
        data['RetentionDays'] = stub[:retention_days] unless stub[:retention_days].nil?
        data
      end
    end

    # Operation Stubber for ListAppInstanceAdmins
    class ListAppInstanceAdmins
      def self.default(visited=[])
        {
          app_instance_arn: 'app_instance_arn',
          app_instance_admins: AppInstanceAdminList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AppInstanceArn'] = stub[:app_instance_arn] unless stub[:app_instance_arn].nil?
        data['AppInstanceAdmins'] = Stubs::AppInstanceAdminList.stub(stub[:app_instance_admins]) unless stub[:app_instance_admins].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AppInstanceAdminList
    class AppInstanceAdminList
      def self.default(visited=[])
        return nil if visited.include?('AppInstanceAdminList')
        visited = visited + ['AppInstanceAdminList']
        [
          AppInstanceAdminSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AppInstanceAdminSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AppInstanceAdminSummary
    class AppInstanceAdminSummary
      def self.default(visited=[])
        return nil if visited.include?('AppInstanceAdminSummary')
        visited = visited + ['AppInstanceAdminSummary']
        {
          admin: Identity.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AppInstanceAdminSummary.new
        data = {}
        data['Admin'] = Stubs::Identity.stub(stub[:admin]) unless stub[:admin].nil?
        data
      end
    end

    # Operation Stubber for ListAppInstanceUserEndpoints
    class ListAppInstanceUserEndpoints
      def self.default(visited=[])
        {
          app_instance_user_endpoints: AppInstanceUserEndpointSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AppInstanceUserEndpoints'] = Stubs::AppInstanceUserEndpointSummaryList.stub(stub[:app_instance_user_endpoints]) unless stub[:app_instance_user_endpoints].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AppInstanceUserEndpointSummaryList
    class AppInstanceUserEndpointSummaryList
      def self.default(visited=[])
        return nil if visited.include?('AppInstanceUserEndpointSummaryList')
        visited = visited + ['AppInstanceUserEndpointSummaryList']
        [
          AppInstanceUserEndpointSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AppInstanceUserEndpointSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AppInstanceUserEndpointSummary
    class AppInstanceUserEndpointSummary
      def self.default(visited=[])
        return nil if visited.include?('AppInstanceUserEndpointSummary')
        visited = visited + ['AppInstanceUserEndpointSummary']
        {
          app_instance_user_arn: 'app_instance_user_arn',
          endpoint_id: 'endpoint_id',
          name: 'name',
          type: 'type',
          allow_messages: 'allow_messages',
          endpoint_state: EndpointState.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AppInstanceUserEndpointSummary.new
        data = {}
        data['AppInstanceUserArn'] = stub[:app_instance_user_arn] unless stub[:app_instance_user_arn].nil?
        data['EndpointId'] = stub[:endpoint_id] unless stub[:endpoint_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['AllowMessages'] = stub[:allow_messages] unless stub[:allow_messages].nil?
        data['EndpointState'] = Stubs::EndpointState.stub(stub[:endpoint_state]) unless stub[:endpoint_state].nil?
        data
      end
    end

    # Operation Stubber for ListAppInstanceUsers
    class ListAppInstanceUsers
      def self.default(visited=[])
        {
          app_instance_arn: 'app_instance_arn',
          app_instance_users: AppInstanceUserList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AppInstanceArn'] = stub[:app_instance_arn] unless stub[:app_instance_arn].nil?
        data['AppInstanceUsers'] = Stubs::AppInstanceUserList.stub(stub[:app_instance_users]) unless stub[:app_instance_users].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AppInstanceUserList
    class AppInstanceUserList
      def self.default(visited=[])
        return nil if visited.include?('AppInstanceUserList')
        visited = visited + ['AppInstanceUserList']
        [
          AppInstanceUserSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AppInstanceUserSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AppInstanceUserSummary
    class AppInstanceUserSummary
      def self.default(visited=[])
        return nil if visited.include?('AppInstanceUserSummary')
        visited = visited + ['AppInstanceUserSummary']
        {
          app_instance_user_arn: 'app_instance_user_arn',
          name: 'name',
          metadata: 'metadata',
        }
      end

      def self.stub(stub)
        stub ||= Types::AppInstanceUserSummary.new
        data = {}
        data['AppInstanceUserArn'] = stub[:app_instance_user_arn] unless stub[:app_instance_user_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Metadata'] = stub[:metadata] unless stub[:metadata].nil?
        data
      end
    end

    # Operation Stubber for ListAppInstances
    class ListAppInstances
      def self.default(visited=[])
        {
          app_instances: AppInstanceList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AppInstances'] = Stubs::AppInstanceList.stub(stub[:app_instances]) unless stub[:app_instances].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AppInstanceList
    class AppInstanceList
      def self.default(visited=[])
        return nil if visited.include?('AppInstanceList')
        visited = visited + ['AppInstanceList']
        [
          AppInstanceSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AppInstanceSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AppInstanceSummary
    class AppInstanceSummary
      def self.default(visited=[])
        return nil if visited.include?('AppInstanceSummary')
        visited = visited + ['AppInstanceSummary']
        {
          app_instance_arn: 'app_instance_arn',
          name: 'name',
          metadata: 'metadata',
        }
      end

      def self.stub(stub)
        stub ||= Types::AppInstanceSummary.new
        data = {}
        data['AppInstanceArn'] = stub[:app_instance_arn] unless stub[:app_instance_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Metadata'] = stub[:metadata] unless stub[:metadata].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Tag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Tag
    class Tag
      def self.default(visited=[])
        return nil if visited.include?('Tag')
        visited = visited + ['Tag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Tag.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for PutAppInstanceRetentionSettings
    class PutAppInstanceRetentionSettings
      def self.default(visited=[])
        {
          app_instance_retention_settings: AppInstanceRetentionSettings.default(visited),
          initiate_deletion_timestamp: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AppInstanceRetentionSettings'] = Stubs::AppInstanceRetentionSettings.stub(stub[:app_instance_retention_settings]) unless stub[:app_instance_retention_settings].nil?
        data['InitiateDeletionTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:initiate_deletion_timestamp]).to_i unless stub[:initiate_deletion_timestamp].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for RegisterAppInstanceUserEndpoint
    class RegisterAppInstanceUserEndpoint
      def self.default(visited=[])
        {
          app_instance_user_arn: 'app_instance_user_arn',
          endpoint_id: 'endpoint_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['AppInstanceUserArn'] = stub[:app_instance_user_arn] unless stub[:app_instance_user_arn].nil?
        data['EndpointId'] = stub[:endpoint_id] unless stub[:endpoint_id].nil?
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
        http_resp.status = 204
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
        http_resp.status = 204
      end
    end

    # Operation Stubber for UpdateAppInstance
    class UpdateAppInstance
      def self.default(visited=[])
        {
          app_instance_arn: 'app_instance_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AppInstanceArn'] = stub[:app_instance_arn] unless stub[:app_instance_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateAppInstanceUser
    class UpdateAppInstanceUser
      def self.default(visited=[])
        {
          app_instance_user_arn: 'app_instance_user_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AppInstanceUserArn'] = stub[:app_instance_user_arn] unless stub[:app_instance_user_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateAppInstanceUserEndpoint
    class UpdateAppInstanceUserEndpoint
      def self.default(visited=[])
        {
          app_instance_user_arn: 'app_instance_user_arn',
          endpoint_id: 'endpoint_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AppInstanceUserArn'] = stub[:app_instance_user_arn] unless stub[:app_instance_user_arn].nil?
        data['EndpointId'] = stub[:endpoint_id] unless stub[:endpoint_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
