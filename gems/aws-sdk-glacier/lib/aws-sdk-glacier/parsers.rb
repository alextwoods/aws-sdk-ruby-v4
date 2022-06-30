# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::Glacier
  module Parsers

    # Operation Parser for AbortMultipartUpload
    class AbortMultipartUpload
      def self.parse(http_resp)
        data = Types::AbortMultipartUploadOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for InvalidParameterValueException
    class InvalidParameterValueException
      def self.parse(http_resp)
        data = Types::InvalidParameterValueException.new
        map = Hearth::JSON.load(http_resp.body)
        data.type = map['type']
        data.code = map['code']
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for MissingParameterValueException
    class MissingParameterValueException
      def self.parse(http_resp)
        data = Types::MissingParameterValueException.new
        map = Hearth::JSON.load(http_resp.body)
        data.type = map['type']
        data.code = map['code']
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.type = map['type']
        data.code = map['code']
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ServiceUnavailableException
    class ServiceUnavailableException
      def self.parse(http_resp)
        data = Types::ServiceUnavailableException.new
        map = Hearth::JSON.load(http_resp.body)
        data.type = map['type']
        data.code = map['code']
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for AbortVaultLock
    class AbortVaultLock
      def self.parse(http_resp)
        data = Types::AbortVaultLockOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for AddTagsToVault
    class AddTagsToVault
      def self.parse(http_resp)
        data = Types::AddTagsToVaultOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.type = map['type']
        data.code = map['code']
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CompleteMultipartUpload
    class CompleteMultipartUpload
      def self.parse(http_resp)
        data = Types::CompleteMultipartUploadOutput.new
        data.location = http_resp.headers['Location']
        data.checksum = http_resp.headers['x-amz-sha256-tree-hash']
        data.archive_id = http_resp.headers['x-amz-archive-id']
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for CompleteVaultLock
    class CompleteVaultLock
      def self.parse(http_resp)
        data = Types::CompleteVaultLockOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for CreateVault
    class CreateVault
      def self.parse(http_resp)
        data = Types::CreateVaultOutput.new
        data.location = http_resp.headers['Location']
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteArchive
    class DeleteArchive
      def self.parse(http_resp)
        data = Types::DeleteArchiveOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteVault
    class DeleteVault
      def self.parse(http_resp)
        data = Types::DeleteVaultOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteVaultAccessPolicy
    class DeleteVaultAccessPolicy
      def self.parse(http_resp)
        data = Types::DeleteVaultAccessPolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteVaultNotifications
    class DeleteVaultNotifications
      def self.parse(http_resp)
        data = Types::DeleteVaultNotificationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DescribeJob
    class DescribeJob
      def self.parse(http_resp)
        data = Types::DescribeJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.job_id = map['JobId']
        data.job_description = map['JobDescription']
        data.action = map['Action']
        data.archive_id = map['ArchiveId']
        data.vault_arn = map['VaultARN']
        data.creation_date = map['CreationDate']
        data.completed = map['Completed']
        data.status_code = map['StatusCode']
        data.status_message = map['StatusMessage']
        data.archive_size_in_bytes = map['ArchiveSizeInBytes']
        data.inventory_size_in_bytes = map['InventorySizeInBytes']
        data.sns_topic = map['SNSTopic']
        data.completion_date = map['CompletionDate']
        data.sha256_tree_hash = map['SHA256TreeHash']
        data.archive_sha256_tree_hash = map['ArchiveSHA256TreeHash']
        data.retrieval_byte_range = map['RetrievalByteRange']
        data.tier = map['Tier']
        data.inventory_retrieval_parameters = (Parsers::InventoryRetrievalJobDescription.parse(map['InventoryRetrievalParameters']) unless map['InventoryRetrievalParameters'].nil?)
        data.job_output_path = map['JobOutputPath']
        data.select_parameters = (Parsers::SelectParameters.parse(map['SelectParameters']) unless map['SelectParameters'].nil?)
        data.output_location = (Parsers::OutputLocation.parse(map['OutputLocation']) unless map['OutputLocation'].nil?)
        data
      end
    end

    class OutputLocation
      def self.parse(map)
        data = Types::OutputLocation.new
        data.s3 = (Parsers::S3Location.parse(map['S3']) unless map['S3'].nil?)
        return data
      end
    end

    class S3Location
      def self.parse(map)
        data = Types::S3Location.new
        data.bucket_name = map['BucketName']
        data.prefix = map['Prefix']
        data.encryption = (Parsers::Encryption.parse(map['Encryption']) unless map['Encryption'].nil?)
        data.canned_acl = map['CannedACL']
        data.access_control_list = (Parsers::AccessControlPolicyList.parse(map['AccessControlList']) unless map['AccessControlList'].nil?)
        data.tagging = (Parsers::Hashmap.parse(map['Tagging']) unless map['Tagging'].nil?)
        data.user_metadata = (Parsers::Hashmap.parse(map['UserMetadata']) unless map['UserMetadata'].nil?)
        data.storage_class = map['StorageClass']
        return data
      end
    end

    class Hashmap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class AccessControlPolicyList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Grant.parse(value) unless value.nil?
        end
        data
      end
    end

    class Grant
      def self.parse(map)
        data = Types::Grant.new
        data.grantee = (Parsers::Grantee.parse(map['Grantee']) unless map['Grantee'].nil?)
        data.permission = map['Permission']
        return data
      end
    end

    class Grantee
      def self.parse(map)
        data = Types::Grantee.new
        data.type = map['Type']
        data.display_name = map['DisplayName']
        data.uri = map['URI']
        data.id = map['ID']
        data.email_address = map['EmailAddress']
        return data
      end
    end

    class Encryption
      def self.parse(map)
        data = Types::Encryption.new
        data.encryption_type = map['EncryptionType']
        data.kms_key_id = map['KMSKeyId']
        data.kms_context = map['KMSContext']
        return data
      end
    end

    class SelectParameters
      def self.parse(map)
        data = Types::SelectParameters.new
        data.input_serialization = (Parsers::InputSerialization.parse(map['InputSerialization']) unless map['InputSerialization'].nil?)
        data.expression_type = map['ExpressionType']
        data.expression = map['Expression']
        data.output_serialization = (Parsers::OutputSerialization.parse(map['OutputSerialization']) unless map['OutputSerialization'].nil?)
        return data
      end
    end

    class OutputSerialization
      def self.parse(map)
        data = Types::OutputSerialization.new
        data.csv = (Parsers::CSVOutput.parse(map['csv']) unless map['csv'].nil?)
        return data
      end
    end

    class CSVOutput
      def self.parse(map)
        data = Types::CSVOutput.new
        data.quote_fields = map['QuoteFields']
        data.quote_escape_character = map['QuoteEscapeCharacter']
        data.record_delimiter = map['RecordDelimiter']
        data.field_delimiter = map['FieldDelimiter']
        data.quote_character = map['QuoteCharacter']
        return data
      end
    end

    class InputSerialization
      def self.parse(map)
        data = Types::InputSerialization.new
        data.csv = (Parsers::CSVInput.parse(map['csv']) unless map['csv'].nil?)
        return data
      end
    end

    class CSVInput
      def self.parse(map)
        data = Types::CSVInput.new
        data.file_header_info = map['FileHeaderInfo']
        data.comments = map['Comments']
        data.quote_escape_character = map['QuoteEscapeCharacter']
        data.record_delimiter = map['RecordDelimiter']
        data.field_delimiter = map['FieldDelimiter']
        data.quote_character = map['QuoteCharacter']
        return data
      end
    end

    class InventoryRetrievalJobDescription
      def self.parse(map)
        data = Types::InventoryRetrievalJobDescription.new
        data.format = map['Format']
        data.start_date = map['StartDate']
        data.end_date = map['EndDate']
        data.limit = map['Limit']
        data.marker = map['Marker']
        return data
      end
    end

    # Operation Parser for DescribeVault
    class DescribeVault
      def self.parse(http_resp)
        data = Types::DescribeVaultOperationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.vault_arn = map['VaultARN']
        data.vault_name = map['VaultName']
        data.creation_date = map['CreationDate']
        data.last_inventory_date = map['LastInventoryDate']
        data.number_of_archives = map['NumberOfArchives']
        data.size_in_bytes = map['SizeInBytes']
        data
      end
    end

    # Operation Parser for GetDataRetrievalPolicy
    class GetDataRetrievalPolicy
      def self.parse(http_resp)
        data = Types::GetDataRetrievalPolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.policy = (Parsers::DataRetrievalPolicy.parse(map['Policy']) unless map['Policy'].nil?)
        data
      end
    end

    class DataRetrievalPolicy
      def self.parse(map)
        data = Types::DataRetrievalPolicy.new
        data.rules = (Parsers::DataRetrievalRulesList.parse(map['Rules']) unless map['Rules'].nil?)
        return data
      end
    end

    class DataRetrievalRulesList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::DataRetrievalRule.parse(value) unless value.nil?
        end
        data
      end
    end

    class DataRetrievalRule
      def self.parse(map)
        data = Types::DataRetrievalRule.new
        data.strategy = map['Strategy']
        data.bytes_per_hour = map['BytesPerHour']
        return data
      end
    end

    # Operation Parser for GetJobOutput
    class GetJobOutput
      def self.parse(http_resp)
        data = Types::GetJobOutputOutput.new
        data.checksum = http_resp.headers['x-amz-sha256-tree-hash']
        data.content_range = http_resp.headers['Content-Range']
        data.accept_ranges = http_resp.headers['Accept-Ranges']
        data.content_type = http_resp.headers['Content-Type']
        data.archive_description = http_resp.headers['x-amz-archive-description']
        data.status = http_resp.status
        data.body = http_resp.body
        data
      end
    end

    # Operation Parser for GetVaultAccessPolicy
    class GetVaultAccessPolicy
      def self.parse(http_resp)
        data = Types::GetVaultAccessPolicyOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.policy = Parsers::VaultAccessPolicy.parse(json)
        data
      end
    end

    class VaultAccessPolicy
      def self.parse(map)
        data = Types::VaultAccessPolicy.new
        data.policy = map['Policy']
        return data
      end
    end

    # Operation Parser for GetVaultLock
    class GetVaultLock
      def self.parse(http_resp)
        data = Types::GetVaultLockOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.policy = map['Policy']
        data.state = map['State']
        data.expiration_date = map['ExpirationDate']
        data.creation_date = map['CreationDate']
        data
      end
    end

    # Operation Parser for GetVaultNotifications
    class GetVaultNotifications
      def self.parse(http_resp)
        data = Types::GetVaultNotificationsOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.vault_notification_config = Parsers::VaultNotificationConfig.parse(json)
        data
      end
    end

    class VaultNotificationConfig
      def self.parse(map)
        data = Types::VaultNotificationConfig.new
        data.sns_topic = map['SNSTopic']
        data.events = (Parsers::NotificationEventList.parse(map['Events']) unless map['Events'].nil?)
        return data
      end
    end

    class NotificationEventList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for InitiateJob
    class InitiateJob
      def self.parse(http_resp)
        data = Types::InitiateJobOutput.new
        data.location = http_resp.headers['Location']
        data.job_id = http_resp.headers['x-amz-job-id']
        data.job_output_path = http_resp.headers['x-amz-job-output-path']
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for InsufficientCapacityException
    class InsufficientCapacityException
      def self.parse(http_resp)
        data = Types::InsufficientCapacityException.new
        map = Hearth::JSON.load(http_resp.body)
        data.type = map['type']
        data.code = map['code']
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for PolicyEnforcedException
    class PolicyEnforcedException
      def self.parse(http_resp)
        data = Types::PolicyEnforcedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.type = map['type']
        data.code = map['code']
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for InitiateMultipartUpload
    class InitiateMultipartUpload
      def self.parse(http_resp)
        data = Types::InitiateMultipartUploadOutput.new
        data.location = http_resp.headers['Location']
        data.upload_id = http_resp.headers['x-amz-multipart-upload-id']
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for InitiateVaultLock
    class InitiateVaultLock
      def self.parse(http_resp)
        data = Types::InitiateVaultLockOutput.new
        data.lock_id = http_resp.headers['x-amz-lock-id']
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for ListJobs
    class ListJobs
      def self.parse(http_resp)
        data = Types::ListJobsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.job_list = (Parsers::JobList.parse(map['JobList']) unless map['JobList'].nil?)
        data.marker = map['Marker']
        data
      end
    end

    class JobList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::GlacierJobDescription.parse(value) unless value.nil?
        end
        data
      end
    end

    class GlacierJobDescription
      def self.parse(map)
        data = Types::GlacierJobDescription.new
        data.job_id = map['JobId']
        data.job_description = map['JobDescription']
        data.action = map['Action']
        data.archive_id = map['ArchiveId']
        data.vault_arn = map['VaultARN']
        data.creation_date = map['CreationDate']
        data.completed = map['Completed']
        data.status_code = map['StatusCode']
        data.status_message = map['StatusMessage']
        data.archive_size_in_bytes = map['ArchiveSizeInBytes']
        data.inventory_size_in_bytes = map['InventorySizeInBytes']
        data.sns_topic = map['SNSTopic']
        data.completion_date = map['CompletionDate']
        data.sha256_tree_hash = map['SHA256TreeHash']
        data.archive_sha256_tree_hash = map['ArchiveSHA256TreeHash']
        data.retrieval_byte_range = map['RetrievalByteRange']
        data.tier = map['Tier']
        data.inventory_retrieval_parameters = (Parsers::InventoryRetrievalJobDescription.parse(map['InventoryRetrievalParameters']) unless map['InventoryRetrievalParameters'].nil?)
        data.job_output_path = map['JobOutputPath']
        data.select_parameters = (Parsers::SelectParameters.parse(map['SelectParameters']) unless map['SelectParameters'].nil?)
        data.output_location = (Parsers::OutputLocation.parse(map['OutputLocation']) unless map['OutputLocation'].nil?)
        return data
      end
    end

    # Operation Parser for ListMultipartUploads
    class ListMultipartUploads
      def self.parse(http_resp)
        data = Types::ListMultipartUploadsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.uploads_list = (Parsers::UploadsList.parse(map['UploadsList']) unless map['UploadsList'].nil?)
        data.marker = map['Marker']
        data
      end
    end

    class UploadsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::UploadListElement.parse(value) unless value.nil?
        end
        data
      end
    end

    class UploadListElement
      def self.parse(map)
        data = Types::UploadListElement.new
        data.multipart_upload_id = map['MultipartUploadId']
        data.vault_arn = map['VaultARN']
        data.archive_description = map['ArchiveDescription']
        data.part_size_in_bytes = map['PartSizeInBytes']
        data.creation_date = map['CreationDate']
        return data
      end
    end

    # Operation Parser for ListParts
    class ListParts
      def self.parse(http_resp)
        data = Types::ListPartsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.multipart_upload_id = map['MultipartUploadId']
        data.vault_arn = map['VaultARN']
        data.archive_description = map['ArchiveDescription']
        data.part_size_in_bytes = map['PartSizeInBytes']
        data.creation_date = map['CreationDate']
        data.parts = (Parsers::PartList.parse(map['Parts']) unless map['Parts'].nil?)
        data.marker = map['Marker']
        data
      end
    end

    class PartList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::PartListElement.parse(value) unless value.nil?
        end
        data
      end
    end

    class PartListElement
      def self.parse(map)
        data = Types::PartListElement.new
        data.range_in_bytes = map['RangeInBytes']
        data.sha256_tree_hash = map['SHA256TreeHash']
        return data
      end
    end

    # Operation Parser for ListProvisionedCapacity
    class ListProvisionedCapacity
      def self.parse(http_resp)
        data = Types::ListProvisionedCapacityOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.provisioned_capacity_list = (Parsers::ProvisionedCapacityList.parse(map['ProvisionedCapacityList']) unless map['ProvisionedCapacityList'].nil?)
        data
      end
    end

    class ProvisionedCapacityList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ProvisionedCapacityDescription.parse(value) unless value.nil?
        end
        data
      end
    end

    class ProvisionedCapacityDescription
      def self.parse(map)
        data = Types::ProvisionedCapacityDescription.new
        data.capacity_id = map['CapacityId']
        data.start_date = map['StartDate']
        data.expiration_date = map['ExpirationDate']
        return data
      end
    end

    # Operation Parser for ListTagsForVault
    class ListTagsForVault
      def self.parse(http_resp)
        data = Types::ListTagsForVaultOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    class TagMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListVaults
    class ListVaults
      def self.parse(http_resp)
        data = Types::ListVaultsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.vault_list = (Parsers::VaultList.parse(map['VaultList']) unless map['VaultList'].nil?)
        data.marker = map['Marker']
        data
      end
    end

    class VaultList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::DescribeVaultOutput.parse(value) unless value.nil?
        end
        data
      end
    end

    class DescribeVaultOutput
      def self.parse(map)
        data = Types::DescribeVaultOutput.new
        data.vault_arn = map['VaultARN']
        data.vault_name = map['VaultName']
        data.creation_date = map['CreationDate']
        data.last_inventory_date = map['LastInventoryDate']
        data.number_of_archives = map['NumberOfArchives']
        data.size_in_bytes = map['SizeInBytes']
        return data
      end
    end

    # Operation Parser for PurchaseProvisionedCapacity
    class PurchaseProvisionedCapacity
      def self.parse(http_resp)
        data = Types::PurchaseProvisionedCapacityOutput.new
        data.capacity_id = http_resp.headers['x-amz-capacity-id']
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for RemoveTagsFromVault
    class RemoveTagsFromVault
      def self.parse(http_resp)
        data = Types::RemoveTagsFromVaultOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for SetDataRetrievalPolicy
    class SetDataRetrievalPolicy
      def self.parse(http_resp)
        data = Types::SetDataRetrievalPolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for SetVaultAccessPolicy
    class SetVaultAccessPolicy
      def self.parse(http_resp)
        data = Types::SetVaultAccessPolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for SetVaultNotifications
    class SetVaultNotifications
      def self.parse(http_resp)
        data = Types::SetVaultNotificationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UploadArchive
    class UploadArchive
      def self.parse(http_resp)
        data = Types::UploadArchiveOutput.new
        data.location = http_resp.headers['Location']
        data.checksum = http_resp.headers['x-amz-sha256-tree-hash']
        data.archive_id = http_resp.headers['x-amz-archive-id']
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for RequestTimeoutException
    class RequestTimeoutException
      def self.parse(http_resp)
        data = Types::RequestTimeoutException.new
        map = Hearth::JSON.load(http_resp.body)
        data.type = map['type']
        data.code = map['code']
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for UploadMultipartPart
    class UploadMultipartPart
      def self.parse(http_resp)
        data = Types::UploadMultipartPartOutput.new
        data.checksum = http_resp.headers['x-amz-sha256-tree-hash']
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end
  end
end
