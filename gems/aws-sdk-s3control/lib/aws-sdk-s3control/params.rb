# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::S3Control
  module Params

    module AbortIncompleteMultipartUpload
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AbortIncompleteMultipartUpload, context: context)
        type = Types::AbortIncompleteMultipartUpload.new
        type.days_after_initiation = params[:days_after_initiation]
        type
      end
    end

    module AccessPoint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessPoint, context: context)
        type = Types::AccessPoint.new
        type.name = params[:name]
        type.network_origin = params[:network_origin]
        type.vpc_configuration = VpcConfiguration.build(params[:vpc_configuration], context: "#{context}[:vpc_configuration]") unless params[:vpc_configuration].nil?
        type.bucket = params[:bucket]
        type.access_point_arn = params[:access_point_arn]
        type.alias = params[:alias]
        type
      end
    end

    module AccessPointList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AccessPoint.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AccountLevel
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccountLevel, context: context)
        type = Types::AccountLevel.new
        type.activity_metrics = ActivityMetrics.build(params[:activity_metrics], context: "#{context}[:activity_metrics]") unless params[:activity_metrics].nil?
        type.bucket_level = BucketLevel.build(params[:bucket_level], context: "#{context}[:bucket_level]") unless params[:bucket_level].nil?
        type
      end
    end

    module ActivityMetrics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActivityMetrics, context: context)
        type = Types::ActivityMetrics.new
        type.is_enabled = params[:is_enabled]
        type
      end
    end

    module AsyncErrorDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AsyncErrorDetails, context: context)
        type = Types::AsyncErrorDetails.new
        type.code = params[:code]
        type.message = params[:message]
        type.resource = params[:resource]
        type.request_id = params[:request_id]
        type
      end
    end

    module AsyncOperation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AsyncOperation, context: context)
        type = Types::AsyncOperation.new
        type.creation_time = params[:creation_time]
        type.operation = params[:operation]
        type.request_token_arn = params[:request_token_arn]
        type.request_parameters = AsyncRequestParameters.build(params[:request_parameters], context: "#{context}[:request_parameters]") unless params[:request_parameters].nil?
        type.request_status = params[:request_status]
        type.response_details = AsyncResponseDetails.build(params[:response_details], context: "#{context}[:response_details]") unless params[:response_details].nil?
        type
      end
    end

    module AsyncRequestParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AsyncRequestParameters, context: context)
        type = Types::AsyncRequestParameters.new
        type.create_multi_region_access_point_request = CreateMultiRegionAccessPointInput.build(params[:create_multi_region_access_point_request], context: "#{context}[:create_multi_region_access_point_request]") unless params[:create_multi_region_access_point_request].nil?
        type.delete_multi_region_access_point_request = DeleteMultiRegionAccessPointInput.build(params[:delete_multi_region_access_point_request], context: "#{context}[:delete_multi_region_access_point_request]") unless params[:delete_multi_region_access_point_request].nil?
        type.put_multi_region_access_point_policy_request = PutMultiRegionAccessPointPolicyInput.build(params[:put_multi_region_access_point_policy_request], context: "#{context}[:put_multi_region_access_point_policy_request]") unless params[:put_multi_region_access_point_policy_request].nil?
        type
      end
    end

    module AsyncResponseDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AsyncResponseDetails, context: context)
        type = Types::AsyncResponseDetails.new
        type.multi_region_access_point_details = MultiRegionAccessPointsAsyncResponse.build(params[:multi_region_access_point_details], context: "#{context}[:multi_region_access_point_details]") unless params[:multi_region_access_point_details].nil?
        type.error_details = AsyncErrorDetails.build(params[:error_details], context: "#{context}[:error_details]") unless params[:error_details].nil?
        type
      end
    end

    module AwsLambdaTransformation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsLambdaTransformation, context: context)
        type = Types::AwsLambdaTransformation.new
        type.function_arn = params[:function_arn]
        type.function_payload = params[:function_payload]
        type
      end
    end

    module BadRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BadRequestException, context: context)
        type = Types::BadRequestException.new
        type.message = params[:message]
        type
      end
    end

    module BucketAlreadyExists
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BucketAlreadyExists, context: context)
        type = Types::BucketAlreadyExists.new
        type
      end
    end

    module BucketAlreadyOwnedByYou
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BucketAlreadyOwnedByYou, context: context)
        type = Types::BucketAlreadyOwnedByYou.new
        type
      end
    end

    module BucketLevel
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BucketLevel, context: context)
        type = Types::BucketLevel.new
        type.activity_metrics = ActivityMetrics.build(params[:activity_metrics], context: "#{context}[:activity_metrics]") unless params[:activity_metrics].nil?
        type.prefix_level = PrefixLevel.build(params[:prefix_level], context: "#{context}[:prefix_level]") unless params[:prefix_level].nil?
        type
      end
    end

    module Buckets
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CloudWatchMetrics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudWatchMetrics, context: context)
        type = Types::CloudWatchMetrics.new
        type.is_enabled = params[:is_enabled]
        type
      end
    end

    module CreateAccessPointForObjectLambdaInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAccessPointForObjectLambdaInput, context: context)
        type = Types::CreateAccessPointForObjectLambdaInput.new
        type.account_id = params[:account_id]
        type.name = params[:name]
        type.configuration = ObjectLambdaConfiguration.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type
      end
    end

    module CreateAccessPointForObjectLambdaOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAccessPointForObjectLambdaOutput, context: context)
        type = Types::CreateAccessPointForObjectLambdaOutput.new
        type.object_lambda_access_point_arn = params[:object_lambda_access_point_arn]
        type
      end
    end

    module CreateAccessPointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAccessPointInput, context: context)
        type = Types::CreateAccessPointInput.new
        type.account_id = params[:account_id]
        type.name = params[:name]
        type.bucket = params[:bucket]
        type.vpc_configuration = VpcConfiguration.build(params[:vpc_configuration], context: "#{context}[:vpc_configuration]") unless params[:vpc_configuration].nil?
        type.public_access_block_configuration = PublicAccessBlockConfiguration.build(params[:public_access_block_configuration], context: "#{context}[:public_access_block_configuration]") unless params[:public_access_block_configuration].nil?
        type
      end
    end

    module CreateAccessPointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAccessPointOutput, context: context)
        type = Types::CreateAccessPointOutput.new
        type.access_point_arn = params[:access_point_arn]
        type.alias = params[:alias]
        type
      end
    end

    module CreateBucketConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBucketConfiguration, context: context)
        type = Types::CreateBucketConfiguration.new
        type.location_constraint = params[:location_constraint]
        type
      end
    end

    module CreateBucketInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBucketInput, context: context)
        type = Types::CreateBucketInput.new
        type.acl = params[:acl]
        type.bucket = params[:bucket]
        type.create_bucket_configuration = CreateBucketConfiguration.build(params[:create_bucket_configuration], context: "#{context}[:create_bucket_configuration]") unless params[:create_bucket_configuration].nil?
        type.grant_full_control = params[:grant_full_control]
        type.grant_read = params[:grant_read]
        type.grant_read_acp = params[:grant_read_acp]
        type.grant_write = params[:grant_write]
        type.grant_write_acp = params[:grant_write_acp]
        type.object_lock_enabled_for_bucket = params[:object_lock_enabled_for_bucket]
        type.outpost_id = params[:outpost_id]
        type
      end
    end

    module CreateBucketOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBucketOutput, context: context)
        type = Types::CreateBucketOutput.new
        type.location = params[:location]
        type.bucket_arn = params[:bucket_arn]
        type
      end
    end

    module CreateJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateJobInput, context: context)
        type = Types::CreateJobInput.new
        type.account_id = params[:account_id]
        type.confirmation_required = params[:confirmation_required]
        type.operation = JobOperation.build(params[:operation], context: "#{context}[:operation]") unless params[:operation].nil?
        type.report = JobReport.build(params[:report], context: "#{context}[:report]") unless params[:report].nil?
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type.manifest = JobManifest.build(params[:manifest], context: "#{context}[:manifest]") unless params[:manifest].nil?
        type.description = params[:description]
        type.priority = params[:priority]
        type.role_arn = params[:role_arn]
        type.tags = S3TagSet.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.manifest_generator = JobManifestGenerator.build(params[:manifest_generator], context: "#{context}[:manifest_generator]") unless params[:manifest_generator].nil?
        type
      end
    end

    module CreateJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateJobOutput, context: context)
        type = Types::CreateJobOutput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module CreateMultiRegionAccessPointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMultiRegionAccessPointInput, context: context)
        type = Types::CreateMultiRegionAccessPointInput.new
        type.name = params[:name]
        type.public_access_block = PublicAccessBlockConfiguration.build(params[:public_access_block], context: "#{context}[:public_access_block]") unless params[:public_access_block].nil?
        type.regions = RegionCreationList.build(params[:regions], context: "#{context}[:regions]") unless params[:regions].nil?
        type
      end
    end

    module CreateMultiRegionAccessPointOperationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMultiRegionAccessPointOperationInput, context: context)
        type = Types::CreateMultiRegionAccessPointOperationInput.new
        type.account_id = params[:account_id]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.details = CreateMultiRegionAccessPointInput.build(params[:details], context: "#{context}[:details]") unless params[:details].nil?
        type
      end
    end

    module CreateMultiRegionAccessPointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMultiRegionAccessPointOutput, context: context)
        type = Types::CreateMultiRegionAccessPointOutput.new
        type.request_token_arn = params[:request_token_arn]
        type
      end
    end

    module DeleteAccessPointForObjectLambdaInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAccessPointForObjectLambdaInput, context: context)
        type = Types::DeleteAccessPointForObjectLambdaInput.new
        type.account_id = params[:account_id]
        type.name = params[:name]
        type
      end
    end

    module DeleteAccessPointForObjectLambdaOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAccessPointForObjectLambdaOutput, context: context)
        type = Types::DeleteAccessPointForObjectLambdaOutput.new
        type
      end
    end

    module DeleteAccessPointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAccessPointInput, context: context)
        type = Types::DeleteAccessPointInput.new
        type.account_id = params[:account_id]
        type.name = params[:name]
        type
      end
    end

    module DeleteAccessPointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAccessPointOutput, context: context)
        type = Types::DeleteAccessPointOutput.new
        type
      end
    end

    module DeleteAccessPointPolicyForObjectLambdaInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAccessPointPolicyForObjectLambdaInput, context: context)
        type = Types::DeleteAccessPointPolicyForObjectLambdaInput.new
        type.account_id = params[:account_id]
        type.name = params[:name]
        type
      end
    end

    module DeleteAccessPointPolicyForObjectLambdaOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAccessPointPolicyForObjectLambdaOutput, context: context)
        type = Types::DeleteAccessPointPolicyForObjectLambdaOutput.new
        type
      end
    end

    module DeleteAccessPointPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAccessPointPolicyInput, context: context)
        type = Types::DeleteAccessPointPolicyInput.new
        type.account_id = params[:account_id]
        type.name = params[:name]
        type
      end
    end

    module DeleteAccessPointPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAccessPointPolicyOutput, context: context)
        type = Types::DeleteAccessPointPolicyOutput.new
        type
      end
    end

    module DeleteBucketInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBucketInput, context: context)
        type = Types::DeleteBucketInput.new
        type.account_id = params[:account_id]
        type.bucket = params[:bucket]
        type
      end
    end

    module DeleteBucketLifecycleConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBucketLifecycleConfigurationInput, context: context)
        type = Types::DeleteBucketLifecycleConfigurationInput.new
        type.account_id = params[:account_id]
        type.bucket = params[:bucket]
        type
      end
    end

    module DeleteBucketLifecycleConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBucketLifecycleConfigurationOutput, context: context)
        type = Types::DeleteBucketLifecycleConfigurationOutput.new
        type
      end
    end

    module DeleteBucketOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBucketOutput, context: context)
        type = Types::DeleteBucketOutput.new
        type
      end
    end

    module DeleteBucketPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBucketPolicyInput, context: context)
        type = Types::DeleteBucketPolicyInput.new
        type.account_id = params[:account_id]
        type.bucket = params[:bucket]
        type
      end
    end

    module DeleteBucketPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBucketPolicyOutput, context: context)
        type = Types::DeleteBucketPolicyOutput.new
        type
      end
    end

    module DeleteBucketTaggingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBucketTaggingInput, context: context)
        type = Types::DeleteBucketTaggingInput.new
        type.account_id = params[:account_id]
        type.bucket = params[:bucket]
        type
      end
    end

    module DeleteBucketTaggingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBucketTaggingOutput, context: context)
        type = Types::DeleteBucketTaggingOutput.new
        type
      end
    end

    module DeleteJobTaggingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteJobTaggingInput, context: context)
        type = Types::DeleteJobTaggingInput.new
        type.account_id = params[:account_id]
        type.job_id = params[:job_id]
        type
      end
    end

    module DeleteJobTaggingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteJobTaggingOutput, context: context)
        type = Types::DeleteJobTaggingOutput.new
        type
      end
    end

    module DeleteMultiRegionAccessPointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMultiRegionAccessPointInput, context: context)
        type = Types::DeleteMultiRegionAccessPointInput.new
        type.name = params[:name]
        type
      end
    end

    module DeleteMultiRegionAccessPointOperationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMultiRegionAccessPointOperationInput, context: context)
        type = Types::DeleteMultiRegionAccessPointOperationInput.new
        type.account_id = params[:account_id]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.details = DeleteMultiRegionAccessPointInput.build(params[:details], context: "#{context}[:details]") unless params[:details].nil?
        type
      end
    end

    module DeleteMultiRegionAccessPointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMultiRegionAccessPointOutput, context: context)
        type = Types::DeleteMultiRegionAccessPointOutput.new
        type.request_token_arn = params[:request_token_arn]
        type
      end
    end

    module DeletePublicAccessBlockInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePublicAccessBlockInput, context: context)
        type = Types::DeletePublicAccessBlockInput.new
        type.account_id = params[:account_id]
        type
      end
    end

    module DeletePublicAccessBlockOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePublicAccessBlockOutput, context: context)
        type = Types::DeletePublicAccessBlockOutput.new
        type
      end
    end

    module DeleteStorageLensConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteStorageLensConfigurationInput, context: context)
        type = Types::DeleteStorageLensConfigurationInput.new
        type.config_id = params[:config_id]
        type.account_id = params[:account_id]
        type
      end
    end

    module DeleteStorageLensConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteStorageLensConfigurationOutput, context: context)
        type = Types::DeleteStorageLensConfigurationOutput.new
        type
      end
    end

    module DeleteStorageLensConfigurationTaggingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteStorageLensConfigurationTaggingInput, context: context)
        type = Types::DeleteStorageLensConfigurationTaggingInput.new
        type.config_id = params[:config_id]
        type.account_id = params[:account_id]
        type
      end
    end

    module DeleteStorageLensConfigurationTaggingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteStorageLensConfigurationTaggingOutput, context: context)
        type = Types::DeleteStorageLensConfigurationTaggingOutput.new
        type
      end
    end

    module DescribeJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeJobInput, context: context)
        type = Types::DescribeJobInput.new
        type.account_id = params[:account_id]
        type.job_id = params[:job_id]
        type
      end
    end

    module DescribeJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeJobOutput, context: context)
        type = Types::DescribeJobOutput.new
        type.job = JobDescriptor.build(params[:job], context: "#{context}[:job]") unless params[:job].nil?
        type
      end
    end

    module DescribeMultiRegionAccessPointOperationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeMultiRegionAccessPointOperationInput, context: context)
        type = Types::DescribeMultiRegionAccessPointOperationInput.new
        type.account_id = params[:account_id]
        type.request_token_arn = params[:request_token_arn]
        type
      end
    end

    module DescribeMultiRegionAccessPointOperationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeMultiRegionAccessPointOperationOutput, context: context)
        type = Types::DescribeMultiRegionAccessPointOperationOutput.new
        type.async_operation = AsyncOperation.build(params[:async_operation], context: "#{context}[:async_operation]") unless params[:async_operation].nil?
        type
      end
    end

    module Endpoints
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module EstablishedMultiRegionAccessPointPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EstablishedMultiRegionAccessPointPolicy, context: context)
        type = Types::EstablishedMultiRegionAccessPointPolicy.new
        type.policy = params[:policy]
        type
      end
    end

    module Exclude
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Exclude, context: context)
        type = Types::Exclude.new
        type.buckets = Buckets.build(params[:buckets], context: "#{context}[:buckets]") unless params[:buckets].nil?
        type.regions = Regions.build(params[:regions], context: "#{context}[:regions]") unless params[:regions].nil?
        type
      end
    end

    module GeneratedManifestEncryption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GeneratedManifestEncryption, context: context)
        type = Types::GeneratedManifestEncryption.new
        type.sses3 = SSES3Encryption.build(params[:sses3], context: "#{context}[:sses3]") unless params[:sses3].nil?
        type.ssekms = SSEKMSEncryption.build(params[:ssekms], context: "#{context}[:ssekms]") unless params[:ssekms].nil?
        type
      end
    end

    module GetAccessPointConfigurationForObjectLambdaInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAccessPointConfigurationForObjectLambdaInput, context: context)
        type = Types::GetAccessPointConfigurationForObjectLambdaInput.new
        type.account_id = params[:account_id]
        type.name = params[:name]
        type
      end
    end

    module GetAccessPointConfigurationForObjectLambdaOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAccessPointConfigurationForObjectLambdaOutput, context: context)
        type = Types::GetAccessPointConfigurationForObjectLambdaOutput.new
        type.configuration = ObjectLambdaConfiguration.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type
      end
    end

    module GetAccessPointForObjectLambdaInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAccessPointForObjectLambdaInput, context: context)
        type = Types::GetAccessPointForObjectLambdaInput.new
        type.account_id = params[:account_id]
        type.name = params[:name]
        type
      end
    end

    module GetAccessPointForObjectLambdaOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAccessPointForObjectLambdaOutput, context: context)
        type = Types::GetAccessPointForObjectLambdaOutput.new
        type.name = params[:name]
        type.public_access_block_configuration = PublicAccessBlockConfiguration.build(params[:public_access_block_configuration], context: "#{context}[:public_access_block_configuration]") unless params[:public_access_block_configuration].nil?
        type.creation_date = params[:creation_date]
        type
      end
    end

    module GetAccessPointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAccessPointInput, context: context)
        type = Types::GetAccessPointInput.new
        type.account_id = params[:account_id]
        type.name = params[:name]
        type
      end
    end

    module GetAccessPointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAccessPointOutput, context: context)
        type = Types::GetAccessPointOutput.new
        type.name = params[:name]
        type.bucket = params[:bucket]
        type.network_origin = params[:network_origin]
        type.vpc_configuration = VpcConfiguration.build(params[:vpc_configuration], context: "#{context}[:vpc_configuration]") unless params[:vpc_configuration].nil?
        type.public_access_block_configuration = PublicAccessBlockConfiguration.build(params[:public_access_block_configuration], context: "#{context}[:public_access_block_configuration]") unless params[:public_access_block_configuration].nil?
        type.creation_date = params[:creation_date]
        type.alias = params[:alias]
        type.access_point_arn = params[:access_point_arn]
        type.endpoints = Endpoints.build(params[:endpoints], context: "#{context}[:endpoints]") unless params[:endpoints].nil?
        type
      end
    end

    module GetAccessPointPolicyForObjectLambdaInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAccessPointPolicyForObjectLambdaInput, context: context)
        type = Types::GetAccessPointPolicyForObjectLambdaInput.new
        type.account_id = params[:account_id]
        type.name = params[:name]
        type
      end
    end

    module GetAccessPointPolicyForObjectLambdaOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAccessPointPolicyForObjectLambdaOutput, context: context)
        type = Types::GetAccessPointPolicyForObjectLambdaOutput.new
        type.policy = params[:policy]
        type
      end
    end

    module GetAccessPointPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAccessPointPolicyInput, context: context)
        type = Types::GetAccessPointPolicyInput.new
        type.account_id = params[:account_id]
        type.name = params[:name]
        type
      end
    end

    module GetAccessPointPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAccessPointPolicyOutput, context: context)
        type = Types::GetAccessPointPolicyOutput.new
        type.policy = params[:policy]
        type
      end
    end

    module GetAccessPointPolicyStatusForObjectLambdaInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAccessPointPolicyStatusForObjectLambdaInput, context: context)
        type = Types::GetAccessPointPolicyStatusForObjectLambdaInput.new
        type.account_id = params[:account_id]
        type.name = params[:name]
        type
      end
    end

    module GetAccessPointPolicyStatusForObjectLambdaOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAccessPointPolicyStatusForObjectLambdaOutput, context: context)
        type = Types::GetAccessPointPolicyStatusForObjectLambdaOutput.new
        type.policy_status = PolicyStatus.build(params[:policy_status], context: "#{context}[:policy_status]") unless params[:policy_status].nil?
        type
      end
    end

    module GetAccessPointPolicyStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAccessPointPolicyStatusInput, context: context)
        type = Types::GetAccessPointPolicyStatusInput.new
        type.account_id = params[:account_id]
        type.name = params[:name]
        type
      end
    end

    module GetAccessPointPolicyStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAccessPointPolicyStatusOutput, context: context)
        type = Types::GetAccessPointPolicyStatusOutput.new
        type.policy_status = PolicyStatus.build(params[:policy_status], context: "#{context}[:policy_status]") unless params[:policy_status].nil?
        type
      end
    end

    module GetBucketInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBucketInput, context: context)
        type = Types::GetBucketInput.new
        type.account_id = params[:account_id]
        type.bucket = params[:bucket]
        type
      end
    end

    module GetBucketLifecycleConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBucketLifecycleConfigurationInput, context: context)
        type = Types::GetBucketLifecycleConfigurationInput.new
        type.account_id = params[:account_id]
        type.bucket = params[:bucket]
        type
      end
    end

    module GetBucketLifecycleConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBucketLifecycleConfigurationOutput, context: context)
        type = Types::GetBucketLifecycleConfigurationOutput.new
        type.rules = LifecycleRules.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type
      end
    end

    module GetBucketOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBucketOutput, context: context)
        type = Types::GetBucketOutput.new
        type.bucket = params[:bucket]
        type.public_access_block_enabled = params[:public_access_block_enabled]
        type.creation_date = params[:creation_date]
        type
      end
    end

    module GetBucketPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBucketPolicyInput, context: context)
        type = Types::GetBucketPolicyInput.new
        type.account_id = params[:account_id]
        type.bucket = params[:bucket]
        type
      end
    end

    module GetBucketPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBucketPolicyOutput, context: context)
        type = Types::GetBucketPolicyOutput.new
        type.policy = params[:policy]
        type
      end
    end

    module GetBucketTaggingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBucketTaggingInput, context: context)
        type = Types::GetBucketTaggingInput.new
        type.account_id = params[:account_id]
        type.bucket = params[:bucket]
        type
      end
    end

    module GetBucketTaggingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBucketTaggingOutput, context: context)
        type = Types::GetBucketTaggingOutput.new
        type.tag_set = S3TagSet.build(params[:tag_set], context: "#{context}[:tag_set]") unless params[:tag_set].nil?
        type
      end
    end

    module GetJobTaggingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetJobTaggingInput, context: context)
        type = Types::GetJobTaggingInput.new
        type.account_id = params[:account_id]
        type.job_id = params[:job_id]
        type
      end
    end

    module GetJobTaggingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetJobTaggingOutput, context: context)
        type = Types::GetJobTaggingOutput.new
        type.tags = S3TagSet.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module GetMultiRegionAccessPointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMultiRegionAccessPointInput, context: context)
        type = Types::GetMultiRegionAccessPointInput.new
        type.account_id = params[:account_id]
        type.name = params[:name]
        type
      end
    end

    module GetMultiRegionAccessPointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMultiRegionAccessPointOutput, context: context)
        type = Types::GetMultiRegionAccessPointOutput.new
        type.access_point = MultiRegionAccessPointReport.build(params[:access_point], context: "#{context}[:access_point]") unless params[:access_point].nil?
        type
      end
    end

    module GetMultiRegionAccessPointPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMultiRegionAccessPointPolicyInput, context: context)
        type = Types::GetMultiRegionAccessPointPolicyInput.new
        type.account_id = params[:account_id]
        type.name = params[:name]
        type
      end
    end

    module GetMultiRegionAccessPointPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMultiRegionAccessPointPolicyOutput, context: context)
        type = Types::GetMultiRegionAccessPointPolicyOutput.new
        type.policy = MultiRegionAccessPointPolicyDocument.build(params[:policy], context: "#{context}[:policy]") unless params[:policy].nil?
        type
      end
    end

    module GetMultiRegionAccessPointPolicyStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMultiRegionAccessPointPolicyStatusInput, context: context)
        type = Types::GetMultiRegionAccessPointPolicyStatusInput.new
        type.account_id = params[:account_id]
        type.name = params[:name]
        type
      end
    end

    module GetMultiRegionAccessPointPolicyStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMultiRegionAccessPointPolicyStatusOutput, context: context)
        type = Types::GetMultiRegionAccessPointPolicyStatusOutput.new
        type.established = PolicyStatus.build(params[:established], context: "#{context}[:established]") unless params[:established].nil?
        type
      end
    end

    module GetPublicAccessBlockInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPublicAccessBlockInput, context: context)
        type = Types::GetPublicAccessBlockInput.new
        type.account_id = params[:account_id]
        type
      end
    end

    module GetPublicAccessBlockOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPublicAccessBlockOutput, context: context)
        type = Types::GetPublicAccessBlockOutput.new
        type.public_access_block_configuration = PublicAccessBlockConfiguration.build(params[:public_access_block_configuration], context: "#{context}[:public_access_block_configuration]") unless params[:public_access_block_configuration].nil?
        type
      end
    end

    module GetStorageLensConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetStorageLensConfigurationInput, context: context)
        type = Types::GetStorageLensConfigurationInput.new
        type.config_id = params[:config_id]
        type.account_id = params[:account_id]
        type
      end
    end

    module GetStorageLensConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetStorageLensConfigurationOutput, context: context)
        type = Types::GetStorageLensConfigurationOutput.new
        type.storage_lens_configuration = StorageLensConfiguration.build(params[:storage_lens_configuration], context: "#{context}[:storage_lens_configuration]") unless params[:storage_lens_configuration].nil?
        type
      end
    end

    module GetStorageLensConfigurationTaggingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetStorageLensConfigurationTaggingInput, context: context)
        type = Types::GetStorageLensConfigurationTaggingInput.new
        type.config_id = params[:config_id]
        type.account_id = params[:account_id]
        type
      end
    end

    module GetStorageLensConfigurationTaggingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetStorageLensConfigurationTaggingOutput, context: context)
        type = Types::GetStorageLensConfigurationTaggingOutput.new
        type.tags = StorageLensTags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module IdempotencyException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IdempotencyException, context: context)
        type = Types::IdempotencyException.new
        type.message = params[:message]
        type
      end
    end

    module Include
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Include, context: context)
        type = Types::Include.new
        type.buckets = Buckets.build(params[:buckets], context: "#{context}[:buckets]") unless params[:buckets].nil?
        type.regions = Regions.build(params[:regions], context: "#{context}[:regions]") unless params[:regions].nil?
        type
      end
    end

    module InternalServiceException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServiceException, context: context)
        type = Types::InternalServiceException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidNextTokenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidNextTokenException, context: context)
        type = Types::InvalidNextTokenException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidRequestException, context: context)
        type = Types::InvalidRequestException.new
        type.message = params[:message]
        type
      end
    end

    module JobDescriptor
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobDescriptor, context: context)
        type = Types::JobDescriptor.new
        type.job_id = params[:job_id]
        type.confirmation_required = params[:confirmation_required]
        type.description = params[:description]
        type.job_arn = params[:job_arn]
        type.status = params[:status]
        type.manifest = JobManifest.build(params[:manifest], context: "#{context}[:manifest]") unless params[:manifest].nil?
        type.operation = JobOperation.build(params[:operation], context: "#{context}[:operation]") unless params[:operation].nil?
        type.priority = params[:priority]
        type.progress_summary = JobProgressSummary.build(params[:progress_summary], context: "#{context}[:progress_summary]") unless params[:progress_summary].nil?
        type.status_update_reason = params[:status_update_reason]
        type.failure_reasons = JobFailureList.build(params[:failure_reasons], context: "#{context}[:failure_reasons]") unless params[:failure_reasons].nil?
        type.report = JobReport.build(params[:report], context: "#{context}[:report]") unless params[:report].nil?
        type.creation_time = params[:creation_time]
        type.termination_date = params[:termination_date]
        type.role_arn = params[:role_arn]
        type.suspended_date = params[:suspended_date]
        type.suspended_cause = params[:suspended_cause]
        type.manifest_generator = JobManifestGenerator.build(params[:manifest_generator], context: "#{context}[:manifest_generator]") unless params[:manifest_generator].nil?
        type.generated_manifest_descriptor = S3GeneratedManifestDescriptor.build(params[:generated_manifest_descriptor], context: "#{context}[:generated_manifest_descriptor]") unless params[:generated_manifest_descriptor].nil?
        type
      end
    end

    module JobFailure
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobFailure, context: context)
        type = Types::JobFailure.new
        type.failure_code = params[:failure_code]
        type.failure_reason = params[:failure_reason]
        type
      end
    end

    module JobFailureList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << JobFailure.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module JobListDescriptor
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobListDescriptor, context: context)
        type = Types::JobListDescriptor.new
        type.job_id = params[:job_id]
        type.description = params[:description]
        type.operation = params[:operation]
        type.priority = params[:priority]
        type.status = params[:status]
        type.creation_time = params[:creation_time]
        type.termination_date = params[:termination_date]
        type.progress_summary = JobProgressSummary.build(params[:progress_summary], context: "#{context}[:progress_summary]") unless params[:progress_summary].nil?
        type
      end
    end

    module JobListDescriptorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << JobListDescriptor.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module JobManifest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobManifest, context: context)
        type = Types::JobManifest.new
        type.spec = JobManifestSpec.build(params[:spec], context: "#{context}[:spec]") unless params[:spec].nil?
        type.location = JobManifestLocation.build(params[:location], context: "#{context}[:location]") unless params[:location].nil?
        type
      end
    end

    module JobManifestFieldList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module JobManifestGenerator
      def self.build(params, context: '')
        return params if params.is_a?(Types::JobManifestGenerator)
        Hearth::Validator.validate!(params, ::Hash, Types::JobManifestGenerator, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :s3_job_manifest_generator
          Types::JobManifestGenerator::S3JobManifestGenerator.new(
            (S3JobManifestGenerator.build(params[:s3_job_manifest_generator], context: "#{context}[:s3_job_manifest_generator]") unless params[:s3_job_manifest_generator].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :s3_job_manifest_generator set"
        end
      end
    end

    module JobManifestGeneratorFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobManifestGeneratorFilter, context: context)
        type = Types::JobManifestGeneratorFilter.new
        type.eligible_for_replication = params[:eligible_for_replication]
        type.created_after = params[:created_after]
        type.created_before = params[:created_before]
        type.object_replication_statuses = ReplicationStatusFilterList.build(params[:object_replication_statuses], context: "#{context}[:object_replication_statuses]") unless params[:object_replication_statuses].nil?
        type
      end
    end

    module JobManifestLocation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobManifestLocation, context: context)
        type = Types::JobManifestLocation.new
        type.object_arn = params[:object_arn]
        type.object_version_id = params[:object_version_id]
        type.e_tag = params[:e_tag]
        type
      end
    end

    module JobManifestSpec
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobManifestSpec, context: context)
        type = Types::JobManifestSpec.new
        type.format = params[:format]
        type.fields = JobManifestFieldList.build(params[:fields], context: "#{context}[:fields]") unless params[:fields].nil?
        type
      end
    end

    module JobOperation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobOperation, context: context)
        type = Types::JobOperation.new
        type.lambda_invoke = LambdaInvokeOperation.build(params[:lambda_invoke], context: "#{context}[:lambda_invoke]") unless params[:lambda_invoke].nil?
        type.s3_put_object_copy = S3CopyObjectOperation.build(params[:s3_put_object_copy], context: "#{context}[:s3_put_object_copy]") unless params[:s3_put_object_copy].nil?
        type.s3_put_object_acl = S3SetObjectAclOperation.build(params[:s3_put_object_acl], context: "#{context}[:s3_put_object_acl]") unless params[:s3_put_object_acl].nil?
        type.s3_put_object_tagging = S3SetObjectTaggingOperation.build(params[:s3_put_object_tagging], context: "#{context}[:s3_put_object_tagging]") unless params[:s3_put_object_tagging].nil?
        type.s3_delete_object_tagging = S3DeleteObjectTaggingOperation.build(params[:s3_delete_object_tagging], context: "#{context}[:s3_delete_object_tagging]") unless params[:s3_delete_object_tagging].nil?
        type.s3_initiate_restore_object = S3InitiateRestoreObjectOperation.build(params[:s3_initiate_restore_object], context: "#{context}[:s3_initiate_restore_object]") unless params[:s3_initiate_restore_object].nil?
        type.s3_put_object_legal_hold = S3SetObjectLegalHoldOperation.build(params[:s3_put_object_legal_hold], context: "#{context}[:s3_put_object_legal_hold]") unless params[:s3_put_object_legal_hold].nil?
        type.s3_put_object_retention = S3SetObjectRetentionOperation.build(params[:s3_put_object_retention], context: "#{context}[:s3_put_object_retention]") unless params[:s3_put_object_retention].nil?
        type.s3_replicate_object = S3ReplicateObjectOperation.build(params[:s3_replicate_object], context: "#{context}[:s3_replicate_object]") unless params[:s3_replicate_object].nil?
        type
      end
    end

    module JobProgressSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobProgressSummary, context: context)
        type = Types::JobProgressSummary.new
        type.total_number_of_tasks = params[:total_number_of_tasks]
        type.number_of_tasks_succeeded = params[:number_of_tasks_succeeded]
        type.number_of_tasks_failed = params[:number_of_tasks_failed]
        type.timers = JobTimers.build(params[:timers], context: "#{context}[:timers]") unless params[:timers].nil?
        type
      end
    end

    module JobReport
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobReport, context: context)
        type = Types::JobReport.new
        type.bucket = params[:bucket]
        type.format = params[:format]
        type.enabled = params[:enabled]
        type.prefix = params[:prefix]
        type.report_scope = params[:report_scope]
        type
      end
    end

    module JobStatusException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobStatusException, context: context)
        type = Types::JobStatusException.new
        type.message = params[:message]
        type
      end
    end

    module JobStatusList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module JobTimers
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobTimers, context: context)
        type = Types::JobTimers.new
        type.elapsed_time_in_active_seconds = params[:elapsed_time_in_active_seconds]
        type
      end
    end

    module LambdaInvokeOperation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LambdaInvokeOperation, context: context)
        type = Types::LambdaInvokeOperation.new
        type.function_arn = params[:function_arn]
        type
      end
    end

    module LifecycleConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LifecycleConfiguration, context: context)
        type = Types::LifecycleConfiguration.new
        type.rules = LifecycleRules.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type
      end
    end

    module LifecycleExpiration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LifecycleExpiration, context: context)
        type = Types::LifecycleExpiration.new
        type.date = params[:date]
        type.days = params[:days]
        type.expired_object_delete_marker = params[:expired_object_delete_marker]
        type
      end
    end

    module LifecycleRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LifecycleRule, context: context)
        type = Types::LifecycleRule.new
        type.expiration = LifecycleExpiration.build(params[:expiration], context: "#{context}[:expiration]") unless params[:expiration].nil?
        type.id = params[:id]
        type.filter = LifecycleRuleFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.status = params[:status]
        type.transitions = TransitionList.build(params[:transitions], context: "#{context}[:transitions]") unless params[:transitions].nil?
        type.noncurrent_version_transitions = NoncurrentVersionTransitionList.build(params[:noncurrent_version_transitions], context: "#{context}[:noncurrent_version_transitions]") unless params[:noncurrent_version_transitions].nil?
        type.noncurrent_version_expiration = NoncurrentVersionExpiration.build(params[:noncurrent_version_expiration], context: "#{context}[:noncurrent_version_expiration]") unless params[:noncurrent_version_expiration].nil?
        type.abort_incomplete_multipart_upload = AbortIncompleteMultipartUpload.build(params[:abort_incomplete_multipart_upload], context: "#{context}[:abort_incomplete_multipart_upload]") unless params[:abort_incomplete_multipart_upload].nil?
        type
      end
    end

    module LifecycleRuleAndOperator
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LifecycleRuleAndOperator, context: context)
        type = Types::LifecycleRuleAndOperator.new
        type.prefix = params[:prefix]
        type.tags = S3TagSet.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module LifecycleRuleFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LifecycleRuleFilter, context: context)
        type = Types::LifecycleRuleFilter.new
        type.prefix = params[:prefix]
        type.tag = S3Tag.build(params[:tag], context: "#{context}[:tag]") unless params[:tag].nil?
        type.and = LifecycleRuleAndOperator.build(params[:and], context: "#{context}[:and]") unless params[:and].nil?
        type
      end
    end

    module LifecycleRules
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LifecycleRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListAccessPointsForObjectLambdaInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAccessPointsForObjectLambdaInput, context: context)
        type = Types::ListAccessPointsForObjectLambdaInput.new
        type.account_id = params[:account_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListAccessPointsForObjectLambdaOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAccessPointsForObjectLambdaOutput, context: context)
        type = Types::ListAccessPointsForObjectLambdaOutput.new
        type.object_lambda_access_point_list = ObjectLambdaAccessPointList.build(params[:object_lambda_access_point_list], context: "#{context}[:object_lambda_access_point_list]") unless params[:object_lambda_access_point_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAccessPointsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAccessPointsInput, context: context)
        type = Types::ListAccessPointsInput.new
        type.account_id = params[:account_id]
        type.bucket = params[:bucket]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListAccessPointsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAccessPointsOutput, context: context)
        type = Types::ListAccessPointsOutput.new
        type.access_point_list = AccessPointList.build(params[:access_point_list], context: "#{context}[:access_point_list]") unless params[:access_point_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListJobsInput, context: context)
        type = Types::ListJobsInput.new
        type.account_id = params[:account_id]
        type.job_statuses = JobStatusList.build(params[:job_statuses], context: "#{context}[:job_statuses]") unless params[:job_statuses].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListJobsOutput, context: context)
        type = Types::ListJobsOutput.new
        type.next_token = params[:next_token]
        type.jobs = JobListDescriptorList.build(params[:jobs], context: "#{context}[:jobs]") unless params[:jobs].nil?
        type
      end
    end

    module ListMultiRegionAccessPointsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMultiRegionAccessPointsInput, context: context)
        type = Types::ListMultiRegionAccessPointsInput.new
        type.account_id = params[:account_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListMultiRegionAccessPointsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMultiRegionAccessPointsOutput, context: context)
        type = Types::ListMultiRegionAccessPointsOutput.new
        type.access_points = MultiRegionAccessPointReportList.build(params[:access_points], context: "#{context}[:access_points]") unless params[:access_points].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListRegionalBucketsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRegionalBucketsInput, context: context)
        type = Types::ListRegionalBucketsInput.new
        type.account_id = params[:account_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.outpost_id = params[:outpost_id]
        type
      end
    end

    module ListRegionalBucketsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRegionalBucketsOutput, context: context)
        type = Types::ListRegionalBucketsOutput.new
        type.regional_bucket_list = RegionalBucketList.build(params[:regional_bucket_list], context: "#{context}[:regional_bucket_list]") unless params[:regional_bucket_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListStorageLensConfigurationEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStorageLensConfigurationEntry, context: context)
        type = Types::ListStorageLensConfigurationEntry.new
        type.id = params[:id]
        type.storage_lens_arn = params[:storage_lens_arn]
        type.home_region = params[:home_region]
        type.is_enabled = params[:is_enabled]
        type
      end
    end

    module ListStorageLensConfigurationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStorageLensConfigurationsInput, context: context)
        type = Types::ListStorageLensConfigurationsInput.new
        type.account_id = params[:account_id]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListStorageLensConfigurationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStorageLensConfigurationsOutput, context: context)
        type = Types::ListStorageLensConfigurationsOutput.new
        type.next_token = params[:next_token]
        type.storage_lens_configuration_list = StorageLensConfigurationList.build(params[:storage_lens_configuration_list], context: "#{context}[:storage_lens_configuration_list]") unless params[:storage_lens_configuration_list].nil?
        type
      end
    end

    module MultiRegionAccessPointPolicyDocument
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MultiRegionAccessPointPolicyDocument, context: context)
        type = Types::MultiRegionAccessPointPolicyDocument.new
        type.established = EstablishedMultiRegionAccessPointPolicy.build(params[:established], context: "#{context}[:established]") unless params[:established].nil?
        type.proposed = ProposedMultiRegionAccessPointPolicy.build(params[:proposed], context: "#{context}[:proposed]") unless params[:proposed].nil?
        type
      end
    end

    module MultiRegionAccessPointRegionalResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MultiRegionAccessPointRegionalResponse, context: context)
        type = Types::MultiRegionAccessPointRegionalResponse.new
        type.name = params[:name]
        type.request_status = params[:request_status]
        type
      end
    end

    module MultiRegionAccessPointRegionalResponseList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MultiRegionAccessPointRegionalResponse.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MultiRegionAccessPointReport
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MultiRegionAccessPointReport, context: context)
        type = Types::MultiRegionAccessPointReport.new
        type.name = params[:name]
        type.alias = params[:alias]
        type.created_at = params[:created_at]
        type.public_access_block = PublicAccessBlockConfiguration.build(params[:public_access_block], context: "#{context}[:public_access_block]") unless params[:public_access_block].nil?
        type.status = params[:status]
        type.regions = RegionReportList.build(params[:regions], context: "#{context}[:regions]") unless params[:regions].nil?
        type
      end
    end

    module MultiRegionAccessPointReportList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MultiRegionAccessPointReport.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MultiRegionAccessPointsAsyncResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MultiRegionAccessPointsAsyncResponse, context: context)
        type = Types::MultiRegionAccessPointsAsyncResponse.new
        type.regions = MultiRegionAccessPointRegionalResponseList.build(params[:regions], context: "#{context}[:regions]") unless params[:regions].nil?
        type
      end
    end

    module NoSuchPublicAccessBlockConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NoSuchPublicAccessBlockConfiguration, context: context)
        type = Types::NoSuchPublicAccessBlockConfiguration.new
        type.message = params[:message]
        type
      end
    end

    module NoncurrentVersionExpiration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NoncurrentVersionExpiration, context: context)
        type = Types::NoncurrentVersionExpiration.new
        type.noncurrent_days = params[:noncurrent_days]
        type
      end
    end

    module NoncurrentVersionTransition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NoncurrentVersionTransition, context: context)
        type = Types::NoncurrentVersionTransition.new
        type.noncurrent_days = params[:noncurrent_days]
        type.storage_class = params[:storage_class]
        type
      end
    end

    module NoncurrentVersionTransitionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NoncurrentVersionTransition.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotFoundException, context: context)
        type = Types::NotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module ObjectLambdaAccessPoint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ObjectLambdaAccessPoint, context: context)
        type = Types::ObjectLambdaAccessPoint.new
        type.name = params[:name]
        type.object_lambda_access_point_arn = params[:object_lambda_access_point_arn]
        type
      end
    end

    module ObjectLambdaAccessPointList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ObjectLambdaAccessPoint.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ObjectLambdaAllowedFeaturesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ObjectLambdaConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ObjectLambdaConfiguration, context: context)
        type = Types::ObjectLambdaConfiguration.new
        type.supporting_access_point = params[:supporting_access_point]
        type.cloud_watch_metrics_enabled = params[:cloud_watch_metrics_enabled]
        type.allowed_features = ObjectLambdaAllowedFeaturesList.build(params[:allowed_features], context: "#{context}[:allowed_features]") unless params[:allowed_features].nil?
        type.transformation_configurations = ObjectLambdaTransformationConfigurationsList.build(params[:transformation_configurations], context: "#{context}[:transformation_configurations]") unless params[:transformation_configurations].nil?
        type
      end
    end

    module ObjectLambdaContentTransformation
      def self.build(params, context: '')
        return params if params.is_a?(Types::ObjectLambdaContentTransformation)
        Hearth::Validator.validate!(params, ::Hash, Types::ObjectLambdaContentTransformation, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :aws_lambda
          Types::ObjectLambdaContentTransformation::AwsLambda.new(
            (AwsLambdaTransformation.build(params[:aws_lambda], context: "#{context}[:aws_lambda]") unless params[:aws_lambda].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :aws_lambda set"
        end
      end
    end

    module ObjectLambdaTransformationConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ObjectLambdaTransformationConfiguration, context: context)
        type = Types::ObjectLambdaTransformationConfiguration.new
        type.actions = ObjectLambdaTransformationConfigurationActionsList.build(params[:actions], context: "#{context}[:actions]") unless params[:actions].nil?
        type.content_transformation = ObjectLambdaContentTransformation.build(params[:content_transformation], context: "#{context}[:content_transformation]") unless params[:content_transformation].nil?
        type
      end
    end

    module ObjectLambdaTransformationConfigurationActionsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ObjectLambdaTransformationConfigurationsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ObjectLambdaTransformationConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PolicyStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PolicyStatus, context: context)
        type = Types::PolicyStatus.new
        type.is_public = params[:is_public]
        type
      end
    end

    module PrefixLevel
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PrefixLevel, context: context)
        type = Types::PrefixLevel.new
        type.storage_metrics = PrefixLevelStorageMetrics.build(params[:storage_metrics], context: "#{context}[:storage_metrics]") unless params[:storage_metrics].nil?
        type
      end
    end

    module PrefixLevelStorageMetrics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PrefixLevelStorageMetrics, context: context)
        type = Types::PrefixLevelStorageMetrics.new
        type.is_enabled = params[:is_enabled]
        type.selection_criteria = SelectionCriteria.build(params[:selection_criteria], context: "#{context}[:selection_criteria]") unless params[:selection_criteria].nil?
        type
      end
    end

    module ProposedMultiRegionAccessPointPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProposedMultiRegionAccessPointPolicy, context: context)
        type = Types::ProposedMultiRegionAccessPointPolicy.new
        type.policy = params[:policy]
        type
      end
    end

    module PublicAccessBlockConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PublicAccessBlockConfiguration, context: context)
        type = Types::PublicAccessBlockConfiguration.new
        type.block_public_acls = params[:block_public_acls]
        type.ignore_public_acls = params[:ignore_public_acls]
        type.block_public_policy = params[:block_public_policy]
        type.restrict_public_buckets = params[:restrict_public_buckets]
        type
      end
    end

    module PutAccessPointConfigurationForObjectLambdaInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutAccessPointConfigurationForObjectLambdaInput, context: context)
        type = Types::PutAccessPointConfigurationForObjectLambdaInput.new
        type.account_id = params[:account_id]
        type.name = params[:name]
        type.configuration = ObjectLambdaConfiguration.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type
      end
    end

    module PutAccessPointConfigurationForObjectLambdaOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutAccessPointConfigurationForObjectLambdaOutput, context: context)
        type = Types::PutAccessPointConfigurationForObjectLambdaOutput.new
        type
      end
    end

    module PutAccessPointPolicyForObjectLambdaInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutAccessPointPolicyForObjectLambdaInput, context: context)
        type = Types::PutAccessPointPolicyForObjectLambdaInput.new
        type.account_id = params[:account_id]
        type.name = params[:name]
        type.policy = params[:policy]
        type
      end
    end

    module PutAccessPointPolicyForObjectLambdaOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutAccessPointPolicyForObjectLambdaOutput, context: context)
        type = Types::PutAccessPointPolicyForObjectLambdaOutput.new
        type
      end
    end

    module PutAccessPointPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutAccessPointPolicyInput, context: context)
        type = Types::PutAccessPointPolicyInput.new
        type.account_id = params[:account_id]
        type.name = params[:name]
        type.policy = params[:policy]
        type
      end
    end

    module PutAccessPointPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutAccessPointPolicyOutput, context: context)
        type = Types::PutAccessPointPolicyOutput.new
        type
      end
    end

    module PutBucketLifecycleConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutBucketLifecycleConfigurationInput, context: context)
        type = Types::PutBucketLifecycleConfigurationInput.new
        type.account_id = params[:account_id]
        type.bucket = params[:bucket]
        type.lifecycle_configuration = LifecycleConfiguration.build(params[:lifecycle_configuration], context: "#{context}[:lifecycle_configuration]") unless params[:lifecycle_configuration].nil?
        type
      end
    end

    module PutBucketLifecycleConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutBucketLifecycleConfigurationOutput, context: context)
        type = Types::PutBucketLifecycleConfigurationOutput.new
        type
      end
    end

    module PutBucketPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutBucketPolicyInput, context: context)
        type = Types::PutBucketPolicyInput.new
        type.account_id = params[:account_id]
        type.bucket = params[:bucket]
        type.confirm_remove_self_bucket_access = params[:confirm_remove_self_bucket_access]
        type.policy = params[:policy]
        type
      end
    end

    module PutBucketPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutBucketPolicyOutput, context: context)
        type = Types::PutBucketPolicyOutput.new
        type
      end
    end

    module PutBucketTaggingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutBucketTaggingInput, context: context)
        type = Types::PutBucketTaggingInput.new
        type.account_id = params[:account_id]
        type.bucket = params[:bucket]
        type.tagging = Tagging.build(params[:tagging], context: "#{context}[:tagging]") unless params[:tagging].nil?
        type
      end
    end

    module PutBucketTaggingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutBucketTaggingOutput, context: context)
        type = Types::PutBucketTaggingOutput.new
        type
      end
    end

    module PutJobTaggingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutJobTaggingInput, context: context)
        type = Types::PutJobTaggingInput.new
        type.account_id = params[:account_id]
        type.job_id = params[:job_id]
        type.tags = S3TagSet.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module PutJobTaggingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutJobTaggingOutput, context: context)
        type = Types::PutJobTaggingOutput.new
        type
      end
    end

    module PutMultiRegionAccessPointPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutMultiRegionAccessPointPolicyInput, context: context)
        type = Types::PutMultiRegionAccessPointPolicyInput.new
        type.name = params[:name]
        type.policy = params[:policy]
        type
      end
    end

    module PutMultiRegionAccessPointPolicyOperationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutMultiRegionAccessPointPolicyOperationInput, context: context)
        type = Types::PutMultiRegionAccessPointPolicyOperationInput.new
        type.account_id = params[:account_id]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.details = PutMultiRegionAccessPointPolicyInput.build(params[:details], context: "#{context}[:details]") unless params[:details].nil?
        type
      end
    end

    module PutMultiRegionAccessPointPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutMultiRegionAccessPointPolicyOutput, context: context)
        type = Types::PutMultiRegionAccessPointPolicyOutput.new
        type.request_token_arn = params[:request_token_arn]
        type
      end
    end

    module PutPublicAccessBlockInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutPublicAccessBlockInput, context: context)
        type = Types::PutPublicAccessBlockInput.new
        type.public_access_block_configuration = PublicAccessBlockConfiguration.build(params[:public_access_block_configuration], context: "#{context}[:public_access_block_configuration]") unless params[:public_access_block_configuration].nil?
        type.account_id = params[:account_id]
        type
      end
    end

    module PutPublicAccessBlockOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutPublicAccessBlockOutput, context: context)
        type = Types::PutPublicAccessBlockOutput.new
        type
      end
    end

    module PutStorageLensConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutStorageLensConfigurationInput, context: context)
        type = Types::PutStorageLensConfigurationInput.new
        type.config_id = params[:config_id]
        type.account_id = params[:account_id]
        type.storage_lens_configuration = StorageLensConfiguration.build(params[:storage_lens_configuration], context: "#{context}[:storage_lens_configuration]") unless params[:storage_lens_configuration].nil?
        type.tags = StorageLensTags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module PutStorageLensConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutStorageLensConfigurationOutput, context: context)
        type = Types::PutStorageLensConfigurationOutput.new
        type
      end
    end

    module PutStorageLensConfigurationTaggingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutStorageLensConfigurationTaggingInput, context: context)
        type = Types::PutStorageLensConfigurationTaggingInput.new
        type.config_id = params[:config_id]
        type.account_id = params[:account_id]
        type.tags = StorageLensTags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module PutStorageLensConfigurationTaggingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutStorageLensConfigurationTaggingOutput, context: context)
        type = Types::PutStorageLensConfigurationTaggingOutput.new
        type
      end
    end

    module Region
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Region, context: context)
        type = Types::Region.new
        type.bucket = params[:bucket]
        type
      end
    end

    module RegionCreationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Region.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RegionReport
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegionReport, context: context)
        type = Types::RegionReport.new
        type.bucket = params[:bucket]
        type.region = params[:region]
        type
      end
    end

    module RegionReportList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RegionReport.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RegionalBucket
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegionalBucket, context: context)
        type = Types::RegionalBucket.new
        type.bucket = params[:bucket]
        type.bucket_arn = params[:bucket_arn]
        type.public_access_block_enabled = params[:public_access_block_enabled]
        type.creation_date = params[:creation_date]
        type.outpost_id = params[:outpost_id]
        type
      end
    end

    module RegionalBucketList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RegionalBucket.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Regions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ReplicationStatusFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module S3AccessControlList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3AccessControlList, context: context)
        type = Types::S3AccessControlList.new
        type.owner = S3ObjectOwner.build(params[:owner], context: "#{context}[:owner]") unless params[:owner].nil?
        type.grants = S3GrantList.build(params[:grants], context: "#{context}[:grants]") unless params[:grants].nil?
        type
      end
    end

    module S3AccessControlPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3AccessControlPolicy, context: context)
        type = Types::S3AccessControlPolicy.new
        type.access_control_list = S3AccessControlList.build(params[:access_control_list], context: "#{context}[:access_control_list]") unless params[:access_control_list].nil?
        type.canned_access_control_list = params[:canned_access_control_list]
        type
      end
    end

    module S3BucketDestination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3BucketDestination, context: context)
        type = Types::S3BucketDestination.new
        type.format = params[:format]
        type.output_schema_version = params[:output_schema_version]
        type.account_id = params[:account_id]
        type.arn = params[:arn]
        type.prefix = params[:prefix]
        type.encryption = StorageLensDataExportEncryption.build(params[:encryption], context: "#{context}[:encryption]") unless params[:encryption].nil?
        type
      end
    end

    module S3CopyObjectOperation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3CopyObjectOperation, context: context)
        type = Types::S3CopyObjectOperation.new
        type.target_resource = params[:target_resource]
        type.canned_access_control_list = params[:canned_access_control_list]
        type.access_control_grants = S3GrantList.build(params[:access_control_grants], context: "#{context}[:access_control_grants]") unless params[:access_control_grants].nil?
        type.metadata_directive = params[:metadata_directive]
        type.modified_since_constraint = params[:modified_since_constraint]
        type.new_object_metadata = S3ObjectMetadata.build(params[:new_object_metadata], context: "#{context}[:new_object_metadata]") unless params[:new_object_metadata].nil?
        type.new_object_tagging = S3TagSet.build(params[:new_object_tagging], context: "#{context}[:new_object_tagging]") unless params[:new_object_tagging].nil?
        type.redirect_location = params[:redirect_location]
        type.requester_pays = params[:requester_pays]
        type.storage_class = params[:storage_class]
        type.un_modified_since_constraint = params[:un_modified_since_constraint]
        type.sse_aws_kms_key_id = params[:sse_aws_kms_key_id]
        type.target_key_prefix = params[:target_key_prefix]
        type.object_lock_legal_hold_status = params[:object_lock_legal_hold_status]
        type.object_lock_mode = params[:object_lock_mode]
        type.object_lock_retain_until_date = params[:object_lock_retain_until_date]
        type.bucket_key_enabled = params[:bucket_key_enabled]
        type.checksum_algorithm = params[:checksum_algorithm]
        type
      end
    end

    module S3DeleteObjectTaggingOperation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3DeleteObjectTaggingOperation, context: context)
        type = Types::S3DeleteObjectTaggingOperation.new
        type
      end
    end

    module S3GeneratedManifestDescriptor
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3GeneratedManifestDescriptor, context: context)
        type = Types::S3GeneratedManifestDescriptor.new
        type.format = params[:format]
        type.location = JobManifestLocation.build(params[:location], context: "#{context}[:location]") unless params[:location].nil?
        type
      end
    end

    module S3Grant
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3Grant, context: context)
        type = Types::S3Grant.new
        type.grantee = S3Grantee.build(params[:grantee], context: "#{context}[:grantee]") unless params[:grantee].nil?
        type.permission = params[:permission]
        type
      end
    end

    module S3GrantList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << S3Grant.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module S3Grantee
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3Grantee, context: context)
        type = Types::S3Grantee.new
        type.type_identifier = params[:type_identifier]
        type.identifier = params[:identifier]
        type.display_name = params[:display_name]
        type
      end
    end

    module S3InitiateRestoreObjectOperation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3InitiateRestoreObjectOperation, context: context)
        type = Types::S3InitiateRestoreObjectOperation.new
        type.expiration_in_days = params[:expiration_in_days]
        type.glacier_job_tier = params[:glacier_job_tier]
        type
      end
    end

    module S3JobManifestGenerator
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3JobManifestGenerator, context: context)
        type = Types::S3JobManifestGenerator.new
        type.expected_bucket_owner = params[:expected_bucket_owner]
        type.source_bucket = params[:source_bucket]
        type.manifest_output_location = S3ManifestOutputLocation.build(params[:manifest_output_location], context: "#{context}[:manifest_output_location]") unless params[:manifest_output_location].nil?
        type.filter = JobManifestGeneratorFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.enable_manifest_output = params[:enable_manifest_output]
        type
      end
    end

    module S3ManifestOutputLocation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3ManifestOutputLocation, context: context)
        type = Types::S3ManifestOutputLocation.new
        type.expected_manifest_bucket_owner = params[:expected_manifest_bucket_owner]
        type.bucket = params[:bucket]
        type.manifest_prefix = params[:manifest_prefix]
        type.manifest_encryption = GeneratedManifestEncryption.build(params[:manifest_encryption], context: "#{context}[:manifest_encryption]") unless params[:manifest_encryption].nil?
        type.manifest_format = params[:manifest_format]
        type
      end
    end

    module S3ObjectLockLegalHold
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3ObjectLockLegalHold, context: context)
        type = Types::S3ObjectLockLegalHold.new
        type.status = params[:status]
        type
      end
    end

    module S3ObjectMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3ObjectMetadata, context: context)
        type = Types::S3ObjectMetadata.new
        type.cache_control = params[:cache_control]
        type.content_disposition = params[:content_disposition]
        type.content_encoding = params[:content_encoding]
        type.content_language = params[:content_language]
        type.user_metadata = S3UserMetadata.build(params[:user_metadata], context: "#{context}[:user_metadata]") unless params[:user_metadata].nil?
        type.content_length = params[:content_length]
        type.content_md5 = params[:content_md5]
        type.content_type = params[:content_type]
        type.http_expires_date = params[:http_expires_date]
        type.requester_charged = params[:requester_charged]
        type.sse_algorithm = params[:sse_algorithm]
        type
      end
    end

    module S3ObjectOwner
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3ObjectOwner, context: context)
        type = Types::S3ObjectOwner.new
        type.id = params[:id]
        type.display_name = params[:display_name]
        type
      end
    end

    module S3ReplicateObjectOperation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3ReplicateObjectOperation, context: context)
        type = Types::S3ReplicateObjectOperation.new
        type
      end
    end

    module S3Retention
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3Retention, context: context)
        type = Types::S3Retention.new
        type.retain_until_date = params[:retain_until_date]
        type.mode = params[:mode]
        type
      end
    end

    module S3SetObjectAclOperation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3SetObjectAclOperation, context: context)
        type = Types::S3SetObjectAclOperation.new
        type.access_control_policy = S3AccessControlPolicy.build(params[:access_control_policy], context: "#{context}[:access_control_policy]") unless params[:access_control_policy].nil?
        type
      end
    end

    module S3SetObjectLegalHoldOperation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3SetObjectLegalHoldOperation, context: context)
        type = Types::S3SetObjectLegalHoldOperation.new
        type.legal_hold = S3ObjectLockLegalHold.build(params[:legal_hold], context: "#{context}[:legal_hold]") unless params[:legal_hold].nil?
        type
      end
    end

    module S3SetObjectRetentionOperation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3SetObjectRetentionOperation, context: context)
        type = Types::S3SetObjectRetentionOperation.new
        type.bypass_governance_retention = params[:bypass_governance_retention]
        type.retention = S3Retention.build(params[:retention], context: "#{context}[:retention]") unless params[:retention].nil?
        type
      end
    end

    module S3SetObjectTaggingOperation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3SetObjectTaggingOperation, context: context)
        type = Types::S3SetObjectTaggingOperation.new
        type.tag_set = S3TagSet.build(params[:tag_set], context: "#{context}[:tag_set]") unless params[:tag_set].nil?
        type
      end
    end

    module S3Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3Tag, context: context)
        type = Types::S3Tag.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module S3TagSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << S3Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module S3UserMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module SSEKMS
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SSEKMS, context: context)
        type = Types::SSEKMS.new
        type.key_id = params[:key_id]
        type
      end
    end

    module SSEKMSEncryption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SSEKMSEncryption, context: context)
        type = Types::SSEKMSEncryption.new
        type.key_id = params[:key_id]
        type
      end
    end

    module SSES3
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SSES3, context: context)
        type = Types::SSES3.new
        type
      end
    end

    module SSES3Encryption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SSES3Encryption, context: context)
        type = Types::SSES3Encryption.new
        type
      end
    end

    module SelectionCriteria
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SelectionCriteria, context: context)
        type = Types::SelectionCriteria.new
        type.delimiter = params[:delimiter]
        type.max_depth = params[:max_depth]
        type.min_storage_bytes_percentage = params[:min_storage_bytes_percentage]
        type
      end
    end

    module StorageLensAwsOrg
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StorageLensAwsOrg, context: context)
        type = Types::StorageLensAwsOrg.new
        type.arn = params[:arn]
        type
      end
    end

    module StorageLensConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StorageLensConfiguration, context: context)
        type = Types::StorageLensConfiguration.new
        type.id = params[:id]
        type.account_level = AccountLevel.build(params[:account_level], context: "#{context}[:account_level]") unless params[:account_level].nil?
        type.include = Include.build(params[:include], context: "#{context}[:include]") unless params[:include].nil?
        type.exclude = Exclude.build(params[:exclude], context: "#{context}[:exclude]") unless params[:exclude].nil?
        type.data_export = StorageLensDataExport.build(params[:data_export], context: "#{context}[:data_export]") unless params[:data_export].nil?
        type.is_enabled = params[:is_enabled]
        type.aws_org = StorageLensAwsOrg.build(params[:aws_org], context: "#{context}[:aws_org]") unless params[:aws_org].nil?
        type.storage_lens_arn = params[:storage_lens_arn]
        type
      end
    end

    module StorageLensConfigurationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ListStorageLensConfigurationEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StorageLensDataExport
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StorageLensDataExport, context: context)
        type = Types::StorageLensDataExport.new
        type.s3_bucket_destination = S3BucketDestination.build(params[:s3_bucket_destination], context: "#{context}[:s3_bucket_destination]") unless params[:s3_bucket_destination].nil?
        type.cloud_watch_metrics = CloudWatchMetrics.build(params[:cloud_watch_metrics], context: "#{context}[:cloud_watch_metrics]") unless params[:cloud_watch_metrics].nil?
        type
      end
    end

    module StorageLensDataExportEncryption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StorageLensDataExportEncryption, context: context)
        type = Types::StorageLensDataExportEncryption.new
        type.sses3 = SSES3.build(params[:sses3], context: "#{context}[:sses3]") unless params[:sses3].nil?
        type.ssekms = SSEKMS.build(params[:ssekms], context: "#{context}[:ssekms]") unless params[:ssekms].nil?
        type
      end
    end

    module StorageLensTag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StorageLensTag, context: context)
        type = Types::StorageLensTag.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module StorageLensTags
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StorageLensTag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Tagging
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tagging, context: context)
        type = Types::Tagging.new
        type.tag_set = S3TagSet.build(params[:tag_set], context: "#{context}[:tag_set]") unless params[:tag_set].nil?
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

    module TooManyTagsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyTagsException, context: context)
        type = Types::TooManyTagsException.new
        type.message = params[:message]
        type
      end
    end

    module Transition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Transition, context: context)
        type = Types::Transition.new
        type.date = params[:date]
        type.days = params[:days]
        type.storage_class = params[:storage_class]
        type
      end
    end

    module TransitionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Transition.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UpdateJobPriorityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateJobPriorityInput, context: context)
        type = Types::UpdateJobPriorityInput.new
        type.account_id = params[:account_id]
        type.job_id = params[:job_id]
        type.priority = params[:priority]
        type
      end
    end

    module UpdateJobPriorityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateJobPriorityOutput, context: context)
        type = Types::UpdateJobPriorityOutput.new
        type.job_id = params[:job_id]
        type.priority = params[:priority]
        type
      end
    end

    module UpdateJobStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateJobStatusInput, context: context)
        type = Types::UpdateJobStatusInput.new
        type.account_id = params[:account_id]
        type.job_id = params[:job_id]
        type.requested_job_status = params[:requested_job_status]
        type.status_update_reason = params[:status_update_reason]
        type
      end
    end

    module UpdateJobStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateJobStatusOutput, context: context)
        type = Types::UpdateJobStatusOutput.new
        type.job_id = params[:job_id]
        type.status = params[:status]
        type.status_update_reason = params[:status_update_reason]
        type
      end
    end

    module VpcConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VpcConfiguration, context: context)
        type = Types::VpcConfiguration.new
        type.vpc_id = params[:vpc_id]
        type
      end
    end

  end
end
