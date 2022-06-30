# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CognitoSync
  module Validators

    class AlreadyStreamedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AlreadyStreamedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ApplicationArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class BulkPublishInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BulkPublishInput, context: context)
        Hearth::Validator.validate!(input[:identity_pool_id], ::String, context: "#{context}[:identity_pool_id]")
      end
    end

    class BulkPublishOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BulkPublishOutput, context: context)
        Hearth::Validator.validate!(input[:identity_pool_id], ::String, context: "#{context}[:identity_pool_id]")
      end
    end

    class CognitoStreams
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CognitoStreams, context: context)
        Hearth::Validator.validate!(input[:stream_name], ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:streaming_status], ::String, context: "#{context}[:streaming_status]")
      end
    end

    class ConcurrentModificationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConcurrentModificationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Dataset
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Dataset, context: context)
        Hearth::Validator.validate!(input[:identity_id], ::String, context: "#{context}[:identity_id]")
        Hearth::Validator.validate!(input[:dataset_name], ::String, context: "#{context}[:dataset_name]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:last_modified_date], ::Time, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:last_modified_by], ::String, context: "#{context}[:last_modified_by]")
        Hearth::Validator.validate!(input[:data_storage], ::Integer, context: "#{context}[:data_storage]")
        Hearth::Validator.validate!(input[:num_records], ::Integer, context: "#{context}[:num_records]")
      end
    end

    class DatasetList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Dataset.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeleteDatasetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDatasetInput, context: context)
        Hearth::Validator.validate!(input[:identity_pool_id], ::String, context: "#{context}[:identity_pool_id]")
        Hearth::Validator.validate!(input[:identity_id], ::String, context: "#{context}[:identity_id]")
        Hearth::Validator.validate!(input[:dataset_name], ::String, context: "#{context}[:dataset_name]")
      end
    end

    class DeleteDatasetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDatasetOutput, context: context)
        Validators::Dataset.validate!(input[:dataset], context: "#{context}[:dataset]") unless input[:dataset].nil?
      end
    end

    class DescribeDatasetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDatasetInput, context: context)
        Hearth::Validator.validate!(input[:identity_pool_id], ::String, context: "#{context}[:identity_pool_id]")
        Hearth::Validator.validate!(input[:identity_id], ::String, context: "#{context}[:identity_id]")
        Hearth::Validator.validate!(input[:dataset_name], ::String, context: "#{context}[:dataset_name]")
      end
    end

    class DescribeDatasetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDatasetOutput, context: context)
        Validators::Dataset.validate!(input[:dataset], context: "#{context}[:dataset]") unless input[:dataset].nil?
      end
    end

    class DescribeIdentityPoolUsageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeIdentityPoolUsageInput, context: context)
        Hearth::Validator.validate!(input[:identity_pool_id], ::String, context: "#{context}[:identity_pool_id]")
      end
    end

    class DescribeIdentityPoolUsageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeIdentityPoolUsageOutput, context: context)
        Validators::IdentityPoolUsage.validate!(input[:identity_pool_usage], context: "#{context}[:identity_pool_usage]") unless input[:identity_pool_usage].nil?
      end
    end

    class DescribeIdentityUsageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeIdentityUsageInput, context: context)
        Hearth::Validator.validate!(input[:identity_pool_id], ::String, context: "#{context}[:identity_pool_id]")
        Hearth::Validator.validate!(input[:identity_id], ::String, context: "#{context}[:identity_id]")
      end
    end

    class DescribeIdentityUsageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeIdentityUsageOutput, context: context)
        Validators::IdentityUsage.validate!(input[:identity_usage], context: "#{context}[:identity_usage]") unless input[:identity_usage].nil?
      end
    end

    class DuplicateRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DuplicateRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Events
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class GetBulkPublishDetailsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBulkPublishDetailsInput, context: context)
        Hearth::Validator.validate!(input[:identity_pool_id], ::String, context: "#{context}[:identity_pool_id]")
      end
    end

    class GetBulkPublishDetailsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBulkPublishDetailsOutput, context: context)
        Hearth::Validator.validate!(input[:identity_pool_id], ::String, context: "#{context}[:identity_pool_id]")
        Hearth::Validator.validate!(input[:bulk_publish_start_time], ::Time, context: "#{context}[:bulk_publish_start_time]")
        Hearth::Validator.validate!(input[:bulk_publish_complete_time], ::Time, context: "#{context}[:bulk_publish_complete_time]")
        Hearth::Validator.validate!(input[:bulk_publish_status], ::String, context: "#{context}[:bulk_publish_status]")
        Hearth::Validator.validate!(input[:failure_message], ::String, context: "#{context}[:failure_message]")
      end
    end

    class GetCognitoEventsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCognitoEventsInput, context: context)
        Hearth::Validator.validate!(input[:identity_pool_id], ::String, context: "#{context}[:identity_pool_id]")
      end
    end

    class GetCognitoEventsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCognitoEventsOutput, context: context)
        Validators::Events.validate!(input[:events], context: "#{context}[:events]") unless input[:events].nil?
      end
    end

    class GetIdentityPoolConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetIdentityPoolConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:identity_pool_id], ::String, context: "#{context}[:identity_pool_id]")
      end
    end

    class GetIdentityPoolConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetIdentityPoolConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:identity_pool_id], ::String, context: "#{context}[:identity_pool_id]")
        Validators::PushSync.validate!(input[:push_sync], context: "#{context}[:push_sync]") unless input[:push_sync].nil?
        Validators::CognitoStreams.validate!(input[:cognito_streams], context: "#{context}[:cognito_streams]") unless input[:cognito_streams].nil?
      end
    end

    class IdentityPoolUsage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IdentityPoolUsage, context: context)
        Hearth::Validator.validate!(input[:identity_pool_id], ::String, context: "#{context}[:identity_pool_id]")
        Hearth::Validator.validate!(input[:sync_sessions_count], ::Integer, context: "#{context}[:sync_sessions_count]")
        Hearth::Validator.validate!(input[:data_storage], ::Integer, context: "#{context}[:data_storage]")
        Hearth::Validator.validate!(input[:last_modified_date], ::Time, context: "#{context}[:last_modified_date]")
      end
    end

    class IdentityPoolUsageList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::IdentityPoolUsage.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class IdentityUsage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IdentityUsage, context: context)
        Hearth::Validator.validate!(input[:identity_id], ::String, context: "#{context}[:identity_id]")
        Hearth::Validator.validate!(input[:identity_pool_id], ::String, context: "#{context}[:identity_pool_id]")
        Hearth::Validator.validate!(input[:last_modified_date], ::Time, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:dataset_count], ::Integer, context: "#{context}[:dataset_count]")
        Hearth::Validator.validate!(input[:data_storage], ::Integer, context: "#{context}[:data_storage]")
      end
    end

    class InternalErrorException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalErrorException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidConfigurationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidConfigurationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidLambdaFunctionOutputException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidLambdaFunctionOutputException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidParameterException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidParameterException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LambdaThrottledException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LambdaThrottledException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListDatasetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDatasetsInput, context: context)
        Hearth::Validator.validate!(input[:identity_pool_id], ::String, context: "#{context}[:identity_pool_id]")
        Hearth::Validator.validate!(input[:identity_id], ::String, context: "#{context}[:identity_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListDatasetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDatasetsOutput, context: context)
        Validators::DatasetList.validate!(input[:datasets], context: "#{context}[:datasets]") unless input[:datasets].nil?
        Hearth::Validator.validate!(input[:count], ::Integer, context: "#{context}[:count]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListIdentityPoolUsageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListIdentityPoolUsageInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListIdentityPoolUsageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListIdentityPoolUsageOutput, context: context)
        Validators::IdentityPoolUsageList.validate!(input[:identity_pool_usages], context: "#{context}[:identity_pool_usages]") unless input[:identity_pool_usages].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:count], ::Integer, context: "#{context}[:count]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListRecordsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRecordsInput, context: context)
        Hearth::Validator.validate!(input[:identity_pool_id], ::String, context: "#{context}[:identity_pool_id]")
        Hearth::Validator.validate!(input[:identity_id], ::String, context: "#{context}[:identity_id]")
        Hearth::Validator.validate!(input[:dataset_name], ::String, context: "#{context}[:dataset_name]")
        Hearth::Validator.validate!(input[:last_sync_count], ::Integer, context: "#{context}[:last_sync_count]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:sync_session_token], ::String, context: "#{context}[:sync_session_token]")
      end
    end

    class ListRecordsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRecordsOutput, context: context)
        Validators::RecordList.validate!(input[:records], context: "#{context}[:records]") unless input[:records].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:count], ::Integer, context: "#{context}[:count]")
        Hearth::Validator.validate!(input[:dataset_sync_count], ::Integer, context: "#{context}[:dataset_sync_count]")
        Hearth::Validator.validate!(input[:last_modified_by], ::String, context: "#{context}[:last_modified_by]")
        Validators::MergedDatasetNameList.validate!(input[:merged_dataset_names], context: "#{context}[:merged_dataset_names]") unless input[:merged_dataset_names].nil?
        Hearth::Validator.validate!(input[:dataset_exists], ::TrueClass, ::FalseClass, context: "#{context}[:dataset_exists]")
        Hearth::Validator.validate!(input[:dataset_deleted_after_requested_sync_count], ::TrueClass, ::FalseClass, context: "#{context}[:dataset_deleted_after_requested_sync_count]")
        Hearth::Validator.validate!(input[:sync_session_token], ::String, context: "#{context}[:sync_session_token]")
      end
    end

    class MergedDatasetNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class NotAuthorizedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotAuthorizedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PushSync
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PushSync, context: context)
        Validators::ApplicationArnList.validate!(input[:application_arns], context: "#{context}[:application_arns]") unless input[:application_arns].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class Record
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Record, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:sync_count], ::Integer, context: "#{context}[:sync_count]")
        Hearth::Validator.validate!(input[:last_modified_date], ::Time, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:last_modified_by], ::String, context: "#{context}[:last_modified_by]")
        Hearth::Validator.validate!(input[:device_last_modified_date], ::Time, context: "#{context}[:device_last_modified_date]")
      end
    end

    class RecordList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Record.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RecordPatch
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecordPatch, context: context)
        Hearth::Validator.validate!(input[:op], ::String, context: "#{context}[:op]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:sync_count], ::Integer, context: "#{context}[:sync_count]")
        Hearth::Validator.validate!(input[:device_last_modified_date], ::Time, context: "#{context}[:device_last_modified_date]")
      end
    end

    class RecordPatchList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RecordPatch.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RegisterDeviceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterDeviceInput, context: context)
        Hearth::Validator.validate!(input[:identity_pool_id], ::String, context: "#{context}[:identity_pool_id]")
        Hearth::Validator.validate!(input[:identity_id], ::String, context: "#{context}[:identity_id]")
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
        Hearth::Validator.validate!(input[:token], ::String, context: "#{context}[:token]")
      end
    end

    class RegisterDeviceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterDeviceOutput, context: context)
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
      end
    end

    class ResourceConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SetCognitoEventsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetCognitoEventsInput, context: context)
        Hearth::Validator.validate!(input[:identity_pool_id], ::String, context: "#{context}[:identity_pool_id]")
        Validators::Events.validate!(input[:events], context: "#{context}[:events]") unless input[:events].nil?
      end
    end

    class SetCognitoEventsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetCognitoEventsOutput, context: context)
      end
    end

    class SetIdentityPoolConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetIdentityPoolConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:identity_pool_id], ::String, context: "#{context}[:identity_pool_id]")
        Validators::PushSync.validate!(input[:push_sync], context: "#{context}[:push_sync]") unless input[:push_sync].nil?
        Validators::CognitoStreams.validate!(input[:cognito_streams], context: "#{context}[:cognito_streams]") unless input[:cognito_streams].nil?
      end
    end

    class SetIdentityPoolConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetIdentityPoolConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:identity_pool_id], ::String, context: "#{context}[:identity_pool_id]")
        Validators::PushSync.validate!(input[:push_sync], context: "#{context}[:push_sync]") unless input[:push_sync].nil?
        Validators::CognitoStreams.validate!(input[:cognito_streams], context: "#{context}[:cognito_streams]") unless input[:cognito_streams].nil?
      end
    end

    class SubscribeToDatasetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubscribeToDatasetInput, context: context)
        Hearth::Validator.validate!(input[:identity_pool_id], ::String, context: "#{context}[:identity_pool_id]")
        Hearth::Validator.validate!(input[:identity_id], ::String, context: "#{context}[:identity_id]")
        Hearth::Validator.validate!(input[:dataset_name], ::String, context: "#{context}[:dataset_name]")
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
      end
    end

    class SubscribeToDatasetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubscribeToDatasetOutput, context: context)
      end
    end

    class TooManyRequestsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyRequestsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UnsubscribeFromDatasetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsubscribeFromDatasetInput, context: context)
        Hearth::Validator.validate!(input[:identity_pool_id], ::String, context: "#{context}[:identity_pool_id]")
        Hearth::Validator.validate!(input[:identity_id], ::String, context: "#{context}[:identity_id]")
        Hearth::Validator.validate!(input[:dataset_name], ::String, context: "#{context}[:dataset_name]")
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
      end
    end

    class UnsubscribeFromDatasetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsubscribeFromDatasetOutput, context: context)
      end
    end

    class UpdateRecordsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRecordsInput, context: context)
        Hearth::Validator.validate!(input[:identity_pool_id], ::String, context: "#{context}[:identity_pool_id]")
        Hearth::Validator.validate!(input[:identity_id], ::String, context: "#{context}[:identity_id]")
        Hearth::Validator.validate!(input[:dataset_name], ::String, context: "#{context}[:dataset_name]")
        Hearth::Validator.validate!(input[:device_id], ::String, context: "#{context}[:device_id]")
        Validators::RecordPatchList.validate!(input[:record_patches], context: "#{context}[:record_patches]") unless input[:record_patches].nil?
        Hearth::Validator.validate!(input[:sync_session_token], ::String, context: "#{context}[:sync_session_token]")
        Hearth::Validator.validate!(input[:client_context], ::String, context: "#{context}[:client_context]")
      end
    end

    class UpdateRecordsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRecordsOutput, context: context)
        Validators::RecordList.validate!(input[:records], context: "#{context}[:records]") unless input[:records].nil?
      end
    end

  end
end
