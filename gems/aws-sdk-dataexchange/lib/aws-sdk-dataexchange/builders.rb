# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::DataExchange
  module Builders

    # Operation Builder for CancelJob
    class CancelJob
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:job_id].to_s.empty?
          raise ArgumentError, "HTTP label :job_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/jobs/%<JobId>s',
            JobId: Hearth::HTTP.uri_escape(input[:job_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for CreateDataSet
    class CreateDataSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/data-sets')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AssetType'] = input[:asset_type] unless input[:asset_type].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Tags'] = Builders::MapOf__string.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for MapOf__string
    class MapOf__string
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for CreateEventAction
    class CreateEventAction
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/event-actions')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Action'] = Builders::Action.build(input[:action]) unless input[:action].nil?
        data['Event'] = Builders::Event.build(input[:event]) unless input[:event].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for Event
    class Event
      def self.build(input)
        data = {}
        data['RevisionPublished'] = Builders::RevisionPublished.build(input[:revision_published]) unless input[:revision_published].nil?
        data
      end
    end

    # Structure Builder for RevisionPublished
    class RevisionPublished
      def self.build(input)
        data = {}
        data['DataSetId'] = input[:data_set_id] unless input[:data_set_id].nil?
        data
      end
    end

    # Structure Builder for Action
    class Action
      def self.build(input)
        data = {}
        data['ExportRevisionToS3'] = Builders::AutoExportRevisionToS3RequestDetails.build(input[:export_revision_to_s3]) unless input[:export_revision_to_s3].nil?
        data
      end
    end

    # Structure Builder for AutoExportRevisionToS3RequestDetails
    class AutoExportRevisionToS3RequestDetails
      def self.build(input)
        data = {}
        data['Encryption'] = Builders::ExportServerSideEncryption.build(input[:encryption]) unless input[:encryption].nil?
        data['RevisionDestination'] = Builders::AutoExportRevisionDestinationEntry.build(input[:revision_destination]) unless input[:revision_destination].nil?
        data
      end
    end

    # Structure Builder for AutoExportRevisionDestinationEntry
    class AutoExportRevisionDestinationEntry
      def self.build(input)
        data = {}
        data['Bucket'] = input[:bucket] unless input[:bucket].nil?
        data['KeyPattern'] = input[:key_pattern] unless input[:key_pattern].nil?
        data
      end
    end

    # Structure Builder for ExportServerSideEncryption
    class ExportServerSideEncryption
      def self.build(input)
        data = {}
        data['KmsKeyArn'] = input[:kms_key_arn] unless input[:kms_key_arn].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # Operation Builder for CreateJob
    class CreateJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/jobs')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Details'] = Builders::RequestDetails.build(input[:details]) unless input[:details].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for RequestDetails
    class RequestDetails
      def self.build(input)
        data = {}
        data['ExportAssetToSignedUrl'] = Builders::ExportAssetToSignedUrlRequestDetails.build(input[:export_asset_to_signed_url]) unless input[:export_asset_to_signed_url].nil?
        data['ExportAssetsToS3'] = Builders::ExportAssetsToS3RequestDetails.build(input[:export_assets_to_s3]) unless input[:export_assets_to_s3].nil?
        data['ExportRevisionsToS3'] = Builders::ExportRevisionsToS3RequestDetails.build(input[:export_revisions_to_s3]) unless input[:export_revisions_to_s3].nil?
        data['ImportAssetFromSignedUrl'] = Builders::ImportAssetFromSignedUrlRequestDetails.build(input[:import_asset_from_signed_url]) unless input[:import_asset_from_signed_url].nil?
        data['ImportAssetsFromS3'] = Builders::ImportAssetsFromS3RequestDetails.build(input[:import_assets_from_s3]) unless input[:import_assets_from_s3].nil?
        data['ImportAssetsFromRedshiftDataShares'] = Builders::ImportAssetsFromRedshiftDataSharesRequestDetails.build(input[:import_assets_from_redshift_data_shares]) unless input[:import_assets_from_redshift_data_shares].nil?
        data['ImportAssetFromApiGatewayApi'] = Builders::ImportAssetFromApiGatewayApiRequestDetails.build(input[:import_asset_from_api_gateway_api]) unless input[:import_asset_from_api_gateway_api].nil?
        data
      end
    end

    # Structure Builder for ImportAssetFromApiGatewayApiRequestDetails
    class ImportAssetFromApiGatewayApiRequestDetails
      def self.build(input)
        data = {}
        data['ApiDescription'] = input[:api_description] unless input[:api_description].nil?
        data['ApiId'] = input[:api_id] unless input[:api_id].nil?
        data['ApiKey'] = input[:api_key] unless input[:api_key].nil?
        data['ApiName'] = input[:api_name] unless input[:api_name].nil?
        data['ApiSpecificationMd5Hash'] = input[:api_specification_md5_hash] unless input[:api_specification_md5_hash].nil?
        data['DataSetId'] = input[:data_set_id] unless input[:data_set_id].nil?
        data['ProtocolType'] = input[:protocol_type] unless input[:protocol_type].nil?
        data['RevisionId'] = input[:revision_id] unless input[:revision_id].nil?
        data['Stage'] = input[:stage] unless input[:stage].nil?
        data
      end
    end

    # Structure Builder for ImportAssetsFromRedshiftDataSharesRequestDetails
    class ImportAssetsFromRedshiftDataSharesRequestDetails
      def self.build(input)
        data = {}
        data['AssetSources'] = Builders::ListOfRedshiftDataShareAssetSourceEntry.build(input[:asset_sources]) unless input[:asset_sources].nil?
        data['DataSetId'] = input[:data_set_id] unless input[:data_set_id].nil?
        data['RevisionId'] = input[:revision_id] unless input[:revision_id].nil?
        data
      end
    end

    # List Builder for ListOfRedshiftDataShareAssetSourceEntry
    class ListOfRedshiftDataShareAssetSourceEntry
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::RedshiftDataShareAssetSourceEntry.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RedshiftDataShareAssetSourceEntry
    class RedshiftDataShareAssetSourceEntry
      def self.build(input)
        data = {}
        data['DataShareArn'] = input[:data_share_arn] unless input[:data_share_arn].nil?
        data
      end
    end

    # Structure Builder for ImportAssetsFromS3RequestDetails
    class ImportAssetsFromS3RequestDetails
      def self.build(input)
        data = {}
        data['AssetSources'] = Builders::ListOfAssetSourceEntry.build(input[:asset_sources]) unless input[:asset_sources].nil?
        data['DataSetId'] = input[:data_set_id] unless input[:data_set_id].nil?
        data['RevisionId'] = input[:revision_id] unless input[:revision_id].nil?
        data
      end
    end

    # List Builder for ListOfAssetSourceEntry
    class ListOfAssetSourceEntry
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AssetSourceEntry.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AssetSourceEntry
    class AssetSourceEntry
      def self.build(input)
        data = {}
        data['Bucket'] = input[:bucket] unless input[:bucket].nil?
        data['Key'] = input[:key] unless input[:key].nil?
        data
      end
    end

    # Structure Builder for ImportAssetFromSignedUrlRequestDetails
    class ImportAssetFromSignedUrlRequestDetails
      def self.build(input)
        data = {}
        data['AssetName'] = input[:asset_name] unless input[:asset_name].nil?
        data['DataSetId'] = input[:data_set_id] unless input[:data_set_id].nil?
        data['Md5Hash'] = input[:md5_hash] unless input[:md5_hash].nil?
        data['RevisionId'] = input[:revision_id] unless input[:revision_id].nil?
        data
      end
    end

    # Structure Builder for ExportRevisionsToS3RequestDetails
    class ExportRevisionsToS3RequestDetails
      def self.build(input)
        data = {}
        data['DataSetId'] = input[:data_set_id] unless input[:data_set_id].nil?
        data['Encryption'] = Builders::ExportServerSideEncryption.build(input[:encryption]) unless input[:encryption].nil?
        data['RevisionDestinations'] = Builders::ListOfRevisionDestinationEntry.build(input[:revision_destinations]) unless input[:revision_destinations].nil?
        data
      end
    end

    # List Builder for ListOfRevisionDestinationEntry
    class ListOfRevisionDestinationEntry
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::RevisionDestinationEntry.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RevisionDestinationEntry
    class RevisionDestinationEntry
      def self.build(input)
        data = {}
        data['Bucket'] = input[:bucket] unless input[:bucket].nil?
        data['KeyPattern'] = input[:key_pattern] unless input[:key_pattern].nil?
        data['RevisionId'] = input[:revision_id] unless input[:revision_id].nil?
        data
      end
    end

    # Structure Builder for ExportAssetsToS3RequestDetails
    class ExportAssetsToS3RequestDetails
      def self.build(input)
        data = {}
        data['AssetDestinations'] = Builders::ListOfAssetDestinationEntry.build(input[:asset_destinations]) unless input[:asset_destinations].nil?
        data['DataSetId'] = input[:data_set_id] unless input[:data_set_id].nil?
        data['Encryption'] = Builders::ExportServerSideEncryption.build(input[:encryption]) unless input[:encryption].nil?
        data['RevisionId'] = input[:revision_id] unless input[:revision_id].nil?
        data
      end
    end

    # List Builder for ListOfAssetDestinationEntry
    class ListOfAssetDestinationEntry
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AssetDestinationEntry.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AssetDestinationEntry
    class AssetDestinationEntry
      def self.build(input)
        data = {}
        data['AssetId'] = input[:asset_id] unless input[:asset_id].nil?
        data['Bucket'] = input[:bucket] unless input[:bucket].nil?
        data['Key'] = input[:key] unless input[:key].nil?
        data
      end
    end

    # Structure Builder for ExportAssetToSignedUrlRequestDetails
    class ExportAssetToSignedUrlRequestDetails
      def self.build(input)
        data = {}
        data['AssetId'] = input[:asset_id] unless input[:asset_id].nil?
        data['DataSetId'] = input[:data_set_id] unless input[:data_set_id].nil?
        data['RevisionId'] = input[:revision_id] unless input[:revision_id].nil?
        data
      end
    end

    # Operation Builder for CreateRevision
    class CreateRevision
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:data_set_id].to_s.empty?
          raise ArgumentError, "HTTP label :data_set_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/data-sets/%<DataSetId>s/revisions',
            DataSetId: Hearth::HTTP.uri_escape(input[:data_set_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Comment'] = input[:comment] unless input[:comment].nil?
        data['Tags'] = Builders::MapOf__string.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteAsset
    class DeleteAsset
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:asset_id].to_s.empty?
          raise ArgumentError, "HTTP label :asset_id cannot be nil or empty."
        end
        if input[:data_set_id].to_s.empty?
          raise ArgumentError, "HTTP label :data_set_id cannot be nil or empty."
        end
        if input[:revision_id].to_s.empty?
          raise ArgumentError, "HTTP label :revision_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/data-sets/%<DataSetId>s/revisions/%<RevisionId>s/assets/%<AssetId>s',
            AssetId: Hearth::HTTP.uri_escape(input[:asset_id].to_s),
            DataSetId: Hearth::HTTP.uri_escape(input[:data_set_id].to_s),
            RevisionId: Hearth::HTTP.uri_escape(input[:revision_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteDataSet
    class DeleteDataSet
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:data_set_id].to_s.empty?
          raise ArgumentError, "HTTP label :data_set_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/data-sets/%<DataSetId>s',
            DataSetId: Hearth::HTTP.uri_escape(input[:data_set_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteEventAction
    class DeleteEventAction
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:event_action_id].to_s.empty?
          raise ArgumentError, "HTTP label :event_action_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/event-actions/%<EventActionId>s',
            EventActionId: Hearth::HTTP.uri_escape(input[:event_action_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteRevision
    class DeleteRevision
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:data_set_id].to_s.empty?
          raise ArgumentError, "HTTP label :data_set_id cannot be nil or empty."
        end
        if input[:revision_id].to_s.empty?
          raise ArgumentError, "HTTP label :revision_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/data-sets/%<DataSetId>s/revisions/%<RevisionId>s',
            DataSetId: Hearth::HTTP.uri_escape(input[:data_set_id].to_s),
            RevisionId: Hearth::HTTP.uri_escape(input[:revision_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetAsset
    class GetAsset
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:asset_id].to_s.empty?
          raise ArgumentError, "HTTP label :asset_id cannot be nil or empty."
        end
        if input[:data_set_id].to_s.empty?
          raise ArgumentError, "HTTP label :data_set_id cannot be nil or empty."
        end
        if input[:revision_id].to_s.empty?
          raise ArgumentError, "HTTP label :revision_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/data-sets/%<DataSetId>s/revisions/%<RevisionId>s/assets/%<AssetId>s',
            AssetId: Hearth::HTTP.uri_escape(input[:asset_id].to_s),
            DataSetId: Hearth::HTTP.uri_escape(input[:data_set_id].to_s),
            RevisionId: Hearth::HTTP.uri_escape(input[:revision_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetDataSet
    class GetDataSet
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:data_set_id].to_s.empty?
          raise ArgumentError, "HTTP label :data_set_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/data-sets/%<DataSetId>s',
            DataSetId: Hearth::HTTP.uri_escape(input[:data_set_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetEventAction
    class GetEventAction
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:event_action_id].to_s.empty?
          raise ArgumentError, "HTTP label :event_action_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/event-actions/%<EventActionId>s',
            EventActionId: Hearth::HTTP.uri_escape(input[:event_action_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetJob
    class GetJob
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:job_id].to_s.empty?
          raise ArgumentError, "HTTP label :job_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/jobs/%<JobId>s',
            JobId: Hearth::HTTP.uri_escape(input[:job_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetRevision
    class GetRevision
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:data_set_id].to_s.empty?
          raise ArgumentError, "HTTP label :data_set_id cannot be nil or empty."
        end
        if input[:revision_id].to_s.empty?
          raise ArgumentError, "HTTP label :revision_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/data-sets/%<DataSetId>s/revisions/%<RevisionId>s',
            DataSetId: Hearth::HTTP.uri_escape(input[:data_set_id].to_s),
            RevisionId: Hearth::HTTP.uri_escape(input[:revision_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListDataSetRevisions
    class ListDataSetRevisions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:data_set_id].to_s.empty?
          raise ArgumentError, "HTTP label :data_set_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/data-sets/%<DataSetId>s/revisions',
            DataSetId: Hearth::HTTP.uri_escape(input[:data_set_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListDataSets
    class ListDataSets
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/v1/data-sets')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['origin'] = input[:origin].to_s unless input[:origin].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListEventActions
    class ListEventActions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/v1/event-actions')
        params = Hearth::Query::ParamList.new
        params['eventSourceId'] = input[:event_source_id].to_s unless input[:event_source_id].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListJobs
    class ListJobs
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/v1/jobs')
        params = Hearth::Query::ParamList.new
        params['dataSetId'] = input[:data_set_id].to_s unless input[:data_set_id].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['revisionId'] = input[:revision_id].to_s unless input[:revision_id].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListRevisionAssets
    class ListRevisionAssets
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:data_set_id].to_s.empty?
          raise ArgumentError, "HTTP label :data_set_id cannot be nil or empty."
        end
        if input[:revision_id].to_s.empty?
          raise ArgumentError, "HTTP label :revision_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/data-sets/%<DataSetId>s/revisions/%<RevisionId>s/assets',
            DataSetId: Hearth::HTTP.uri_escape(input[:data_set_id].to_s),
            RevisionId: Hearth::HTTP.uri_escape(input[:revision_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for RevokeRevision
    class RevokeRevision
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:data_set_id].to_s.empty?
          raise ArgumentError, "HTTP label :data_set_id cannot be nil or empty."
        end
        if input[:revision_id].to_s.empty?
          raise ArgumentError, "HTTP label :revision_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/data-sets/%<DataSetId>s/revisions/%<RevisionId>s/revoke',
            DataSetId: Hearth::HTTP.uri_escape(input[:data_set_id].to_s),
            RevisionId: Hearth::HTTP.uri_escape(input[:revision_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['RevocationComment'] = input[:revocation_comment] unless input[:revocation_comment].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SendApiAsset
    class SendApiAsset
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1')
        params = Hearth::Query::ParamList.new
        unless input[:query_string_parameters].nil? || input[:query_string_parameters].empty?
          input[:query_string_parameters].each do |k, v|
            params[k] = v.to_s unless v.nil?
          end
        end
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'text/plain'
        http_req.body = StringIO.new(input[:body] || '')
        http_req.headers['x-amzn-dataexchange-asset-id'] = input[:asset_id] unless input[:asset_id].nil? || input[:asset_id].empty?
        http_req.headers['x-amzn-dataexchange-data-set-id'] = input[:data_set_id] unless input[:data_set_id].nil? || input[:data_set_id].empty?
        http_req.headers['x-amzn-dataexchange-http-method'] = input[:member_method] unless input[:member_method].nil? || input[:member_method].empty?
        http_req.headers['x-amzn-dataexchange-path'] = input[:path] unless input[:path].nil? || input[:path].empty?
        http_req.headers['x-amzn-dataexchange-revision-id'] = input[:revision_id] unless input[:revision_id].nil? || input[:revision_id].empty?
        input[:request_headers].each do |key, value|
          http_req.headers["x-amzn-dataexchange-header-#{key}"] = value unless value.nil? || value.empty?
        end
      end
    end

    # Operation Builder for StartJob
    class StartJob
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:job_id].to_s.empty?
          raise ArgumentError, "HTTP label :job_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/jobs/%<JobId>s',
            JobId: Hearth::HTTP.uri_escape(input[:job_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['tags'] = Builders::MapOf__string.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:tag_keys].nil? || input[:tag_keys].empty?
          params['tagKeys'] = input[:tag_keys].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # List Builder for ListOf__string
    class ListOf__string
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateAsset
    class UpdateAsset
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:asset_id].to_s.empty?
          raise ArgumentError, "HTTP label :asset_id cannot be nil or empty."
        end
        if input[:data_set_id].to_s.empty?
          raise ArgumentError, "HTTP label :data_set_id cannot be nil or empty."
        end
        if input[:revision_id].to_s.empty?
          raise ArgumentError, "HTTP label :revision_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/data-sets/%<DataSetId>s/revisions/%<RevisionId>s/assets/%<AssetId>s',
            AssetId: Hearth::HTTP.uri_escape(input[:asset_id].to_s),
            DataSetId: Hearth::HTTP.uri_escape(input[:data_set_id].to_s),
            RevisionId: Hearth::HTTP.uri_escape(input[:revision_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateDataSet
    class UpdateDataSet
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:data_set_id].to_s.empty?
          raise ArgumentError, "HTTP label :data_set_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/data-sets/%<DataSetId>s',
            DataSetId: Hearth::HTTP.uri_escape(input[:data_set_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Description'] = input[:description] unless input[:description].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateEventAction
    class UpdateEventAction
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:event_action_id].to_s.empty?
          raise ArgumentError, "HTTP label :event_action_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/event-actions/%<EventActionId>s',
            EventActionId: Hearth::HTTP.uri_escape(input[:event_action_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Action'] = Builders::Action.build(input[:action]) unless input[:action].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateRevision
    class UpdateRevision
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:data_set_id].to_s.empty?
          raise ArgumentError, "HTTP label :data_set_id cannot be nil or empty."
        end
        if input[:revision_id].to_s.empty?
          raise ArgumentError, "HTTP label :revision_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/data-sets/%<DataSetId>s/revisions/%<RevisionId>s',
            DataSetId: Hearth::HTTP.uri_escape(input[:data_set_id].to_s),
            RevisionId: Hearth::HTTP.uri_escape(input[:revision_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Comment'] = input[:comment] unless input[:comment].nil?
        data['Finalized'] = input[:finalized] unless input[:finalized].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
