# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::DataExchange
  module Parsers

    # Operation Parser for CancelJob
    class CancelJob
      def self.parse(http_resp)
        data = Types::CancelJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.resource_id = map['ResourceId']
        data.resource_type = map['ResourceType']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.exception_cause = map['ExceptionCause']
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.resource_id = map['ResourceId']
        data.resource_type = map['ResourceType']
        data
      end
    end

    # Operation Parser for CreateDataSet
    class CreateDataSet
      def self.parse(http_resp)
        data = Types::CreateDataSetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.asset_type = map['AssetType']
        data.created_at = Time.parse(map['CreatedAt']) if map['CreatedAt']
        data.description = map['Description']
        data.id = map['Id']
        data.name = map['Name']
        data.origin = map['Origin']
        data.origin_details = (Parsers::OriginDetails.parse(map['OriginDetails']) unless map['OriginDetails'].nil?)
        data.source_id = map['SourceId']
        data.tags = (Parsers::MapOf__string.parse(map['Tags']) unless map['Tags'].nil?)
        data.updated_at = Time.parse(map['UpdatedAt']) if map['UpdatedAt']
        data
      end
    end

    class MapOf__string
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class OriginDetails
      def self.parse(map)
        data = Types::OriginDetails.new
        data.product_id = map['ProductId']
        return data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ServiceLimitExceededException
    class ServiceLimitExceededException
      def self.parse(http_resp)
        data = Types::ServiceLimitExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.limit_name = map['LimitName']
        data.limit_value = Hearth::NumberHelper.deserialize(map['LimitValue'])
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateEventAction
    class CreateEventAction
      def self.parse(http_resp)
        data = Types::CreateEventActionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.action = (Parsers::Action.parse(map['Action']) unless map['Action'].nil?)
        data.arn = map['Arn']
        data.created_at = Time.parse(map['CreatedAt']) if map['CreatedAt']
        data.event = (Parsers::Event.parse(map['Event']) unless map['Event'].nil?)
        data.id = map['Id']
        data.updated_at = Time.parse(map['UpdatedAt']) if map['UpdatedAt']
        data
      end
    end

    class Event
      def self.parse(map)
        data = Types::Event.new
        data.revision_published = (Parsers::RevisionPublished.parse(map['RevisionPublished']) unless map['RevisionPublished'].nil?)
        return data
      end
    end

    class RevisionPublished
      def self.parse(map)
        data = Types::RevisionPublished.new
        data.data_set_id = map['DataSetId']
        return data
      end
    end

    class Action
      def self.parse(map)
        data = Types::Action.new
        data.export_revision_to_s3 = (Parsers::AutoExportRevisionToS3RequestDetails.parse(map['ExportRevisionToS3']) unless map['ExportRevisionToS3'].nil?)
        return data
      end
    end

    class AutoExportRevisionToS3RequestDetails
      def self.parse(map)
        data = Types::AutoExportRevisionToS3RequestDetails.new
        data.encryption = (Parsers::ExportServerSideEncryption.parse(map['Encryption']) unless map['Encryption'].nil?)
        data.revision_destination = (Parsers::AutoExportRevisionDestinationEntry.parse(map['RevisionDestination']) unless map['RevisionDestination'].nil?)
        return data
      end
    end

    class AutoExportRevisionDestinationEntry
      def self.parse(map)
        data = Types::AutoExportRevisionDestinationEntry.new
        data.bucket = map['Bucket']
        data.key_pattern = map['KeyPattern']
        return data
      end
    end

    class ExportServerSideEncryption
      def self.parse(map)
        data = Types::ExportServerSideEncryption.new
        data.kms_key_arn = map['KmsKeyArn']
        data.type = map['Type']
        return data
      end
    end

    # Operation Parser for CreateJob
    class CreateJob
      def self.parse(http_resp)
        data = Types::CreateJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.created_at = Time.parse(map['CreatedAt']) if map['CreatedAt']
        data.details = (Parsers::ResponseDetails.parse(map['Details']) unless map['Details'].nil?)
        data.errors = (Parsers::ListOfJobError.parse(map['Errors']) unless map['Errors'].nil?)
        data.id = map['Id']
        data.state = map['State']
        data.type = map['Type']
        data.updated_at = Time.parse(map['UpdatedAt']) if map['UpdatedAt']
        data
      end
    end

    class ListOfJobError
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::JobError.parse(value) unless value.nil?
        end
        data
      end
    end

    class JobError
      def self.parse(map)
        data = Types::JobError.new
        data.code = map['Code']
        data.details = (Parsers::Details.parse(map['Details']) unless map['Details'].nil?)
        data.limit_name = map['LimitName']
        data.limit_value = Hearth::NumberHelper.deserialize(map['LimitValue'])
        data.message = map['Message']
        data.resource_id = map['ResourceId']
        data.resource_type = map['ResourceType']
        return data
      end
    end

    class Details
      def self.parse(map)
        data = Types::Details.new
        data.import_asset_from_signed_url_job_error_details = (Parsers::ImportAssetFromSignedUrlJobErrorDetails.parse(map['ImportAssetFromSignedUrlJobErrorDetails']) unless map['ImportAssetFromSignedUrlJobErrorDetails'].nil?)
        data.import_assets_from_s3_job_error_details = (Parsers::ListOfAssetSourceEntry.parse(map['ImportAssetsFromS3JobErrorDetails']) unless map['ImportAssetsFromS3JobErrorDetails'].nil?)
        return data
      end
    end

    class ListOfAssetSourceEntry
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AssetSourceEntry.parse(value) unless value.nil?
        end
        data
      end
    end

    class AssetSourceEntry
      def self.parse(map)
        data = Types::AssetSourceEntry.new
        data.bucket = map['Bucket']
        data.key = map['Key']
        return data
      end
    end

    class ImportAssetFromSignedUrlJobErrorDetails
      def self.parse(map)
        data = Types::ImportAssetFromSignedUrlJobErrorDetails.new
        data.asset_name = map['AssetName']
        return data
      end
    end

    class ResponseDetails
      def self.parse(map)
        data = Types::ResponseDetails.new
        data.export_asset_to_signed_url = (Parsers::ExportAssetToSignedUrlResponseDetails.parse(map['ExportAssetToSignedUrl']) unless map['ExportAssetToSignedUrl'].nil?)
        data.export_assets_to_s3 = (Parsers::ExportAssetsToS3ResponseDetails.parse(map['ExportAssetsToS3']) unless map['ExportAssetsToS3'].nil?)
        data.export_revisions_to_s3 = (Parsers::ExportRevisionsToS3ResponseDetails.parse(map['ExportRevisionsToS3']) unless map['ExportRevisionsToS3'].nil?)
        data.import_asset_from_signed_url = (Parsers::ImportAssetFromSignedUrlResponseDetails.parse(map['ImportAssetFromSignedUrl']) unless map['ImportAssetFromSignedUrl'].nil?)
        data.import_assets_from_s3 = (Parsers::ImportAssetsFromS3ResponseDetails.parse(map['ImportAssetsFromS3']) unless map['ImportAssetsFromS3'].nil?)
        data.import_assets_from_redshift_data_shares = (Parsers::ImportAssetsFromRedshiftDataSharesResponseDetails.parse(map['ImportAssetsFromRedshiftDataShares']) unless map['ImportAssetsFromRedshiftDataShares'].nil?)
        data.import_asset_from_api_gateway_api = (Parsers::ImportAssetFromApiGatewayApiResponseDetails.parse(map['ImportAssetFromApiGatewayApi']) unless map['ImportAssetFromApiGatewayApi'].nil?)
        return data
      end
    end

    class ImportAssetFromApiGatewayApiResponseDetails
      def self.parse(map)
        data = Types::ImportAssetFromApiGatewayApiResponseDetails.new
        data.api_description = map['ApiDescription']
        data.api_id = map['ApiId']
        data.api_key = map['ApiKey']
        data.api_name = map['ApiName']
        data.api_specification_md5_hash = map['ApiSpecificationMd5Hash']
        data.api_specification_upload_url = map['ApiSpecificationUploadUrl']
        data.api_specification_upload_url_expires_at = Time.parse(map['ApiSpecificationUploadUrlExpiresAt']) if map['ApiSpecificationUploadUrlExpiresAt']
        data.data_set_id = map['DataSetId']
        data.protocol_type = map['ProtocolType']
        data.revision_id = map['RevisionId']
        data.stage = map['Stage']
        return data
      end
    end

    class ImportAssetsFromRedshiftDataSharesResponseDetails
      def self.parse(map)
        data = Types::ImportAssetsFromRedshiftDataSharesResponseDetails.new
        data.asset_sources = (Parsers::ListOfRedshiftDataShareAssetSourceEntry.parse(map['AssetSources']) unless map['AssetSources'].nil?)
        data.data_set_id = map['DataSetId']
        data.revision_id = map['RevisionId']
        return data
      end
    end

    class ListOfRedshiftDataShareAssetSourceEntry
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::RedshiftDataShareAssetSourceEntry.parse(value) unless value.nil?
        end
        data
      end
    end

    class RedshiftDataShareAssetSourceEntry
      def self.parse(map)
        data = Types::RedshiftDataShareAssetSourceEntry.new
        data.data_share_arn = map['DataShareArn']
        return data
      end
    end

    class ImportAssetsFromS3ResponseDetails
      def self.parse(map)
        data = Types::ImportAssetsFromS3ResponseDetails.new
        data.asset_sources = (Parsers::ListOfAssetSourceEntry.parse(map['AssetSources']) unless map['AssetSources'].nil?)
        data.data_set_id = map['DataSetId']
        data.revision_id = map['RevisionId']
        return data
      end
    end

    class ImportAssetFromSignedUrlResponseDetails
      def self.parse(map)
        data = Types::ImportAssetFromSignedUrlResponseDetails.new
        data.asset_name = map['AssetName']
        data.data_set_id = map['DataSetId']
        data.md5_hash = map['Md5Hash']
        data.revision_id = map['RevisionId']
        data.signed_url = map['SignedUrl']
        data.signed_url_expires_at = Time.parse(map['SignedUrlExpiresAt']) if map['SignedUrlExpiresAt']
        return data
      end
    end

    class ExportRevisionsToS3ResponseDetails
      def self.parse(map)
        data = Types::ExportRevisionsToS3ResponseDetails.new
        data.data_set_id = map['DataSetId']
        data.encryption = (Parsers::ExportServerSideEncryption.parse(map['Encryption']) unless map['Encryption'].nil?)
        data.revision_destinations = (Parsers::ListOfRevisionDestinationEntry.parse(map['RevisionDestinations']) unless map['RevisionDestinations'].nil?)
        data.event_action_arn = map['EventActionArn']
        return data
      end
    end

    class ListOfRevisionDestinationEntry
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::RevisionDestinationEntry.parse(value) unless value.nil?
        end
        data
      end
    end

    class RevisionDestinationEntry
      def self.parse(map)
        data = Types::RevisionDestinationEntry.new
        data.bucket = map['Bucket']
        data.key_pattern = map['KeyPattern']
        data.revision_id = map['RevisionId']
        return data
      end
    end

    class ExportAssetsToS3ResponseDetails
      def self.parse(map)
        data = Types::ExportAssetsToS3ResponseDetails.new
        data.asset_destinations = (Parsers::ListOfAssetDestinationEntry.parse(map['AssetDestinations']) unless map['AssetDestinations'].nil?)
        data.data_set_id = map['DataSetId']
        data.encryption = (Parsers::ExportServerSideEncryption.parse(map['Encryption']) unless map['Encryption'].nil?)
        data.revision_id = map['RevisionId']
        return data
      end
    end

    class ListOfAssetDestinationEntry
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AssetDestinationEntry.parse(value) unless value.nil?
        end
        data
      end
    end

    class AssetDestinationEntry
      def self.parse(map)
        data = Types::AssetDestinationEntry.new
        data.asset_id = map['AssetId']
        data.bucket = map['Bucket']
        data.key = map['Key']
        return data
      end
    end

    class ExportAssetToSignedUrlResponseDetails
      def self.parse(map)
        data = Types::ExportAssetToSignedUrlResponseDetails.new
        data.asset_id = map['AssetId']
        data.data_set_id = map['DataSetId']
        data.revision_id = map['RevisionId']
        data.signed_url = map['SignedUrl']
        data.signed_url_expires_at = Time.parse(map['SignedUrlExpiresAt']) if map['SignedUrlExpiresAt']
        return data
      end
    end

    # Operation Parser for CreateRevision
    class CreateRevision
      def self.parse(http_resp)
        data = Types::CreateRevisionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.comment = map['Comment']
        data.created_at = Time.parse(map['CreatedAt']) if map['CreatedAt']
        data.data_set_id = map['DataSetId']
        data.finalized = map['Finalized']
        data.id = map['Id']
        data.source_id = map['SourceId']
        data.tags = (Parsers::MapOf__string.parse(map['Tags']) unless map['Tags'].nil?)
        data.updated_at = Time.parse(map['UpdatedAt']) if map['UpdatedAt']
        data.revocation_comment = map['RevocationComment']
        data.revoked = map['Revoked']
        data.revoked_at = Time.parse(map['RevokedAt']) if map['RevokedAt']
        data
      end
    end

    # Operation Parser for DeleteAsset
    class DeleteAsset
      def self.parse(http_resp)
        data = Types::DeleteAssetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteDataSet
    class DeleteDataSet
      def self.parse(http_resp)
        data = Types::DeleteDataSetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteEventAction
    class DeleteEventAction
      def self.parse(http_resp)
        data = Types::DeleteEventActionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteRevision
    class DeleteRevision
      def self.parse(http_resp)
        data = Types::DeleteRevisionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for GetAsset
    class GetAsset
      def self.parse(http_resp)
        data = Types::GetAssetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.asset_details = (Parsers::AssetDetails.parse(map['AssetDetails']) unless map['AssetDetails'].nil?)
        data.asset_type = map['AssetType']
        data.created_at = Time.parse(map['CreatedAt']) if map['CreatedAt']
        data.data_set_id = map['DataSetId']
        data.id = map['Id']
        data.name = map['Name']
        data.revision_id = map['RevisionId']
        data.source_id = map['SourceId']
        data.updated_at = Time.parse(map['UpdatedAt']) if map['UpdatedAt']
        data
      end
    end

    class AssetDetails
      def self.parse(map)
        data = Types::AssetDetails.new
        data.s3_snapshot_asset = (Parsers::S3SnapshotAsset.parse(map['S3SnapshotAsset']) unless map['S3SnapshotAsset'].nil?)
        data.redshift_data_share_asset = (Parsers::RedshiftDataShareAsset.parse(map['RedshiftDataShareAsset']) unless map['RedshiftDataShareAsset'].nil?)
        data.api_gateway_api_asset = (Parsers::ApiGatewayApiAsset.parse(map['ApiGatewayApiAsset']) unless map['ApiGatewayApiAsset'].nil?)
        return data
      end
    end

    class ApiGatewayApiAsset
      def self.parse(map)
        data = Types::ApiGatewayApiAsset.new
        data.api_description = map['ApiDescription']
        data.api_endpoint = map['ApiEndpoint']
        data.api_id = map['ApiId']
        data.api_key = map['ApiKey']
        data.api_name = map['ApiName']
        data.api_specification_download_url = map['ApiSpecificationDownloadUrl']
        data.api_specification_download_url_expires_at = Time.parse(map['ApiSpecificationDownloadUrlExpiresAt']) if map['ApiSpecificationDownloadUrlExpiresAt']
        data.protocol_type = map['ProtocolType']
        data.stage = map['Stage']
        return data
      end
    end

    class RedshiftDataShareAsset
      def self.parse(map)
        data = Types::RedshiftDataShareAsset.new
        data.arn = map['Arn']
        return data
      end
    end

    class S3SnapshotAsset
      def self.parse(map)
        data = Types::S3SnapshotAsset.new
        data.size = Hearth::NumberHelper.deserialize(map['Size'])
        return data
      end
    end

    # Operation Parser for GetDataSet
    class GetDataSet
      def self.parse(http_resp)
        data = Types::GetDataSetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.asset_type = map['AssetType']
        data.created_at = Time.parse(map['CreatedAt']) if map['CreatedAt']
        data.description = map['Description']
        data.id = map['Id']
        data.name = map['Name']
        data.origin = map['Origin']
        data.origin_details = (Parsers::OriginDetails.parse(map['OriginDetails']) unless map['OriginDetails'].nil?)
        data.source_id = map['SourceId']
        data.tags = (Parsers::MapOf__string.parse(map['Tags']) unless map['Tags'].nil?)
        data.updated_at = Time.parse(map['UpdatedAt']) if map['UpdatedAt']
        data
      end
    end

    # Operation Parser for GetEventAction
    class GetEventAction
      def self.parse(http_resp)
        data = Types::GetEventActionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.action = (Parsers::Action.parse(map['Action']) unless map['Action'].nil?)
        data.arn = map['Arn']
        data.created_at = Time.parse(map['CreatedAt']) if map['CreatedAt']
        data.event = (Parsers::Event.parse(map['Event']) unless map['Event'].nil?)
        data.id = map['Id']
        data.updated_at = Time.parse(map['UpdatedAt']) if map['UpdatedAt']
        data
      end
    end

    # Operation Parser for GetJob
    class GetJob
      def self.parse(http_resp)
        data = Types::GetJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.created_at = Time.parse(map['CreatedAt']) if map['CreatedAt']
        data.details = (Parsers::ResponseDetails.parse(map['Details']) unless map['Details'].nil?)
        data.errors = (Parsers::ListOfJobError.parse(map['Errors']) unless map['Errors'].nil?)
        data.id = map['Id']
        data.state = map['State']
        data.type = map['Type']
        data.updated_at = Time.parse(map['UpdatedAt']) if map['UpdatedAt']
        data
      end
    end

    # Operation Parser for GetRevision
    class GetRevision
      def self.parse(http_resp)
        data = Types::GetRevisionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.comment = map['Comment']
        data.created_at = Time.parse(map['CreatedAt']) if map['CreatedAt']
        data.data_set_id = map['DataSetId']
        data.finalized = map['Finalized']
        data.id = map['Id']
        data.source_id = map['SourceId']
        data.tags = (Parsers::MapOf__string.parse(map['Tags']) unless map['Tags'].nil?)
        data.updated_at = Time.parse(map['UpdatedAt']) if map['UpdatedAt']
        data.revocation_comment = map['RevocationComment']
        data.revoked = map['Revoked']
        data.revoked_at = Time.parse(map['RevokedAt']) if map['RevokedAt']
        data
      end
    end

    # Operation Parser for ListDataSetRevisions
    class ListDataSetRevisions
      def self.parse(http_resp)
        data = Types::ListDataSetRevisionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['NextToken']
        data.revisions = (Parsers::ListOfRevisionEntry.parse(map['Revisions']) unless map['Revisions'].nil?)
        data
      end
    end

    class ListOfRevisionEntry
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::RevisionEntry.parse(value) unless value.nil?
        end
        data
      end
    end

    class RevisionEntry
      def self.parse(map)
        data = Types::RevisionEntry.new
        data.arn = map['Arn']
        data.comment = map['Comment']
        data.created_at = Time.parse(map['CreatedAt']) if map['CreatedAt']
        data.data_set_id = map['DataSetId']
        data.finalized = map['Finalized']
        data.id = map['Id']
        data.source_id = map['SourceId']
        data.updated_at = Time.parse(map['UpdatedAt']) if map['UpdatedAt']
        data.revocation_comment = map['RevocationComment']
        data.revoked = map['Revoked']
        data.revoked_at = Time.parse(map['RevokedAt']) if map['RevokedAt']
        return data
      end
    end

    # Operation Parser for ListDataSets
    class ListDataSets
      def self.parse(http_resp)
        data = Types::ListDataSetsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.data_sets = (Parsers::ListOfDataSetEntry.parse(map['DataSets']) unless map['DataSets'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ListOfDataSetEntry
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::DataSetEntry.parse(value) unless value.nil?
        end
        data
      end
    end

    class DataSetEntry
      def self.parse(map)
        data = Types::DataSetEntry.new
        data.arn = map['Arn']
        data.asset_type = map['AssetType']
        data.created_at = Time.parse(map['CreatedAt']) if map['CreatedAt']
        data.description = map['Description']
        data.id = map['Id']
        data.name = map['Name']
        data.origin = map['Origin']
        data.origin_details = (Parsers::OriginDetails.parse(map['OriginDetails']) unless map['OriginDetails'].nil?)
        data.source_id = map['SourceId']
        data.updated_at = Time.parse(map['UpdatedAt']) if map['UpdatedAt']
        return data
      end
    end

    # Operation Parser for ListEventActions
    class ListEventActions
      def self.parse(http_resp)
        data = Types::ListEventActionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.event_actions = (Parsers::ListOfEventActionEntry.parse(map['EventActions']) unless map['EventActions'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ListOfEventActionEntry
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::EventActionEntry.parse(value) unless value.nil?
        end
        data
      end
    end

    class EventActionEntry
      def self.parse(map)
        data = Types::EventActionEntry.new
        data.action = (Parsers::Action.parse(map['Action']) unless map['Action'].nil?)
        data.arn = map['Arn']
        data.created_at = Time.parse(map['CreatedAt']) if map['CreatedAt']
        data.event = (Parsers::Event.parse(map['Event']) unless map['Event'].nil?)
        data.id = map['Id']
        data.updated_at = Time.parse(map['UpdatedAt']) if map['UpdatedAt']
        return data
      end
    end

    # Operation Parser for ListJobs
    class ListJobs
      def self.parse(http_resp)
        data = Types::ListJobsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.jobs = (Parsers::ListOfJobEntry.parse(map['Jobs']) unless map['Jobs'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ListOfJobEntry
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::JobEntry.parse(value) unless value.nil?
        end
        data
      end
    end

    class JobEntry
      def self.parse(map)
        data = Types::JobEntry.new
        data.arn = map['Arn']
        data.created_at = Time.parse(map['CreatedAt']) if map['CreatedAt']
        data.details = (Parsers::ResponseDetails.parse(map['Details']) unless map['Details'].nil?)
        data.errors = (Parsers::ListOfJobError.parse(map['Errors']) unless map['Errors'].nil?)
        data.id = map['Id']
        data.state = map['State']
        data.type = map['Type']
        data.updated_at = Time.parse(map['UpdatedAt']) if map['UpdatedAt']
        return data
      end
    end

    # Operation Parser for ListRevisionAssets
    class ListRevisionAssets
      def self.parse(http_resp)
        data = Types::ListRevisionAssetsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.assets = (Parsers::ListOfAssetEntry.parse(map['Assets']) unless map['Assets'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ListOfAssetEntry
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AssetEntry.parse(value) unless value.nil?
        end
        data
      end
    end

    class AssetEntry
      def self.parse(map)
        data = Types::AssetEntry.new
        data.arn = map['Arn']
        data.asset_details = (Parsers::AssetDetails.parse(map['AssetDetails']) unless map['AssetDetails'].nil?)
        data.asset_type = map['AssetType']
        data.created_at = Time.parse(map['CreatedAt']) if map['CreatedAt']
        data.data_set_id = map['DataSetId']
        data.id = map['Id']
        data.name = map['Name']
        data.revision_id = map['RevisionId']
        data.source_id = map['SourceId']
        data.updated_at = Time.parse(map['UpdatedAt']) if map['UpdatedAt']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::MapOf__string.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for RevokeRevision
    class RevokeRevision
      def self.parse(http_resp)
        data = Types::RevokeRevisionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.comment = map['Comment']
        data.created_at = Time.parse(map['CreatedAt']) if map['CreatedAt']
        data.data_set_id = map['DataSetId']
        data.finalized = map['Finalized']
        data.id = map['Id']
        data.source_id = map['SourceId']
        data.updated_at = Time.parse(map['UpdatedAt']) if map['UpdatedAt']
        data.revocation_comment = map['RevocationComment']
        data.revoked = map['Revoked']
        data.revoked_at = Time.parse(map['RevokedAt']) if map['RevokedAt']
        data
      end
    end

    # Operation Parser for SendApiAsset
    class SendApiAsset
      def self.parse(http_resp)
        data = Types::SendApiAssetOutput.new
        data.response_headers = {}
        http_resp.headers.each do |key, value|
          if key.start_with?('')
            data.response_headers[key.delete_prefix('')] = value
          end
        end
        payload = http_resp.body.read
        data.body = payload unless payload.empty?
        data
      end
    end

    # Operation Parser for StartJob
    class StartJob
      def self.parse(http_resp)
        data = Types::StartJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateAsset
    class UpdateAsset
      def self.parse(http_resp)
        data = Types::UpdateAssetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.asset_details = (Parsers::AssetDetails.parse(map['AssetDetails']) unless map['AssetDetails'].nil?)
        data.asset_type = map['AssetType']
        data.created_at = Time.parse(map['CreatedAt']) if map['CreatedAt']
        data.data_set_id = map['DataSetId']
        data.id = map['Id']
        data.name = map['Name']
        data.revision_id = map['RevisionId']
        data.source_id = map['SourceId']
        data.updated_at = Time.parse(map['UpdatedAt']) if map['UpdatedAt']
        data
      end
    end

    # Operation Parser for UpdateDataSet
    class UpdateDataSet
      def self.parse(http_resp)
        data = Types::UpdateDataSetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.asset_type = map['AssetType']
        data.created_at = Time.parse(map['CreatedAt']) if map['CreatedAt']
        data.description = map['Description']
        data.id = map['Id']
        data.name = map['Name']
        data.origin = map['Origin']
        data.origin_details = (Parsers::OriginDetails.parse(map['OriginDetails']) unless map['OriginDetails'].nil?)
        data.source_id = map['SourceId']
        data.updated_at = Time.parse(map['UpdatedAt']) if map['UpdatedAt']
        data
      end
    end

    # Operation Parser for UpdateEventAction
    class UpdateEventAction
      def self.parse(http_resp)
        data = Types::UpdateEventActionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.action = (Parsers::Action.parse(map['Action']) unless map['Action'].nil?)
        data.arn = map['Arn']
        data.created_at = Time.parse(map['CreatedAt']) if map['CreatedAt']
        data.event = (Parsers::Event.parse(map['Event']) unless map['Event'].nil?)
        data.id = map['Id']
        data.updated_at = Time.parse(map['UpdatedAt']) if map['UpdatedAt']
        data
      end
    end

    # Operation Parser for UpdateRevision
    class UpdateRevision
      def self.parse(http_resp)
        data = Types::UpdateRevisionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.comment = map['Comment']
        data.created_at = Time.parse(map['CreatedAt']) if map['CreatedAt']
        data.data_set_id = map['DataSetId']
        data.finalized = map['Finalized']
        data.id = map['Id']
        data.source_id = map['SourceId']
        data.updated_at = Time.parse(map['UpdatedAt']) if map['UpdatedAt']
        data.revocation_comment = map['RevocationComment']
        data.revoked = map['Revoked']
        data.revoked_at = Time.parse(map['RevokedAt']) if map['RevokedAt']
        data
      end
    end
  end
end
