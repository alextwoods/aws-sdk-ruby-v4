# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::ChimeSDKIdentity
  module Builders

    # Operation Builder for CreateAppInstance
    class CreateAppInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/app-instances')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Metadata'] = input[:metadata] unless input[:metadata].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for CreateAppInstanceAdmin
    class CreateAppInstanceAdmin
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:app_instance_arn].to_s.empty?
          raise ArgumentError, "HTTP label :app_instance_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/app-instances/%<AppInstanceArn>s/admins',
            AppInstanceArn: Hearth::HTTP.uri_escape(input[:app_instance_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AppInstanceAdminArn'] = input[:app_instance_admin_arn] unless input[:app_instance_admin_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateAppInstanceUser
    class CreateAppInstanceUser
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/app-instance-users')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AppInstanceArn'] = input[:app_instance_arn] unless input[:app_instance_arn].nil?
        data['AppInstanceUserId'] = input[:app_instance_user_id] unless input[:app_instance_user_id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Metadata'] = input[:metadata] unless input[:metadata].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteAppInstance
    class DeleteAppInstance
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:app_instance_arn].to_s.empty?
          raise ArgumentError, "HTTP label :app_instance_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/app-instances/%<AppInstanceArn>s',
            AppInstanceArn: Hearth::HTTP.uri_escape(input[:app_instance_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteAppInstanceAdmin
    class DeleteAppInstanceAdmin
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:app_instance_admin_arn].to_s.empty?
          raise ArgumentError, "HTTP label :app_instance_admin_arn cannot be nil or empty."
        end
        if input[:app_instance_arn].to_s.empty?
          raise ArgumentError, "HTTP label :app_instance_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/app-instances/%<AppInstanceArn>s/admins/%<AppInstanceAdminArn>s',
            AppInstanceAdminArn: Hearth::HTTP.uri_escape(input[:app_instance_admin_arn].to_s),
            AppInstanceArn: Hearth::HTTP.uri_escape(input[:app_instance_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteAppInstanceUser
    class DeleteAppInstanceUser
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:app_instance_user_arn].to_s.empty?
          raise ArgumentError, "HTTP label :app_instance_user_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/app-instance-users/%<AppInstanceUserArn>s',
            AppInstanceUserArn: Hearth::HTTP.uri_escape(input[:app_instance_user_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeregisterAppInstanceUserEndpoint
    class DeregisterAppInstanceUserEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:app_instance_user_arn].to_s.empty?
          raise ArgumentError, "HTTP label :app_instance_user_arn cannot be nil or empty."
        end
        if input[:endpoint_id].to_s.empty?
          raise ArgumentError, "HTTP label :endpoint_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/app-instance-users/%<AppInstanceUserArn>s/endpoints/%<EndpointId>s',
            AppInstanceUserArn: Hearth::HTTP.uri_escape(input[:app_instance_user_arn].to_s),
            EndpointId: Hearth::HTTP.uri_escape(input[:endpoint_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeAppInstance
    class DescribeAppInstance
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:app_instance_arn].to_s.empty?
          raise ArgumentError, "HTTP label :app_instance_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/app-instances/%<AppInstanceArn>s',
            AppInstanceArn: Hearth::HTTP.uri_escape(input[:app_instance_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeAppInstanceAdmin
    class DescribeAppInstanceAdmin
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:app_instance_admin_arn].to_s.empty?
          raise ArgumentError, "HTTP label :app_instance_admin_arn cannot be nil or empty."
        end
        if input[:app_instance_arn].to_s.empty?
          raise ArgumentError, "HTTP label :app_instance_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/app-instances/%<AppInstanceArn>s/admins/%<AppInstanceAdminArn>s',
            AppInstanceAdminArn: Hearth::HTTP.uri_escape(input[:app_instance_admin_arn].to_s),
            AppInstanceArn: Hearth::HTTP.uri_escape(input[:app_instance_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeAppInstanceUser
    class DescribeAppInstanceUser
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:app_instance_user_arn].to_s.empty?
          raise ArgumentError, "HTTP label :app_instance_user_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/app-instance-users/%<AppInstanceUserArn>s',
            AppInstanceUserArn: Hearth::HTTP.uri_escape(input[:app_instance_user_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeAppInstanceUserEndpoint
    class DescribeAppInstanceUserEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:app_instance_user_arn].to_s.empty?
          raise ArgumentError, "HTTP label :app_instance_user_arn cannot be nil or empty."
        end
        if input[:endpoint_id].to_s.empty?
          raise ArgumentError, "HTTP label :endpoint_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/app-instance-users/%<AppInstanceUserArn>s/endpoints/%<EndpointId>s',
            AppInstanceUserArn: Hearth::HTTP.uri_escape(input[:app_instance_user_arn].to_s),
            EndpointId: Hearth::HTTP.uri_escape(input[:endpoint_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetAppInstanceRetentionSettings
    class GetAppInstanceRetentionSettings
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:app_instance_arn].to_s.empty?
          raise ArgumentError, "HTTP label :app_instance_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/app-instances/%<AppInstanceArn>s/retention-settings',
            AppInstanceArn: Hearth::HTTP.uri_escape(input[:app_instance_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListAppInstanceAdmins
    class ListAppInstanceAdmins
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:app_instance_arn].to_s.empty?
          raise ArgumentError, "HTTP label :app_instance_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/app-instances/%<AppInstanceArn>s/admins',
            AppInstanceArn: Hearth::HTTP.uri_escape(input[:app_instance_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListAppInstanceUserEndpoints
    class ListAppInstanceUserEndpoints
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:app_instance_user_arn].to_s.empty?
          raise ArgumentError, "HTTP label :app_instance_user_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/app-instance-users/%<AppInstanceUserArn>s/endpoints',
            AppInstanceUserArn: Hearth::HTTP.uri_escape(input[:app_instance_user_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListAppInstanceUsers
    class ListAppInstanceUsers
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/app-instance-users')
        params = Hearth::Query::ParamList.new
        params['app-instance-arn'] = input[:app_instance_arn].to_s unless input[:app_instance_arn].nil?
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListAppInstances
    class ListAppInstances
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/app-instances')
        params = Hearth::Query::ParamList.new
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/tags')
        params = Hearth::Query::ParamList.new
        params['arn'] = input[:resource_arn].to_s unless input[:resource_arn].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for PutAppInstanceRetentionSettings
    class PutAppInstanceRetentionSettings
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:app_instance_arn].to_s.empty?
          raise ArgumentError, "HTTP label :app_instance_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/app-instances/%<AppInstanceArn>s/retention-settings',
            AppInstanceArn: Hearth::HTTP.uri_escape(input[:app_instance_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AppInstanceRetentionSettings'] = AppInstanceRetentionSettings.build(input[:app_instance_retention_settings]) unless input[:app_instance_retention_settings].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for AppInstanceRetentionSettings
    class AppInstanceRetentionSettings
      def self.build(input)
        data = {}
        data['ChannelRetentionSettings'] = ChannelRetentionSettings.build(input[:channel_retention_settings]) unless input[:channel_retention_settings].nil?
        data
      end
    end

    # Structure Builder for ChannelRetentionSettings
    class ChannelRetentionSettings
      def self.build(input)
        data = {}
        data['RetentionDays'] = input[:retention_days] unless input[:retention_days].nil?
        data
      end
    end

    # Operation Builder for RegisterAppInstanceUserEndpoint
    class RegisterAppInstanceUserEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:app_instance_user_arn].to_s.empty?
          raise ArgumentError, "HTTP label :app_instance_user_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/app-instance-users/%<AppInstanceUserArn>s/endpoints',
            AppInstanceUserArn: Hearth::HTTP.uri_escape(input[:app_instance_user_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['EndpointAttributes'] = EndpointAttributes.build(input[:endpoint_attributes]) unless input[:endpoint_attributes].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['AllowMessages'] = input[:allow_messages] unless input[:allow_messages].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for EndpointAttributes
    class EndpointAttributes
      def self.build(input)
        data = {}
        data['DeviceToken'] = input[:device_token] unless input[:device_token].nil?
        data['VoipDeviceToken'] = input[:voip_device_token] unless input[:voip_device_token].nil?
        data
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        CGI.parse('operation=tag-resource').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        http_req.append_path('/tags')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        CGI.parse('operation=untag-resource').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        http_req.append_path('/tags')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['TagKeys'] = TagKeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateAppInstance
    class UpdateAppInstance
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:app_instance_arn].to_s.empty?
          raise ArgumentError, "HTTP label :app_instance_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/app-instances/%<AppInstanceArn>s',
            AppInstanceArn: Hearth::HTTP.uri_escape(input[:app_instance_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Metadata'] = input[:metadata] unless input[:metadata].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateAppInstanceUser
    class UpdateAppInstanceUser
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:app_instance_user_arn].to_s.empty?
          raise ArgumentError, "HTTP label :app_instance_user_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/app-instance-users/%<AppInstanceUserArn>s',
            AppInstanceUserArn: Hearth::HTTP.uri_escape(input[:app_instance_user_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Metadata'] = input[:metadata] unless input[:metadata].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateAppInstanceUserEndpoint
    class UpdateAppInstanceUserEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:app_instance_user_arn].to_s.empty?
          raise ArgumentError, "HTTP label :app_instance_user_arn cannot be nil or empty."
        end
        if input[:endpoint_id].to_s.empty?
          raise ArgumentError, "HTTP label :endpoint_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/app-instance-users/%<AppInstanceUserArn>s/endpoints/%<EndpointId>s',
            AppInstanceUserArn: Hearth::HTTP.uri_escape(input[:app_instance_user_arn].to_s),
            EndpointId: Hearth::HTTP.uri_escape(input[:endpoint_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['AllowMessages'] = input[:allow_messages] unless input[:allow_messages].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
