# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::CognitoSync
  module Params

    module AlreadyStreamedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AlreadyStreamedException, context: context)
        type = Types::AlreadyStreamedException.new
        type.message = params[:message]
        type
      end
    end

    module ApplicationArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module BulkPublishInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BulkPublishInput, context: context)
        type = Types::BulkPublishInput.new
        type.identity_pool_id = params[:identity_pool_id]
        type
      end
    end

    module BulkPublishOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BulkPublishOutput, context: context)
        type = Types::BulkPublishOutput.new
        type.identity_pool_id = params[:identity_pool_id]
        type
      end
    end

    module CognitoStreams
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CognitoStreams, context: context)
        type = Types::CognitoStreams.new
        type.stream_name = params[:stream_name]
        type.role_arn = params[:role_arn]
        type.streaming_status = params[:streaming_status]
        type
      end
    end

    module ConcurrentModificationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConcurrentModificationException, context: context)
        type = Types::ConcurrentModificationException.new
        type.message = params[:message]
        type
      end
    end

    module Dataset
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Dataset, context: context)
        type = Types::Dataset.new
        type.identity_id = params[:identity_id]
        type.dataset_name = params[:dataset_name]
        type.creation_date = params[:creation_date]
        type.last_modified_date = params[:last_modified_date]
        type.last_modified_by = params[:last_modified_by]
        type.data_storage = params[:data_storage]
        type.num_records = params[:num_records]
        type
      end
    end

    module DatasetList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Dataset.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeleteDatasetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDatasetInput, context: context)
        type = Types::DeleteDatasetInput.new
        type.identity_pool_id = params[:identity_pool_id]
        type.identity_id = params[:identity_id]
        type.dataset_name = params[:dataset_name]
        type
      end
    end

    module DeleteDatasetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDatasetOutput, context: context)
        type = Types::DeleteDatasetOutput.new
        type.dataset = Dataset.build(params[:dataset], context: "#{context}[:dataset]") unless params[:dataset].nil?
        type
      end
    end

    module DescribeDatasetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDatasetInput, context: context)
        type = Types::DescribeDatasetInput.new
        type.identity_pool_id = params[:identity_pool_id]
        type.identity_id = params[:identity_id]
        type.dataset_name = params[:dataset_name]
        type
      end
    end

    module DescribeDatasetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDatasetOutput, context: context)
        type = Types::DescribeDatasetOutput.new
        type.dataset = Dataset.build(params[:dataset], context: "#{context}[:dataset]") unless params[:dataset].nil?
        type
      end
    end

    module DescribeIdentityPoolUsageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeIdentityPoolUsageInput, context: context)
        type = Types::DescribeIdentityPoolUsageInput.new
        type.identity_pool_id = params[:identity_pool_id]
        type
      end
    end

    module DescribeIdentityPoolUsageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeIdentityPoolUsageOutput, context: context)
        type = Types::DescribeIdentityPoolUsageOutput.new
        type.identity_pool_usage = IdentityPoolUsage.build(params[:identity_pool_usage], context: "#{context}[:identity_pool_usage]") unless params[:identity_pool_usage].nil?
        type
      end
    end

    module DescribeIdentityUsageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeIdentityUsageInput, context: context)
        type = Types::DescribeIdentityUsageInput.new
        type.identity_pool_id = params[:identity_pool_id]
        type.identity_id = params[:identity_id]
        type
      end
    end

    module DescribeIdentityUsageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeIdentityUsageOutput, context: context)
        type = Types::DescribeIdentityUsageOutput.new
        type.identity_usage = IdentityUsage.build(params[:identity_usage], context: "#{context}[:identity_usage]") unless params[:identity_usage].nil?
        type
      end
    end

    module DuplicateRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DuplicateRequestException, context: context)
        type = Types::DuplicateRequestException.new
        type.message = params[:message]
        type
      end
    end

    module Events
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module GetBulkPublishDetailsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBulkPublishDetailsInput, context: context)
        type = Types::GetBulkPublishDetailsInput.new
        type.identity_pool_id = params[:identity_pool_id]
        type
      end
    end

    module GetBulkPublishDetailsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBulkPublishDetailsOutput, context: context)
        type = Types::GetBulkPublishDetailsOutput.new
        type.identity_pool_id = params[:identity_pool_id]
        type.bulk_publish_start_time = params[:bulk_publish_start_time]
        type.bulk_publish_complete_time = params[:bulk_publish_complete_time]
        type.bulk_publish_status = params[:bulk_publish_status]
        type.failure_message = params[:failure_message]
        type
      end
    end

    module GetCognitoEventsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCognitoEventsInput, context: context)
        type = Types::GetCognitoEventsInput.new
        type.identity_pool_id = params[:identity_pool_id]
        type
      end
    end

    module GetCognitoEventsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCognitoEventsOutput, context: context)
        type = Types::GetCognitoEventsOutput.new
        type.events = Events.build(params[:events], context: "#{context}[:events]") unless params[:events].nil?
        type
      end
    end

    module GetIdentityPoolConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetIdentityPoolConfigurationInput, context: context)
        type = Types::GetIdentityPoolConfigurationInput.new
        type.identity_pool_id = params[:identity_pool_id]
        type
      end
    end

    module GetIdentityPoolConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetIdentityPoolConfigurationOutput, context: context)
        type = Types::GetIdentityPoolConfigurationOutput.new
        type.identity_pool_id = params[:identity_pool_id]
        type.push_sync = PushSync.build(params[:push_sync], context: "#{context}[:push_sync]") unless params[:push_sync].nil?
        type.cognito_streams = CognitoStreams.build(params[:cognito_streams], context: "#{context}[:cognito_streams]") unless params[:cognito_streams].nil?
        type
      end
    end

    module IdentityPoolUsage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IdentityPoolUsage, context: context)
        type = Types::IdentityPoolUsage.new
        type.identity_pool_id = params[:identity_pool_id]
        type.sync_sessions_count = params[:sync_sessions_count]
        type.data_storage = params[:data_storage]
        type.last_modified_date = params[:last_modified_date]
        type
      end
    end

    module IdentityPoolUsageList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << IdentityPoolUsage.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module IdentityUsage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IdentityUsage, context: context)
        type = Types::IdentityUsage.new
        type.identity_id = params[:identity_id]
        type.identity_pool_id = params[:identity_pool_id]
        type.last_modified_date = params[:last_modified_date]
        type.dataset_count = params[:dataset_count]
        type.data_storage = params[:data_storage]
        type
      end
    end

    module InternalErrorException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalErrorException, context: context)
        type = Types::InternalErrorException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidConfigurationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidConfigurationException, context: context)
        type = Types::InvalidConfigurationException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidLambdaFunctionOutputException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidLambdaFunctionOutputException, context: context)
        type = Types::InvalidLambdaFunctionOutputException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidParameterException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidParameterException, context: context)
        type = Types::InvalidParameterException.new
        type.message = params[:message]
        type
      end
    end

    module LambdaThrottledException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LambdaThrottledException, context: context)
        type = Types::LambdaThrottledException.new
        type.message = params[:message]
        type
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ListDatasetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDatasetsInput, context: context)
        type = Types::ListDatasetsInput.new
        type.identity_pool_id = params[:identity_pool_id]
        type.identity_id = params[:identity_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListDatasetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDatasetsOutput, context: context)
        type = Types::ListDatasetsOutput.new
        type.datasets = DatasetList.build(params[:datasets], context: "#{context}[:datasets]") unless params[:datasets].nil?
        type.count = params[:count]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListIdentityPoolUsageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListIdentityPoolUsageInput, context: context)
        type = Types::ListIdentityPoolUsageInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListIdentityPoolUsageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListIdentityPoolUsageOutput, context: context)
        type = Types::ListIdentityPoolUsageOutput.new
        type.identity_pool_usages = IdentityPoolUsageList.build(params[:identity_pool_usages], context: "#{context}[:identity_pool_usages]") unless params[:identity_pool_usages].nil?
        type.max_results = params[:max_results]
        type.count = params[:count]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListRecordsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRecordsInput, context: context)
        type = Types::ListRecordsInput.new
        type.identity_pool_id = params[:identity_pool_id]
        type.identity_id = params[:identity_id]
        type.dataset_name = params[:dataset_name]
        type.last_sync_count = params[:last_sync_count]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.sync_session_token = params[:sync_session_token]
        type
      end
    end

    module ListRecordsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRecordsOutput, context: context)
        type = Types::ListRecordsOutput.new
        type.records = RecordList.build(params[:records], context: "#{context}[:records]") unless params[:records].nil?
        type.next_token = params[:next_token]
        type.count = params[:count]
        type.dataset_sync_count = params[:dataset_sync_count]
        type.last_modified_by = params[:last_modified_by]
        type.merged_dataset_names = MergedDatasetNameList.build(params[:merged_dataset_names], context: "#{context}[:merged_dataset_names]") unless params[:merged_dataset_names].nil?
        type.dataset_exists = params[:dataset_exists]
        type.dataset_deleted_after_requested_sync_count = params[:dataset_deleted_after_requested_sync_count]
        type.sync_session_token = params[:sync_session_token]
        type
      end
    end

    module MergedDatasetNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module NotAuthorizedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotAuthorizedException, context: context)
        type = Types::NotAuthorizedException.new
        type.message = params[:message]
        type
      end
    end

    module PushSync
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PushSync, context: context)
        type = Types::PushSync.new
        type.application_arns = ApplicationArnList.build(params[:application_arns], context: "#{context}[:application_arns]") unless params[:application_arns].nil?
        type.role_arn = params[:role_arn]
        type
      end
    end

    module Record
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Record, context: context)
        type = Types::Record.new
        type.key = params[:key]
        type.value = params[:value]
        type.sync_count = params[:sync_count]
        type.last_modified_date = params[:last_modified_date]
        type.last_modified_by = params[:last_modified_by]
        type.device_last_modified_date = params[:device_last_modified_date]
        type
      end
    end

    module RecordList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Record.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RecordPatch
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecordPatch, context: context)
        type = Types::RecordPatch.new
        type.op = params[:op]
        type.key = params[:key]
        type.value = params[:value]
        type.sync_count = params[:sync_count]
        type.device_last_modified_date = params[:device_last_modified_date]
        type
      end
    end

    module RecordPatchList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RecordPatch.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RegisterDeviceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterDeviceInput, context: context)
        type = Types::RegisterDeviceInput.new
        type.identity_pool_id = params[:identity_pool_id]
        type.identity_id = params[:identity_id]
        type.platform = params[:platform]
        type.token = params[:token]
        type
      end
    end

    module RegisterDeviceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterDeviceOutput, context: context)
        type = Types::RegisterDeviceOutput.new
        type.device_id = params[:device_id]
        type
      end
    end

    module ResourceConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceConflictException, context: context)
        type = Types::ResourceConflictException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module SetCognitoEventsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetCognitoEventsInput, context: context)
        type = Types::SetCognitoEventsInput.new
        type.identity_pool_id = params[:identity_pool_id]
        type.events = Events.build(params[:events], context: "#{context}[:events]") unless params[:events].nil?
        type
      end
    end

    module SetCognitoEventsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetCognitoEventsOutput, context: context)
        type = Types::SetCognitoEventsOutput.new
        type
      end
    end

    module SetIdentityPoolConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetIdentityPoolConfigurationInput, context: context)
        type = Types::SetIdentityPoolConfigurationInput.new
        type.identity_pool_id = params[:identity_pool_id]
        type.push_sync = PushSync.build(params[:push_sync], context: "#{context}[:push_sync]") unless params[:push_sync].nil?
        type.cognito_streams = CognitoStreams.build(params[:cognito_streams], context: "#{context}[:cognito_streams]") unless params[:cognito_streams].nil?
        type
      end
    end

    module SetIdentityPoolConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetIdentityPoolConfigurationOutput, context: context)
        type = Types::SetIdentityPoolConfigurationOutput.new
        type.identity_pool_id = params[:identity_pool_id]
        type.push_sync = PushSync.build(params[:push_sync], context: "#{context}[:push_sync]") unless params[:push_sync].nil?
        type.cognito_streams = CognitoStreams.build(params[:cognito_streams], context: "#{context}[:cognito_streams]") unless params[:cognito_streams].nil?
        type
      end
    end

    module SubscribeToDatasetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubscribeToDatasetInput, context: context)
        type = Types::SubscribeToDatasetInput.new
        type.identity_pool_id = params[:identity_pool_id]
        type.identity_id = params[:identity_id]
        type.dataset_name = params[:dataset_name]
        type.device_id = params[:device_id]
        type
      end
    end

    module SubscribeToDatasetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubscribeToDatasetOutput, context: context)
        type = Types::SubscribeToDatasetOutput.new
        type
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

    module UnsubscribeFromDatasetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsubscribeFromDatasetInput, context: context)
        type = Types::UnsubscribeFromDatasetInput.new
        type.identity_pool_id = params[:identity_pool_id]
        type.identity_id = params[:identity_id]
        type.dataset_name = params[:dataset_name]
        type.device_id = params[:device_id]
        type
      end
    end

    module UnsubscribeFromDatasetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsubscribeFromDatasetOutput, context: context)
        type = Types::UnsubscribeFromDatasetOutput.new
        type
      end
    end

    module UpdateRecordsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRecordsInput, context: context)
        type = Types::UpdateRecordsInput.new
        type.identity_pool_id = params[:identity_pool_id]
        type.identity_id = params[:identity_id]
        type.dataset_name = params[:dataset_name]
        type.device_id = params[:device_id]
        type.record_patches = RecordPatchList.build(params[:record_patches], context: "#{context}[:record_patches]") unless params[:record_patches].nil?
        type.sync_session_token = params[:sync_session_token]
        type.client_context = params[:client_context]
        type
      end
    end

    module UpdateRecordsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRecordsOutput, context: context)
        type = Types::UpdateRecordsOutput.new
        type.records = RecordList.build(params[:records], context: "#{context}[:records]") unless params[:records].nil?
        type
      end
    end

  end
end
