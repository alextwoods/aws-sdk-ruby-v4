# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::S3Control
  module Validators

    class AbortIncompleteMultipartUpload
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AbortIncompleteMultipartUpload, context: context)
        Hearth::Validator.validate!(input[:days_after_initiation], ::Integer, context: "#{context}[:days_after_initiation]")
      end
    end

    class AccessPoint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessPoint, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:network_origin], ::String, context: "#{context}[:network_origin]")
        VpcConfiguration.validate!(input[:vpc_configuration], context: "#{context}[:vpc_configuration]") unless input[:vpc_configuration].nil?
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:access_point_arn], ::String, context: "#{context}[:access_point_arn]")
        Hearth::Validator.validate!(input[:alias], ::String, context: "#{context}[:alias]")
      end
    end

    class AccessPointList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AccessPoint.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AccountLevel
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccountLevel, context: context)
        ActivityMetrics.validate!(input[:activity_metrics], context: "#{context}[:activity_metrics]") unless input[:activity_metrics].nil?
        BucketLevel.validate!(input[:bucket_level], context: "#{context}[:bucket_level]") unless input[:bucket_level].nil?
      end
    end

    class ActivityMetrics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActivityMetrics, context: context)
        Hearth::Validator.validate!(input[:is_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:is_enabled]")
      end
    end

    class AsyncErrorDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AsyncErrorDetails, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource], ::String, context: "#{context}[:resource]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class AsyncOperation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AsyncOperation, context: context)
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:operation], ::String, context: "#{context}[:operation]")
        Hearth::Validator.validate!(input[:request_token_arn], ::String, context: "#{context}[:request_token_arn]")
        AsyncRequestParameters.validate!(input[:request_parameters], context: "#{context}[:request_parameters]") unless input[:request_parameters].nil?
        Hearth::Validator.validate!(input[:request_status], ::String, context: "#{context}[:request_status]")
        AsyncResponseDetails.validate!(input[:response_details], context: "#{context}[:response_details]") unless input[:response_details].nil?
      end
    end

    class AsyncRequestParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AsyncRequestParameters, context: context)
        CreateMultiRegionAccessPointInput.validate!(input[:create_multi_region_access_point_request], context: "#{context}[:create_multi_region_access_point_request]") unless input[:create_multi_region_access_point_request].nil?
        DeleteMultiRegionAccessPointInput.validate!(input[:delete_multi_region_access_point_request], context: "#{context}[:delete_multi_region_access_point_request]") unless input[:delete_multi_region_access_point_request].nil?
        PutMultiRegionAccessPointPolicyInput.validate!(input[:put_multi_region_access_point_policy_request], context: "#{context}[:put_multi_region_access_point_policy_request]") unless input[:put_multi_region_access_point_policy_request].nil?
      end
    end

    class AsyncResponseDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AsyncResponseDetails, context: context)
        MultiRegionAccessPointsAsyncResponse.validate!(input[:multi_region_access_point_details], context: "#{context}[:multi_region_access_point_details]") unless input[:multi_region_access_point_details].nil?
        AsyncErrorDetails.validate!(input[:error_details], context: "#{context}[:error_details]") unless input[:error_details].nil?
      end
    end

    class AwsLambdaTransformation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsLambdaTransformation, context: context)
        Hearth::Validator.validate!(input[:function_arn], ::String, context: "#{context}[:function_arn]")
        Hearth::Validator.validate!(input[:function_payload], ::String, context: "#{context}[:function_payload]")
      end
    end

    class BadRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BadRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class BucketAlreadyExists
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BucketAlreadyExists, context: context)
      end
    end

    class BucketAlreadyOwnedByYou
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BucketAlreadyOwnedByYou, context: context)
      end
    end

    class BucketLevel
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BucketLevel, context: context)
        ActivityMetrics.validate!(input[:activity_metrics], context: "#{context}[:activity_metrics]") unless input[:activity_metrics].nil?
        PrefixLevel.validate!(input[:prefix_level], context: "#{context}[:prefix_level]") unless input[:prefix_level].nil?
      end
    end

    class Buckets
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CloudWatchMetrics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudWatchMetrics, context: context)
        Hearth::Validator.validate!(input[:is_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:is_enabled]")
      end
    end

    class CreateAccessPointForObjectLambdaInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAccessPointForObjectLambdaInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        ObjectLambdaConfiguration.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
      end
    end

    class CreateAccessPointForObjectLambdaOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAccessPointForObjectLambdaOutput, context: context)
        Hearth::Validator.validate!(input[:object_lambda_access_point_arn], ::String, context: "#{context}[:object_lambda_access_point_arn]")
      end
    end

    class CreateAccessPointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAccessPointInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        VpcConfiguration.validate!(input[:vpc_configuration], context: "#{context}[:vpc_configuration]") unless input[:vpc_configuration].nil?
        PublicAccessBlockConfiguration.validate!(input[:public_access_block_configuration], context: "#{context}[:public_access_block_configuration]") unless input[:public_access_block_configuration].nil?
      end
    end

    class CreateAccessPointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAccessPointOutput, context: context)
        Hearth::Validator.validate!(input[:access_point_arn], ::String, context: "#{context}[:access_point_arn]")
        Hearth::Validator.validate!(input[:alias], ::String, context: "#{context}[:alias]")
      end
    end

    class CreateBucketConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBucketConfiguration, context: context)
        Hearth::Validator.validate!(input[:location_constraint], ::String, context: "#{context}[:location_constraint]")
      end
    end

    class CreateBucketInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBucketInput, context: context)
        Hearth::Validator.validate!(input[:acl], ::String, context: "#{context}[:acl]")
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        CreateBucketConfiguration.validate!(input[:create_bucket_configuration], context: "#{context}[:create_bucket_configuration]") unless input[:create_bucket_configuration].nil?
        Hearth::Validator.validate!(input[:grant_full_control], ::String, context: "#{context}[:grant_full_control]")
        Hearth::Validator.validate!(input[:grant_read], ::String, context: "#{context}[:grant_read]")
        Hearth::Validator.validate!(input[:grant_read_acp], ::String, context: "#{context}[:grant_read_acp]")
        Hearth::Validator.validate!(input[:grant_write], ::String, context: "#{context}[:grant_write]")
        Hearth::Validator.validate!(input[:grant_write_acp], ::String, context: "#{context}[:grant_write_acp]")
        Hearth::Validator.validate!(input[:object_lock_enabled_for_bucket], ::TrueClass, ::FalseClass, context: "#{context}[:object_lock_enabled_for_bucket]")
        Hearth::Validator.validate!(input[:outpost_id], ::String, context: "#{context}[:outpost_id]")
      end
    end

    class CreateBucketOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBucketOutput, context: context)
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:bucket_arn], ::String, context: "#{context}[:bucket_arn]")
      end
    end

    class CreateJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateJobInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:confirmation_required], ::TrueClass, ::FalseClass, context: "#{context}[:confirmation_required]")
        JobOperation.validate!(input[:operation], context: "#{context}[:operation]") unless input[:operation].nil?
        JobReport.validate!(input[:report], context: "#{context}[:report]") unless input[:report].nil?
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        JobManifest.validate!(input[:manifest], context: "#{context}[:manifest]") unless input[:manifest].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        S3TagSet.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        JobManifestGenerator.validate!(input[:manifest_generator], context: "#{context}[:manifest_generator]") unless input[:manifest_generator].nil?
      end
    end

    class CreateJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateJobOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class CreateMultiRegionAccessPointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMultiRegionAccessPointInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        PublicAccessBlockConfiguration.validate!(input[:public_access_block], context: "#{context}[:public_access_block]") unless input[:public_access_block].nil?
        RegionCreationList.validate!(input[:regions], context: "#{context}[:regions]") unless input[:regions].nil?
      end
    end

    class CreateMultiRegionAccessPointOperationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMultiRegionAccessPointOperationInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        CreateMultiRegionAccessPointInput.validate!(input[:details], context: "#{context}[:details]") unless input[:details].nil?
      end
    end

    class CreateMultiRegionAccessPointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMultiRegionAccessPointOutput, context: context)
        Hearth::Validator.validate!(input[:request_token_arn], ::String, context: "#{context}[:request_token_arn]")
      end
    end

    class DeleteAccessPointForObjectLambdaInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAccessPointForObjectLambdaInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteAccessPointForObjectLambdaOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAccessPointForObjectLambdaOutput, context: context)
      end
    end

    class DeleteAccessPointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAccessPointInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteAccessPointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAccessPointOutput, context: context)
      end
    end

    class DeleteAccessPointPolicyForObjectLambdaInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAccessPointPolicyForObjectLambdaInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteAccessPointPolicyForObjectLambdaOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAccessPointPolicyForObjectLambdaOutput, context: context)
      end
    end

    class DeleteAccessPointPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAccessPointPolicyInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteAccessPointPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAccessPointPolicyOutput, context: context)
      end
    end

    class DeleteBucketInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBucketInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
      end
    end

    class DeleteBucketLifecycleConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBucketLifecycleConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
      end
    end

    class DeleteBucketLifecycleConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBucketLifecycleConfigurationOutput, context: context)
      end
    end

    class DeleteBucketOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBucketOutput, context: context)
      end
    end

    class DeleteBucketPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBucketPolicyInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
      end
    end

    class DeleteBucketPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBucketPolicyOutput, context: context)
      end
    end

    class DeleteBucketTaggingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBucketTaggingInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
      end
    end

    class DeleteBucketTaggingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBucketTaggingOutput, context: context)
      end
    end

    class DeleteJobTaggingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteJobTaggingInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class DeleteJobTaggingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteJobTaggingOutput, context: context)
      end
    end

    class DeleteMultiRegionAccessPointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMultiRegionAccessPointInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteMultiRegionAccessPointOperationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMultiRegionAccessPointOperationInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        DeleteMultiRegionAccessPointInput.validate!(input[:details], context: "#{context}[:details]") unless input[:details].nil?
      end
    end

    class DeleteMultiRegionAccessPointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMultiRegionAccessPointOutput, context: context)
        Hearth::Validator.validate!(input[:request_token_arn], ::String, context: "#{context}[:request_token_arn]")
      end
    end

    class DeletePublicAccessBlockInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePublicAccessBlockInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
      end
    end

    class DeletePublicAccessBlockOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePublicAccessBlockOutput, context: context)
      end
    end

    class DeleteStorageLensConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteStorageLensConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:config_id], ::String, context: "#{context}[:config_id]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
      end
    end

    class DeleteStorageLensConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteStorageLensConfigurationOutput, context: context)
      end
    end

    class DeleteStorageLensConfigurationTaggingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteStorageLensConfigurationTaggingInput, context: context)
        Hearth::Validator.validate!(input[:config_id], ::String, context: "#{context}[:config_id]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
      end
    end

    class DeleteStorageLensConfigurationTaggingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteStorageLensConfigurationTaggingOutput, context: context)
      end
    end

    class DescribeJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeJobInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class DescribeJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeJobOutput, context: context)
        JobDescriptor.validate!(input[:job], context: "#{context}[:job]") unless input[:job].nil?
      end
    end

    class DescribeMultiRegionAccessPointOperationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeMultiRegionAccessPointOperationInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:request_token_arn], ::String, context: "#{context}[:request_token_arn]")
      end
    end

    class DescribeMultiRegionAccessPointOperationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeMultiRegionAccessPointOperationOutput, context: context)
        AsyncOperation.validate!(input[:async_operation], context: "#{context}[:async_operation]") unless input[:async_operation].nil?
      end
    end

    class Endpoints
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class EstablishedMultiRegionAccessPointPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EstablishedMultiRegionAccessPointPolicy, context: context)
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
      end
    end

    class Exclude
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Exclude, context: context)
        Buckets.validate!(input[:buckets], context: "#{context}[:buckets]") unless input[:buckets].nil?
        Regions.validate!(input[:regions], context: "#{context}[:regions]") unless input[:regions].nil?
      end
    end

    class GeneratedManifestEncryption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GeneratedManifestEncryption, context: context)
        SSES3Encryption.validate!(input[:sses3], context: "#{context}[:sses3]") unless input[:sses3].nil?
        SSEKMSEncryption.validate!(input[:ssekms], context: "#{context}[:ssekms]") unless input[:ssekms].nil?
      end
    end

    class GetAccessPointConfigurationForObjectLambdaInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAccessPointConfigurationForObjectLambdaInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class GetAccessPointConfigurationForObjectLambdaOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAccessPointConfigurationForObjectLambdaOutput, context: context)
        ObjectLambdaConfiguration.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
      end
    end

    class GetAccessPointForObjectLambdaInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAccessPointForObjectLambdaInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class GetAccessPointForObjectLambdaOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAccessPointForObjectLambdaOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        PublicAccessBlockConfiguration.validate!(input[:public_access_block_configuration], context: "#{context}[:public_access_block_configuration]") unless input[:public_access_block_configuration].nil?
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
      end
    end

    class GetAccessPointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAccessPointInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class GetAccessPointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAccessPointOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:network_origin], ::String, context: "#{context}[:network_origin]")
        VpcConfiguration.validate!(input[:vpc_configuration], context: "#{context}[:vpc_configuration]") unless input[:vpc_configuration].nil?
        PublicAccessBlockConfiguration.validate!(input[:public_access_block_configuration], context: "#{context}[:public_access_block_configuration]") unless input[:public_access_block_configuration].nil?
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:alias], ::String, context: "#{context}[:alias]")
        Hearth::Validator.validate!(input[:access_point_arn], ::String, context: "#{context}[:access_point_arn]")
        Endpoints.validate!(input[:endpoints], context: "#{context}[:endpoints]") unless input[:endpoints].nil?
      end
    end

    class GetAccessPointPolicyForObjectLambdaInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAccessPointPolicyForObjectLambdaInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class GetAccessPointPolicyForObjectLambdaOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAccessPointPolicyForObjectLambdaOutput, context: context)
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
      end
    end

    class GetAccessPointPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAccessPointPolicyInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class GetAccessPointPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAccessPointPolicyOutput, context: context)
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
      end
    end

    class GetAccessPointPolicyStatusForObjectLambdaInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAccessPointPolicyStatusForObjectLambdaInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class GetAccessPointPolicyStatusForObjectLambdaOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAccessPointPolicyStatusForObjectLambdaOutput, context: context)
        PolicyStatus.validate!(input[:policy_status], context: "#{context}[:policy_status]") unless input[:policy_status].nil?
      end
    end

    class GetAccessPointPolicyStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAccessPointPolicyStatusInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class GetAccessPointPolicyStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAccessPointPolicyStatusOutput, context: context)
        PolicyStatus.validate!(input[:policy_status], context: "#{context}[:policy_status]") unless input[:policy_status].nil?
      end
    end

    class GetBucketInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBucketInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
      end
    end

    class GetBucketLifecycleConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBucketLifecycleConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
      end
    end

    class GetBucketLifecycleConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBucketLifecycleConfigurationOutput, context: context)
        LifecycleRules.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
      end
    end

    class GetBucketOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBucketOutput, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:public_access_block_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:public_access_block_enabled]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
      end
    end

    class GetBucketPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBucketPolicyInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
      end
    end

    class GetBucketPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBucketPolicyOutput, context: context)
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
      end
    end

    class GetBucketTaggingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBucketTaggingInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
      end
    end

    class GetBucketTaggingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBucketTaggingOutput, context: context)
        S3TagSet.validate!(input[:tag_set], context: "#{context}[:tag_set]") unless input[:tag_set].nil?
      end
    end

    class GetJobTaggingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetJobTaggingInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class GetJobTaggingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetJobTaggingOutput, context: context)
        S3TagSet.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class GetMultiRegionAccessPointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMultiRegionAccessPointInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class GetMultiRegionAccessPointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMultiRegionAccessPointOutput, context: context)
        MultiRegionAccessPointReport.validate!(input[:access_point], context: "#{context}[:access_point]") unless input[:access_point].nil?
      end
    end

    class GetMultiRegionAccessPointPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMultiRegionAccessPointPolicyInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class GetMultiRegionAccessPointPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMultiRegionAccessPointPolicyOutput, context: context)
        MultiRegionAccessPointPolicyDocument.validate!(input[:policy], context: "#{context}[:policy]") unless input[:policy].nil?
      end
    end

    class GetMultiRegionAccessPointPolicyStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMultiRegionAccessPointPolicyStatusInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class GetMultiRegionAccessPointPolicyStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMultiRegionAccessPointPolicyStatusOutput, context: context)
        PolicyStatus.validate!(input[:established], context: "#{context}[:established]") unless input[:established].nil?
      end
    end

    class GetPublicAccessBlockInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPublicAccessBlockInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
      end
    end

    class GetPublicAccessBlockOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPublicAccessBlockOutput, context: context)
        PublicAccessBlockConfiguration.validate!(input[:public_access_block_configuration], context: "#{context}[:public_access_block_configuration]") unless input[:public_access_block_configuration].nil?
      end
    end

    class GetStorageLensConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetStorageLensConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:config_id], ::String, context: "#{context}[:config_id]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
      end
    end

    class GetStorageLensConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetStorageLensConfigurationOutput, context: context)
        StorageLensConfiguration.validate!(input[:storage_lens_configuration], context: "#{context}[:storage_lens_configuration]") unless input[:storage_lens_configuration].nil?
      end
    end

    class GetStorageLensConfigurationTaggingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetStorageLensConfigurationTaggingInput, context: context)
        Hearth::Validator.validate!(input[:config_id], ::String, context: "#{context}[:config_id]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
      end
    end

    class GetStorageLensConfigurationTaggingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetStorageLensConfigurationTaggingOutput, context: context)
        StorageLensTags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class IdempotencyException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IdempotencyException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Include
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Include, context: context)
        Buckets.validate!(input[:buckets], context: "#{context}[:buckets]") unless input[:buckets].nil?
        Regions.validate!(input[:regions], context: "#{context}[:regions]") unless input[:regions].nil?
      end
    end

    class InternalServiceException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServiceException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidNextTokenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidNextTokenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class JobDescriptor
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobDescriptor, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:confirmation_required], ::TrueClass, ::FalseClass, context: "#{context}[:confirmation_required]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:job_arn], ::String, context: "#{context}[:job_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        JobManifest.validate!(input[:manifest], context: "#{context}[:manifest]") unless input[:manifest].nil?
        JobOperation.validate!(input[:operation], context: "#{context}[:operation]") unless input[:operation].nil?
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
        JobProgressSummary.validate!(input[:progress_summary], context: "#{context}[:progress_summary]") unless input[:progress_summary].nil?
        Hearth::Validator.validate!(input[:status_update_reason], ::String, context: "#{context}[:status_update_reason]")
        JobFailureList.validate!(input[:failure_reasons], context: "#{context}[:failure_reasons]") unless input[:failure_reasons].nil?
        JobReport.validate!(input[:report], context: "#{context}[:report]") unless input[:report].nil?
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:termination_date], ::Time, context: "#{context}[:termination_date]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:suspended_date], ::Time, context: "#{context}[:suspended_date]")
        Hearth::Validator.validate!(input[:suspended_cause], ::String, context: "#{context}[:suspended_cause]")
        JobManifestGenerator.validate!(input[:manifest_generator], context: "#{context}[:manifest_generator]") unless input[:manifest_generator].nil?
        S3GeneratedManifestDescriptor.validate!(input[:generated_manifest_descriptor], context: "#{context}[:generated_manifest_descriptor]") unless input[:generated_manifest_descriptor].nil?
      end
    end

    class JobFailure
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobFailure, context: context)
        Hearth::Validator.validate!(input[:failure_code], ::String, context: "#{context}[:failure_code]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
      end
    end

    class JobFailureList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          JobFailure.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class JobListDescriptor
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobListDescriptor, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:operation], ::String, context: "#{context}[:operation]")
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:termination_date], ::Time, context: "#{context}[:termination_date]")
        JobProgressSummary.validate!(input[:progress_summary], context: "#{context}[:progress_summary]") unless input[:progress_summary].nil?
      end
    end

    class JobListDescriptorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          JobListDescriptor.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class JobManifest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobManifest, context: context)
        JobManifestSpec.validate!(input[:spec], context: "#{context}[:spec]") unless input[:spec].nil?
        JobManifestLocation.validate!(input[:location], context: "#{context}[:location]") unless input[:location].nil?
      end
    end

    class JobManifestFieldList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class JobManifestGenerator
      def self.validate!(input, context:)
        case input
        when Types::JobManifestGenerator::S3JobManifestGenerator
          S3JobManifestGenerator.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::JobManifestGenerator, got #{input.class}."
        end
      end

      class S3JobManifestGenerator
        def self.validate!(input, context:)
          Validators::S3JobManifestGenerator.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class JobManifestGeneratorFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobManifestGeneratorFilter, context: context)
        Hearth::Validator.validate!(input[:eligible_for_replication], ::TrueClass, ::FalseClass, context: "#{context}[:eligible_for_replication]")
        Hearth::Validator.validate!(input[:created_after], ::Time, context: "#{context}[:created_after]")
        Hearth::Validator.validate!(input[:created_before], ::Time, context: "#{context}[:created_before]")
        ReplicationStatusFilterList.validate!(input[:object_replication_statuses], context: "#{context}[:object_replication_statuses]") unless input[:object_replication_statuses].nil?
      end
    end

    class JobManifestLocation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobManifestLocation, context: context)
        Hearth::Validator.validate!(input[:object_arn], ::String, context: "#{context}[:object_arn]")
        Hearth::Validator.validate!(input[:object_version_id], ::String, context: "#{context}[:object_version_id]")
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
      end
    end

    class JobManifestSpec
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobManifestSpec, context: context)
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        JobManifestFieldList.validate!(input[:fields], context: "#{context}[:fields]") unless input[:fields].nil?
      end
    end

    class JobOperation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobOperation, context: context)
        LambdaInvokeOperation.validate!(input[:lambda_invoke], context: "#{context}[:lambda_invoke]") unless input[:lambda_invoke].nil?
        S3CopyObjectOperation.validate!(input[:s3_put_object_copy], context: "#{context}[:s3_put_object_copy]") unless input[:s3_put_object_copy].nil?
        S3SetObjectAclOperation.validate!(input[:s3_put_object_acl], context: "#{context}[:s3_put_object_acl]") unless input[:s3_put_object_acl].nil?
        S3SetObjectTaggingOperation.validate!(input[:s3_put_object_tagging], context: "#{context}[:s3_put_object_tagging]") unless input[:s3_put_object_tagging].nil?
        S3DeleteObjectTaggingOperation.validate!(input[:s3_delete_object_tagging], context: "#{context}[:s3_delete_object_tagging]") unless input[:s3_delete_object_tagging].nil?
        S3InitiateRestoreObjectOperation.validate!(input[:s3_initiate_restore_object], context: "#{context}[:s3_initiate_restore_object]") unless input[:s3_initiate_restore_object].nil?
        S3SetObjectLegalHoldOperation.validate!(input[:s3_put_object_legal_hold], context: "#{context}[:s3_put_object_legal_hold]") unless input[:s3_put_object_legal_hold].nil?
        S3SetObjectRetentionOperation.validate!(input[:s3_put_object_retention], context: "#{context}[:s3_put_object_retention]") unless input[:s3_put_object_retention].nil?
        S3ReplicateObjectOperation.validate!(input[:s3_replicate_object], context: "#{context}[:s3_replicate_object]") unless input[:s3_replicate_object].nil?
      end
    end

    class JobProgressSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobProgressSummary, context: context)
        Hearth::Validator.validate!(input[:total_number_of_tasks], ::Integer, context: "#{context}[:total_number_of_tasks]")
        Hearth::Validator.validate!(input[:number_of_tasks_succeeded], ::Integer, context: "#{context}[:number_of_tasks_succeeded]")
        Hearth::Validator.validate!(input[:number_of_tasks_failed], ::Integer, context: "#{context}[:number_of_tasks_failed]")
        JobTimers.validate!(input[:timers], context: "#{context}[:timers]") unless input[:timers].nil?
      end
    end

    class JobReport
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobReport, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
        Hearth::Validator.validate!(input[:report_scope], ::String, context: "#{context}[:report_scope]")
      end
    end

    class JobStatusException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobStatusException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class JobStatusList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class JobTimers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobTimers, context: context)
        Hearth::Validator.validate!(input[:elapsed_time_in_active_seconds], ::Integer, context: "#{context}[:elapsed_time_in_active_seconds]")
      end
    end

    class LambdaInvokeOperation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LambdaInvokeOperation, context: context)
        Hearth::Validator.validate!(input[:function_arn], ::String, context: "#{context}[:function_arn]")
      end
    end

    class LifecycleConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LifecycleConfiguration, context: context)
        LifecycleRules.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
      end
    end

    class LifecycleExpiration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LifecycleExpiration, context: context)
        Hearth::Validator.validate!(input[:date], ::Time, context: "#{context}[:date]")
        Hearth::Validator.validate!(input[:days], ::Integer, context: "#{context}[:days]")
        Hearth::Validator.validate!(input[:expired_object_delete_marker], ::TrueClass, ::FalseClass, context: "#{context}[:expired_object_delete_marker]")
      end
    end

    class LifecycleRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LifecycleRule, context: context)
        LifecycleExpiration.validate!(input[:expiration], context: "#{context}[:expiration]") unless input[:expiration].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        LifecycleRuleFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        TransitionList.validate!(input[:transitions], context: "#{context}[:transitions]") unless input[:transitions].nil?
        NoncurrentVersionTransitionList.validate!(input[:noncurrent_version_transitions], context: "#{context}[:noncurrent_version_transitions]") unless input[:noncurrent_version_transitions].nil?
        NoncurrentVersionExpiration.validate!(input[:noncurrent_version_expiration], context: "#{context}[:noncurrent_version_expiration]") unless input[:noncurrent_version_expiration].nil?
        AbortIncompleteMultipartUpload.validate!(input[:abort_incomplete_multipart_upload], context: "#{context}[:abort_incomplete_multipart_upload]") unless input[:abort_incomplete_multipart_upload].nil?
      end
    end

    class LifecycleRuleAndOperator
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LifecycleRuleAndOperator, context: context)
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
        S3TagSet.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class LifecycleRuleFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LifecycleRuleFilter, context: context)
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
        S3Tag.validate!(input[:tag], context: "#{context}[:tag]") unless input[:tag].nil?
        LifecycleRuleAndOperator.validate!(input[:and], context: "#{context}[:and]") unless input[:and].nil?
      end
    end

    class LifecycleRules
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LifecycleRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListAccessPointsForObjectLambdaInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAccessPointsForObjectLambdaInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListAccessPointsForObjectLambdaOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAccessPointsForObjectLambdaOutput, context: context)
        ObjectLambdaAccessPointList.validate!(input[:object_lambda_access_point_list], context: "#{context}[:object_lambda_access_point_list]") unless input[:object_lambda_access_point_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAccessPointsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAccessPointsInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListAccessPointsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAccessPointsOutput, context: context)
        AccessPointList.validate!(input[:access_point_list], context: "#{context}[:access_point_list]") unless input[:access_point_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListJobsInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        JobStatusList.validate!(input[:job_statuses], context: "#{context}[:job_statuses]") unless input[:job_statuses].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListJobsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        JobListDescriptorList.validate!(input[:jobs], context: "#{context}[:jobs]") unless input[:jobs].nil?
      end
    end

    class ListMultiRegionAccessPointsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMultiRegionAccessPointsInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListMultiRegionAccessPointsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMultiRegionAccessPointsOutput, context: context)
        MultiRegionAccessPointReportList.validate!(input[:access_points], context: "#{context}[:access_points]") unless input[:access_points].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListRegionalBucketsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRegionalBucketsInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:outpost_id], ::String, context: "#{context}[:outpost_id]")
      end
    end

    class ListRegionalBucketsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRegionalBucketsOutput, context: context)
        RegionalBucketList.validate!(input[:regional_bucket_list], context: "#{context}[:regional_bucket_list]") unless input[:regional_bucket_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListStorageLensConfigurationEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStorageLensConfigurationEntry, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:storage_lens_arn], ::String, context: "#{context}[:storage_lens_arn]")
        Hearth::Validator.validate!(input[:home_region], ::String, context: "#{context}[:home_region]")
        Hearth::Validator.validate!(input[:is_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:is_enabled]")
      end
    end

    class ListStorageLensConfigurationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStorageLensConfigurationsInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListStorageLensConfigurationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStorageLensConfigurationsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        StorageLensConfigurationList.validate!(input[:storage_lens_configuration_list], context: "#{context}[:storage_lens_configuration_list]") unless input[:storage_lens_configuration_list].nil?
      end
    end

    class MultiRegionAccessPointPolicyDocument
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MultiRegionAccessPointPolicyDocument, context: context)
        EstablishedMultiRegionAccessPointPolicy.validate!(input[:established], context: "#{context}[:established]") unless input[:established].nil?
        ProposedMultiRegionAccessPointPolicy.validate!(input[:proposed], context: "#{context}[:proposed]") unless input[:proposed].nil?
      end
    end

    class MultiRegionAccessPointRegionalResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MultiRegionAccessPointRegionalResponse, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:request_status], ::String, context: "#{context}[:request_status]")
      end
    end

    class MultiRegionAccessPointRegionalResponseList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MultiRegionAccessPointRegionalResponse.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MultiRegionAccessPointReport
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MultiRegionAccessPointReport, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:alias], ::String, context: "#{context}[:alias]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        PublicAccessBlockConfiguration.validate!(input[:public_access_block], context: "#{context}[:public_access_block]") unless input[:public_access_block].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        RegionReportList.validate!(input[:regions], context: "#{context}[:regions]") unless input[:regions].nil?
      end
    end

    class MultiRegionAccessPointReportList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MultiRegionAccessPointReport.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MultiRegionAccessPointsAsyncResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MultiRegionAccessPointsAsyncResponse, context: context)
        MultiRegionAccessPointRegionalResponseList.validate!(input[:regions], context: "#{context}[:regions]") unless input[:regions].nil?
      end
    end

    class NoSuchPublicAccessBlockConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoSuchPublicAccessBlockConfiguration, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NoncurrentVersionExpiration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoncurrentVersionExpiration, context: context)
        Hearth::Validator.validate!(input[:noncurrent_days], ::Integer, context: "#{context}[:noncurrent_days]")
      end
    end

    class NoncurrentVersionTransition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoncurrentVersionTransition, context: context)
        Hearth::Validator.validate!(input[:noncurrent_days], ::Integer, context: "#{context}[:noncurrent_days]")
        Hearth::Validator.validate!(input[:storage_class], ::String, context: "#{context}[:storage_class]")
      end
    end

    class NoncurrentVersionTransitionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          NoncurrentVersionTransition.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ObjectLambdaAccessPoint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ObjectLambdaAccessPoint, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:object_lambda_access_point_arn], ::String, context: "#{context}[:object_lambda_access_point_arn]")
      end
    end

    class ObjectLambdaAccessPointList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ObjectLambdaAccessPoint.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ObjectLambdaAllowedFeaturesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ObjectLambdaConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ObjectLambdaConfiguration, context: context)
        Hearth::Validator.validate!(input[:supporting_access_point], ::String, context: "#{context}[:supporting_access_point]")
        Hearth::Validator.validate!(input[:cloud_watch_metrics_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:cloud_watch_metrics_enabled]")
        ObjectLambdaAllowedFeaturesList.validate!(input[:allowed_features], context: "#{context}[:allowed_features]") unless input[:allowed_features].nil?
        ObjectLambdaTransformationConfigurationsList.validate!(input[:transformation_configurations], context: "#{context}[:transformation_configurations]") unless input[:transformation_configurations].nil?
      end
    end

    class ObjectLambdaContentTransformation
      def self.validate!(input, context:)
        case input
        when Types::ObjectLambdaContentTransformation::AwsLambda
          AwsLambdaTransformation.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::ObjectLambdaContentTransformation, got #{input.class}."
        end
      end

      class AwsLambda
        def self.validate!(input, context:)
          Validators::AwsLambdaTransformation.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class ObjectLambdaTransformationConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ObjectLambdaTransformationConfiguration, context: context)
        ObjectLambdaTransformationConfigurationActionsList.validate!(input[:actions], context: "#{context}[:actions]") unless input[:actions].nil?
        ObjectLambdaContentTransformation.validate!(input[:content_transformation], context: "#{context}[:content_transformation]") unless input[:content_transformation].nil?
      end
    end

    class ObjectLambdaTransformationConfigurationActionsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ObjectLambdaTransformationConfigurationsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ObjectLambdaTransformationConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PolicyStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PolicyStatus, context: context)
        Hearth::Validator.validate!(input[:is_public], ::TrueClass, ::FalseClass, context: "#{context}[:is_public]")
      end
    end

    class PrefixLevel
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PrefixLevel, context: context)
        PrefixLevelStorageMetrics.validate!(input[:storage_metrics], context: "#{context}[:storage_metrics]") unless input[:storage_metrics].nil?
      end
    end

    class PrefixLevelStorageMetrics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PrefixLevelStorageMetrics, context: context)
        Hearth::Validator.validate!(input[:is_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:is_enabled]")
        SelectionCriteria.validate!(input[:selection_criteria], context: "#{context}[:selection_criteria]") unless input[:selection_criteria].nil?
      end
    end

    class ProposedMultiRegionAccessPointPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProposedMultiRegionAccessPointPolicy, context: context)
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
      end
    end

    class PublicAccessBlockConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PublicAccessBlockConfiguration, context: context)
        Hearth::Validator.validate!(input[:block_public_acls], ::TrueClass, ::FalseClass, context: "#{context}[:block_public_acls]")
        Hearth::Validator.validate!(input[:ignore_public_acls], ::TrueClass, ::FalseClass, context: "#{context}[:ignore_public_acls]")
        Hearth::Validator.validate!(input[:block_public_policy], ::TrueClass, ::FalseClass, context: "#{context}[:block_public_policy]")
        Hearth::Validator.validate!(input[:restrict_public_buckets], ::TrueClass, ::FalseClass, context: "#{context}[:restrict_public_buckets]")
      end
    end

    class PutAccessPointConfigurationForObjectLambdaInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutAccessPointConfigurationForObjectLambdaInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        ObjectLambdaConfiguration.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
      end
    end

    class PutAccessPointConfigurationForObjectLambdaOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutAccessPointConfigurationForObjectLambdaOutput, context: context)
      end
    end

    class PutAccessPointPolicyForObjectLambdaInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutAccessPointPolicyForObjectLambdaInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
      end
    end

    class PutAccessPointPolicyForObjectLambdaOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutAccessPointPolicyForObjectLambdaOutput, context: context)
      end
    end

    class PutAccessPointPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutAccessPointPolicyInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
      end
    end

    class PutAccessPointPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutAccessPointPolicyOutput, context: context)
      end
    end

    class PutBucketLifecycleConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutBucketLifecycleConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        LifecycleConfiguration.validate!(input[:lifecycle_configuration], context: "#{context}[:lifecycle_configuration]") unless input[:lifecycle_configuration].nil?
      end
    end

    class PutBucketLifecycleConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutBucketLifecycleConfigurationOutput, context: context)
      end
    end

    class PutBucketPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutBucketPolicyInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:confirm_remove_self_bucket_access], ::TrueClass, ::FalseClass, context: "#{context}[:confirm_remove_self_bucket_access]")
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
      end
    end

    class PutBucketPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutBucketPolicyOutput, context: context)
      end
    end

    class PutBucketTaggingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutBucketTaggingInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Tagging.validate!(input[:tagging], context: "#{context}[:tagging]") unless input[:tagging].nil?
      end
    end

    class PutBucketTaggingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutBucketTaggingOutput, context: context)
      end
    end

    class PutJobTaggingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutJobTaggingInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        S3TagSet.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class PutJobTaggingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutJobTaggingOutput, context: context)
      end
    end

    class PutMultiRegionAccessPointPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutMultiRegionAccessPointPolicyInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
      end
    end

    class PutMultiRegionAccessPointPolicyOperationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutMultiRegionAccessPointPolicyOperationInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        PutMultiRegionAccessPointPolicyInput.validate!(input[:details], context: "#{context}[:details]") unless input[:details].nil?
      end
    end

    class PutMultiRegionAccessPointPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutMultiRegionAccessPointPolicyOutput, context: context)
        Hearth::Validator.validate!(input[:request_token_arn], ::String, context: "#{context}[:request_token_arn]")
      end
    end

    class PutPublicAccessBlockInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutPublicAccessBlockInput, context: context)
        PublicAccessBlockConfiguration.validate!(input[:public_access_block_configuration], context: "#{context}[:public_access_block_configuration]") unless input[:public_access_block_configuration].nil?
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
      end
    end

    class PutPublicAccessBlockOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutPublicAccessBlockOutput, context: context)
      end
    end

    class PutStorageLensConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutStorageLensConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:config_id], ::String, context: "#{context}[:config_id]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        StorageLensConfiguration.validate!(input[:storage_lens_configuration], context: "#{context}[:storage_lens_configuration]") unless input[:storage_lens_configuration].nil?
        StorageLensTags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class PutStorageLensConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutStorageLensConfigurationOutput, context: context)
      end
    end

    class PutStorageLensConfigurationTaggingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutStorageLensConfigurationTaggingInput, context: context)
        Hearth::Validator.validate!(input[:config_id], ::String, context: "#{context}[:config_id]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        StorageLensTags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class PutStorageLensConfigurationTaggingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutStorageLensConfigurationTaggingOutput, context: context)
      end
    end

    class Region
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Region, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
      end
    end

    class RegionCreationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Region.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RegionReport
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegionReport, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
      end
    end

    class RegionReportList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RegionReport.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RegionalBucket
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegionalBucket, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:bucket_arn], ::String, context: "#{context}[:bucket_arn]")
        Hearth::Validator.validate!(input[:public_access_block_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:public_access_block_enabled]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:outpost_id], ::String, context: "#{context}[:outpost_id]")
      end
    end

    class RegionalBucketList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RegionalBucket.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Regions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ReplicationStatusFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class S3AccessControlList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3AccessControlList, context: context)
        S3ObjectOwner.validate!(input[:owner], context: "#{context}[:owner]") unless input[:owner].nil?
        S3GrantList.validate!(input[:grants], context: "#{context}[:grants]") unless input[:grants].nil?
      end
    end

    class S3AccessControlPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3AccessControlPolicy, context: context)
        S3AccessControlList.validate!(input[:access_control_list], context: "#{context}[:access_control_list]") unless input[:access_control_list].nil?
        Hearth::Validator.validate!(input[:canned_access_control_list], ::String, context: "#{context}[:canned_access_control_list]")
      end
    end

    class S3BucketDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3BucketDestination, context: context)
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Hearth::Validator.validate!(input[:output_schema_version], ::String, context: "#{context}[:output_schema_version]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
        StorageLensDataExportEncryption.validate!(input[:encryption], context: "#{context}[:encryption]") unless input[:encryption].nil?
      end
    end

    class S3CopyObjectOperation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3CopyObjectOperation, context: context)
        Hearth::Validator.validate!(input[:target_resource], ::String, context: "#{context}[:target_resource]")
        Hearth::Validator.validate!(input[:canned_access_control_list], ::String, context: "#{context}[:canned_access_control_list]")
        S3GrantList.validate!(input[:access_control_grants], context: "#{context}[:access_control_grants]") unless input[:access_control_grants].nil?
        Hearth::Validator.validate!(input[:metadata_directive], ::String, context: "#{context}[:metadata_directive]")
        Hearth::Validator.validate!(input[:modified_since_constraint], ::Time, context: "#{context}[:modified_since_constraint]")
        S3ObjectMetadata.validate!(input[:new_object_metadata], context: "#{context}[:new_object_metadata]") unless input[:new_object_metadata].nil?
        S3TagSet.validate!(input[:new_object_tagging], context: "#{context}[:new_object_tagging]") unless input[:new_object_tagging].nil?
        Hearth::Validator.validate!(input[:redirect_location], ::String, context: "#{context}[:redirect_location]")
        Hearth::Validator.validate!(input[:requester_pays], ::TrueClass, ::FalseClass, context: "#{context}[:requester_pays]")
        Hearth::Validator.validate!(input[:storage_class], ::String, context: "#{context}[:storage_class]")
        Hearth::Validator.validate!(input[:un_modified_since_constraint], ::Time, context: "#{context}[:un_modified_since_constraint]")
        Hearth::Validator.validate!(input[:sse_aws_kms_key_id], ::String, context: "#{context}[:sse_aws_kms_key_id]")
        Hearth::Validator.validate!(input[:target_key_prefix], ::String, context: "#{context}[:target_key_prefix]")
        Hearth::Validator.validate!(input[:object_lock_legal_hold_status], ::String, context: "#{context}[:object_lock_legal_hold_status]")
        Hearth::Validator.validate!(input[:object_lock_mode], ::String, context: "#{context}[:object_lock_mode]")
        Hearth::Validator.validate!(input[:object_lock_retain_until_date], ::Time, context: "#{context}[:object_lock_retain_until_date]")
        Hearth::Validator.validate!(input[:bucket_key_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:bucket_key_enabled]")
        Hearth::Validator.validate!(input[:checksum_algorithm], ::String, context: "#{context}[:checksum_algorithm]")
      end
    end

    class S3DeleteObjectTaggingOperation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3DeleteObjectTaggingOperation, context: context)
      end
    end

    class S3GeneratedManifestDescriptor
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3GeneratedManifestDescriptor, context: context)
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        JobManifestLocation.validate!(input[:location], context: "#{context}[:location]") unless input[:location].nil?
      end
    end

    class S3Grant
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3Grant, context: context)
        S3Grantee.validate!(input[:grantee], context: "#{context}[:grantee]") unless input[:grantee].nil?
        Hearth::Validator.validate!(input[:permission], ::String, context: "#{context}[:permission]")
      end
    end

    class S3GrantList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          S3Grant.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class S3Grantee
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3Grantee, context: context)
        Hearth::Validator.validate!(input[:type_identifier], ::String, context: "#{context}[:type_identifier]")
        Hearth::Validator.validate!(input[:identifier], ::String, context: "#{context}[:identifier]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
      end
    end

    class S3InitiateRestoreObjectOperation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3InitiateRestoreObjectOperation, context: context)
        Hearth::Validator.validate!(input[:expiration_in_days], ::Integer, context: "#{context}[:expiration_in_days]")
        Hearth::Validator.validate!(input[:glacier_job_tier], ::String, context: "#{context}[:glacier_job_tier]")
      end
    end

    class S3JobManifestGenerator
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3JobManifestGenerator, context: context)
        Hearth::Validator.validate!(input[:expected_bucket_owner], ::String, context: "#{context}[:expected_bucket_owner]")
        Hearth::Validator.validate!(input[:source_bucket], ::String, context: "#{context}[:source_bucket]")
        S3ManifestOutputLocation.validate!(input[:manifest_output_location], context: "#{context}[:manifest_output_location]") unless input[:manifest_output_location].nil?
        JobManifestGeneratorFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Hearth::Validator.validate!(input[:enable_manifest_output], ::TrueClass, ::FalseClass, context: "#{context}[:enable_manifest_output]")
      end
    end

    class S3ManifestOutputLocation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3ManifestOutputLocation, context: context)
        Hearth::Validator.validate!(input[:expected_manifest_bucket_owner], ::String, context: "#{context}[:expected_manifest_bucket_owner]")
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:manifest_prefix], ::String, context: "#{context}[:manifest_prefix]")
        GeneratedManifestEncryption.validate!(input[:manifest_encryption], context: "#{context}[:manifest_encryption]") unless input[:manifest_encryption].nil?
        Hearth::Validator.validate!(input[:manifest_format], ::String, context: "#{context}[:manifest_format]")
      end
    end

    class S3ObjectLockLegalHold
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3ObjectLockLegalHold, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class S3ObjectMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3ObjectMetadata, context: context)
        Hearth::Validator.validate!(input[:cache_control], ::String, context: "#{context}[:cache_control]")
        Hearth::Validator.validate!(input[:content_disposition], ::String, context: "#{context}[:content_disposition]")
        Hearth::Validator.validate!(input[:content_encoding], ::String, context: "#{context}[:content_encoding]")
        Hearth::Validator.validate!(input[:content_language], ::String, context: "#{context}[:content_language]")
        S3UserMetadata.validate!(input[:user_metadata], context: "#{context}[:user_metadata]") unless input[:user_metadata].nil?
        Hearth::Validator.validate!(input[:content_length], ::Integer, context: "#{context}[:content_length]")
        Hearth::Validator.validate!(input[:content_md5], ::String, context: "#{context}[:content_md5]")
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate!(input[:http_expires_date], ::Time, context: "#{context}[:http_expires_date]")
        Hearth::Validator.validate!(input[:requester_charged], ::TrueClass, ::FalseClass, context: "#{context}[:requester_charged]")
        Hearth::Validator.validate!(input[:sse_algorithm], ::String, context: "#{context}[:sse_algorithm]")
      end
    end

    class S3ObjectOwner
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3ObjectOwner, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
      end
    end

    class S3ReplicateObjectOperation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3ReplicateObjectOperation, context: context)
      end
    end

    class S3Retention
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3Retention, context: context)
        Hearth::Validator.validate!(input[:retain_until_date], ::Time, context: "#{context}[:retain_until_date]")
        Hearth::Validator.validate!(input[:mode], ::String, context: "#{context}[:mode]")
      end
    end

    class S3SetObjectAclOperation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3SetObjectAclOperation, context: context)
        S3AccessControlPolicy.validate!(input[:access_control_policy], context: "#{context}[:access_control_policy]") unless input[:access_control_policy].nil?
      end
    end

    class S3SetObjectLegalHoldOperation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3SetObjectLegalHoldOperation, context: context)
        S3ObjectLockLegalHold.validate!(input[:legal_hold], context: "#{context}[:legal_hold]") unless input[:legal_hold].nil?
      end
    end

    class S3SetObjectRetentionOperation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3SetObjectRetentionOperation, context: context)
        Hearth::Validator.validate!(input[:bypass_governance_retention], ::TrueClass, ::FalseClass, context: "#{context}[:bypass_governance_retention]")
        S3Retention.validate!(input[:retention], context: "#{context}[:retention]") unless input[:retention].nil?
      end
    end

    class S3SetObjectTaggingOperation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3SetObjectTaggingOperation, context: context)
        S3TagSet.validate!(input[:tag_set], context: "#{context}[:tag_set]") unless input[:tag_set].nil?
      end
    end

    class S3Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class S3TagSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          S3Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class S3UserMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class SSEKMS
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SSEKMS, context: context)
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
      end
    end

    class SSEKMSEncryption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SSEKMSEncryption, context: context)
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
      end
    end

    class SSES3
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SSES3, context: context)
      end
    end

    class SSES3Encryption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SSES3Encryption, context: context)
      end
    end

    class SelectionCriteria
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SelectionCriteria, context: context)
        Hearth::Validator.validate!(input[:delimiter], ::String, context: "#{context}[:delimiter]")
        Hearth::Validator.validate!(input[:max_depth], ::Integer, context: "#{context}[:max_depth]")
        Hearth::Validator.validate!(input[:min_storage_bytes_percentage], ::Float, context: "#{context}[:min_storage_bytes_percentage]")
      end
    end

    class StorageLensAwsOrg
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StorageLensAwsOrg, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class StorageLensConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StorageLensConfiguration, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        AccountLevel.validate!(input[:account_level], context: "#{context}[:account_level]") unless input[:account_level].nil?
        Include.validate!(input[:include], context: "#{context}[:include]") unless input[:include].nil?
        Exclude.validate!(input[:exclude], context: "#{context}[:exclude]") unless input[:exclude].nil?
        StorageLensDataExport.validate!(input[:data_export], context: "#{context}[:data_export]") unless input[:data_export].nil?
        Hearth::Validator.validate!(input[:is_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:is_enabled]")
        StorageLensAwsOrg.validate!(input[:aws_org], context: "#{context}[:aws_org]") unless input[:aws_org].nil?
        Hearth::Validator.validate!(input[:storage_lens_arn], ::String, context: "#{context}[:storage_lens_arn]")
      end
    end

    class StorageLensConfigurationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ListStorageLensConfigurationEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StorageLensDataExport
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StorageLensDataExport, context: context)
        S3BucketDestination.validate!(input[:s3_bucket_destination], context: "#{context}[:s3_bucket_destination]") unless input[:s3_bucket_destination].nil?
        CloudWatchMetrics.validate!(input[:cloud_watch_metrics], context: "#{context}[:cloud_watch_metrics]") unless input[:cloud_watch_metrics].nil?
      end
    end

    class StorageLensDataExportEncryption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StorageLensDataExportEncryption, context: context)
        SSES3.validate!(input[:sses3], context: "#{context}[:sses3]") unless input[:sses3].nil?
        SSEKMS.validate!(input[:ssekms], context: "#{context}[:ssekms]") unless input[:ssekms].nil?
      end
    end

    class StorageLensTag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StorageLensTag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class StorageLensTags
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          StorageLensTag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Tagging
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tagging, context: context)
        S3TagSet.validate!(input[:tag_set], context: "#{context}[:tag_set]") unless input[:tag_set].nil?
      end
    end

    class TooManyRequestsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyRequestsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyTagsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyTagsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Transition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Transition, context: context)
        Hearth::Validator.validate!(input[:date], ::Time, context: "#{context}[:date]")
        Hearth::Validator.validate!(input[:days], ::Integer, context: "#{context}[:days]")
        Hearth::Validator.validate!(input[:storage_class], ::String, context: "#{context}[:storage_class]")
      end
    end

    class TransitionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Transition.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UpdateJobPriorityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateJobPriorityInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
      end
    end

    class UpdateJobPriorityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateJobPriorityOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
      end
    end

    class UpdateJobStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateJobStatusInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:requested_job_status], ::String, context: "#{context}[:requested_job_status]")
        Hearth::Validator.validate!(input[:status_update_reason], ::String, context: "#{context}[:status_update_reason]")
      end
    end

    class UpdateJobStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateJobStatusOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_update_reason], ::String, context: "#{context}[:status_update_reason]")
      end
    end

    class VpcConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VpcConfiguration, context: context)
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
      end
    end

  end
end
