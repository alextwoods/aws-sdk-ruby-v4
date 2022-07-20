# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Glacier
  module Params

    module AbortMultipartUploadInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AbortMultipartUploadInput, context: context)
        type = Types::AbortMultipartUploadInput.new
        type.account_id = params[:account_id]
        type.vault_name = params[:vault_name]
        type.upload_id = params[:upload_id]
        type
      end
    end

    module AbortMultipartUploadOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AbortMultipartUploadOutput, context: context)
        type = Types::AbortMultipartUploadOutput.new
        type
      end
    end

    module AbortVaultLockInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AbortVaultLockInput, context: context)
        type = Types::AbortVaultLockInput.new
        type.account_id = params[:account_id]
        type.vault_name = params[:vault_name]
        type
      end
    end

    module AbortVaultLockOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AbortVaultLockOutput, context: context)
        type = Types::AbortVaultLockOutput.new
        type
      end
    end

    module AccessControlPolicyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Grant.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AddTagsToVaultInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddTagsToVaultInput, context: context)
        type = Types::AddTagsToVaultInput.new
        type.account_id = params[:account_id]
        type.vault_name = params[:vault_name]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module AddTagsToVaultOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddTagsToVaultOutput, context: context)
        type = Types::AddTagsToVaultOutput.new
        type
      end
    end

    module CSVInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CSVInput, context: context)
        type = Types::CSVInput.new
        type.file_header_info = params[:file_header_info]
        type.comments = params[:comments]
        type.quote_escape_character = params[:quote_escape_character]
        type.record_delimiter = params[:record_delimiter]
        type.field_delimiter = params[:field_delimiter]
        type.quote_character = params[:quote_character]
        type
      end
    end

    module CSVOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CSVOutput, context: context)
        type = Types::CSVOutput.new
        type.quote_fields = params[:quote_fields]
        type.quote_escape_character = params[:quote_escape_character]
        type.record_delimiter = params[:record_delimiter]
        type.field_delimiter = params[:field_delimiter]
        type.quote_character = params[:quote_character]
        type
      end
    end

    module CompleteMultipartUploadInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CompleteMultipartUploadInput, context: context)
        type = Types::CompleteMultipartUploadInput.new
        type.account_id = params[:account_id]
        type.vault_name = params[:vault_name]
        type.upload_id = params[:upload_id]
        type.archive_size = params[:archive_size]
        type.checksum = params[:checksum]
        type
      end
    end

    module CompleteMultipartUploadOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CompleteMultipartUploadOutput, context: context)
        type = Types::CompleteMultipartUploadOutput.new
        type.location = params[:location]
        type.checksum = params[:checksum]
        type.archive_id = params[:archive_id]
        type
      end
    end

    module CompleteVaultLockInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CompleteVaultLockInput, context: context)
        type = Types::CompleteVaultLockInput.new
        type.account_id = params[:account_id]
        type.vault_name = params[:vault_name]
        type.lock_id = params[:lock_id]
        type
      end
    end

    module CompleteVaultLockOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CompleteVaultLockOutput, context: context)
        type = Types::CompleteVaultLockOutput.new
        type
      end
    end

    module CreateVaultInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateVaultInput, context: context)
        type = Types::CreateVaultInput.new
        type.account_id = params[:account_id]
        type.vault_name = params[:vault_name]
        type
      end
    end

    module CreateVaultOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateVaultOutput, context: context)
        type = Types::CreateVaultOutput.new
        type.location = params[:location]
        type
      end
    end

    module DataRetrievalPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataRetrievalPolicy, context: context)
        type = Types::DataRetrievalPolicy.new
        type.rules = DataRetrievalRulesList.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type
      end
    end

    module DataRetrievalRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataRetrievalRule, context: context)
        type = Types::DataRetrievalRule.new
        type.strategy = params[:strategy]
        type.bytes_per_hour = params[:bytes_per_hour]
        type
      end
    end

    module DataRetrievalRulesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DataRetrievalRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeleteArchiveInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteArchiveInput, context: context)
        type = Types::DeleteArchiveInput.new
        type.account_id = params[:account_id]
        type.vault_name = params[:vault_name]
        type.archive_id = params[:archive_id]
        type
      end
    end

    module DeleteArchiveOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteArchiveOutput, context: context)
        type = Types::DeleteArchiveOutput.new
        type
      end
    end

    module DeleteVaultAccessPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVaultAccessPolicyInput, context: context)
        type = Types::DeleteVaultAccessPolicyInput.new
        type.account_id = params[:account_id]
        type.vault_name = params[:vault_name]
        type
      end
    end

    module DeleteVaultAccessPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVaultAccessPolicyOutput, context: context)
        type = Types::DeleteVaultAccessPolicyOutput.new
        type
      end
    end

    module DeleteVaultInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVaultInput, context: context)
        type = Types::DeleteVaultInput.new
        type.account_id = params[:account_id]
        type.vault_name = params[:vault_name]
        type
      end
    end

    module DeleteVaultNotificationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVaultNotificationsInput, context: context)
        type = Types::DeleteVaultNotificationsInput.new
        type.account_id = params[:account_id]
        type.vault_name = params[:vault_name]
        type
      end
    end

    module DeleteVaultNotificationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVaultNotificationsOutput, context: context)
        type = Types::DeleteVaultNotificationsOutput.new
        type
      end
    end

    module DeleteVaultOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVaultOutput, context: context)
        type = Types::DeleteVaultOutput.new
        type
      end
    end

    module DescribeJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeJobInput, context: context)
        type = Types::DescribeJobInput.new
        type.account_id = params[:account_id]
        type.vault_name = params[:vault_name]
        type.job_id = params[:job_id]
        type
      end
    end

    module DescribeJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeJobOutput, context: context)
        type = Types::DescribeJobOutput.new
        type.job_id = params[:job_id]
        type.job_description = params[:job_description]
        type.action = params[:action]
        type.archive_id = params[:archive_id]
        type.vault_arn = params[:vault_arn]
        type.creation_date = params[:creation_date]
        type.completed = params[:completed]
        type.status_code = params[:status_code]
        type.status_message = params[:status_message]
        type.archive_size_in_bytes = params[:archive_size_in_bytes]
        type.inventory_size_in_bytes = params[:inventory_size_in_bytes]
        type.sns_topic = params[:sns_topic]
        type.completion_date = params[:completion_date]
        type.sha256_tree_hash = params[:sha256_tree_hash]
        type.archive_sha256_tree_hash = params[:archive_sha256_tree_hash]
        type.retrieval_byte_range = params[:retrieval_byte_range]
        type.tier = params[:tier]
        type.inventory_retrieval_parameters = InventoryRetrievalJobDescription.build(params[:inventory_retrieval_parameters], context: "#{context}[:inventory_retrieval_parameters]") unless params[:inventory_retrieval_parameters].nil?
        type.job_output_path = params[:job_output_path]
        type.select_parameters = SelectParameters.build(params[:select_parameters], context: "#{context}[:select_parameters]") unless params[:select_parameters].nil?
        type.output_location = OutputLocation.build(params[:output_location], context: "#{context}[:output_location]") unless params[:output_location].nil?
        type
      end
    end

    module DescribeVaultInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeVaultInput, context: context)
        type = Types::DescribeVaultInput.new
        type.account_id = params[:account_id]
        type.vault_name = params[:vault_name]
        type
      end
    end

    module DescribeVaultOperationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeVaultOperationOutput, context: context)
        type = Types::DescribeVaultOperationOutput.new
        type.vault_arn = params[:vault_arn]
        type.vault_name = params[:vault_name]
        type.creation_date = params[:creation_date]
        type.last_inventory_date = params[:last_inventory_date]
        type.number_of_archives = params[:number_of_archives]
        type.size_in_bytes = params[:size_in_bytes]
        type
      end
    end

    module DescribeVaultOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeVaultOutput, context: context)
        type = Types::DescribeVaultOutput.new
        type.vault_arn = params[:vault_arn]
        type.vault_name = params[:vault_name]
        type.creation_date = params[:creation_date]
        type.last_inventory_date = params[:last_inventory_date]
        type.number_of_archives = params[:number_of_archives]
        type.size_in_bytes = params[:size_in_bytes]
        type
      end
    end

    module Encryption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Encryption, context: context)
        type = Types::Encryption.new
        type.encryption_type = params[:encryption_type]
        type.kms_key_id = params[:kms_key_id]
        type.kms_context = params[:kms_context]
        type
      end
    end

    module GetDataRetrievalPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDataRetrievalPolicyInput, context: context)
        type = Types::GetDataRetrievalPolicyInput.new
        type.account_id = params[:account_id]
        type
      end
    end

    module GetDataRetrievalPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDataRetrievalPolicyOutput, context: context)
        type = Types::GetDataRetrievalPolicyOutput.new
        type.policy = DataRetrievalPolicy.build(params[:policy], context: "#{context}[:policy]") unless params[:policy].nil?
        type
      end
    end

    module GetJobOutputInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetJobOutputInput, context: context)
        type = Types::GetJobOutputInput.new
        type.account_id = params[:account_id]
        type.vault_name = params[:vault_name]
        type.job_id = params[:job_id]
        type.range = params[:range]
        type
      end
    end

    module GetJobOutputOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetJobOutputOutput, context: context)
        type = Types::GetJobOutputOutput.new
        io = params[:body] || StringIO.new
        unless io.respond_to?(:read) || io.respond_to?(:readpartial)
          io = StringIO.new(io)
        end
        type.body = io
        type.checksum = params[:checksum]
        type.status = params[:status]
        type.content_range = params[:content_range]
        type.accept_ranges = params[:accept_ranges]
        type.content_type = params[:content_type]
        type.archive_description = params[:archive_description]
        type
      end
    end

    module GetVaultAccessPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetVaultAccessPolicyInput, context: context)
        type = Types::GetVaultAccessPolicyInput.new
        type.account_id = params[:account_id]
        type.vault_name = params[:vault_name]
        type
      end
    end

    module GetVaultAccessPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetVaultAccessPolicyOutput, context: context)
        type = Types::GetVaultAccessPolicyOutput.new
        type.policy = VaultAccessPolicy.build(params[:policy], context: "#{context}[:policy]") unless params[:policy].nil?
        type
      end
    end

    module GetVaultLockInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetVaultLockInput, context: context)
        type = Types::GetVaultLockInput.new
        type.account_id = params[:account_id]
        type.vault_name = params[:vault_name]
        type
      end
    end

    module GetVaultLockOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetVaultLockOutput, context: context)
        type = Types::GetVaultLockOutput.new
        type.policy = params[:policy]
        type.state = params[:state]
        type.expiration_date = params[:expiration_date]
        type.creation_date = params[:creation_date]
        type
      end
    end

    module GetVaultNotificationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetVaultNotificationsInput, context: context)
        type = Types::GetVaultNotificationsInput.new
        type.account_id = params[:account_id]
        type.vault_name = params[:vault_name]
        type
      end
    end

    module GetVaultNotificationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetVaultNotificationsOutput, context: context)
        type = Types::GetVaultNotificationsOutput.new
        type.vault_notification_config = VaultNotificationConfig.build(params[:vault_notification_config], context: "#{context}[:vault_notification_config]") unless params[:vault_notification_config].nil?
        type
      end
    end

    module GlacierJobDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GlacierJobDescription, context: context)
        type = Types::GlacierJobDescription.new
        type.job_id = params[:job_id]
        type.job_description = params[:job_description]
        type.action = params[:action]
        type.archive_id = params[:archive_id]
        type.vault_arn = params[:vault_arn]
        type.creation_date = params[:creation_date]
        type.completed = params[:completed]
        type.status_code = params[:status_code]
        type.status_message = params[:status_message]
        type.archive_size_in_bytes = params[:archive_size_in_bytes]
        type.inventory_size_in_bytes = params[:inventory_size_in_bytes]
        type.sns_topic = params[:sns_topic]
        type.completion_date = params[:completion_date]
        type.sha256_tree_hash = params[:sha256_tree_hash]
        type.archive_sha256_tree_hash = params[:archive_sha256_tree_hash]
        type.retrieval_byte_range = params[:retrieval_byte_range]
        type.tier = params[:tier]
        type.inventory_retrieval_parameters = InventoryRetrievalJobDescription.build(params[:inventory_retrieval_parameters], context: "#{context}[:inventory_retrieval_parameters]") unless params[:inventory_retrieval_parameters].nil?
        type.job_output_path = params[:job_output_path]
        type.select_parameters = SelectParameters.build(params[:select_parameters], context: "#{context}[:select_parameters]") unless params[:select_parameters].nil?
        type.output_location = OutputLocation.build(params[:output_location], context: "#{context}[:output_location]") unless params[:output_location].nil?
        type
      end
    end

    module Grant
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Grant, context: context)
        type = Types::Grant.new
        type.grantee = Grantee.build(params[:grantee], context: "#{context}[:grantee]") unless params[:grantee].nil?
        type.permission = params[:permission]
        type
      end
    end

    module Grantee
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Grantee, context: context)
        type = Types::Grantee.new
        type.type = params[:type]
        type.display_name = params[:display_name]
        type.uri = params[:uri]
        type.id = params[:id]
        type.email_address = params[:email_address]
        type
      end
    end

    module InitiateJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InitiateJobInput, context: context)
        type = Types::InitiateJobInput.new
        type.account_id = params[:account_id]
        type.vault_name = params[:vault_name]
        type.job_parameters = JobParameters.build(params[:job_parameters], context: "#{context}[:job_parameters]") unless params[:job_parameters].nil?
        type
      end
    end

    module InitiateJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InitiateJobOutput, context: context)
        type = Types::InitiateJobOutput.new
        type.location = params[:location]
        type.job_id = params[:job_id]
        type.job_output_path = params[:job_output_path]
        type
      end
    end

    module InitiateMultipartUploadInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InitiateMultipartUploadInput, context: context)
        type = Types::InitiateMultipartUploadInput.new
        type.account_id = params[:account_id]
        type.vault_name = params[:vault_name]
        type.archive_description = params[:archive_description]
        type.part_size = params[:part_size]
        type
      end
    end

    module InitiateMultipartUploadOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InitiateMultipartUploadOutput, context: context)
        type = Types::InitiateMultipartUploadOutput.new
        type.location = params[:location]
        type.upload_id = params[:upload_id]
        type
      end
    end

    module InitiateVaultLockInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InitiateVaultLockInput, context: context)
        type = Types::InitiateVaultLockInput.new
        type.account_id = params[:account_id]
        type.vault_name = params[:vault_name]
        type.policy = VaultLockPolicy.build(params[:policy], context: "#{context}[:policy]") unless params[:policy].nil?
        type
      end
    end

    module InitiateVaultLockOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InitiateVaultLockOutput, context: context)
        type = Types::InitiateVaultLockOutput.new
        type.lock_id = params[:lock_id]
        type
      end
    end

    module InputSerialization
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputSerialization, context: context)
        type = Types::InputSerialization.new
        type.csv = CSVInput.build(params[:csv], context: "#{context}[:csv]") unless params[:csv].nil?
        type
      end
    end

    module InsufficientCapacityException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InsufficientCapacityException, context: context)
        type = Types::InsufficientCapacityException.new
        type.type = params[:type]
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module InvalidParameterValueException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidParameterValueException, context: context)
        type = Types::InvalidParameterValueException.new
        type.type = params[:type]
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module InventoryRetrievalJobDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InventoryRetrievalJobDescription, context: context)
        type = Types::InventoryRetrievalJobDescription.new
        type.format = params[:format]
        type.start_date = params[:start_date]
        type.end_date = params[:end_date]
        type.limit = params[:limit]
        type.marker = params[:marker]
        type
      end
    end

    module InventoryRetrievalJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InventoryRetrievalJobInput, context: context)
        type = Types::InventoryRetrievalJobInput.new
        type.start_date = params[:start_date]
        type.end_date = params[:end_date]
        type.limit = params[:limit]
        type.marker = params[:marker]
        type
      end
    end

    module JobList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GlacierJobDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module JobParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobParameters, context: context)
        type = Types::JobParameters.new
        type.format = params[:format]
        type.type = params[:type]
        type.archive_id = params[:archive_id]
        type.description = params[:description]
        type.sns_topic = params[:sns_topic]
        type.retrieval_byte_range = params[:retrieval_byte_range]
        type.tier = params[:tier]
        type.inventory_retrieval_parameters = InventoryRetrievalJobInput.build(params[:inventory_retrieval_parameters], context: "#{context}[:inventory_retrieval_parameters]") unless params[:inventory_retrieval_parameters].nil?
        type.select_parameters = SelectParameters.build(params[:select_parameters], context: "#{context}[:select_parameters]") unless params[:select_parameters].nil?
        type.output_location = OutputLocation.build(params[:output_location], context: "#{context}[:output_location]") unless params[:output_location].nil?
        type
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.type = params[:type]
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module ListJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListJobsInput, context: context)
        type = Types::ListJobsInput.new
        type.account_id = params[:account_id]
        type.vault_name = params[:vault_name]
        type.limit = params[:limit]
        type.marker = params[:marker]
        type.statuscode = params[:statuscode]
        type.completed = params[:completed]
        type
      end
    end

    module ListJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListJobsOutput, context: context)
        type = Types::ListJobsOutput.new
        type.job_list = JobList.build(params[:job_list], context: "#{context}[:job_list]") unless params[:job_list].nil?
        type.marker = params[:marker]
        type
      end
    end

    module ListMultipartUploadsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMultipartUploadsInput, context: context)
        type = Types::ListMultipartUploadsInput.new
        type.account_id = params[:account_id]
        type.vault_name = params[:vault_name]
        type.limit = params[:limit]
        type.marker = params[:marker]
        type
      end
    end

    module ListMultipartUploadsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMultipartUploadsOutput, context: context)
        type = Types::ListMultipartUploadsOutput.new
        type.uploads_list = UploadsList.build(params[:uploads_list], context: "#{context}[:uploads_list]") unless params[:uploads_list].nil?
        type.marker = params[:marker]
        type
      end
    end

    module ListPartsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPartsInput, context: context)
        type = Types::ListPartsInput.new
        type.account_id = params[:account_id]
        type.vault_name = params[:vault_name]
        type.upload_id = params[:upload_id]
        type.marker = params[:marker]
        type.limit = params[:limit]
        type
      end
    end

    module ListPartsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPartsOutput, context: context)
        type = Types::ListPartsOutput.new
        type.multipart_upload_id = params[:multipart_upload_id]
        type.vault_arn = params[:vault_arn]
        type.archive_description = params[:archive_description]
        type.part_size_in_bytes = params[:part_size_in_bytes]
        type.creation_date = params[:creation_date]
        type.parts = PartList.build(params[:parts], context: "#{context}[:parts]") unless params[:parts].nil?
        type.marker = params[:marker]
        type
      end
    end

    module ListProvisionedCapacityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProvisionedCapacityInput, context: context)
        type = Types::ListProvisionedCapacityInput.new
        type.account_id = params[:account_id]
        type
      end
    end

    module ListProvisionedCapacityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProvisionedCapacityOutput, context: context)
        type = Types::ListProvisionedCapacityOutput.new
        type.provisioned_capacity_list = ProvisionedCapacityList.build(params[:provisioned_capacity_list], context: "#{context}[:provisioned_capacity_list]") unless params[:provisioned_capacity_list].nil?
        type
      end
    end

    module ListTagsForVaultInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForVaultInput, context: context)
        type = Types::ListTagsForVaultInput.new
        type.account_id = params[:account_id]
        type.vault_name = params[:vault_name]
        type
      end
    end

    module ListTagsForVaultOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForVaultOutput, context: context)
        type = Types::ListTagsForVaultOutput.new
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ListVaultsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListVaultsInput, context: context)
        type = Types::ListVaultsInput.new
        type.account_id = params[:account_id]
        type.marker = params[:marker]
        type.limit = params[:limit]
        type
      end
    end

    module ListVaultsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListVaultsOutput, context: context)
        type = Types::ListVaultsOutput.new
        type.vault_list = VaultList.build(params[:vault_list], context: "#{context}[:vault_list]") unless params[:vault_list].nil?
        type.marker = params[:marker]
        type
      end
    end

    module MissingParameterValueException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MissingParameterValueException, context: context)
        type = Types::MissingParameterValueException.new
        type.type = params[:type]
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module NotificationEventList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module OutputLocation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OutputLocation, context: context)
        type = Types::OutputLocation.new
        type.s3 = S3Location.build(params[:s3], context: "#{context}[:s3]") unless params[:s3].nil?
        type
      end
    end

    module OutputSerialization
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OutputSerialization, context: context)
        type = Types::OutputSerialization.new
        type.csv = CSVOutput.build(params[:csv], context: "#{context}[:csv]") unless params[:csv].nil?
        type
      end
    end

    module PartList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PartListElement.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PartListElement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PartListElement, context: context)
        type = Types::PartListElement.new
        type.range_in_bytes = params[:range_in_bytes]
        type.sha256_tree_hash = params[:sha256_tree_hash]
        type
      end
    end

    module PolicyEnforcedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PolicyEnforcedException, context: context)
        type = Types::PolicyEnforcedException.new
        type.type = params[:type]
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module ProvisionedCapacityDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProvisionedCapacityDescription, context: context)
        type = Types::ProvisionedCapacityDescription.new
        type.capacity_id = params[:capacity_id]
        type.start_date = params[:start_date]
        type.expiration_date = params[:expiration_date]
        type
      end
    end

    module ProvisionedCapacityList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProvisionedCapacityDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PurchaseProvisionedCapacityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PurchaseProvisionedCapacityInput, context: context)
        type = Types::PurchaseProvisionedCapacityInput.new
        type.account_id = params[:account_id]
        type
      end
    end

    module PurchaseProvisionedCapacityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PurchaseProvisionedCapacityOutput, context: context)
        type = Types::PurchaseProvisionedCapacityOutput.new
        type.capacity_id = params[:capacity_id]
        type
      end
    end

    module RemoveTagsFromVaultInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveTagsFromVaultInput, context: context)
        type = Types::RemoveTagsFromVaultInput.new
        type.account_id = params[:account_id]
        type.vault_name = params[:vault_name]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module RemoveTagsFromVaultOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveTagsFromVaultOutput, context: context)
        type = Types::RemoveTagsFromVaultOutput.new
        type
      end
    end

    module RequestTimeoutException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RequestTimeoutException, context: context)
        type = Types::RequestTimeoutException.new
        type.type = params[:type]
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.type = params[:type]
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module S3Location
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3Location, context: context)
        type = Types::S3Location.new
        type.bucket_name = params[:bucket_name]
        type.prefix = params[:prefix]
        type.encryption = Encryption.build(params[:encryption], context: "#{context}[:encryption]") unless params[:encryption].nil?
        type.canned_acl = params[:canned_acl]
        type.access_control_list = AccessControlPolicyList.build(params[:access_control_list], context: "#{context}[:access_control_list]") unless params[:access_control_list].nil?
        type.tagging = Hashmap.build(params[:tagging], context: "#{context}[:tagging]") unless params[:tagging].nil?
        type.user_metadata = Hashmap.build(params[:user_metadata], context: "#{context}[:user_metadata]") unless params[:user_metadata].nil?
        type.storage_class = params[:storage_class]
        type
      end
    end

    module SelectParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SelectParameters, context: context)
        type = Types::SelectParameters.new
        type.input_serialization = InputSerialization.build(params[:input_serialization], context: "#{context}[:input_serialization]") unless params[:input_serialization].nil?
        type.expression_type = params[:expression_type]
        type.expression = params[:expression]
        type.output_serialization = OutputSerialization.build(params[:output_serialization], context: "#{context}[:output_serialization]") unless params[:output_serialization].nil?
        type
      end
    end

    module ServiceUnavailableException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceUnavailableException, context: context)
        type = Types::ServiceUnavailableException.new
        type.type = params[:type]
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module SetDataRetrievalPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetDataRetrievalPolicyInput, context: context)
        type = Types::SetDataRetrievalPolicyInput.new
        type.account_id = params[:account_id]
        type.policy = DataRetrievalPolicy.build(params[:policy], context: "#{context}[:policy]") unless params[:policy].nil?
        type
      end
    end

    module SetDataRetrievalPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetDataRetrievalPolicyOutput, context: context)
        type = Types::SetDataRetrievalPolicyOutput.new
        type
      end
    end

    module SetVaultAccessPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetVaultAccessPolicyInput, context: context)
        type = Types::SetVaultAccessPolicyInput.new
        type.account_id = params[:account_id]
        type.vault_name = params[:vault_name]
        type.policy = VaultAccessPolicy.build(params[:policy], context: "#{context}[:policy]") unless params[:policy].nil?
        type
      end
    end

    module SetVaultAccessPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetVaultAccessPolicyOutput, context: context)
        type = Types::SetVaultAccessPolicyOutput.new
        type
      end
    end

    module SetVaultNotificationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetVaultNotificationsInput, context: context)
        type = Types::SetVaultNotificationsInput.new
        type.account_id = params[:account_id]
        type.vault_name = params[:vault_name]
        type.vault_notification_config = VaultNotificationConfig.build(params[:vault_notification_config], context: "#{context}[:vault_notification_config]") unless params[:vault_notification_config].nil?
        type
      end
    end

    module SetVaultNotificationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetVaultNotificationsOutput, context: context)
        type = Types::SetVaultNotificationsOutput.new
        type
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module UploadArchiveInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UploadArchiveInput, context: context)
        type = Types::UploadArchiveInput.new
        type.vault_name = params[:vault_name]
        type.account_id = params[:account_id]
        type.archive_description = params[:archive_description]
        type.checksum = params[:checksum]
        io = params[:body] || StringIO.new
        unless io.respond_to?(:read) || io.respond_to?(:readpartial)
          io = StringIO.new(io)
        end
        type.body = io
        type
      end
    end

    module UploadArchiveOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UploadArchiveOutput, context: context)
        type = Types::UploadArchiveOutput.new
        type.location = params[:location]
        type.checksum = params[:checksum]
        type.archive_id = params[:archive_id]
        type
      end
    end

    module UploadListElement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UploadListElement, context: context)
        type = Types::UploadListElement.new
        type.multipart_upload_id = params[:multipart_upload_id]
        type.vault_arn = params[:vault_arn]
        type.archive_description = params[:archive_description]
        type.part_size_in_bytes = params[:part_size_in_bytes]
        type.creation_date = params[:creation_date]
        type
      end
    end

    module UploadMultipartPartInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UploadMultipartPartInput, context: context)
        type = Types::UploadMultipartPartInput.new
        type.account_id = params[:account_id]
        type.vault_name = params[:vault_name]
        type.upload_id = params[:upload_id]
        type.checksum = params[:checksum]
        type.range = params[:range]
        io = params[:body] || StringIO.new
        unless io.respond_to?(:read) || io.respond_to?(:readpartial)
          io = StringIO.new(io)
        end
        type.body = io
        type
      end
    end

    module UploadMultipartPartOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UploadMultipartPartOutput, context: context)
        type = Types::UploadMultipartPartOutput.new
        type.checksum = params[:checksum]
        type
      end
    end

    module UploadsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UploadListElement.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module VaultAccessPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VaultAccessPolicy, context: context)
        type = Types::VaultAccessPolicy.new
        type.policy = params[:policy]
        type
      end
    end

    module VaultList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DescribeVaultOutput.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module VaultLockPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VaultLockPolicy, context: context)
        type = Types::VaultLockPolicy.new
        type.policy = params[:policy]
        type
      end
    end

    module VaultNotificationConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VaultNotificationConfig, context: context)
        type = Types::VaultNotificationConfig.new
        type.sns_topic = params[:sns_topic]
        type.events = NotificationEventList.build(params[:events], context: "#{context}[:events]") unless params[:events].nil?
        type
      end
    end

    module Hashmap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

  end
end
