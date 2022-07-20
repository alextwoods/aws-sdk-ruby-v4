# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::DataExchange
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module Action
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Action, context: context)
        type = Types::Action.new
        type.export_revision_to_s3 = AutoExportRevisionToS3RequestDetails.build(params[:export_revision_to_s3], context: "#{context}[:export_revision_to_s3]") unless params[:export_revision_to_s3].nil?
        type
      end
    end

    module ApiGatewayApiAsset
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApiGatewayApiAsset, context: context)
        type = Types::ApiGatewayApiAsset.new
        type.api_description = params[:api_description]
        type.api_endpoint = params[:api_endpoint]
        type.api_id = params[:api_id]
        type.api_key = params[:api_key]
        type.api_name = params[:api_name]
        type.api_specification_download_url = params[:api_specification_download_url]
        type.api_specification_download_url_expires_at = params[:api_specification_download_url_expires_at]
        type.protocol_type = params[:protocol_type]
        type.stage = params[:stage]
        type
      end
    end

    module AssetDestinationEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssetDestinationEntry, context: context)
        type = Types::AssetDestinationEntry.new
        type.asset_id = params[:asset_id]
        type.bucket = params[:bucket]
        type.key = params[:key]
        type
      end
    end

    module AssetDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssetDetails, context: context)
        type = Types::AssetDetails.new
        type.s3_snapshot_asset = S3SnapshotAsset.build(params[:s3_snapshot_asset], context: "#{context}[:s3_snapshot_asset]") unless params[:s3_snapshot_asset].nil?
        type.redshift_data_share_asset = RedshiftDataShareAsset.build(params[:redshift_data_share_asset], context: "#{context}[:redshift_data_share_asset]") unless params[:redshift_data_share_asset].nil?
        type.api_gateway_api_asset = ApiGatewayApiAsset.build(params[:api_gateway_api_asset], context: "#{context}[:api_gateway_api_asset]") unless params[:api_gateway_api_asset].nil?
        type
      end
    end

    module AssetEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssetEntry, context: context)
        type = Types::AssetEntry.new
        type.arn = params[:arn]
        type.asset_details = AssetDetails.build(params[:asset_details], context: "#{context}[:asset_details]") unless params[:asset_details].nil?
        type.asset_type = params[:asset_type]
        type.created_at = params[:created_at]
        type.data_set_id = params[:data_set_id]
        type.id = params[:id]
        type.name = params[:name]
        type.revision_id = params[:revision_id]
        type.source_id = params[:source_id]
        type.updated_at = params[:updated_at]
        type
      end
    end

    module AssetSourceEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssetSourceEntry, context: context)
        type = Types::AssetSourceEntry.new
        type.bucket = params[:bucket]
        type.key = params[:key]
        type
      end
    end

    module AutoExportRevisionDestinationEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoExportRevisionDestinationEntry, context: context)
        type = Types::AutoExportRevisionDestinationEntry.new
        type.bucket = params[:bucket]
        type.key_pattern = params[:key_pattern]
        type
      end
    end

    module AutoExportRevisionToS3RequestDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoExportRevisionToS3RequestDetails, context: context)
        type = Types::AutoExportRevisionToS3RequestDetails.new
        type.encryption = ExportServerSideEncryption.build(params[:encryption], context: "#{context}[:encryption]") unless params[:encryption].nil?
        type.revision_destination = AutoExportRevisionDestinationEntry.build(params[:revision_destination], context: "#{context}[:revision_destination]") unless params[:revision_destination].nil?
        type
      end
    end

    module CancelJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelJobInput, context: context)
        type = Types::CancelJobInput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module CancelJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelJobOutput, context: context)
        type = Types::CancelJobOutput.new
        type
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module CreateDataSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDataSetInput, context: context)
        type = Types::CreateDataSetInput.new
        type.asset_type = params[:asset_type]
        type.description = params[:description]
        type.name = params[:name]
        type.tags = MapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateDataSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDataSetOutput, context: context)
        type = Types::CreateDataSetOutput.new
        type.arn = params[:arn]
        type.asset_type = params[:asset_type]
        type.created_at = params[:created_at]
        type.description = params[:description]
        type.id = params[:id]
        type.name = params[:name]
        type.origin = params[:origin]
        type.origin_details = OriginDetails.build(params[:origin_details], context: "#{context}[:origin_details]") unless params[:origin_details].nil?
        type.source_id = params[:source_id]
        type.tags = MapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.updated_at = params[:updated_at]
        type
      end
    end

    module CreateEventActionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEventActionInput, context: context)
        type = Types::CreateEventActionInput.new
        type.action = Action.build(params[:action], context: "#{context}[:action]") unless params[:action].nil?
        type.event = Event.build(params[:event], context: "#{context}[:event]") unless params[:event].nil?
        type
      end
    end

    module CreateEventActionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEventActionOutput, context: context)
        type = Types::CreateEventActionOutput.new
        type.action = Action.build(params[:action], context: "#{context}[:action]") unless params[:action].nil?
        type.arn = params[:arn]
        type.created_at = params[:created_at]
        type.event = Event.build(params[:event], context: "#{context}[:event]") unless params[:event].nil?
        type.id = params[:id]
        type.updated_at = params[:updated_at]
        type
      end
    end

    module CreateJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateJobInput, context: context)
        type = Types::CreateJobInput.new
        type.details = RequestDetails.build(params[:details], context: "#{context}[:details]") unless params[:details].nil?
        type.type = params[:type]
        type
      end
    end

    module CreateJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateJobOutput, context: context)
        type = Types::CreateJobOutput.new
        type.arn = params[:arn]
        type.created_at = params[:created_at]
        type.details = ResponseDetails.build(params[:details], context: "#{context}[:details]") unless params[:details].nil?
        type.errors = ListOfJobError.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type.id = params[:id]
        type.state = params[:state]
        type.type = params[:type]
        type.updated_at = params[:updated_at]
        type
      end
    end

    module CreateRevisionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRevisionInput, context: context)
        type = Types::CreateRevisionInput.new
        type.comment = params[:comment]
        type.data_set_id = params[:data_set_id]
        type.tags = MapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateRevisionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRevisionOutput, context: context)
        type = Types::CreateRevisionOutput.new
        type.arn = params[:arn]
        type.comment = params[:comment]
        type.created_at = params[:created_at]
        type.data_set_id = params[:data_set_id]
        type.finalized = params[:finalized]
        type.id = params[:id]
        type.source_id = params[:source_id]
        type.tags = MapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.updated_at = params[:updated_at]
        type.revocation_comment = params[:revocation_comment]
        type.revoked = params[:revoked]
        type.revoked_at = params[:revoked_at]
        type
      end
    end

    module DataSetEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataSetEntry, context: context)
        type = Types::DataSetEntry.new
        type.arn = params[:arn]
        type.asset_type = params[:asset_type]
        type.created_at = params[:created_at]
        type.description = params[:description]
        type.id = params[:id]
        type.name = params[:name]
        type.origin = params[:origin]
        type.origin_details = OriginDetails.build(params[:origin_details], context: "#{context}[:origin_details]") unless params[:origin_details].nil?
        type.source_id = params[:source_id]
        type.updated_at = params[:updated_at]
        type
      end
    end

    module DeleteAssetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAssetInput, context: context)
        type = Types::DeleteAssetInput.new
        type.asset_id = params[:asset_id]
        type.data_set_id = params[:data_set_id]
        type.revision_id = params[:revision_id]
        type
      end
    end

    module DeleteAssetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAssetOutput, context: context)
        type = Types::DeleteAssetOutput.new
        type
      end
    end

    module DeleteDataSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDataSetInput, context: context)
        type = Types::DeleteDataSetInput.new
        type.data_set_id = params[:data_set_id]
        type
      end
    end

    module DeleteDataSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDataSetOutput, context: context)
        type = Types::DeleteDataSetOutput.new
        type
      end
    end

    module DeleteEventActionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEventActionInput, context: context)
        type = Types::DeleteEventActionInput.new
        type.event_action_id = params[:event_action_id]
        type
      end
    end

    module DeleteEventActionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEventActionOutput, context: context)
        type = Types::DeleteEventActionOutput.new
        type
      end
    end

    module DeleteRevisionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRevisionInput, context: context)
        type = Types::DeleteRevisionInput.new
        type.data_set_id = params[:data_set_id]
        type.revision_id = params[:revision_id]
        type
      end
    end

    module DeleteRevisionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRevisionOutput, context: context)
        type = Types::DeleteRevisionOutput.new
        type
      end
    end

    module Details
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Details, context: context)
        type = Types::Details.new
        type.import_asset_from_signed_url_job_error_details = ImportAssetFromSignedUrlJobErrorDetails.build(params[:import_asset_from_signed_url_job_error_details], context: "#{context}[:import_asset_from_signed_url_job_error_details]") unless params[:import_asset_from_signed_url_job_error_details].nil?
        type.import_assets_from_s3_job_error_details = ListOfAssetSourceEntry.build(params[:import_assets_from_s3_job_error_details], context: "#{context}[:import_assets_from_s3_job_error_details]") unless params[:import_assets_from_s3_job_error_details].nil?
        type
      end
    end

    module Event
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Event, context: context)
        type = Types::Event.new
        type.revision_published = RevisionPublished.build(params[:revision_published], context: "#{context}[:revision_published]") unless params[:revision_published].nil?
        type
      end
    end

    module EventActionEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventActionEntry, context: context)
        type = Types::EventActionEntry.new
        type.action = Action.build(params[:action], context: "#{context}[:action]") unless params[:action].nil?
        type.arn = params[:arn]
        type.created_at = params[:created_at]
        type.event = Event.build(params[:event], context: "#{context}[:event]") unless params[:event].nil?
        type.id = params[:id]
        type.updated_at = params[:updated_at]
        type
      end
    end

    module ExportAssetToSignedUrlRequestDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportAssetToSignedUrlRequestDetails, context: context)
        type = Types::ExportAssetToSignedUrlRequestDetails.new
        type.asset_id = params[:asset_id]
        type.data_set_id = params[:data_set_id]
        type.revision_id = params[:revision_id]
        type
      end
    end

    module ExportAssetToSignedUrlResponseDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportAssetToSignedUrlResponseDetails, context: context)
        type = Types::ExportAssetToSignedUrlResponseDetails.new
        type.asset_id = params[:asset_id]
        type.data_set_id = params[:data_set_id]
        type.revision_id = params[:revision_id]
        type.signed_url = params[:signed_url]
        type.signed_url_expires_at = params[:signed_url_expires_at]
        type
      end
    end

    module ExportAssetsToS3RequestDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportAssetsToS3RequestDetails, context: context)
        type = Types::ExportAssetsToS3RequestDetails.new
        type.asset_destinations = ListOfAssetDestinationEntry.build(params[:asset_destinations], context: "#{context}[:asset_destinations]") unless params[:asset_destinations].nil?
        type.data_set_id = params[:data_set_id]
        type.encryption = ExportServerSideEncryption.build(params[:encryption], context: "#{context}[:encryption]") unless params[:encryption].nil?
        type.revision_id = params[:revision_id]
        type
      end
    end

    module ExportAssetsToS3ResponseDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportAssetsToS3ResponseDetails, context: context)
        type = Types::ExportAssetsToS3ResponseDetails.new
        type.asset_destinations = ListOfAssetDestinationEntry.build(params[:asset_destinations], context: "#{context}[:asset_destinations]") unless params[:asset_destinations].nil?
        type.data_set_id = params[:data_set_id]
        type.encryption = ExportServerSideEncryption.build(params[:encryption], context: "#{context}[:encryption]") unless params[:encryption].nil?
        type.revision_id = params[:revision_id]
        type
      end
    end

    module ExportRevisionsToS3RequestDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportRevisionsToS3RequestDetails, context: context)
        type = Types::ExportRevisionsToS3RequestDetails.new
        type.data_set_id = params[:data_set_id]
        type.encryption = ExportServerSideEncryption.build(params[:encryption], context: "#{context}[:encryption]") unless params[:encryption].nil?
        type.revision_destinations = ListOfRevisionDestinationEntry.build(params[:revision_destinations], context: "#{context}[:revision_destinations]") unless params[:revision_destinations].nil?
        type
      end
    end

    module ExportRevisionsToS3ResponseDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportRevisionsToS3ResponseDetails, context: context)
        type = Types::ExportRevisionsToS3ResponseDetails.new
        type.data_set_id = params[:data_set_id]
        type.encryption = ExportServerSideEncryption.build(params[:encryption], context: "#{context}[:encryption]") unless params[:encryption].nil?
        type.revision_destinations = ListOfRevisionDestinationEntry.build(params[:revision_destinations], context: "#{context}[:revision_destinations]") unless params[:revision_destinations].nil?
        type.event_action_arn = params[:event_action_arn]
        type
      end
    end

    module ExportServerSideEncryption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportServerSideEncryption, context: context)
        type = Types::ExportServerSideEncryption.new
        type.kms_key_arn = params[:kms_key_arn]
        type.type = params[:type]
        type
      end
    end

    module GetAssetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAssetInput, context: context)
        type = Types::GetAssetInput.new
        type.asset_id = params[:asset_id]
        type.data_set_id = params[:data_set_id]
        type.revision_id = params[:revision_id]
        type
      end
    end

    module GetAssetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAssetOutput, context: context)
        type = Types::GetAssetOutput.new
        type.arn = params[:arn]
        type.asset_details = AssetDetails.build(params[:asset_details], context: "#{context}[:asset_details]") unless params[:asset_details].nil?
        type.asset_type = params[:asset_type]
        type.created_at = params[:created_at]
        type.data_set_id = params[:data_set_id]
        type.id = params[:id]
        type.name = params[:name]
        type.revision_id = params[:revision_id]
        type.source_id = params[:source_id]
        type.updated_at = params[:updated_at]
        type
      end
    end

    module GetDataSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDataSetInput, context: context)
        type = Types::GetDataSetInput.new
        type.data_set_id = params[:data_set_id]
        type
      end
    end

    module GetDataSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDataSetOutput, context: context)
        type = Types::GetDataSetOutput.new
        type.arn = params[:arn]
        type.asset_type = params[:asset_type]
        type.created_at = params[:created_at]
        type.description = params[:description]
        type.id = params[:id]
        type.name = params[:name]
        type.origin = params[:origin]
        type.origin_details = OriginDetails.build(params[:origin_details], context: "#{context}[:origin_details]") unless params[:origin_details].nil?
        type.source_id = params[:source_id]
        type.tags = MapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.updated_at = params[:updated_at]
        type
      end
    end

    module GetEventActionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEventActionInput, context: context)
        type = Types::GetEventActionInput.new
        type.event_action_id = params[:event_action_id]
        type
      end
    end

    module GetEventActionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEventActionOutput, context: context)
        type = Types::GetEventActionOutput.new
        type.action = Action.build(params[:action], context: "#{context}[:action]") unless params[:action].nil?
        type.arn = params[:arn]
        type.created_at = params[:created_at]
        type.event = Event.build(params[:event], context: "#{context}[:event]") unless params[:event].nil?
        type.id = params[:id]
        type.updated_at = params[:updated_at]
        type
      end
    end

    module GetJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetJobInput, context: context)
        type = Types::GetJobInput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module GetJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetJobOutput, context: context)
        type = Types::GetJobOutput.new
        type.arn = params[:arn]
        type.created_at = params[:created_at]
        type.details = ResponseDetails.build(params[:details], context: "#{context}[:details]") unless params[:details].nil?
        type.errors = ListOfJobError.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type.id = params[:id]
        type.state = params[:state]
        type.type = params[:type]
        type.updated_at = params[:updated_at]
        type
      end
    end

    module GetRevisionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRevisionInput, context: context)
        type = Types::GetRevisionInput.new
        type.data_set_id = params[:data_set_id]
        type.revision_id = params[:revision_id]
        type
      end
    end

    module GetRevisionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRevisionOutput, context: context)
        type = Types::GetRevisionOutput.new
        type.arn = params[:arn]
        type.comment = params[:comment]
        type.created_at = params[:created_at]
        type.data_set_id = params[:data_set_id]
        type.finalized = params[:finalized]
        type.id = params[:id]
        type.source_id = params[:source_id]
        type.tags = MapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.updated_at = params[:updated_at]
        type.revocation_comment = params[:revocation_comment]
        type.revoked = params[:revoked]
        type.revoked_at = params[:revoked_at]
        type
      end
    end

    module ImportAssetFromApiGatewayApiRequestDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportAssetFromApiGatewayApiRequestDetails, context: context)
        type = Types::ImportAssetFromApiGatewayApiRequestDetails.new
        type.api_description = params[:api_description]
        type.api_id = params[:api_id]
        type.api_key = params[:api_key]
        type.api_name = params[:api_name]
        type.api_specification_md5_hash = params[:api_specification_md5_hash]
        type.data_set_id = params[:data_set_id]
        type.protocol_type = params[:protocol_type]
        type.revision_id = params[:revision_id]
        type.stage = params[:stage]
        type
      end
    end

    module ImportAssetFromApiGatewayApiResponseDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportAssetFromApiGatewayApiResponseDetails, context: context)
        type = Types::ImportAssetFromApiGatewayApiResponseDetails.new
        type.api_description = params[:api_description]
        type.api_id = params[:api_id]
        type.api_key = params[:api_key]
        type.api_name = params[:api_name]
        type.api_specification_md5_hash = params[:api_specification_md5_hash]
        type.api_specification_upload_url = params[:api_specification_upload_url]
        type.api_specification_upload_url_expires_at = params[:api_specification_upload_url_expires_at]
        type.data_set_id = params[:data_set_id]
        type.protocol_type = params[:protocol_type]
        type.revision_id = params[:revision_id]
        type.stage = params[:stage]
        type
      end
    end

    module ImportAssetFromSignedUrlJobErrorDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportAssetFromSignedUrlJobErrorDetails, context: context)
        type = Types::ImportAssetFromSignedUrlJobErrorDetails.new
        type.asset_name = params[:asset_name]
        type
      end
    end

    module ImportAssetFromSignedUrlRequestDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportAssetFromSignedUrlRequestDetails, context: context)
        type = Types::ImportAssetFromSignedUrlRequestDetails.new
        type.asset_name = params[:asset_name]
        type.data_set_id = params[:data_set_id]
        type.md5_hash = params[:md5_hash]
        type.revision_id = params[:revision_id]
        type
      end
    end

    module ImportAssetFromSignedUrlResponseDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportAssetFromSignedUrlResponseDetails, context: context)
        type = Types::ImportAssetFromSignedUrlResponseDetails.new
        type.asset_name = params[:asset_name]
        type.data_set_id = params[:data_set_id]
        type.md5_hash = params[:md5_hash]
        type.revision_id = params[:revision_id]
        type.signed_url = params[:signed_url]
        type.signed_url_expires_at = params[:signed_url_expires_at]
        type
      end
    end

    module ImportAssetsFromRedshiftDataSharesRequestDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportAssetsFromRedshiftDataSharesRequestDetails, context: context)
        type = Types::ImportAssetsFromRedshiftDataSharesRequestDetails.new
        type.asset_sources = ListOfRedshiftDataShareAssetSourceEntry.build(params[:asset_sources], context: "#{context}[:asset_sources]") unless params[:asset_sources].nil?
        type.data_set_id = params[:data_set_id]
        type.revision_id = params[:revision_id]
        type
      end
    end

    module ImportAssetsFromRedshiftDataSharesResponseDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportAssetsFromRedshiftDataSharesResponseDetails, context: context)
        type = Types::ImportAssetsFromRedshiftDataSharesResponseDetails.new
        type.asset_sources = ListOfRedshiftDataShareAssetSourceEntry.build(params[:asset_sources], context: "#{context}[:asset_sources]") unless params[:asset_sources].nil?
        type.data_set_id = params[:data_set_id]
        type.revision_id = params[:revision_id]
        type
      end
    end

    module ImportAssetsFromS3RequestDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportAssetsFromS3RequestDetails, context: context)
        type = Types::ImportAssetsFromS3RequestDetails.new
        type.asset_sources = ListOfAssetSourceEntry.build(params[:asset_sources], context: "#{context}[:asset_sources]") unless params[:asset_sources].nil?
        type.data_set_id = params[:data_set_id]
        type.revision_id = params[:revision_id]
        type
      end
    end

    module ImportAssetsFromS3ResponseDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportAssetsFromS3ResponseDetails, context: context)
        type = Types::ImportAssetsFromS3ResponseDetails.new
        type.asset_sources = ListOfAssetSourceEntry.build(params[:asset_sources], context: "#{context}[:asset_sources]") unless params[:asset_sources].nil?
        type.data_set_id = params[:data_set_id]
        type.revision_id = params[:revision_id]
        type
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type
      end
    end

    module JobEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobEntry, context: context)
        type = Types::JobEntry.new
        type.arn = params[:arn]
        type.created_at = params[:created_at]
        type.details = ResponseDetails.build(params[:details], context: "#{context}[:details]") unless params[:details].nil?
        type.errors = ListOfJobError.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type.id = params[:id]
        type.state = params[:state]
        type.type = params[:type]
        type.updated_at = params[:updated_at]
        type
      end
    end

    module JobError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobError, context: context)
        type = Types::JobError.new
        type.code = params[:code]
        type.details = Details.build(params[:details], context: "#{context}[:details]") unless params[:details].nil?
        type.limit_name = params[:limit_name]
        type.limit_value = params[:limit_value]
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module ListDataSetRevisionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDataSetRevisionsInput, context: context)
        type = Types::ListDataSetRevisionsInput.new
        type.data_set_id = params[:data_set_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDataSetRevisionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDataSetRevisionsOutput, context: context)
        type = Types::ListDataSetRevisionsOutput.new
        type.next_token = params[:next_token]
        type.revisions = ListOfRevisionEntry.build(params[:revisions], context: "#{context}[:revisions]") unless params[:revisions].nil?
        type
      end
    end

    module ListDataSetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDataSetsInput, context: context)
        type = Types::ListDataSetsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.origin = params[:origin]
        type
      end
    end

    module ListDataSetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDataSetsOutput, context: context)
        type = Types::ListDataSetsOutput.new
        type.data_sets = ListOfDataSetEntry.build(params[:data_sets], context: "#{context}[:data_sets]") unless params[:data_sets].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListEventActionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEventActionsInput, context: context)
        type = Types::ListEventActionsInput.new
        type.event_source_id = params[:event_source_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListEventActionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEventActionsOutput, context: context)
        type = Types::ListEventActionsOutput.new
        type.event_actions = ListOfEventActionEntry.build(params[:event_actions], context: "#{context}[:event_actions]") unless params[:event_actions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListJobsInput, context: context)
        type = Types::ListJobsInput.new
        type.data_set_id = params[:data_set_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.revision_id = params[:revision_id]
        type
      end
    end

    module ListJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListJobsOutput, context: context)
        type = Types::ListJobsOutput.new
        type.jobs = ListOfJobEntry.build(params[:jobs], context: "#{context}[:jobs]") unless params[:jobs].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListOfAssetDestinationEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AssetDestinationEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfAssetEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AssetEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfAssetSourceEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AssetSourceEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfDataSetEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DataSetEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfEventActionEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EventActionEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfJobEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << JobEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfJobError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << JobError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfRedshiftDataShareAssetSourceEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RedshiftDataShareAssetSourceEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfRevisionDestinationEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RevisionDestinationEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfRevisionEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RevisionEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOf__string
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ListRevisionAssetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRevisionAssetsInput, context: context)
        type = Types::ListRevisionAssetsInput.new
        type.data_set_id = params[:data_set_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.revision_id = params[:revision_id]
        type
      end
    end

    module ListRevisionAssetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRevisionAssetsOutput, context: context)
        type = Types::ListRevisionAssetsOutput.new
        type.assets = ListOfAssetEntry.build(params[:assets], context: "#{context}[:assets]") unless params[:assets].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = MapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module MapOf__string
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module OriginDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OriginDetails, context: context)
        type = Types::OriginDetails.new
        type.product_id = params[:product_id]
        type
      end
    end

    module RedshiftDataShareAsset
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RedshiftDataShareAsset, context: context)
        type = Types::RedshiftDataShareAsset.new
        type.arn = params[:arn]
        type
      end
    end

    module RedshiftDataShareAssetSourceEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RedshiftDataShareAssetSourceEntry, context: context)
        type = Types::RedshiftDataShareAssetSourceEntry.new
        type.data_share_arn = params[:data_share_arn]
        type
      end
    end

    module RequestDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RequestDetails, context: context)
        type = Types::RequestDetails.new
        type.export_asset_to_signed_url = ExportAssetToSignedUrlRequestDetails.build(params[:export_asset_to_signed_url], context: "#{context}[:export_asset_to_signed_url]") unless params[:export_asset_to_signed_url].nil?
        type.export_assets_to_s3 = ExportAssetsToS3RequestDetails.build(params[:export_assets_to_s3], context: "#{context}[:export_assets_to_s3]") unless params[:export_assets_to_s3].nil?
        type.export_revisions_to_s3 = ExportRevisionsToS3RequestDetails.build(params[:export_revisions_to_s3], context: "#{context}[:export_revisions_to_s3]") unless params[:export_revisions_to_s3].nil?
        type.import_asset_from_signed_url = ImportAssetFromSignedUrlRequestDetails.build(params[:import_asset_from_signed_url], context: "#{context}[:import_asset_from_signed_url]") unless params[:import_asset_from_signed_url].nil?
        type.import_assets_from_s3 = ImportAssetsFromS3RequestDetails.build(params[:import_assets_from_s3], context: "#{context}[:import_assets_from_s3]") unless params[:import_assets_from_s3].nil?
        type.import_assets_from_redshift_data_shares = ImportAssetsFromRedshiftDataSharesRequestDetails.build(params[:import_assets_from_redshift_data_shares], context: "#{context}[:import_assets_from_redshift_data_shares]") unless params[:import_assets_from_redshift_data_shares].nil?
        type.import_asset_from_api_gateway_api = ImportAssetFromApiGatewayApiRequestDetails.build(params[:import_asset_from_api_gateway_api], context: "#{context}[:import_asset_from_api_gateway_api]") unless params[:import_asset_from_api_gateway_api].nil?
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module ResponseDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResponseDetails, context: context)
        type = Types::ResponseDetails.new
        type.export_asset_to_signed_url = ExportAssetToSignedUrlResponseDetails.build(params[:export_asset_to_signed_url], context: "#{context}[:export_asset_to_signed_url]") unless params[:export_asset_to_signed_url].nil?
        type.export_assets_to_s3 = ExportAssetsToS3ResponseDetails.build(params[:export_assets_to_s3], context: "#{context}[:export_assets_to_s3]") unless params[:export_assets_to_s3].nil?
        type.export_revisions_to_s3 = ExportRevisionsToS3ResponseDetails.build(params[:export_revisions_to_s3], context: "#{context}[:export_revisions_to_s3]") unless params[:export_revisions_to_s3].nil?
        type.import_asset_from_signed_url = ImportAssetFromSignedUrlResponseDetails.build(params[:import_asset_from_signed_url], context: "#{context}[:import_asset_from_signed_url]") unless params[:import_asset_from_signed_url].nil?
        type.import_assets_from_s3 = ImportAssetsFromS3ResponseDetails.build(params[:import_assets_from_s3], context: "#{context}[:import_assets_from_s3]") unless params[:import_assets_from_s3].nil?
        type.import_assets_from_redshift_data_shares = ImportAssetsFromRedshiftDataSharesResponseDetails.build(params[:import_assets_from_redshift_data_shares], context: "#{context}[:import_assets_from_redshift_data_shares]") unless params[:import_assets_from_redshift_data_shares].nil?
        type.import_asset_from_api_gateway_api = ImportAssetFromApiGatewayApiResponseDetails.build(params[:import_asset_from_api_gateway_api], context: "#{context}[:import_asset_from_api_gateway_api]") unless params[:import_asset_from_api_gateway_api].nil?
        type
      end
    end

    module RevisionDestinationEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RevisionDestinationEntry, context: context)
        type = Types::RevisionDestinationEntry.new
        type.bucket = params[:bucket]
        type.key_pattern = params[:key_pattern]
        type.revision_id = params[:revision_id]
        type
      end
    end

    module RevisionEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RevisionEntry, context: context)
        type = Types::RevisionEntry.new
        type.arn = params[:arn]
        type.comment = params[:comment]
        type.created_at = params[:created_at]
        type.data_set_id = params[:data_set_id]
        type.finalized = params[:finalized]
        type.id = params[:id]
        type.source_id = params[:source_id]
        type.updated_at = params[:updated_at]
        type.revocation_comment = params[:revocation_comment]
        type.revoked = params[:revoked]
        type.revoked_at = params[:revoked_at]
        type
      end
    end

    module RevisionPublished
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RevisionPublished, context: context)
        type = Types::RevisionPublished.new
        type.data_set_id = params[:data_set_id]
        type
      end
    end

    module RevokeRevisionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RevokeRevisionInput, context: context)
        type = Types::RevokeRevisionInput.new
        type.data_set_id = params[:data_set_id]
        type.revision_id = params[:revision_id]
        type.revocation_comment = params[:revocation_comment]
        type
      end
    end

    module RevokeRevisionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RevokeRevisionOutput, context: context)
        type = Types::RevokeRevisionOutput.new
        type.arn = params[:arn]
        type.comment = params[:comment]
        type.created_at = params[:created_at]
        type.data_set_id = params[:data_set_id]
        type.finalized = params[:finalized]
        type.id = params[:id]
        type.source_id = params[:source_id]
        type.updated_at = params[:updated_at]
        type.revocation_comment = params[:revocation_comment]
        type.revoked = params[:revoked]
        type.revoked_at = params[:revoked_at]
        type
      end
    end

    module S3SnapshotAsset
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3SnapshotAsset, context: context)
        type = Types::S3SnapshotAsset.new
        type.size = params[:size]
        type
      end
    end

    module SendApiAssetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendApiAssetInput, context: context)
        type = Types::SendApiAssetInput.new
        type.body = params[:body]
        type.query_string_parameters = MapOf__string.build(params[:query_string_parameters], context: "#{context}[:query_string_parameters]") unless params[:query_string_parameters].nil?
        type.asset_id = params[:asset_id]
        type.data_set_id = params[:data_set_id]
        type.request_headers = MapOf__string.build(params[:request_headers], context: "#{context}[:request_headers]") unless params[:request_headers].nil?
        type.member_method = params[:member_method]
        type.path = params[:path]
        type.revision_id = params[:revision_id]
        type
      end
    end

    module SendApiAssetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendApiAssetOutput, context: context)
        type = Types::SendApiAssetOutput.new
        type.body = params[:body]
        type.response_headers = MapOf__string.build(params[:response_headers], context: "#{context}[:response_headers]") unless params[:response_headers].nil?
        type
      end
    end

    module ServiceLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceLimitExceededException, context: context)
        type = Types::ServiceLimitExceededException.new
        type.limit_name = params[:limit_name]
        type.limit_value = params[:limit_value]
        type.message = params[:message]
        type
      end
    end

    module StartJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartJobInput, context: context)
        type = Types::StartJobInput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module StartJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartJobOutput, context: context)
        type = Types::StartJobOutput.new
        type
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = MapOf__string.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = ListOf__string.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

    module UpdateAssetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAssetInput, context: context)
        type = Types::UpdateAssetInput.new
        type.asset_id = params[:asset_id]
        type.data_set_id = params[:data_set_id]
        type.name = params[:name]
        type.revision_id = params[:revision_id]
        type
      end
    end

    module UpdateAssetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAssetOutput, context: context)
        type = Types::UpdateAssetOutput.new
        type.arn = params[:arn]
        type.asset_details = AssetDetails.build(params[:asset_details], context: "#{context}[:asset_details]") unless params[:asset_details].nil?
        type.asset_type = params[:asset_type]
        type.created_at = params[:created_at]
        type.data_set_id = params[:data_set_id]
        type.id = params[:id]
        type.name = params[:name]
        type.revision_id = params[:revision_id]
        type.source_id = params[:source_id]
        type.updated_at = params[:updated_at]
        type
      end
    end

    module UpdateDataSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDataSetInput, context: context)
        type = Types::UpdateDataSetInput.new
        type.data_set_id = params[:data_set_id]
        type.description = params[:description]
        type.name = params[:name]
        type
      end
    end

    module UpdateDataSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDataSetOutput, context: context)
        type = Types::UpdateDataSetOutput.new
        type.arn = params[:arn]
        type.asset_type = params[:asset_type]
        type.created_at = params[:created_at]
        type.description = params[:description]
        type.id = params[:id]
        type.name = params[:name]
        type.origin = params[:origin]
        type.origin_details = OriginDetails.build(params[:origin_details], context: "#{context}[:origin_details]") unless params[:origin_details].nil?
        type.source_id = params[:source_id]
        type.updated_at = params[:updated_at]
        type
      end
    end

    module UpdateEventActionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEventActionInput, context: context)
        type = Types::UpdateEventActionInput.new
        type.action = Action.build(params[:action], context: "#{context}[:action]") unless params[:action].nil?
        type.event_action_id = params[:event_action_id]
        type
      end
    end

    module UpdateEventActionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEventActionOutput, context: context)
        type = Types::UpdateEventActionOutput.new
        type.action = Action.build(params[:action], context: "#{context}[:action]") unless params[:action].nil?
        type.arn = params[:arn]
        type.created_at = params[:created_at]
        type.event = Event.build(params[:event], context: "#{context}[:event]") unless params[:event].nil?
        type.id = params[:id]
        type.updated_at = params[:updated_at]
        type
      end
    end

    module UpdateRevisionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRevisionInput, context: context)
        type = Types::UpdateRevisionInput.new
        type.comment = params[:comment]
        type.data_set_id = params[:data_set_id]
        type.finalized = params[:finalized]
        type.revision_id = params[:revision_id]
        type
      end
    end

    module UpdateRevisionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRevisionOutput, context: context)
        type = Types::UpdateRevisionOutput.new
        type.arn = params[:arn]
        type.comment = params[:comment]
        type.created_at = params[:created_at]
        type.data_set_id = params[:data_set_id]
        type.finalized = params[:finalized]
        type.id = params[:id]
        type.source_id = params[:source_id]
        type.updated_at = params[:updated_at]
        type.revocation_comment = params[:revocation_comment]
        type.revoked = params[:revoked]
        type.revoked_at = params[:revoked_at]
        type
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type.exception_cause = params[:exception_cause]
        type
      end
    end

  end
end
