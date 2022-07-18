# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::DataExchange
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Action
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Action, context: context)
        AutoExportRevisionToS3RequestDetails.validate!(input[:export_revision_to_s3], context: "#{context}[:export_revision_to_s3]") unless input[:export_revision_to_s3].nil?
      end
    end

    class ApiGatewayApiAsset
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApiGatewayApiAsset, context: context)
        Hearth::Validator.validate!(input[:api_description], ::String, context: "#{context}[:api_description]")
        Hearth::Validator.validate!(input[:api_endpoint], ::String, context: "#{context}[:api_endpoint]")
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:api_key], ::String, context: "#{context}[:api_key]")
        Hearth::Validator.validate!(input[:api_name], ::String, context: "#{context}[:api_name]")
        Hearth::Validator.validate!(input[:api_specification_download_url], ::String, context: "#{context}[:api_specification_download_url]")
        Hearth::Validator.validate!(input[:api_specification_download_url_expires_at], ::Time, context: "#{context}[:api_specification_download_url_expires_at]")
        Hearth::Validator.validate!(input[:protocol_type], ::String, context: "#{context}[:protocol_type]")
        Hearth::Validator.validate!(input[:stage], ::String, context: "#{context}[:stage]")
      end
    end

    class AssetDestinationEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssetDestinationEntry, context: context)
        Hearth::Validator.validate!(input[:asset_id], ::String, context: "#{context}[:asset_id]")
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
      end
    end

    class AssetDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssetDetails, context: context)
        S3SnapshotAsset.validate!(input[:s3_snapshot_asset], context: "#{context}[:s3_snapshot_asset]") unless input[:s3_snapshot_asset].nil?
        RedshiftDataShareAsset.validate!(input[:redshift_data_share_asset], context: "#{context}[:redshift_data_share_asset]") unless input[:redshift_data_share_asset].nil?
        ApiGatewayApiAsset.validate!(input[:api_gateway_api_asset], context: "#{context}[:api_gateway_api_asset]") unless input[:api_gateway_api_asset].nil?
      end
    end

    class AssetEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssetEntry, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        AssetDetails.validate!(input[:asset_details], context: "#{context}[:asset_details]") unless input[:asset_details].nil?
        Hearth::Validator.validate!(input[:asset_type], ::String, context: "#{context}[:asset_type]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:data_set_id], ::String, context: "#{context}[:data_set_id]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
        Hearth::Validator.validate!(input[:source_id], ::String, context: "#{context}[:source_id]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
      end
    end

    class AssetSourceEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssetSourceEntry, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
      end
    end

    class AutoExportRevisionDestinationEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoExportRevisionDestinationEntry, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:key_pattern], ::String, context: "#{context}[:key_pattern]")
      end
    end

    class AutoExportRevisionToS3RequestDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoExportRevisionToS3RequestDetails, context: context)
        ExportServerSideEncryption.validate!(input[:encryption], context: "#{context}[:encryption]") unless input[:encryption].nil?
        AutoExportRevisionDestinationEntry.validate!(input[:revision_destination], context: "#{context}[:revision_destination]") unless input[:revision_destination].nil?
      end
    end

    class CancelJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelJobInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class CancelJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelJobOutput, context: context)
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class CreateDataSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDataSetInput, context: context)
        Hearth::Validator.validate!(input[:asset_type], ::String, context: "#{context}[:asset_type]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        MapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateDataSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDataSetOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:asset_type], ::String, context: "#{context}[:asset_type]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:origin], ::String, context: "#{context}[:origin]")
        OriginDetails.validate!(input[:origin_details], context: "#{context}[:origin_details]") unless input[:origin_details].nil?
        Hearth::Validator.validate!(input[:source_id], ::String, context: "#{context}[:source_id]")
        MapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
      end
    end

    class CreateEventActionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEventActionInput, context: context)
        Action.validate!(input[:action], context: "#{context}[:action]") unless input[:action].nil?
        Event.validate!(input[:event], context: "#{context}[:event]") unless input[:event].nil?
      end
    end

    class CreateEventActionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEventActionOutput, context: context)
        Action.validate!(input[:action], context: "#{context}[:action]") unless input[:action].nil?
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Event.validate!(input[:event], context: "#{context}[:event]") unless input[:event].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
      end
    end

    class CreateJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateJobInput, context: context)
        RequestDetails.validate!(input[:details], context: "#{context}[:details]") unless input[:details].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class CreateJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateJobOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        ResponseDetails.validate!(input[:details], context: "#{context}[:details]") unless input[:details].nil?
        ListOfJobError.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
      end
    end

    class CreateRevisionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRevisionInput, context: context)
        Hearth::Validator.validate!(input[:comment], ::String, context: "#{context}[:comment]")
        Hearth::Validator.validate!(input[:data_set_id], ::String, context: "#{context}[:data_set_id]")
        MapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateRevisionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRevisionOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:comment], ::String, context: "#{context}[:comment]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:data_set_id], ::String, context: "#{context}[:data_set_id]")
        Hearth::Validator.validate!(input[:finalized], ::TrueClass, ::FalseClass, context: "#{context}[:finalized]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:source_id], ::String, context: "#{context}[:source_id]")
        MapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
        Hearth::Validator.validate!(input[:revocation_comment], ::String, context: "#{context}[:revocation_comment]")
        Hearth::Validator.validate!(input[:revoked], ::TrueClass, ::FalseClass, context: "#{context}[:revoked]")
        Hearth::Validator.validate!(input[:revoked_at], ::Time, context: "#{context}[:revoked_at]")
      end
    end

    class DataSetEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataSetEntry, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:asset_type], ::String, context: "#{context}[:asset_type]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:origin], ::String, context: "#{context}[:origin]")
        OriginDetails.validate!(input[:origin_details], context: "#{context}[:origin_details]") unless input[:origin_details].nil?
        Hearth::Validator.validate!(input[:source_id], ::String, context: "#{context}[:source_id]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
      end
    end

    class DeleteAssetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAssetInput, context: context)
        Hearth::Validator.validate!(input[:asset_id], ::String, context: "#{context}[:asset_id]")
        Hearth::Validator.validate!(input[:data_set_id], ::String, context: "#{context}[:data_set_id]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
      end
    end

    class DeleteAssetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAssetOutput, context: context)
      end
    end

    class DeleteDataSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDataSetInput, context: context)
        Hearth::Validator.validate!(input[:data_set_id], ::String, context: "#{context}[:data_set_id]")
      end
    end

    class DeleteDataSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDataSetOutput, context: context)
      end
    end

    class DeleteEventActionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEventActionInput, context: context)
        Hearth::Validator.validate!(input[:event_action_id], ::String, context: "#{context}[:event_action_id]")
      end
    end

    class DeleteEventActionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEventActionOutput, context: context)
      end
    end

    class DeleteRevisionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRevisionInput, context: context)
        Hearth::Validator.validate!(input[:data_set_id], ::String, context: "#{context}[:data_set_id]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
      end
    end

    class DeleteRevisionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRevisionOutput, context: context)
      end
    end

    class Details
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Details, context: context)
        ImportAssetFromSignedUrlJobErrorDetails.validate!(input[:import_asset_from_signed_url_job_error_details], context: "#{context}[:import_asset_from_signed_url_job_error_details]") unless input[:import_asset_from_signed_url_job_error_details].nil?
        ListOfAssetSourceEntry.validate!(input[:import_assets_from_s3_job_error_details], context: "#{context}[:import_assets_from_s3_job_error_details]") unless input[:import_assets_from_s3_job_error_details].nil?
      end
    end

    class Event
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Event, context: context)
        RevisionPublished.validate!(input[:revision_published], context: "#{context}[:revision_published]") unless input[:revision_published].nil?
      end
    end

    class EventActionEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventActionEntry, context: context)
        Action.validate!(input[:action], context: "#{context}[:action]") unless input[:action].nil?
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Event.validate!(input[:event], context: "#{context}[:event]") unless input[:event].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
      end
    end

    class ExportAssetToSignedUrlRequestDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportAssetToSignedUrlRequestDetails, context: context)
        Hearth::Validator.validate!(input[:asset_id], ::String, context: "#{context}[:asset_id]")
        Hearth::Validator.validate!(input[:data_set_id], ::String, context: "#{context}[:data_set_id]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
      end
    end

    class ExportAssetToSignedUrlResponseDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportAssetToSignedUrlResponseDetails, context: context)
        Hearth::Validator.validate!(input[:asset_id], ::String, context: "#{context}[:asset_id]")
        Hearth::Validator.validate!(input[:data_set_id], ::String, context: "#{context}[:data_set_id]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
        Hearth::Validator.validate!(input[:signed_url], ::String, context: "#{context}[:signed_url]")
        Hearth::Validator.validate!(input[:signed_url_expires_at], ::Time, context: "#{context}[:signed_url_expires_at]")
      end
    end

    class ExportAssetsToS3RequestDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportAssetsToS3RequestDetails, context: context)
        ListOfAssetDestinationEntry.validate!(input[:asset_destinations], context: "#{context}[:asset_destinations]") unless input[:asset_destinations].nil?
        Hearth::Validator.validate!(input[:data_set_id], ::String, context: "#{context}[:data_set_id]")
        ExportServerSideEncryption.validate!(input[:encryption], context: "#{context}[:encryption]") unless input[:encryption].nil?
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
      end
    end

    class ExportAssetsToS3ResponseDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportAssetsToS3ResponseDetails, context: context)
        ListOfAssetDestinationEntry.validate!(input[:asset_destinations], context: "#{context}[:asset_destinations]") unless input[:asset_destinations].nil?
        Hearth::Validator.validate!(input[:data_set_id], ::String, context: "#{context}[:data_set_id]")
        ExportServerSideEncryption.validate!(input[:encryption], context: "#{context}[:encryption]") unless input[:encryption].nil?
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
      end
    end

    class ExportRevisionsToS3RequestDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportRevisionsToS3RequestDetails, context: context)
        Hearth::Validator.validate!(input[:data_set_id], ::String, context: "#{context}[:data_set_id]")
        ExportServerSideEncryption.validate!(input[:encryption], context: "#{context}[:encryption]") unless input[:encryption].nil?
        ListOfRevisionDestinationEntry.validate!(input[:revision_destinations], context: "#{context}[:revision_destinations]") unless input[:revision_destinations].nil?
      end
    end

    class ExportRevisionsToS3ResponseDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportRevisionsToS3ResponseDetails, context: context)
        Hearth::Validator.validate!(input[:data_set_id], ::String, context: "#{context}[:data_set_id]")
        ExportServerSideEncryption.validate!(input[:encryption], context: "#{context}[:encryption]") unless input[:encryption].nil?
        ListOfRevisionDestinationEntry.validate!(input[:revision_destinations], context: "#{context}[:revision_destinations]") unless input[:revision_destinations].nil?
        Hearth::Validator.validate!(input[:event_action_arn], ::String, context: "#{context}[:event_action_arn]")
      end
    end

    class ExportServerSideEncryption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportServerSideEncryption, context: context)
        Hearth::Validator.validate!(input[:kms_key_arn], ::String, context: "#{context}[:kms_key_arn]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class GetAssetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAssetInput, context: context)
        Hearth::Validator.validate!(input[:asset_id], ::String, context: "#{context}[:asset_id]")
        Hearth::Validator.validate!(input[:data_set_id], ::String, context: "#{context}[:data_set_id]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
      end
    end

    class GetAssetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAssetOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        AssetDetails.validate!(input[:asset_details], context: "#{context}[:asset_details]") unless input[:asset_details].nil?
        Hearth::Validator.validate!(input[:asset_type], ::String, context: "#{context}[:asset_type]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:data_set_id], ::String, context: "#{context}[:data_set_id]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
        Hearth::Validator.validate!(input[:source_id], ::String, context: "#{context}[:source_id]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
      end
    end

    class GetDataSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDataSetInput, context: context)
        Hearth::Validator.validate!(input[:data_set_id], ::String, context: "#{context}[:data_set_id]")
      end
    end

    class GetDataSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDataSetOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:asset_type], ::String, context: "#{context}[:asset_type]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:origin], ::String, context: "#{context}[:origin]")
        OriginDetails.validate!(input[:origin_details], context: "#{context}[:origin_details]") unless input[:origin_details].nil?
        Hearth::Validator.validate!(input[:source_id], ::String, context: "#{context}[:source_id]")
        MapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
      end
    end

    class GetEventActionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEventActionInput, context: context)
        Hearth::Validator.validate!(input[:event_action_id], ::String, context: "#{context}[:event_action_id]")
      end
    end

    class GetEventActionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEventActionOutput, context: context)
        Action.validate!(input[:action], context: "#{context}[:action]") unless input[:action].nil?
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Event.validate!(input[:event], context: "#{context}[:event]") unless input[:event].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
      end
    end

    class GetJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetJobInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class GetJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetJobOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        ResponseDetails.validate!(input[:details], context: "#{context}[:details]") unless input[:details].nil?
        ListOfJobError.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
      end
    end

    class GetRevisionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRevisionInput, context: context)
        Hearth::Validator.validate!(input[:data_set_id], ::String, context: "#{context}[:data_set_id]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
      end
    end

    class GetRevisionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRevisionOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:comment], ::String, context: "#{context}[:comment]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:data_set_id], ::String, context: "#{context}[:data_set_id]")
        Hearth::Validator.validate!(input[:finalized], ::TrueClass, ::FalseClass, context: "#{context}[:finalized]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:source_id], ::String, context: "#{context}[:source_id]")
        MapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
        Hearth::Validator.validate!(input[:revocation_comment], ::String, context: "#{context}[:revocation_comment]")
        Hearth::Validator.validate!(input[:revoked], ::TrueClass, ::FalseClass, context: "#{context}[:revoked]")
        Hearth::Validator.validate!(input[:revoked_at], ::Time, context: "#{context}[:revoked_at]")
      end
    end

    class ImportAssetFromApiGatewayApiRequestDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportAssetFromApiGatewayApiRequestDetails, context: context)
        Hearth::Validator.validate!(input[:api_description], ::String, context: "#{context}[:api_description]")
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:api_key], ::String, context: "#{context}[:api_key]")
        Hearth::Validator.validate!(input[:api_name], ::String, context: "#{context}[:api_name]")
        Hearth::Validator.validate!(input[:api_specification_md5_hash], ::String, context: "#{context}[:api_specification_md5_hash]")
        Hearth::Validator.validate!(input[:data_set_id], ::String, context: "#{context}[:data_set_id]")
        Hearth::Validator.validate!(input[:protocol_type], ::String, context: "#{context}[:protocol_type]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
        Hearth::Validator.validate!(input[:stage], ::String, context: "#{context}[:stage]")
      end
    end

    class ImportAssetFromApiGatewayApiResponseDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportAssetFromApiGatewayApiResponseDetails, context: context)
        Hearth::Validator.validate!(input[:api_description], ::String, context: "#{context}[:api_description]")
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:api_key], ::String, context: "#{context}[:api_key]")
        Hearth::Validator.validate!(input[:api_name], ::String, context: "#{context}[:api_name]")
        Hearth::Validator.validate!(input[:api_specification_md5_hash], ::String, context: "#{context}[:api_specification_md5_hash]")
        Hearth::Validator.validate!(input[:api_specification_upload_url], ::String, context: "#{context}[:api_specification_upload_url]")
        Hearth::Validator.validate!(input[:api_specification_upload_url_expires_at], ::Time, context: "#{context}[:api_specification_upload_url_expires_at]")
        Hearth::Validator.validate!(input[:data_set_id], ::String, context: "#{context}[:data_set_id]")
        Hearth::Validator.validate!(input[:protocol_type], ::String, context: "#{context}[:protocol_type]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
        Hearth::Validator.validate!(input[:stage], ::String, context: "#{context}[:stage]")
      end
    end

    class ImportAssetFromSignedUrlJobErrorDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportAssetFromSignedUrlJobErrorDetails, context: context)
        Hearth::Validator.validate!(input[:asset_name], ::String, context: "#{context}[:asset_name]")
      end
    end

    class ImportAssetFromSignedUrlRequestDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportAssetFromSignedUrlRequestDetails, context: context)
        Hearth::Validator.validate!(input[:asset_name], ::String, context: "#{context}[:asset_name]")
        Hearth::Validator.validate!(input[:data_set_id], ::String, context: "#{context}[:data_set_id]")
        Hearth::Validator.validate!(input[:md5_hash], ::String, context: "#{context}[:md5_hash]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
      end
    end

    class ImportAssetFromSignedUrlResponseDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportAssetFromSignedUrlResponseDetails, context: context)
        Hearth::Validator.validate!(input[:asset_name], ::String, context: "#{context}[:asset_name]")
        Hearth::Validator.validate!(input[:data_set_id], ::String, context: "#{context}[:data_set_id]")
        Hearth::Validator.validate!(input[:md5_hash], ::String, context: "#{context}[:md5_hash]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
        Hearth::Validator.validate!(input[:signed_url], ::String, context: "#{context}[:signed_url]")
        Hearth::Validator.validate!(input[:signed_url_expires_at], ::Time, context: "#{context}[:signed_url_expires_at]")
      end
    end

    class ImportAssetsFromRedshiftDataSharesRequestDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportAssetsFromRedshiftDataSharesRequestDetails, context: context)
        ListOfRedshiftDataShareAssetSourceEntry.validate!(input[:asset_sources], context: "#{context}[:asset_sources]") unless input[:asset_sources].nil?
        Hearth::Validator.validate!(input[:data_set_id], ::String, context: "#{context}[:data_set_id]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
      end
    end

    class ImportAssetsFromRedshiftDataSharesResponseDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportAssetsFromRedshiftDataSharesResponseDetails, context: context)
        ListOfRedshiftDataShareAssetSourceEntry.validate!(input[:asset_sources], context: "#{context}[:asset_sources]") unless input[:asset_sources].nil?
        Hearth::Validator.validate!(input[:data_set_id], ::String, context: "#{context}[:data_set_id]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
      end
    end

    class ImportAssetsFromS3RequestDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportAssetsFromS3RequestDetails, context: context)
        ListOfAssetSourceEntry.validate!(input[:asset_sources], context: "#{context}[:asset_sources]") unless input[:asset_sources].nil?
        Hearth::Validator.validate!(input[:data_set_id], ::String, context: "#{context}[:data_set_id]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
      end
    end

    class ImportAssetsFromS3ResponseDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportAssetsFromS3ResponseDetails, context: context)
        ListOfAssetSourceEntry.validate!(input[:asset_sources], context: "#{context}[:asset_sources]") unless input[:asset_sources].nil?
        Hearth::Validator.validate!(input[:data_set_id], ::String, context: "#{context}[:data_set_id]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class JobEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobEntry, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        ResponseDetails.validate!(input[:details], context: "#{context}[:details]") unless input[:details].nil?
        ListOfJobError.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
      end
    end

    class JobError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobError, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Details.validate!(input[:details], context: "#{context}[:details]") unless input[:details].nil?
        Hearth::Validator.validate!(input[:limit_name], ::String, context: "#{context}[:limit_name]")
        Hearth::Validator.validate!(input[:limit_value], ::Float, context: "#{context}[:limit_value]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class ListDataSetRevisionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDataSetRevisionsInput, context: context)
        Hearth::Validator.validate!(input[:data_set_id], ::String, context: "#{context}[:data_set_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDataSetRevisionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDataSetRevisionsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        ListOfRevisionEntry.validate!(input[:revisions], context: "#{context}[:revisions]") unless input[:revisions].nil?
      end
    end

    class ListDataSetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDataSetsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:origin], ::String, context: "#{context}[:origin]")
      end
    end

    class ListDataSetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDataSetsOutput, context: context)
        ListOfDataSetEntry.validate!(input[:data_sets], context: "#{context}[:data_sets]") unless input[:data_sets].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListEventActionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEventActionsInput, context: context)
        Hearth::Validator.validate!(input[:event_source_id], ::String, context: "#{context}[:event_source_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListEventActionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEventActionsOutput, context: context)
        ListOfEventActionEntry.validate!(input[:event_actions], context: "#{context}[:event_actions]") unless input[:event_actions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListJobsInput, context: context)
        Hearth::Validator.validate!(input[:data_set_id], ::String, context: "#{context}[:data_set_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
      end
    end

    class ListJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListJobsOutput, context: context)
        ListOfJobEntry.validate!(input[:jobs], context: "#{context}[:jobs]") unless input[:jobs].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListOfAssetDestinationEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AssetDestinationEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfAssetEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AssetEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfAssetSourceEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AssetSourceEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfDataSetEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DataSetEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfEventActionEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EventActionEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfJobEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          JobEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfJobError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          JobError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfRedshiftDataShareAssetSourceEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RedshiftDataShareAssetSourceEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfRevisionDestinationEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RevisionDestinationEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfRevisionEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RevisionEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOf__string
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ListRevisionAssetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRevisionAssetsInput, context: context)
        Hearth::Validator.validate!(input[:data_set_id], ::String, context: "#{context}[:data_set_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
      end
    end

    class ListRevisionAssetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRevisionAssetsOutput, context: context)
        ListOfAssetEntry.validate!(input[:assets], context: "#{context}[:assets]") unless input[:assets].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        MapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class MapOf__string
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class OriginDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OriginDetails, context: context)
        Hearth::Validator.validate!(input[:product_id], ::String, context: "#{context}[:product_id]")
      end
    end

    class RedshiftDataShareAsset
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RedshiftDataShareAsset, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class RedshiftDataShareAssetSourceEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RedshiftDataShareAssetSourceEntry, context: context)
        Hearth::Validator.validate!(input[:data_share_arn], ::String, context: "#{context}[:data_share_arn]")
      end
    end

    class RequestDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RequestDetails, context: context)
        ExportAssetToSignedUrlRequestDetails.validate!(input[:export_asset_to_signed_url], context: "#{context}[:export_asset_to_signed_url]") unless input[:export_asset_to_signed_url].nil?
        ExportAssetsToS3RequestDetails.validate!(input[:export_assets_to_s3], context: "#{context}[:export_assets_to_s3]") unless input[:export_assets_to_s3].nil?
        ExportRevisionsToS3RequestDetails.validate!(input[:export_revisions_to_s3], context: "#{context}[:export_revisions_to_s3]") unless input[:export_revisions_to_s3].nil?
        ImportAssetFromSignedUrlRequestDetails.validate!(input[:import_asset_from_signed_url], context: "#{context}[:import_asset_from_signed_url]") unless input[:import_asset_from_signed_url].nil?
        ImportAssetsFromS3RequestDetails.validate!(input[:import_assets_from_s3], context: "#{context}[:import_assets_from_s3]") unless input[:import_assets_from_s3].nil?
        ImportAssetsFromRedshiftDataSharesRequestDetails.validate!(input[:import_assets_from_redshift_data_shares], context: "#{context}[:import_assets_from_redshift_data_shares]") unless input[:import_assets_from_redshift_data_shares].nil?
        ImportAssetFromApiGatewayApiRequestDetails.validate!(input[:import_asset_from_api_gateway_api], context: "#{context}[:import_asset_from_api_gateway_api]") unless input[:import_asset_from_api_gateway_api].nil?
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class ResponseDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResponseDetails, context: context)
        ExportAssetToSignedUrlResponseDetails.validate!(input[:export_asset_to_signed_url], context: "#{context}[:export_asset_to_signed_url]") unless input[:export_asset_to_signed_url].nil?
        ExportAssetsToS3ResponseDetails.validate!(input[:export_assets_to_s3], context: "#{context}[:export_assets_to_s3]") unless input[:export_assets_to_s3].nil?
        ExportRevisionsToS3ResponseDetails.validate!(input[:export_revisions_to_s3], context: "#{context}[:export_revisions_to_s3]") unless input[:export_revisions_to_s3].nil?
        ImportAssetFromSignedUrlResponseDetails.validate!(input[:import_asset_from_signed_url], context: "#{context}[:import_asset_from_signed_url]") unless input[:import_asset_from_signed_url].nil?
        ImportAssetsFromS3ResponseDetails.validate!(input[:import_assets_from_s3], context: "#{context}[:import_assets_from_s3]") unless input[:import_assets_from_s3].nil?
        ImportAssetsFromRedshiftDataSharesResponseDetails.validate!(input[:import_assets_from_redshift_data_shares], context: "#{context}[:import_assets_from_redshift_data_shares]") unless input[:import_assets_from_redshift_data_shares].nil?
        ImportAssetFromApiGatewayApiResponseDetails.validate!(input[:import_asset_from_api_gateway_api], context: "#{context}[:import_asset_from_api_gateway_api]") unless input[:import_asset_from_api_gateway_api].nil?
      end
    end

    class RevisionDestinationEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RevisionDestinationEntry, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:key_pattern], ::String, context: "#{context}[:key_pattern]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
      end
    end

    class RevisionEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RevisionEntry, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:comment], ::String, context: "#{context}[:comment]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:data_set_id], ::String, context: "#{context}[:data_set_id]")
        Hearth::Validator.validate!(input[:finalized], ::TrueClass, ::FalseClass, context: "#{context}[:finalized]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:source_id], ::String, context: "#{context}[:source_id]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
        Hearth::Validator.validate!(input[:revocation_comment], ::String, context: "#{context}[:revocation_comment]")
        Hearth::Validator.validate!(input[:revoked], ::TrueClass, ::FalseClass, context: "#{context}[:revoked]")
        Hearth::Validator.validate!(input[:revoked_at], ::Time, context: "#{context}[:revoked_at]")
      end
    end

    class RevisionPublished
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RevisionPublished, context: context)
        Hearth::Validator.validate!(input[:data_set_id], ::String, context: "#{context}[:data_set_id]")
      end
    end

    class RevokeRevisionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RevokeRevisionInput, context: context)
        Hearth::Validator.validate!(input[:data_set_id], ::String, context: "#{context}[:data_set_id]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
        Hearth::Validator.validate!(input[:revocation_comment], ::String, context: "#{context}[:revocation_comment]")
      end
    end

    class RevokeRevisionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RevokeRevisionOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:comment], ::String, context: "#{context}[:comment]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:data_set_id], ::String, context: "#{context}[:data_set_id]")
        Hearth::Validator.validate!(input[:finalized], ::TrueClass, ::FalseClass, context: "#{context}[:finalized]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:source_id], ::String, context: "#{context}[:source_id]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
        Hearth::Validator.validate!(input[:revocation_comment], ::String, context: "#{context}[:revocation_comment]")
        Hearth::Validator.validate!(input[:revoked], ::TrueClass, ::FalseClass, context: "#{context}[:revoked]")
        Hearth::Validator.validate!(input[:revoked_at], ::Time, context: "#{context}[:revoked_at]")
      end
    end

    class S3SnapshotAsset
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3SnapshotAsset, context: context)
        Hearth::Validator.validate!(input[:size], ::Float, context: "#{context}[:size]")
      end
    end

    class SendApiAssetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendApiAssetInput, context: context)
        Hearth::Validator.validate!(input[:body], ::String, context: "#{context}[:body]")
        MapOf__string.validate!(input[:query_string_parameters], context: "#{context}[:query_string_parameters]") unless input[:query_string_parameters].nil?
        Hearth::Validator.validate!(input[:asset_id], ::String, context: "#{context}[:asset_id]")
        Hearth::Validator.validate!(input[:data_set_id], ::String, context: "#{context}[:data_set_id]")
        MapOf__string.validate!(input[:request_headers], context: "#{context}[:request_headers]") unless input[:request_headers].nil?
        Hearth::Validator.validate!(input[:member_method], ::String, context: "#{context}[:member_method]")
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
      end
    end

    class SendApiAssetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendApiAssetOutput, context: context)
        Hearth::Validator.validate!(input[:body], ::String, context: "#{context}[:body]")
        MapOf__string.validate!(input[:response_headers], context: "#{context}[:response_headers]") unless input[:response_headers].nil?
      end
    end

    class ServiceLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:limit_name], ::String, context: "#{context}[:limit_name]")
        Hearth::Validator.validate!(input[:limit_value], ::Float, context: "#{context}[:limit_value]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class StartJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartJobInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class StartJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartJobOutput, context: context)
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        MapOf__string.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        ListOf__string.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateAssetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAssetInput, context: context)
        Hearth::Validator.validate!(input[:asset_id], ::String, context: "#{context}[:asset_id]")
        Hearth::Validator.validate!(input[:data_set_id], ::String, context: "#{context}[:data_set_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
      end
    end

    class UpdateAssetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAssetOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        AssetDetails.validate!(input[:asset_details], context: "#{context}[:asset_details]") unless input[:asset_details].nil?
        Hearth::Validator.validate!(input[:asset_type], ::String, context: "#{context}[:asset_type]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:data_set_id], ::String, context: "#{context}[:data_set_id]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
        Hearth::Validator.validate!(input[:source_id], ::String, context: "#{context}[:source_id]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
      end
    end

    class UpdateDataSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDataSetInput, context: context)
        Hearth::Validator.validate!(input[:data_set_id], ::String, context: "#{context}[:data_set_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class UpdateDataSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDataSetOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:asset_type], ::String, context: "#{context}[:asset_type]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:origin], ::String, context: "#{context}[:origin]")
        OriginDetails.validate!(input[:origin_details], context: "#{context}[:origin_details]") unless input[:origin_details].nil?
        Hearth::Validator.validate!(input[:source_id], ::String, context: "#{context}[:source_id]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
      end
    end

    class UpdateEventActionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEventActionInput, context: context)
        Action.validate!(input[:action], context: "#{context}[:action]") unless input[:action].nil?
        Hearth::Validator.validate!(input[:event_action_id], ::String, context: "#{context}[:event_action_id]")
      end
    end

    class UpdateEventActionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEventActionOutput, context: context)
        Action.validate!(input[:action], context: "#{context}[:action]") unless input[:action].nil?
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Event.validate!(input[:event], context: "#{context}[:event]") unless input[:event].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
      end
    end

    class UpdateRevisionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRevisionInput, context: context)
        Hearth::Validator.validate!(input[:comment], ::String, context: "#{context}[:comment]")
        Hearth::Validator.validate!(input[:data_set_id], ::String, context: "#{context}[:data_set_id]")
        Hearth::Validator.validate!(input[:finalized], ::TrueClass, ::FalseClass, context: "#{context}[:finalized]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
      end
    end

    class UpdateRevisionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRevisionOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:comment], ::String, context: "#{context}[:comment]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:data_set_id], ::String, context: "#{context}[:data_set_id]")
        Hearth::Validator.validate!(input[:finalized], ::TrueClass, ::FalseClass, context: "#{context}[:finalized]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:source_id], ::String, context: "#{context}[:source_id]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
        Hearth::Validator.validate!(input[:revocation_comment], ::String, context: "#{context}[:revocation_comment]")
        Hearth::Validator.validate!(input[:revoked], ::TrueClass, ::FalseClass, context: "#{context}[:revoked]")
        Hearth::Validator.validate!(input[:revoked_at], ::Time, context: "#{context}[:revoked_at]")
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:exception_cause], ::String, context: "#{context}[:exception_cause]")
      end
    end

  end
end
