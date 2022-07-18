# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CognitoSync
  module Builders

    # Operation Builder for BulkPublish
    class BulkPublish
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:identity_pool_id].to_s.empty?
          raise ArgumentError, "HTTP label :identity_pool_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/identitypools/%<IdentityPoolId>s/bulkpublish',
            IdentityPoolId: Hearth::HTTP.uri_escape(input[:identity_pool_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteDataset
    class DeleteDataset
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:identity_pool_id].to_s.empty?
          raise ArgumentError, "HTTP label :identity_pool_id cannot be nil or empty."
        end
        if input[:identity_id].to_s.empty?
          raise ArgumentError, "HTTP label :identity_id cannot be nil or empty."
        end
        if input[:dataset_name].to_s.empty?
          raise ArgumentError, "HTTP label :dataset_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/identitypools/%<IdentityPoolId>s/identities/%<IdentityId>s/datasets/%<DatasetName>s',
            IdentityPoolId: Hearth::HTTP.uri_escape(input[:identity_pool_id].to_s),
            IdentityId: Hearth::HTTP.uri_escape(input[:identity_id].to_s),
            DatasetName: Hearth::HTTP.uri_escape(input[:dataset_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeDataset
    class DescribeDataset
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:identity_pool_id].to_s.empty?
          raise ArgumentError, "HTTP label :identity_pool_id cannot be nil or empty."
        end
        if input[:identity_id].to_s.empty?
          raise ArgumentError, "HTTP label :identity_id cannot be nil or empty."
        end
        if input[:dataset_name].to_s.empty?
          raise ArgumentError, "HTTP label :dataset_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/identitypools/%<IdentityPoolId>s/identities/%<IdentityId>s/datasets/%<DatasetName>s',
            IdentityPoolId: Hearth::HTTP.uri_escape(input[:identity_pool_id].to_s),
            IdentityId: Hearth::HTTP.uri_escape(input[:identity_id].to_s),
            DatasetName: Hearth::HTTP.uri_escape(input[:dataset_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeIdentityPoolUsage
    class DescribeIdentityPoolUsage
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:identity_pool_id].to_s.empty?
          raise ArgumentError, "HTTP label :identity_pool_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/identitypools/%<IdentityPoolId>s',
            IdentityPoolId: Hearth::HTTP.uri_escape(input[:identity_pool_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeIdentityUsage
    class DescribeIdentityUsage
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:identity_pool_id].to_s.empty?
          raise ArgumentError, "HTTP label :identity_pool_id cannot be nil or empty."
        end
        if input[:identity_id].to_s.empty?
          raise ArgumentError, "HTTP label :identity_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/identitypools/%<IdentityPoolId>s/identities/%<IdentityId>s',
            IdentityPoolId: Hearth::HTTP.uri_escape(input[:identity_pool_id].to_s),
            IdentityId: Hearth::HTTP.uri_escape(input[:identity_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetBulkPublishDetails
    class GetBulkPublishDetails
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:identity_pool_id].to_s.empty?
          raise ArgumentError, "HTTP label :identity_pool_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/identitypools/%<IdentityPoolId>s/getBulkPublishDetails',
            IdentityPoolId: Hearth::HTTP.uri_escape(input[:identity_pool_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetCognitoEvents
    class GetCognitoEvents
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:identity_pool_id].to_s.empty?
          raise ArgumentError, "HTTP label :identity_pool_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/identitypools/%<IdentityPoolId>s/events',
            IdentityPoolId: Hearth::HTTP.uri_escape(input[:identity_pool_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetIdentityPoolConfiguration
    class GetIdentityPoolConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:identity_pool_id].to_s.empty?
          raise ArgumentError, "HTTP label :identity_pool_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/identitypools/%<IdentityPoolId>s/configuration',
            IdentityPoolId: Hearth::HTTP.uri_escape(input[:identity_pool_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListDatasets
    class ListDatasets
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:identity_pool_id].to_s.empty?
          raise ArgumentError, "HTTP label :identity_pool_id cannot be nil or empty."
        end
        if input[:identity_id].to_s.empty?
          raise ArgumentError, "HTTP label :identity_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/identitypools/%<IdentityPoolId>s/identities/%<IdentityId>s/datasets',
            IdentityPoolId: Hearth::HTTP.uri_escape(input[:identity_pool_id].to_s),
            IdentityId: Hearth::HTTP.uri_escape(input[:identity_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListIdentityPoolUsage
    class ListIdentityPoolUsage
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/identitypools')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListRecords
    class ListRecords
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:identity_pool_id].to_s.empty?
          raise ArgumentError, "HTTP label :identity_pool_id cannot be nil or empty."
        end
        if input[:identity_id].to_s.empty?
          raise ArgumentError, "HTTP label :identity_id cannot be nil or empty."
        end
        if input[:dataset_name].to_s.empty?
          raise ArgumentError, "HTTP label :dataset_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/identitypools/%<IdentityPoolId>s/identities/%<IdentityId>s/datasets/%<DatasetName>s/records',
            IdentityPoolId: Hearth::HTTP.uri_escape(input[:identity_pool_id].to_s),
            IdentityId: Hearth::HTTP.uri_escape(input[:identity_id].to_s),
            DatasetName: Hearth::HTTP.uri_escape(input[:dataset_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['lastSyncCount'] = input[:last_sync_count].to_s unless input[:last_sync_count].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['syncSessionToken'] = input[:sync_session_token].to_s unless input[:sync_session_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for RegisterDevice
    class RegisterDevice
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:identity_pool_id].to_s.empty?
          raise ArgumentError, "HTTP label :identity_pool_id cannot be nil or empty."
        end
        if input[:identity_id].to_s.empty?
          raise ArgumentError, "HTTP label :identity_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/identitypools/%<IdentityPoolId>s/identity/%<IdentityId>s/device',
            IdentityPoolId: Hearth::HTTP.uri_escape(input[:identity_pool_id].to_s),
            IdentityId: Hearth::HTTP.uri_escape(input[:identity_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Platform'] = input[:platform] unless input[:platform].nil?
        data['Token'] = input[:token] unless input[:token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SetCognitoEvents
    class SetCognitoEvents
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:identity_pool_id].to_s.empty?
          raise ArgumentError, "HTTP label :identity_pool_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/identitypools/%<IdentityPoolId>s/events',
            IdentityPoolId: Hearth::HTTP.uri_escape(input[:identity_pool_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Events'] = Builders::Events.build(input[:events]) unless input[:events].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for Events
    class Events
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for SetIdentityPoolConfiguration
    class SetIdentityPoolConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:identity_pool_id].to_s.empty?
          raise ArgumentError, "HTTP label :identity_pool_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/identitypools/%<IdentityPoolId>s/configuration',
            IdentityPoolId: Hearth::HTTP.uri_escape(input[:identity_pool_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['PushSync'] = Builders::PushSync.build(input[:push_sync]) unless input[:push_sync].nil?
        data['CognitoStreams'] = Builders::CognitoStreams.build(input[:cognito_streams]) unless input[:cognito_streams].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for CognitoStreams
    class CognitoStreams
      def self.build(input)
        data = {}
        data['StreamName'] = input[:stream_name] unless input[:stream_name].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['StreamingStatus'] = input[:streaming_status] unless input[:streaming_status].nil?
        data
      end
    end

    # Structure Builder for PushSync
    class PushSync
      def self.build(input)
        data = {}
        data['ApplicationArns'] = Builders::ApplicationArnList.build(input[:application_arns]) unless input[:application_arns].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data
      end
    end

    # List Builder for ApplicationArnList
    class ApplicationArnList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for SubscribeToDataset
    class SubscribeToDataset
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:identity_pool_id].to_s.empty?
          raise ArgumentError, "HTTP label :identity_pool_id cannot be nil or empty."
        end
        if input[:identity_id].to_s.empty?
          raise ArgumentError, "HTTP label :identity_id cannot be nil or empty."
        end
        if input[:dataset_name].to_s.empty?
          raise ArgumentError, "HTTP label :dataset_name cannot be nil or empty."
        end
        if input[:device_id].to_s.empty?
          raise ArgumentError, "HTTP label :device_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/identitypools/%<IdentityPoolId>s/identities/%<IdentityId>s/datasets/%<DatasetName>s/subscriptions/%<DeviceId>s',
            IdentityPoolId: Hearth::HTTP.uri_escape(input[:identity_pool_id].to_s),
            IdentityId: Hearth::HTTP.uri_escape(input[:identity_id].to_s),
            DatasetName: Hearth::HTTP.uri_escape(input[:dataset_name].to_s),
            DeviceId: Hearth::HTTP.uri_escape(input[:device_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for UnsubscribeFromDataset
    class UnsubscribeFromDataset
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:identity_pool_id].to_s.empty?
          raise ArgumentError, "HTTP label :identity_pool_id cannot be nil or empty."
        end
        if input[:identity_id].to_s.empty?
          raise ArgumentError, "HTTP label :identity_id cannot be nil or empty."
        end
        if input[:dataset_name].to_s.empty?
          raise ArgumentError, "HTTP label :dataset_name cannot be nil or empty."
        end
        if input[:device_id].to_s.empty?
          raise ArgumentError, "HTTP label :device_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/identitypools/%<IdentityPoolId>s/identities/%<IdentityId>s/datasets/%<DatasetName>s/subscriptions/%<DeviceId>s',
            IdentityPoolId: Hearth::HTTP.uri_escape(input[:identity_pool_id].to_s),
            IdentityId: Hearth::HTTP.uri_escape(input[:identity_id].to_s),
            DatasetName: Hearth::HTTP.uri_escape(input[:dataset_name].to_s),
            DeviceId: Hearth::HTTP.uri_escape(input[:device_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for UpdateRecords
    class UpdateRecords
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:identity_pool_id].to_s.empty?
          raise ArgumentError, "HTTP label :identity_pool_id cannot be nil or empty."
        end
        if input[:identity_id].to_s.empty?
          raise ArgumentError, "HTTP label :identity_id cannot be nil or empty."
        end
        if input[:dataset_name].to_s.empty?
          raise ArgumentError, "HTTP label :dataset_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/identitypools/%<IdentityPoolId>s/identities/%<IdentityId>s/datasets/%<DatasetName>s',
            IdentityPoolId: Hearth::HTTP.uri_escape(input[:identity_pool_id].to_s),
            IdentityId: Hearth::HTTP.uri_escape(input[:identity_id].to_s),
            DatasetName: Hearth::HTTP.uri_escape(input[:dataset_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['DeviceId'] = input[:device_id] unless input[:device_id].nil?
        data['RecordPatches'] = Builders::RecordPatchList.build(input[:record_patches]) unless input[:record_patches].nil?
        data['SyncSessionToken'] = input[:sync_session_token] unless input[:sync_session_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-Client-Context'] = input[:client_context] unless input[:client_context].nil? || input[:client_context].empty?
      end
    end

    # List Builder for RecordPatchList
    class RecordPatchList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::RecordPatch.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RecordPatch
    class RecordPatch
      def self.build(input)
        data = {}
        data['Op'] = input[:op] unless input[:op].nil?
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data['SyncCount'] = input[:sync_count] unless input[:sync_count].nil?
        data['DeviceLastModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(input[:device_last_modified_date]).to_i unless input[:device_last_modified_date].nil?
        data
      end
    end
  end
end
