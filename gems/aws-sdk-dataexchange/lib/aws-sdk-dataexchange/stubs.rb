# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::DataExchange
  module Stubs

    # Operation Stubber for CancelJob
    class CancelJob
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for CreateDataSet
    class CreateDataSet
      def self.default(visited=[])
        {
          arn: 'arn',
          asset_type: 'asset_type',
          created_at: Time.now,
          description: 'description',
          id: 'id',
          name: 'name',
          origin: 'origin',
          origin_details: Stubs::OriginDetails.default(visited),
          source_id: 'source_id',
          tags: Stubs::MapOf__string.default(visited),
          updated_at: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['AssetType'] = stub[:asset_type] unless stub[:asset_type].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_date_time(stub[:created_at]) unless stub[:created_at].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Origin'] = stub[:origin] unless stub[:origin].nil?
        data['OriginDetails'] = Stubs::OriginDetails.stub(stub[:origin_details]) unless stub[:origin_details].nil?
        data['SourceId'] = stub[:source_id] unless stub[:source_id].nil?
        data['Tags'] = Stubs::MapOf__string.stub(stub[:tags]) unless stub[:tags].nil?
        data['UpdatedAt'] = Hearth::TimeHelper.to_date_time(stub[:updated_at]) unless stub[:updated_at].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for MapOf__string
    class MapOf__string
      def self.default(visited=[])
        return nil if visited.include?('MapOf__string')
        visited = visited + ['MapOf__string']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for OriginDetails
    class OriginDetails
      def self.default(visited=[])
        return nil if visited.include?('OriginDetails')
        visited = visited + ['OriginDetails']
        {
          product_id: 'product_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::OriginDetails.new
        data = {}
        data['ProductId'] = stub[:product_id] unless stub[:product_id].nil?
        data
      end
    end

    # Operation Stubber for CreateEventAction
    class CreateEventAction
      def self.default(visited=[])
        {
          action: Stubs::Action.default(visited),
          arn: 'arn',
          created_at: Time.now,
          event: Stubs::Event.default(visited),
          id: 'id',
          updated_at: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['Action'] = Stubs::Action.stub(stub[:action]) unless stub[:action].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_date_time(stub[:created_at]) unless stub[:created_at].nil?
        data['Event'] = Stubs::Event.stub(stub[:event]) unless stub[:event].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['UpdatedAt'] = Hearth::TimeHelper.to_date_time(stub[:updated_at]) unless stub[:updated_at].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Event
    class Event
      def self.default(visited=[])
        return nil if visited.include?('Event')
        visited = visited + ['Event']
        {
          revision_published: Stubs::RevisionPublished.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Event.new
        data = {}
        data['RevisionPublished'] = Stubs::RevisionPublished.stub(stub[:revision_published]) unless stub[:revision_published].nil?
        data
      end
    end

    # Structure Stubber for RevisionPublished
    class RevisionPublished
      def self.default(visited=[])
        return nil if visited.include?('RevisionPublished')
        visited = visited + ['RevisionPublished']
        {
          data_set_id: 'data_set_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::RevisionPublished.new
        data = {}
        data['DataSetId'] = stub[:data_set_id] unless stub[:data_set_id].nil?
        data
      end
    end

    # Structure Stubber for Action
    class Action
      def self.default(visited=[])
        return nil if visited.include?('Action')
        visited = visited + ['Action']
        {
          export_revision_to_s3: Stubs::AutoExportRevisionToS3RequestDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Action.new
        data = {}
        data['ExportRevisionToS3'] = Stubs::AutoExportRevisionToS3RequestDetails.stub(stub[:export_revision_to_s3]) unless stub[:export_revision_to_s3].nil?
        data
      end
    end

    # Structure Stubber for AutoExportRevisionToS3RequestDetails
    class AutoExportRevisionToS3RequestDetails
      def self.default(visited=[])
        return nil if visited.include?('AutoExportRevisionToS3RequestDetails')
        visited = visited + ['AutoExportRevisionToS3RequestDetails']
        {
          encryption: Stubs::ExportServerSideEncryption.default(visited),
          revision_destination: Stubs::AutoExportRevisionDestinationEntry.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AutoExportRevisionToS3RequestDetails.new
        data = {}
        data['Encryption'] = Stubs::ExportServerSideEncryption.stub(stub[:encryption]) unless stub[:encryption].nil?
        data['RevisionDestination'] = Stubs::AutoExportRevisionDestinationEntry.stub(stub[:revision_destination]) unless stub[:revision_destination].nil?
        data
      end
    end

    # Structure Stubber for AutoExportRevisionDestinationEntry
    class AutoExportRevisionDestinationEntry
      def self.default(visited=[])
        return nil if visited.include?('AutoExportRevisionDestinationEntry')
        visited = visited + ['AutoExportRevisionDestinationEntry']
        {
          bucket: 'bucket',
          key_pattern: 'key_pattern',
        }
      end

      def self.stub(stub)
        stub ||= Types::AutoExportRevisionDestinationEntry.new
        data = {}
        data['Bucket'] = stub[:bucket] unless stub[:bucket].nil?
        data['KeyPattern'] = stub[:key_pattern] unless stub[:key_pattern].nil?
        data
      end
    end

    # Structure Stubber for ExportServerSideEncryption
    class ExportServerSideEncryption
      def self.default(visited=[])
        return nil if visited.include?('ExportServerSideEncryption')
        visited = visited + ['ExportServerSideEncryption']
        {
          kms_key_arn: 'kms_key_arn',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::ExportServerSideEncryption.new
        data = {}
        data['KmsKeyArn'] = stub[:kms_key_arn] unless stub[:kms_key_arn].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Operation Stubber for CreateJob
    class CreateJob
      def self.default(visited=[])
        {
          arn: 'arn',
          created_at: Time.now,
          details: Stubs::ResponseDetails.default(visited),
          errors: Stubs::ListOfJobError.default(visited),
          id: 'id',
          state: 'state',
          type: 'type',
          updated_at: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_date_time(stub[:created_at]) unless stub[:created_at].nil?
        data['Details'] = Stubs::ResponseDetails.stub(stub[:details]) unless stub[:details].nil?
        data['Errors'] = Stubs::ListOfJobError.stub(stub[:errors]) unless stub[:errors].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['UpdatedAt'] = Hearth::TimeHelper.to_date_time(stub[:updated_at]) unless stub[:updated_at].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ListOfJobError
    class ListOfJobError
      def self.default(visited=[])
        return nil if visited.include?('ListOfJobError')
        visited = visited + ['ListOfJobError']
        [
          Stubs::JobError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::JobError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for JobError
    class JobError
      def self.default(visited=[])
        return nil if visited.include?('JobError')
        visited = visited + ['JobError']
        {
          code: 'code',
          details: Stubs::Details.default(visited),
          limit_name: 'limit_name',
          limit_value: 1.0,
          message: 'message',
          resource_id: 'resource_id',
          resource_type: 'resource_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::JobError.new
        data = {}
        data['Code'] = stub[:code] unless stub[:code].nil?
        data['Details'] = Stubs::Details.stub(stub[:details]) unless stub[:details].nil?
        data['LimitName'] = stub[:limit_name] unless stub[:limit_name].nil?
        data['LimitValue'] = Hearth::NumberHelper.serialize(stub[:limit_value])
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['ResourceId'] = stub[:resource_id] unless stub[:resource_id].nil?
        data['ResourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data
      end
    end

    # Structure Stubber for Details
    class Details
      def self.default(visited=[])
        return nil if visited.include?('Details')
        visited = visited + ['Details']
        {
          import_asset_from_signed_url_job_error_details: Stubs::ImportAssetFromSignedUrlJobErrorDetails.default(visited),
          import_assets_from_s3_job_error_details: Stubs::ListOfAssetSourceEntry.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Details.new
        data = {}
        data['ImportAssetFromSignedUrlJobErrorDetails'] = Stubs::ImportAssetFromSignedUrlJobErrorDetails.stub(stub[:import_asset_from_signed_url_job_error_details]) unless stub[:import_asset_from_signed_url_job_error_details].nil?
        data['ImportAssetsFromS3JobErrorDetails'] = Stubs::ListOfAssetSourceEntry.stub(stub[:import_assets_from_s3_job_error_details]) unless stub[:import_assets_from_s3_job_error_details].nil?
        data
      end
    end

    # List Stubber for ListOfAssetSourceEntry
    class ListOfAssetSourceEntry
      def self.default(visited=[])
        return nil if visited.include?('ListOfAssetSourceEntry')
        visited = visited + ['ListOfAssetSourceEntry']
        [
          Stubs::AssetSourceEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AssetSourceEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AssetSourceEntry
    class AssetSourceEntry
      def self.default(visited=[])
        return nil if visited.include?('AssetSourceEntry')
        visited = visited + ['AssetSourceEntry']
        {
          bucket: 'bucket',
          key: 'key',
        }
      end

      def self.stub(stub)
        stub ||= Types::AssetSourceEntry.new
        data = {}
        data['Bucket'] = stub[:bucket] unless stub[:bucket].nil?
        data['Key'] = stub[:key] unless stub[:key].nil?
        data
      end
    end

    # Structure Stubber for ImportAssetFromSignedUrlJobErrorDetails
    class ImportAssetFromSignedUrlJobErrorDetails
      def self.default(visited=[])
        return nil if visited.include?('ImportAssetFromSignedUrlJobErrorDetails')
        visited = visited + ['ImportAssetFromSignedUrlJobErrorDetails']
        {
          asset_name: 'asset_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ImportAssetFromSignedUrlJobErrorDetails.new
        data = {}
        data['AssetName'] = stub[:asset_name] unless stub[:asset_name].nil?
        data
      end
    end

    # Structure Stubber for ResponseDetails
    class ResponseDetails
      def self.default(visited=[])
        return nil if visited.include?('ResponseDetails')
        visited = visited + ['ResponseDetails']
        {
          export_asset_to_signed_url: Stubs::ExportAssetToSignedUrlResponseDetails.default(visited),
          export_assets_to_s3: Stubs::ExportAssetsToS3ResponseDetails.default(visited),
          export_revisions_to_s3: Stubs::ExportRevisionsToS3ResponseDetails.default(visited),
          import_asset_from_signed_url: Stubs::ImportAssetFromSignedUrlResponseDetails.default(visited),
          import_assets_from_s3: Stubs::ImportAssetsFromS3ResponseDetails.default(visited),
          import_assets_from_redshift_data_shares: Stubs::ImportAssetsFromRedshiftDataSharesResponseDetails.default(visited),
          import_asset_from_api_gateway_api: Stubs::ImportAssetFromApiGatewayApiResponseDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ResponseDetails.new
        data = {}
        data['ExportAssetToSignedUrl'] = Stubs::ExportAssetToSignedUrlResponseDetails.stub(stub[:export_asset_to_signed_url]) unless stub[:export_asset_to_signed_url].nil?
        data['ExportAssetsToS3'] = Stubs::ExportAssetsToS3ResponseDetails.stub(stub[:export_assets_to_s3]) unless stub[:export_assets_to_s3].nil?
        data['ExportRevisionsToS3'] = Stubs::ExportRevisionsToS3ResponseDetails.stub(stub[:export_revisions_to_s3]) unless stub[:export_revisions_to_s3].nil?
        data['ImportAssetFromSignedUrl'] = Stubs::ImportAssetFromSignedUrlResponseDetails.stub(stub[:import_asset_from_signed_url]) unless stub[:import_asset_from_signed_url].nil?
        data['ImportAssetsFromS3'] = Stubs::ImportAssetsFromS3ResponseDetails.stub(stub[:import_assets_from_s3]) unless stub[:import_assets_from_s3].nil?
        data['ImportAssetsFromRedshiftDataShares'] = Stubs::ImportAssetsFromRedshiftDataSharesResponseDetails.stub(stub[:import_assets_from_redshift_data_shares]) unless stub[:import_assets_from_redshift_data_shares].nil?
        data['ImportAssetFromApiGatewayApi'] = Stubs::ImportAssetFromApiGatewayApiResponseDetails.stub(stub[:import_asset_from_api_gateway_api]) unless stub[:import_asset_from_api_gateway_api].nil?
        data
      end
    end

    # Structure Stubber for ImportAssetFromApiGatewayApiResponseDetails
    class ImportAssetFromApiGatewayApiResponseDetails
      def self.default(visited=[])
        return nil if visited.include?('ImportAssetFromApiGatewayApiResponseDetails')
        visited = visited + ['ImportAssetFromApiGatewayApiResponseDetails']
        {
          api_description: 'api_description',
          api_id: 'api_id',
          api_key: 'api_key',
          api_name: 'api_name',
          api_specification_md5_hash: 'api_specification_md5_hash',
          api_specification_upload_url: 'api_specification_upload_url',
          api_specification_upload_url_expires_at: Time.now,
          data_set_id: 'data_set_id',
          protocol_type: 'protocol_type',
          revision_id: 'revision_id',
          stage: 'stage',
        }
      end

      def self.stub(stub)
        stub ||= Types::ImportAssetFromApiGatewayApiResponseDetails.new
        data = {}
        data['ApiDescription'] = stub[:api_description] unless stub[:api_description].nil?
        data['ApiId'] = stub[:api_id] unless stub[:api_id].nil?
        data['ApiKey'] = stub[:api_key] unless stub[:api_key].nil?
        data['ApiName'] = stub[:api_name] unless stub[:api_name].nil?
        data['ApiSpecificationMd5Hash'] = stub[:api_specification_md5_hash] unless stub[:api_specification_md5_hash].nil?
        data['ApiSpecificationUploadUrl'] = stub[:api_specification_upload_url] unless stub[:api_specification_upload_url].nil?
        data['ApiSpecificationUploadUrlExpiresAt'] = Hearth::TimeHelper.to_date_time(stub[:api_specification_upload_url_expires_at]) unless stub[:api_specification_upload_url_expires_at].nil?
        data['DataSetId'] = stub[:data_set_id] unless stub[:data_set_id].nil?
        data['ProtocolType'] = stub[:protocol_type] unless stub[:protocol_type].nil?
        data['RevisionId'] = stub[:revision_id] unless stub[:revision_id].nil?
        data['Stage'] = stub[:stage] unless stub[:stage].nil?
        data
      end
    end

    # Structure Stubber for ImportAssetsFromRedshiftDataSharesResponseDetails
    class ImportAssetsFromRedshiftDataSharesResponseDetails
      def self.default(visited=[])
        return nil if visited.include?('ImportAssetsFromRedshiftDataSharesResponseDetails')
        visited = visited + ['ImportAssetsFromRedshiftDataSharesResponseDetails']
        {
          asset_sources: Stubs::ListOfRedshiftDataShareAssetSourceEntry.default(visited),
          data_set_id: 'data_set_id',
          revision_id: 'revision_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::ImportAssetsFromRedshiftDataSharesResponseDetails.new
        data = {}
        data['AssetSources'] = Stubs::ListOfRedshiftDataShareAssetSourceEntry.stub(stub[:asset_sources]) unless stub[:asset_sources].nil?
        data['DataSetId'] = stub[:data_set_id] unless stub[:data_set_id].nil?
        data['RevisionId'] = stub[:revision_id] unless stub[:revision_id].nil?
        data
      end
    end

    # List Stubber for ListOfRedshiftDataShareAssetSourceEntry
    class ListOfRedshiftDataShareAssetSourceEntry
      def self.default(visited=[])
        return nil if visited.include?('ListOfRedshiftDataShareAssetSourceEntry')
        visited = visited + ['ListOfRedshiftDataShareAssetSourceEntry']
        [
          Stubs::RedshiftDataShareAssetSourceEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RedshiftDataShareAssetSourceEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RedshiftDataShareAssetSourceEntry
    class RedshiftDataShareAssetSourceEntry
      def self.default(visited=[])
        return nil if visited.include?('RedshiftDataShareAssetSourceEntry')
        visited = visited + ['RedshiftDataShareAssetSourceEntry']
        {
          data_share_arn: 'data_share_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::RedshiftDataShareAssetSourceEntry.new
        data = {}
        data['DataShareArn'] = stub[:data_share_arn] unless stub[:data_share_arn].nil?
        data
      end
    end

    # Structure Stubber for ImportAssetsFromS3ResponseDetails
    class ImportAssetsFromS3ResponseDetails
      def self.default(visited=[])
        return nil if visited.include?('ImportAssetsFromS3ResponseDetails')
        visited = visited + ['ImportAssetsFromS3ResponseDetails']
        {
          asset_sources: Stubs::ListOfAssetSourceEntry.default(visited),
          data_set_id: 'data_set_id',
          revision_id: 'revision_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::ImportAssetsFromS3ResponseDetails.new
        data = {}
        data['AssetSources'] = Stubs::ListOfAssetSourceEntry.stub(stub[:asset_sources]) unless stub[:asset_sources].nil?
        data['DataSetId'] = stub[:data_set_id] unless stub[:data_set_id].nil?
        data['RevisionId'] = stub[:revision_id] unless stub[:revision_id].nil?
        data
      end
    end

    # Structure Stubber for ImportAssetFromSignedUrlResponseDetails
    class ImportAssetFromSignedUrlResponseDetails
      def self.default(visited=[])
        return nil if visited.include?('ImportAssetFromSignedUrlResponseDetails')
        visited = visited + ['ImportAssetFromSignedUrlResponseDetails']
        {
          asset_name: 'asset_name',
          data_set_id: 'data_set_id',
          md5_hash: 'md5_hash',
          revision_id: 'revision_id',
          signed_url: 'signed_url',
          signed_url_expires_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ImportAssetFromSignedUrlResponseDetails.new
        data = {}
        data['AssetName'] = stub[:asset_name] unless stub[:asset_name].nil?
        data['DataSetId'] = stub[:data_set_id] unless stub[:data_set_id].nil?
        data['Md5Hash'] = stub[:md5_hash] unless stub[:md5_hash].nil?
        data['RevisionId'] = stub[:revision_id] unless stub[:revision_id].nil?
        data['SignedUrl'] = stub[:signed_url] unless stub[:signed_url].nil?
        data['SignedUrlExpiresAt'] = Hearth::TimeHelper.to_date_time(stub[:signed_url_expires_at]) unless stub[:signed_url_expires_at].nil?
        data
      end
    end

    # Structure Stubber for ExportRevisionsToS3ResponseDetails
    class ExportRevisionsToS3ResponseDetails
      def self.default(visited=[])
        return nil if visited.include?('ExportRevisionsToS3ResponseDetails')
        visited = visited + ['ExportRevisionsToS3ResponseDetails']
        {
          data_set_id: 'data_set_id',
          encryption: Stubs::ExportServerSideEncryption.default(visited),
          revision_destinations: Stubs::ListOfRevisionDestinationEntry.default(visited),
          event_action_arn: 'event_action_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::ExportRevisionsToS3ResponseDetails.new
        data = {}
        data['DataSetId'] = stub[:data_set_id] unless stub[:data_set_id].nil?
        data['Encryption'] = Stubs::ExportServerSideEncryption.stub(stub[:encryption]) unless stub[:encryption].nil?
        data['RevisionDestinations'] = Stubs::ListOfRevisionDestinationEntry.stub(stub[:revision_destinations]) unless stub[:revision_destinations].nil?
        data['EventActionArn'] = stub[:event_action_arn] unless stub[:event_action_arn].nil?
        data
      end
    end

    # List Stubber for ListOfRevisionDestinationEntry
    class ListOfRevisionDestinationEntry
      def self.default(visited=[])
        return nil if visited.include?('ListOfRevisionDestinationEntry')
        visited = visited + ['ListOfRevisionDestinationEntry']
        [
          Stubs::RevisionDestinationEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RevisionDestinationEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RevisionDestinationEntry
    class RevisionDestinationEntry
      def self.default(visited=[])
        return nil if visited.include?('RevisionDestinationEntry')
        visited = visited + ['RevisionDestinationEntry']
        {
          bucket: 'bucket',
          key_pattern: 'key_pattern',
          revision_id: 'revision_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::RevisionDestinationEntry.new
        data = {}
        data['Bucket'] = stub[:bucket] unless stub[:bucket].nil?
        data['KeyPattern'] = stub[:key_pattern] unless stub[:key_pattern].nil?
        data['RevisionId'] = stub[:revision_id] unless stub[:revision_id].nil?
        data
      end
    end

    # Structure Stubber for ExportAssetsToS3ResponseDetails
    class ExportAssetsToS3ResponseDetails
      def self.default(visited=[])
        return nil if visited.include?('ExportAssetsToS3ResponseDetails')
        visited = visited + ['ExportAssetsToS3ResponseDetails']
        {
          asset_destinations: Stubs::ListOfAssetDestinationEntry.default(visited),
          data_set_id: 'data_set_id',
          encryption: Stubs::ExportServerSideEncryption.default(visited),
          revision_id: 'revision_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::ExportAssetsToS3ResponseDetails.new
        data = {}
        data['AssetDestinations'] = Stubs::ListOfAssetDestinationEntry.stub(stub[:asset_destinations]) unless stub[:asset_destinations].nil?
        data['DataSetId'] = stub[:data_set_id] unless stub[:data_set_id].nil?
        data['Encryption'] = Stubs::ExportServerSideEncryption.stub(stub[:encryption]) unless stub[:encryption].nil?
        data['RevisionId'] = stub[:revision_id] unless stub[:revision_id].nil?
        data
      end
    end

    # List Stubber for ListOfAssetDestinationEntry
    class ListOfAssetDestinationEntry
      def self.default(visited=[])
        return nil if visited.include?('ListOfAssetDestinationEntry')
        visited = visited + ['ListOfAssetDestinationEntry']
        [
          Stubs::AssetDestinationEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AssetDestinationEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AssetDestinationEntry
    class AssetDestinationEntry
      def self.default(visited=[])
        return nil if visited.include?('AssetDestinationEntry')
        visited = visited + ['AssetDestinationEntry']
        {
          asset_id: 'asset_id',
          bucket: 'bucket',
          key: 'key',
        }
      end

      def self.stub(stub)
        stub ||= Types::AssetDestinationEntry.new
        data = {}
        data['AssetId'] = stub[:asset_id] unless stub[:asset_id].nil?
        data['Bucket'] = stub[:bucket] unless stub[:bucket].nil?
        data['Key'] = stub[:key] unless stub[:key].nil?
        data
      end
    end

    # Structure Stubber for ExportAssetToSignedUrlResponseDetails
    class ExportAssetToSignedUrlResponseDetails
      def self.default(visited=[])
        return nil if visited.include?('ExportAssetToSignedUrlResponseDetails')
        visited = visited + ['ExportAssetToSignedUrlResponseDetails']
        {
          asset_id: 'asset_id',
          data_set_id: 'data_set_id',
          revision_id: 'revision_id',
          signed_url: 'signed_url',
          signed_url_expires_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ExportAssetToSignedUrlResponseDetails.new
        data = {}
        data['AssetId'] = stub[:asset_id] unless stub[:asset_id].nil?
        data['DataSetId'] = stub[:data_set_id] unless stub[:data_set_id].nil?
        data['RevisionId'] = stub[:revision_id] unless stub[:revision_id].nil?
        data['SignedUrl'] = stub[:signed_url] unless stub[:signed_url].nil?
        data['SignedUrlExpiresAt'] = Hearth::TimeHelper.to_date_time(stub[:signed_url_expires_at]) unless stub[:signed_url_expires_at].nil?
        data
      end
    end

    # Operation Stubber for CreateRevision
    class CreateRevision
      def self.default(visited=[])
        {
          arn: 'arn',
          comment: 'comment',
          created_at: Time.now,
          data_set_id: 'data_set_id',
          finalized: false,
          id: 'id',
          source_id: 'source_id',
          tags: Stubs::MapOf__string.default(visited),
          updated_at: Time.now,
          revocation_comment: 'revocation_comment',
          revoked: false,
          revoked_at: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Comment'] = stub[:comment] unless stub[:comment].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_date_time(stub[:created_at]) unless stub[:created_at].nil?
        data['DataSetId'] = stub[:data_set_id] unless stub[:data_set_id].nil?
        data['Finalized'] = stub[:finalized] unless stub[:finalized].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['SourceId'] = stub[:source_id] unless stub[:source_id].nil?
        data['Tags'] = Stubs::MapOf__string.stub(stub[:tags]) unless stub[:tags].nil?
        data['UpdatedAt'] = Hearth::TimeHelper.to_date_time(stub[:updated_at]) unless stub[:updated_at].nil?
        data['RevocationComment'] = stub[:revocation_comment] unless stub[:revocation_comment].nil?
        data['Revoked'] = stub[:revoked] unless stub[:revoked].nil?
        data['RevokedAt'] = Hearth::TimeHelper.to_date_time(stub[:revoked_at]) unless stub[:revoked_at].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteAsset
    class DeleteAsset
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteDataSet
    class DeleteDataSet
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteEventAction
    class DeleteEventAction
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteRevision
    class DeleteRevision
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for GetAsset
    class GetAsset
      def self.default(visited=[])
        {
          arn: 'arn',
          asset_details: Stubs::AssetDetails.default(visited),
          asset_type: 'asset_type',
          created_at: Time.now,
          data_set_id: 'data_set_id',
          id: 'id',
          name: 'name',
          revision_id: 'revision_id',
          source_id: 'source_id',
          updated_at: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['AssetDetails'] = Stubs::AssetDetails.stub(stub[:asset_details]) unless stub[:asset_details].nil?
        data['AssetType'] = stub[:asset_type] unless stub[:asset_type].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_date_time(stub[:created_at]) unless stub[:created_at].nil?
        data['DataSetId'] = stub[:data_set_id] unless stub[:data_set_id].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['RevisionId'] = stub[:revision_id] unless stub[:revision_id].nil?
        data['SourceId'] = stub[:source_id] unless stub[:source_id].nil?
        data['UpdatedAt'] = Hearth::TimeHelper.to_date_time(stub[:updated_at]) unless stub[:updated_at].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for AssetDetails
    class AssetDetails
      def self.default(visited=[])
        return nil if visited.include?('AssetDetails')
        visited = visited + ['AssetDetails']
        {
          s3_snapshot_asset: Stubs::S3SnapshotAsset.default(visited),
          redshift_data_share_asset: Stubs::RedshiftDataShareAsset.default(visited),
          api_gateway_api_asset: Stubs::ApiGatewayApiAsset.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AssetDetails.new
        data = {}
        data['S3SnapshotAsset'] = Stubs::S3SnapshotAsset.stub(stub[:s3_snapshot_asset]) unless stub[:s3_snapshot_asset].nil?
        data['RedshiftDataShareAsset'] = Stubs::RedshiftDataShareAsset.stub(stub[:redshift_data_share_asset]) unless stub[:redshift_data_share_asset].nil?
        data['ApiGatewayApiAsset'] = Stubs::ApiGatewayApiAsset.stub(stub[:api_gateway_api_asset]) unless stub[:api_gateway_api_asset].nil?
        data
      end
    end

    # Structure Stubber for ApiGatewayApiAsset
    class ApiGatewayApiAsset
      def self.default(visited=[])
        return nil if visited.include?('ApiGatewayApiAsset')
        visited = visited + ['ApiGatewayApiAsset']
        {
          api_description: 'api_description',
          api_endpoint: 'api_endpoint',
          api_id: 'api_id',
          api_key: 'api_key',
          api_name: 'api_name',
          api_specification_download_url: 'api_specification_download_url',
          api_specification_download_url_expires_at: Time.now,
          protocol_type: 'protocol_type',
          stage: 'stage',
        }
      end

      def self.stub(stub)
        stub ||= Types::ApiGatewayApiAsset.new
        data = {}
        data['ApiDescription'] = stub[:api_description] unless stub[:api_description].nil?
        data['ApiEndpoint'] = stub[:api_endpoint] unless stub[:api_endpoint].nil?
        data['ApiId'] = stub[:api_id] unless stub[:api_id].nil?
        data['ApiKey'] = stub[:api_key] unless stub[:api_key].nil?
        data['ApiName'] = stub[:api_name] unless stub[:api_name].nil?
        data['ApiSpecificationDownloadUrl'] = stub[:api_specification_download_url] unless stub[:api_specification_download_url].nil?
        data['ApiSpecificationDownloadUrlExpiresAt'] = Hearth::TimeHelper.to_date_time(stub[:api_specification_download_url_expires_at]) unless stub[:api_specification_download_url_expires_at].nil?
        data['ProtocolType'] = stub[:protocol_type] unless stub[:protocol_type].nil?
        data['Stage'] = stub[:stage] unless stub[:stage].nil?
        data
      end
    end

    # Structure Stubber for RedshiftDataShareAsset
    class RedshiftDataShareAsset
      def self.default(visited=[])
        return nil if visited.include?('RedshiftDataShareAsset')
        visited = visited + ['RedshiftDataShareAsset']
        {
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::RedshiftDataShareAsset.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # Structure Stubber for S3SnapshotAsset
    class S3SnapshotAsset
      def self.default(visited=[])
        return nil if visited.include?('S3SnapshotAsset')
        visited = visited + ['S3SnapshotAsset']
        {
          size: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::S3SnapshotAsset.new
        data = {}
        data['Size'] = Hearth::NumberHelper.serialize(stub[:size])
        data
      end
    end

    # Operation Stubber for GetDataSet
    class GetDataSet
      def self.default(visited=[])
        {
          arn: 'arn',
          asset_type: 'asset_type',
          created_at: Time.now,
          description: 'description',
          id: 'id',
          name: 'name',
          origin: 'origin',
          origin_details: Stubs::OriginDetails.default(visited),
          source_id: 'source_id',
          tags: Stubs::MapOf__string.default(visited),
          updated_at: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['AssetType'] = stub[:asset_type] unless stub[:asset_type].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_date_time(stub[:created_at]) unless stub[:created_at].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Origin'] = stub[:origin] unless stub[:origin].nil?
        data['OriginDetails'] = Stubs::OriginDetails.stub(stub[:origin_details]) unless stub[:origin_details].nil?
        data['SourceId'] = stub[:source_id] unless stub[:source_id].nil?
        data['Tags'] = Stubs::MapOf__string.stub(stub[:tags]) unless stub[:tags].nil?
        data['UpdatedAt'] = Hearth::TimeHelper.to_date_time(stub[:updated_at]) unless stub[:updated_at].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetEventAction
    class GetEventAction
      def self.default(visited=[])
        {
          action: Stubs::Action.default(visited),
          arn: 'arn',
          created_at: Time.now,
          event: Stubs::Event.default(visited),
          id: 'id',
          updated_at: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Action'] = Stubs::Action.stub(stub[:action]) unless stub[:action].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_date_time(stub[:created_at]) unless stub[:created_at].nil?
        data['Event'] = Stubs::Event.stub(stub[:event]) unless stub[:event].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['UpdatedAt'] = Hearth::TimeHelper.to_date_time(stub[:updated_at]) unless stub[:updated_at].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetJob
    class GetJob
      def self.default(visited=[])
        {
          arn: 'arn',
          created_at: Time.now,
          details: Stubs::ResponseDetails.default(visited),
          errors: Stubs::ListOfJobError.default(visited),
          id: 'id',
          state: 'state',
          type: 'type',
          updated_at: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_date_time(stub[:created_at]) unless stub[:created_at].nil?
        data['Details'] = Stubs::ResponseDetails.stub(stub[:details]) unless stub[:details].nil?
        data['Errors'] = Stubs::ListOfJobError.stub(stub[:errors]) unless stub[:errors].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['UpdatedAt'] = Hearth::TimeHelper.to_date_time(stub[:updated_at]) unless stub[:updated_at].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetRevision
    class GetRevision
      def self.default(visited=[])
        {
          arn: 'arn',
          comment: 'comment',
          created_at: Time.now,
          data_set_id: 'data_set_id',
          finalized: false,
          id: 'id',
          source_id: 'source_id',
          tags: Stubs::MapOf__string.default(visited),
          updated_at: Time.now,
          revocation_comment: 'revocation_comment',
          revoked: false,
          revoked_at: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Comment'] = stub[:comment] unless stub[:comment].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_date_time(stub[:created_at]) unless stub[:created_at].nil?
        data['DataSetId'] = stub[:data_set_id] unless stub[:data_set_id].nil?
        data['Finalized'] = stub[:finalized] unless stub[:finalized].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['SourceId'] = stub[:source_id] unless stub[:source_id].nil?
        data['Tags'] = Stubs::MapOf__string.stub(stub[:tags]) unless stub[:tags].nil?
        data['UpdatedAt'] = Hearth::TimeHelper.to_date_time(stub[:updated_at]) unless stub[:updated_at].nil?
        data['RevocationComment'] = stub[:revocation_comment] unless stub[:revocation_comment].nil?
        data['Revoked'] = stub[:revoked] unless stub[:revoked].nil?
        data['RevokedAt'] = Hearth::TimeHelper.to_date_time(stub[:revoked_at]) unless stub[:revoked_at].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListDataSetRevisions
    class ListDataSetRevisions
      def self.default(visited=[])
        {
          next_token: 'next_token',
          revisions: Stubs::ListOfRevisionEntry.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Revisions'] = Stubs::ListOfRevisionEntry.stub(stub[:revisions]) unless stub[:revisions].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ListOfRevisionEntry
    class ListOfRevisionEntry
      def self.default(visited=[])
        return nil if visited.include?('ListOfRevisionEntry')
        visited = visited + ['ListOfRevisionEntry']
        [
          Stubs::RevisionEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RevisionEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RevisionEntry
    class RevisionEntry
      def self.default(visited=[])
        return nil if visited.include?('RevisionEntry')
        visited = visited + ['RevisionEntry']
        {
          arn: 'arn',
          comment: 'comment',
          created_at: Time.now,
          data_set_id: 'data_set_id',
          finalized: false,
          id: 'id',
          source_id: 'source_id',
          updated_at: Time.now,
          revocation_comment: 'revocation_comment',
          revoked: false,
          revoked_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::RevisionEntry.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Comment'] = stub[:comment] unless stub[:comment].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_date_time(stub[:created_at]) unless stub[:created_at].nil?
        data['DataSetId'] = stub[:data_set_id] unless stub[:data_set_id].nil?
        data['Finalized'] = stub[:finalized] unless stub[:finalized].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['SourceId'] = stub[:source_id] unless stub[:source_id].nil?
        data['UpdatedAt'] = Hearth::TimeHelper.to_date_time(stub[:updated_at]) unless stub[:updated_at].nil?
        data['RevocationComment'] = stub[:revocation_comment] unless stub[:revocation_comment].nil?
        data['Revoked'] = stub[:revoked] unless stub[:revoked].nil?
        data['RevokedAt'] = Hearth::TimeHelper.to_date_time(stub[:revoked_at]) unless stub[:revoked_at].nil?
        data
      end
    end

    # Operation Stubber for ListDataSets
    class ListDataSets
      def self.default(visited=[])
        {
          data_sets: Stubs::ListOfDataSetEntry.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DataSets'] = Stubs::ListOfDataSetEntry.stub(stub[:data_sets]) unless stub[:data_sets].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ListOfDataSetEntry
    class ListOfDataSetEntry
      def self.default(visited=[])
        return nil if visited.include?('ListOfDataSetEntry')
        visited = visited + ['ListOfDataSetEntry']
        [
          Stubs::DataSetEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DataSetEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DataSetEntry
    class DataSetEntry
      def self.default(visited=[])
        return nil if visited.include?('DataSetEntry')
        visited = visited + ['DataSetEntry']
        {
          arn: 'arn',
          asset_type: 'asset_type',
          created_at: Time.now,
          description: 'description',
          id: 'id',
          name: 'name',
          origin: 'origin',
          origin_details: Stubs::OriginDetails.default(visited),
          source_id: 'source_id',
          updated_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::DataSetEntry.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['AssetType'] = stub[:asset_type] unless stub[:asset_type].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_date_time(stub[:created_at]) unless stub[:created_at].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Origin'] = stub[:origin] unless stub[:origin].nil?
        data['OriginDetails'] = Stubs::OriginDetails.stub(stub[:origin_details]) unless stub[:origin_details].nil?
        data['SourceId'] = stub[:source_id] unless stub[:source_id].nil?
        data['UpdatedAt'] = Hearth::TimeHelper.to_date_time(stub[:updated_at]) unless stub[:updated_at].nil?
        data
      end
    end

    # Operation Stubber for ListEventActions
    class ListEventActions
      def self.default(visited=[])
        {
          event_actions: Stubs::ListOfEventActionEntry.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['EventActions'] = Stubs::ListOfEventActionEntry.stub(stub[:event_actions]) unless stub[:event_actions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ListOfEventActionEntry
    class ListOfEventActionEntry
      def self.default(visited=[])
        return nil if visited.include?('ListOfEventActionEntry')
        visited = visited + ['ListOfEventActionEntry']
        [
          Stubs::EventActionEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::EventActionEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EventActionEntry
    class EventActionEntry
      def self.default(visited=[])
        return nil if visited.include?('EventActionEntry')
        visited = visited + ['EventActionEntry']
        {
          action: Stubs::Action.default(visited),
          arn: 'arn',
          created_at: Time.now,
          event: Stubs::Event.default(visited),
          id: 'id',
          updated_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::EventActionEntry.new
        data = {}
        data['Action'] = Stubs::Action.stub(stub[:action]) unless stub[:action].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_date_time(stub[:created_at]) unless stub[:created_at].nil?
        data['Event'] = Stubs::Event.stub(stub[:event]) unless stub[:event].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['UpdatedAt'] = Hearth::TimeHelper.to_date_time(stub[:updated_at]) unless stub[:updated_at].nil?
        data
      end
    end

    # Operation Stubber for ListJobs
    class ListJobs
      def self.default(visited=[])
        {
          jobs: Stubs::ListOfJobEntry.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Jobs'] = Stubs::ListOfJobEntry.stub(stub[:jobs]) unless stub[:jobs].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ListOfJobEntry
    class ListOfJobEntry
      def self.default(visited=[])
        return nil if visited.include?('ListOfJobEntry')
        visited = visited + ['ListOfJobEntry']
        [
          Stubs::JobEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::JobEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for JobEntry
    class JobEntry
      def self.default(visited=[])
        return nil if visited.include?('JobEntry')
        visited = visited + ['JobEntry']
        {
          arn: 'arn',
          created_at: Time.now,
          details: Stubs::ResponseDetails.default(visited),
          errors: Stubs::ListOfJobError.default(visited),
          id: 'id',
          state: 'state',
          type: 'type',
          updated_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::JobEntry.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_date_time(stub[:created_at]) unless stub[:created_at].nil?
        data['Details'] = Stubs::ResponseDetails.stub(stub[:details]) unless stub[:details].nil?
        data['Errors'] = Stubs::ListOfJobError.stub(stub[:errors]) unless stub[:errors].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['UpdatedAt'] = Hearth::TimeHelper.to_date_time(stub[:updated_at]) unless stub[:updated_at].nil?
        data
      end
    end

    # Operation Stubber for ListRevisionAssets
    class ListRevisionAssets
      def self.default(visited=[])
        {
          assets: Stubs::ListOfAssetEntry.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Assets'] = Stubs::ListOfAssetEntry.stub(stub[:assets]) unless stub[:assets].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ListOfAssetEntry
    class ListOfAssetEntry
      def self.default(visited=[])
        return nil if visited.include?('ListOfAssetEntry')
        visited = visited + ['ListOfAssetEntry']
        [
          Stubs::AssetEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AssetEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AssetEntry
    class AssetEntry
      def self.default(visited=[])
        return nil if visited.include?('AssetEntry')
        visited = visited + ['AssetEntry']
        {
          arn: 'arn',
          asset_details: Stubs::AssetDetails.default(visited),
          asset_type: 'asset_type',
          created_at: Time.now,
          data_set_id: 'data_set_id',
          id: 'id',
          name: 'name',
          revision_id: 'revision_id',
          source_id: 'source_id',
          updated_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::AssetEntry.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['AssetDetails'] = Stubs::AssetDetails.stub(stub[:asset_details]) unless stub[:asset_details].nil?
        data['AssetType'] = stub[:asset_type] unless stub[:asset_type].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_date_time(stub[:created_at]) unless stub[:created_at].nil?
        data['DataSetId'] = stub[:data_set_id] unless stub[:data_set_id].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['RevisionId'] = stub[:revision_id] unless stub[:revision_id].nil?
        data['SourceId'] = stub[:source_id] unless stub[:source_id].nil?
        data['UpdatedAt'] = Hearth::TimeHelper.to_date_time(stub[:updated_at]) unless stub[:updated_at].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: Stubs::MapOf__string.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['tags'] = Stubs::MapOf__string.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for RevokeRevision
    class RevokeRevision
      def self.default(visited=[])
        {
          arn: 'arn',
          comment: 'comment',
          created_at: Time.now,
          data_set_id: 'data_set_id',
          finalized: false,
          id: 'id',
          source_id: 'source_id',
          updated_at: Time.now,
          revocation_comment: 'revocation_comment',
          revoked: false,
          revoked_at: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Comment'] = stub[:comment] unless stub[:comment].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_date_time(stub[:created_at]) unless stub[:created_at].nil?
        data['DataSetId'] = stub[:data_set_id] unless stub[:data_set_id].nil?
        data['Finalized'] = stub[:finalized] unless stub[:finalized].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['SourceId'] = stub[:source_id] unless stub[:source_id].nil?
        data['UpdatedAt'] = Hearth::TimeHelper.to_date_time(stub[:updated_at]) unless stub[:updated_at].nil?
        data['RevocationComment'] = stub[:revocation_comment] unless stub[:revocation_comment].nil?
        data['Revoked'] = stub[:revoked] unless stub[:revoked].nil?
        data['RevokedAt'] = Hearth::TimeHelper.to_date_time(stub[:revoked_at]) unless stub[:revoked_at].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for SendApiAsset
    class SendApiAsset
      def self.default(visited=[])
        {
          body: 'body',
          response_headers: Stubs::MapOf__string.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        stub[:response_headers].each do |key, value|
          http_resp.headers["#{key}"] = value unless value.nil? || value.empty?
        end
        http_resp.headers['Content-Type'] = 'text/plain'
        http_resp.body = StringIO.new(stub[:body] || '')
      end
    end

    # Operation Stubber for StartJob
    class StartJob
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for UpdateAsset
    class UpdateAsset
      def self.default(visited=[])
        {
          arn: 'arn',
          asset_details: Stubs::AssetDetails.default(visited),
          asset_type: 'asset_type',
          created_at: Time.now,
          data_set_id: 'data_set_id',
          id: 'id',
          name: 'name',
          revision_id: 'revision_id',
          source_id: 'source_id',
          updated_at: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['AssetDetails'] = Stubs::AssetDetails.stub(stub[:asset_details]) unless stub[:asset_details].nil?
        data['AssetType'] = stub[:asset_type] unless stub[:asset_type].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_date_time(stub[:created_at]) unless stub[:created_at].nil?
        data['DataSetId'] = stub[:data_set_id] unless stub[:data_set_id].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['RevisionId'] = stub[:revision_id] unless stub[:revision_id].nil?
        data['SourceId'] = stub[:source_id] unless stub[:source_id].nil?
        data['UpdatedAt'] = Hearth::TimeHelper.to_date_time(stub[:updated_at]) unless stub[:updated_at].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateDataSet
    class UpdateDataSet
      def self.default(visited=[])
        {
          arn: 'arn',
          asset_type: 'asset_type',
          created_at: Time.now,
          description: 'description',
          id: 'id',
          name: 'name',
          origin: 'origin',
          origin_details: Stubs::OriginDetails.default(visited),
          source_id: 'source_id',
          updated_at: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['AssetType'] = stub[:asset_type] unless stub[:asset_type].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_date_time(stub[:created_at]) unless stub[:created_at].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Origin'] = stub[:origin] unless stub[:origin].nil?
        data['OriginDetails'] = Stubs::OriginDetails.stub(stub[:origin_details]) unless stub[:origin_details].nil?
        data['SourceId'] = stub[:source_id] unless stub[:source_id].nil?
        data['UpdatedAt'] = Hearth::TimeHelper.to_date_time(stub[:updated_at]) unless stub[:updated_at].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateEventAction
    class UpdateEventAction
      def self.default(visited=[])
        {
          action: Stubs::Action.default(visited),
          arn: 'arn',
          created_at: Time.now,
          event: Stubs::Event.default(visited),
          id: 'id',
          updated_at: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Action'] = Stubs::Action.stub(stub[:action]) unless stub[:action].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_date_time(stub[:created_at]) unless stub[:created_at].nil?
        data['Event'] = Stubs::Event.stub(stub[:event]) unless stub[:event].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['UpdatedAt'] = Hearth::TimeHelper.to_date_time(stub[:updated_at]) unless stub[:updated_at].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateRevision
    class UpdateRevision
      def self.default(visited=[])
        {
          arn: 'arn',
          comment: 'comment',
          created_at: Time.now,
          data_set_id: 'data_set_id',
          finalized: false,
          id: 'id',
          source_id: 'source_id',
          updated_at: Time.now,
          revocation_comment: 'revocation_comment',
          revoked: false,
          revoked_at: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Comment'] = stub[:comment] unless stub[:comment].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_date_time(stub[:created_at]) unless stub[:created_at].nil?
        data['DataSetId'] = stub[:data_set_id] unless stub[:data_set_id].nil?
        data['Finalized'] = stub[:finalized] unless stub[:finalized].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['SourceId'] = stub[:source_id] unless stub[:source_id].nil?
        data['UpdatedAt'] = Hearth::TimeHelper.to_date_time(stub[:updated_at]) unless stub[:updated_at].nil?
        data['RevocationComment'] = stub[:revocation_comment] unless stub[:revocation_comment].nil?
        data['Revoked'] = stub[:revoked] unless stub[:revoked].nil?
        data['RevokedAt'] = Hearth::TimeHelper.to_date_time(stub[:revoked_at]) unless stub[:revoked_at].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
