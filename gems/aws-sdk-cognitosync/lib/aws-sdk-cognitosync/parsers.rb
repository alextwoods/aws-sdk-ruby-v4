# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CognitoSync
  module Parsers

    # Operation Parser for BulkPublish
    class BulkPublish
      def self.parse(http_resp)
        data = Types::BulkPublishOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.identity_pool_id = map['IdentityPoolId']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for DuplicateRequestException
    class DuplicateRequestException
      def self.parse(http_resp)
        data = Types::DuplicateRequestException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for NotAuthorizedException
    class NotAuthorizedException
      def self.parse(http_resp)
        data = Types::NotAuthorizedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for AlreadyStreamedException
    class AlreadyStreamedException
      def self.parse(http_resp)
        data = Types::AlreadyStreamedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InvalidParameterException
    class InvalidParameterException
      def self.parse(http_resp)
        data = Types::InvalidParameterException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InternalErrorException
    class InternalErrorException
      def self.parse(http_resp)
        data = Types::InternalErrorException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for DeleteDataset
    class DeleteDataset
      def self.parse(http_resp)
        data = Types::DeleteDatasetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.dataset = (Dataset.parse(map['Dataset']) unless map['Dataset'].nil?)
        data
      end
    end

    class Dataset
      def self.parse(map)
        data = Types::Dataset.new
        data.identity_id = map['IdentityId']
        data.dataset_name = map['DatasetName']
        data.creation_date = Time.at(map['CreationDate'].to_i) if map['CreationDate']
        data.last_modified_date = Time.at(map['LastModifiedDate'].to_i) if map['LastModifiedDate']
        data.last_modified_by = map['LastModifiedBy']
        data.data_storage = map['DataStorage']
        data.num_records = map['NumRecords']
        return data
      end
    end

    # Error Parser for TooManyRequestsException
    class TooManyRequestsException
      def self.parse(http_resp)
        data = Types::TooManyRequestsException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ResourceConflictException
    class ResourceConflictException
      def self.parse(http_resp)
        data = Types::ResourceConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for DescribeDataset
    class DescribeDataset
      def self.parse(http_resp)
        data = Types::DescribeDatasetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.dataset = (Dataset.parse(map['Dataset']) unless map['Dataset'].nil?)
        data
      end
    end

    # Operation Parser for DescribeIdentityPoolUsage
    class DescribeIdentityPoolUsage
      def self.parse(http_resp)
        data = Types::DescribeIdentityPoolUsageOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.identity_pool_usage = (IdentityPoolUsage.parse(map['IdentityPoolUsage']) unless map['IdentityPoolUsage'].nil?)
        data
      end
    end

    class IdentityPoolUsage
      def self.parse(map)
        data = Types::IdentityPoolUsage.new
        data.identity_pool_id = map['IdentityPoolId']
        data.sync_sessions_count = map['SyncSessionsCount']
        data.data_storage = map['DataStorage']
        data.last_modified_date = Time.at(map['LastModifiedDate'].to_i) if map['LastModifiedDate']
        return data
      end
    end

    # Operation Parser for DescribeIdentityUsage
    class DescribeIdentityUsage
      def self.parse(http_resp)
        data = Types::DescribeIdentityUsageOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.identity_usage = (IdentityUsage.parse(map['IdentityUsage']) unless map['IdentityUsage'].nil?)
        data
      end
    end

    class IdentityUsage
      def self.parse(map)
        data = Types::IdentityUsage.new
        data.identity_id = map['IdentityId']
        data.identity_pool_id = map['IdentityPoolId']
        data.last_modified_date = Time.at(map['LastModifiedDate'].to_i) if map['LastModifiedDate']
        data.dataset_count = map['DatasetCount']
        data.data_storage = map['DataStorage']
        return data
      end
    end

    # Operation Parser for GetBulkPublishDetails
    class GetBulkPublishDetails
      def self.parse(http_resp)
        data = Types::GetBulkPublishDetailsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.identity_pool_id = map['IdentityPoolId']
        data.bulk_publish_start_time = Time.at(map['BulkPublishStartTime'].to_i) if map['BulkPublishStartTime']
        data.bulk_publish_complete_time = Time.at(map['BulkPublishCompleteTime'].to_i) if map['BulkPublishCompleteTime']
        data.bulk_publish_status = map['BulkPublishStatus']
        data.failure_message = map['FailureMessage']
        data
      end
    end

    # Operation Parser for GetCognitoEvents
    class GetCognitoEvents
      def self.parse(http_resp)
        data = Types::GetCognitoEventsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.events = (Events.parse(map['Events']) unless map['Events'].nil?)
        data
      end
    end

    class Events
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetIdentityPoolConfiguration
    class GetIdentityPoolConfiguration
      def self.parse(http_resp)
        data = Types::GetIdentityPoolConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.identity_pool_id = map['IdentityPoolId']
        data.push_sync = (PushSync.parse(map['PushSync']) unless map['PushSync'].nil?)
        data.cognito_streams = (CognitoStreams.parse(map['CognitoStreams']) unless map['CognitoStreams'].nil?)
        data
      end
    end

    class CognitoStreams
      def self.parse(map)
        data = Types::CognitoStreams.new
        data.stream_name = map['StreamName']
        data.role_arn = map['RoleArn']
        data.streaming_status = map['StreamingStatus']
        return data
      end
    end

    class PushSync
      def self.parse(map)
        data = Types::PushSync.new
        data.application_arns = (ApplicationArnList.parse(map['ApplicationArns']) unless map['ApplicationArns'].nil?)
        data.role_arn = map['RoleArn']
        return data
      end
    end

    class ApplicationArnList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListDatasets
    class ListDatasets
      def self.parse(http_resp)
        data = Types::ListDatasetsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.datasets = (DatasetList.parse(map['Datasets']) unless map['Datasets'].nil?)
        data.count = map['Count']
        data.next_token = map['NextToken']
        data
      end
    end

    class DatasetList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Dataset.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListIdentityPoolUsage
    class ListIdentityPoolUsage
      def self.parse(http_resp)
        data = Types::ListIdentityPoolUsageOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.identity_pool_usages = (IdentityPoolUsageList.parse(map['IdentityPoolUsages']) unless map['IdentityPoolUsages'].nil?)
        data.max_results = map['MaxResults']
        data.count = map['Count']
        data.next_token = map['NextToken']
        data
      end
    end

    class IdentityPoolUsageList
      def self.parse(list)
        data = []
        list.map do |value|
          data << IdentityPoolUsage.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListRecords
    class ListRecords
      def self.parse(http_resp)
        data = Types::ListRecordsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.records = (RecordList.parse(map['Records']) unless map['Records'].nil?)
        data.next_token = map['NextToken']
        data.count = map['Count']
        data.dataset_sync_count = map['DatasetSyncCount']
        data.last_modified_by = map['LastModifiedBy']
        data.merged_dataset_names = (MergedDatasetNameList.parse(map['MergedDatasetNames']) unless map['MergedDatasetNames'].nil?)
        data.dataset_exists = map['DatasetExists']
        data.dataset_deleted_after_requested_sync_count = map['DatasetDeletedAfterRequestedSyncCount']
        data.sync_session_token = map['SyncSessionToken']
        data
      end
    end

    class MergedDatasetNameList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class RecordList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Record.parse(value) unless value.nil?
        end
        data
      end
    end

    class Record
      def self.parse(map)
        data = Types::Record.new
        data.key = map['Key']
        data.value = map['Value']
        data.sync_count = map['SyncCount']
        data.last_modified_date = Time.at(map['LastModifiedDate'].to_i) if map['LastModifiedDate']
        data.last_modified_by = map['LastModifiedBy']
        data.device_last_modified_date = Time.at(map['DeviceLastModifiedDate'].to_i) if map['DeviceLastModifiedDate']
        return data
      end
    end

    # Operation Parser for RegisterDevice
    class RegisterDevice
      def self.parse(http_resp)
        data = Types::RegisterDeviceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.device_id = map['DeviceId']
        data
      end
    end

    # Error Parser for InvalidConfigurationException
    class InvalidConfigurationException
      def self.parse(http_resp)
        data = Types::InvalidConfigurationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for SetCognitoEvents
    class SetCognitoEvents
      def self.parse(http_resp)
        data = Types::SetCognitoEventsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for SetIdentityPoolConfiguration
    class SetIdentityPoolConfiguration
      def self.parse(http_resp)
        data = Types::SetIdentityPoolConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.identity_pool_id = map['IdentityPoolId']
        data.push_sync = (PushSync.parse(map['PushSync']) unless map['PushSync'].nil?)
        data.cognito_streams = (CognitoStreams.parse(map['CognitoStreams']) unless map['CognitoStreams'].nil?)
        data
      end
    end

    # Error Parser for ConcurrentModificationException
    class ConcurrentModificationException
      def self.parse(http_resp)
        data = Types::ConcurrentModificationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for SubscribeToDataset
    class SubscribeToDataset
      def self.parse(http_resp)
        data = Types::SubscribeToDatasetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UnsubscribeFromDataset
    class UnsubscribeFromDataset
      def self.parse(http_resp)
        data = Types::UnsubscribeFromDatasetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateRecords
    class UpdateRecords
      def self.parse(http_resp)
        data = Types::UpdateRecordsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.records = (RecordList.parse(map['Records']) unless map['Records'].nil?)
        data
      end
    end

    # Error Parser for LambdaThrottledException
    class LambdaThrottledException
      def self.parse(http_resp)
        data = Types::LambdaThrottledException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InvalidLambdaFunctionOutputException
    class InvalidLambdaFunctionOutputException
      def self.parse(http_resp)
        data = Types::InvalidLambdaFunctionOutputException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end
  end
end
