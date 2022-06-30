# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CognitoSync
  module Stubs

    # Operation Stubber for BulkPublish
    class BulkPublish
      def self.default(visited=[])
        {
          identity_pool_id: 'identity_pool_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['IdentityPoolId'] = stub[:identity_pool_id] unless stub[:identity_pool_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteDataset
    class DeleteDataset
      def self.default(visited=[])
        {
          dataset: Stubs::Dataset.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Dataset'] = Stubs::Dataset.stub(stub[:dataset]) unless stub[:dataset].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Dataset
    class Dataset
      def self.default(visited=[])
        return nil if visited.include?('Dataset')
        visited = visited + ['Dataset']
        {
          identity_id: 'identity_id',
          dataset_name: 'dataset_name',
          creation_date: Time.now,
          last_modified_date: Time.now,
          last_modified_by: 'last_modified_by',
          data_storage: 1,
          num_records: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Dataset.new
        data = {}
        data['IdentityId'] = stub[:identity_id] unless stub[:identity_id].nil?
        data['DatasetName'] = stub[:dataset_name] unless stub[:dataset_name].nil?
        data['CreationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['LastModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_date]).to_i unless stub[:last_modified_date].nil?
        data['LastModifiedBy'] = stub[:last_modified_by] unless stub[:last_modified_by].nil?
        data['DataStorage'] = stub[:data_storage] unless stub[:data_storage].nil?
        data['NumRecords'] = stub[:num_records] unless stub[:num_records].nil?
        data
      end
    end

    # Operation Stubber for DescribeDataset
    class DescribeDataset
      def self.default(visited=[])
        {
          dataset: Stubs::Dataset.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Dataset'] = Stubs::Dataset.stub(stub[:dataset]) unless stub[:dataset].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeIdentityPoolUsage
    class DescribeIdentityPoolUsage
      def self.default(visited=[])
        {
          identity_pool_usage: Stubs::IdentityPoolUsage.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['IdentityPoolUsage'] = Stubs::IdentityPoolUsage.stub(stub[:identity_pool_usage]) unless stub[:identity_pool_usage].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for IdentityPoolUsage
    class IdentityPoolUsage
      def self.default(visited=[])
        return nil if visited.include?('IdentityPoolUsage')
        visited = visited + ['IdentityPoolUsage']
        {
          identity_pool_id: 'identity_pool_id',
          sync_sessions_count: 1,
          data_storage: 1,
          last_modified_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::IdentityPoolUsage.new
        data = {}
        data['IdentityPoolId'] = stub[:identity_pool_id] unless stub[:identity_pool_id].nil?
        data['SyncSessionsCount'] = stub[:sync_sessions_count] unless stub[:sync_sessions_count].nil?
        data['DataStorage'] = stub[:data_storage] unless stub[:data_storage].nil?
        data['LastModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_date]).to_i unless stub[:last_modified_date].nil?
        data
      end
    end

    # Operation Stubber for DescribeIdentityUsage
    class DescribeIdentityUsage
      def self.default(visited=[])
        {
          identity_usage: Stubs::IdentityUsage.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['IdentityUsage'] = Stubs::IdentityUsage.stub(stub[:identity_usage]) unless stub[:identity_usage].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for IdentityUsage
    class IdentityUsage
      def self.default(visited=[])
        return nil if visited.include?('IdentityUsage')
        visited = visited + ['IdentityUsage']
        {
          identity_id: 'identity_id',
          identity_pool_id: 'identity_pool_id',
          last_modified_date: Time.now,
          dataset_count: 1,
          data_storage: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::IdentityUsage.new
        data = {}
        data['IdentityId'] = stub[:identity_id] unless stub[:identity_id].nil?
        data['IdentityPoolId'] = stub[:identity_pool_id] unless stub[:identity_pool_id].nil?
        data['LastModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_date]).to_i unless stub[:last_modified_date].nil?
        data['DatasetCount'] = stub[:dataset_count] unless stub[:dataset_count].nil?
        data['DataStorage'] = stub[:data_storage] unless stub[:data_storage].nil?
        data
      end
    end

    # Operation Stubber for GetBulkPublishDetails
    class GetBulkPublishDetails
      def self.default(visited=[])
        {
          identity_pool_id: 'identity_pool_id',
          bulk_publish_start_time: Time.now,
          bulk_publish_complete_time: Time.now,
          bulk_publish_status: 'bulk_publish_status',
          failure_message: 'failure_message',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['IdentityPoolId'] = stub[:identity_pool_id] unless stub[:identity_pool_id].nil?
        data['BulkPublishStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:bulk_publish_start_time]).to_i unless stub[:bulk_publish_start_time].nil?
        data['BulkPublishCompleteTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:bulk_publish_complete_time]).to_i unless stub[:bulk_publish_complete_time].nil?
        data['BulkPublishStatus'] = stub[:bulk_publish_status] unless stub[:bulk_publish_status].nil?
        data['FailureMessage'] = stub[:failure_message] unless stub[:failure_message].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetCognitoEvents
    class GetCognitoEvents
      def self.default(visited=[])
        {
          events: Stubs::Events.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Events'] = Stubs::Events.stub(stub[:events]) unless stub[:events].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for Events
    class Events
      def self.default(visited=[])
        return nil if visited.include?('Events')
        visited = visited + ['Events']
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

    # Operation Stubber for GetIdentityPoolConfiguration
    class GetIdentityPoolConfiguration
      def self.default(visited=[])
        {
          identity_pool_id: 'identity_pool_id',
          push_sync: Stubs::PushSync.default(visited),
          cognito_streams: Stubs::CognitoStreams.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['IdentityPoolId'] = stub[:identity_pool_id] unless stub[:identity_pool_id].nil?
        data['PushSync'] = Stubs::PushSync.stub(stub[:push_sync]) unless stub[:push_sync].nil?
        data['CognitoStreams'] = Stubs::CognitoStreams.stub(stub[:cognito_streams]) unless stub[:cognito_streams].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for CognitoStreams
    class CognitoStreams
      def self.default(visited=[])
        return nil if visited.include?('CognitoStreams')
        visited = visited + ['CognitoStreams']
        {
          stream_name: 'stream_name',
          role_arn: 'role_arn',
          streaming_status: 'streaming_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::CognitoStreams.new
        data = {}
        data['StreamName'] = stub[:stream_name] unless stub[:stream_name].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['StreamingStatus'] = stub[:streaming_status] unless stub[:streaming_status].nil?
        data
      end
    end

    # Structure Stubber for PushSync
    class PushSync
      def self.default(visited=[])
        return nil if visited.include?('PushSync')
        visited = visited + ['PushSync']
        {
          application_arns: Stubs::ApplicationArnList.default(visited),
          role_arn: 'role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::PushSync.new
        data = {}
        data['ApplicationArns'] = Stubs::ApplicationArnList.stub(stub[:application_arns]) unless stub[:application_arns].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data
      end
    end

    # List Stubber for ApplicationArnList
    class ApplicationArnList
      def self.default(visited=[])
        return nil if visited.include?('ApplicationArnList')
        visited = visited + ['ApplicationArnList']
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

    # Operation Stubber for ListDatasets
    class ListDatasets
      def self.default(visited=[])
        {
          datasets: Stubs::DatasetList.default(visited),
          count: 1,
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Datasets'] = Stubs::DatasetList.stub(stub[:datasets]) unless stub[:datasets].nil?
        data['Count'] = stub[:count] unless stub[:count].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DatasetList
    class DatasetList
      def self.default(visited=[])
        return nil if visited.include?('DatasetList')
        visited = visited + ['DatasetList']
        [
          Stubs::Dataset.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Dataset.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListIdentityPoolUsage
    class ListIdentityPoolUsage
      def self.default(visited=[])
        {
          identity_pool_usages: Stubs::IdentityPoolUsageList.default(visited),
          max_results: 1,
          count: 1,
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['IdentityPoolUsages'] = Stubs::IdentityPoolUsageList.stub(stub[:identity_pool_usages]) unless stub[:identity_pool_usages].nil?
        data['MaxResults'] = stub[:max_results] unless stub[:max_results].nil?
        data['Count'] = stub[:count] unless stub[:count].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for IdentityPoolUsageList
    class IdentityPoolUsageList
      def self.default(visited=[])
        return nil if visited.include?('IdentityPoolUsageList')
        visited = visited + ['IdentityPoolUsageList']
        [
          Stubs::IdentityPoolUsage.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::IdentityPoolUsage.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListRecords
    class ListRecords
      def self.default(visited=[])
        {
          records: Stubs::RecordList.default(visited),
          next_token: 'next_token',
          count: 1,
          dataset_sync_count: 1,
          last_modified_by: 'last_modified_by',
          merged_dataset_names: Stubs::MergedDatasetNameList.default(visited),
          dataset_exists: false,
          dataset_deleted_after_requested_sync_count: false,
          sync_session_token: 'sync_session_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Records'] = Stubs::RecordList.stub(stub[:records]) unless stub[:records].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Count'] = stub[:count] unless stub[:count].nil?
        data['DatasetSyncCount'] = stub[:dataset_sync_count] unless stub[:dataset_sync_count].nil?
        data['LastModifiedBy'] = stub[:last_modified_by] unless stub[:last_modified_by].nil?
        data['MergedDatasetNames'] = Stubs::MergedDatasetNameList.stub(stub[:merged_dataset_names]) unless stub[:merged_dataset_names].nil?
        data['DatasetExists'] = stub[:dataset_exists] unless stub[:dataset_exists].nil?
        data['DatasetDeletedAfterRequestedSyncCount'] = stub[:dataset_deleted_after_requested_sync_count] unless stub[:dataset_deleted_after_requested_sync_count].nil?
        data['SyncSessionToken'] = stub[:sync_session_token] unless stub[:sync_session_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for MergedDatasetNameList
    class MergedDatasetNameList
      def self.default(visited=[])
        return nil if visited.include?('MergedDatasetNameList')
        visited = visited + ['MergedDatasetNameList']
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

    # List Stubber for RecordList
    class RecordList
      def self.default(visited=[])
        return nil if visited.include?('RecordList')
        visited = visited + ['RecordList']
        [
          Stubs::Record.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Record.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Record
    class Record
      def self.default(visited=[])
        return nil if visited.include?('Record')
        visited = visited + ['Record']
        {
          key: 'key',
          value: 'value',
          sync_count: 1,
          last_modified_date: Time.now,
          last_modified_by: 'last_modified_by',
          device_last_modified_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Record.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data['SyncCount'] = stub[:sync_count] unless stub[:sync_count].nil?
        data['LastModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_date]).to_i unless stub[:last_modified_date].nil?
        data['LastModifiedBy'] = stub[:last_modified_by] unless stub[:last_modified_by].nil?
        data['DeviceLastModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:device_last_modified_date]).to_i unless stub[:device_last_modified_date].nil?
        data
      end
    end

    # Operation Stubber for RegisterDevice
    class RegisterDevice
      def self.default(visited=[])
        {
          device_id: 'device_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DeviceId'] = stub[:device_id] unless stub[:device_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for SetCognitoEvents
    class SetCognitoEvents
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for SetIdentityPoolConfiguration
    class SetIdentityPoolConfiguration
      def self.default(visited=[])
        {
          identity_pool_id: 'identity_pool_id',
          push_sync: Stubs::PushSync.default(visited),
          cognito_streams: Stubs::CognitoStreams.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['IdentityPoolId'] = stub[:identity_pool_id] unless stub[:identity_pool_id].nil?
        data['PushSync'] = Stubs::PushSync.stub(stub[:push_sync]) unless stub[:push_sync].nil?
        data['CognitoStreams'] = Stubs::CognitoStreams.stub(stub[:cognito_streams]) unless stub[:cognito_streams].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for SubscribeToDataset
    class SubscribeToDataset
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UnsubscribeFromDataset
    class UnsubscribeFromDataset
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateRecords
    class UpdateRecords
      def self.default(visited=[])
        {
          records: Stubs::RecordList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Records'] = Stubs::RecordList.stub(stub[:records]) unless stub[:records].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
