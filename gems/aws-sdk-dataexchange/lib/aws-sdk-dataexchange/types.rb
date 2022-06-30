# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::DataExchange
  module Types

    # <p>Access to the resource is denied.</p>
    #
    # @!attribute message
    #   <p>Access to the resource is denied.</p>
    #
    #   @return [String]
    #
    AccessDeniedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>What occurs after a certain event.</p>
    #
    # @!attribute export_revision_to_s3
    #   <p>Details for the export revision to Amazon S3 action.</p>
    #
    #   @return [AutoExportRevisionToS3RequestDetails]
    #
    Action = ::Struct.new(
      :export_revision_to_s3,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The API Gateway API that is the asset.</p>
    #
    # @!attribute api_description
    #   <p>The API description of the API asset.</p>
    #
    #   @return [String]
    #
    # @!attribute api_endpoint
    #   <p>The API endpoint of the API asset.</p>
    #
    #   @return [String]
    #
    # @!attribute api_id
    #   <p>The unique identifier of the API asset.</p>
    #
    #   @return [String]
    #
    # @!attribute api_key
    #   <p>The API key of the API asset.</p>
    #
    #   @return [String]
    #
    # @!attribute api_name
    #   <p>The API name of the API asset.</p>
    #
    #   @return [String]
    #
    # @!attribute api_specification_download_url
    #   <p>The download URL of the API specification of the API asset.</p>
    #
    #   @return [String]
    #
    # @!attribute api_specification_download_url_expires_at
    #   <p>The date and time that the upload URL expires, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    # @!attribute protocol_type
    #   <p>The protocol type of the API asset.</p>
    #
    #   Enum, one of: ["REST"]
    #
    #   @return [String]
    #
    # @!attribute stage
    #   <p>The stage of the API asset.</p>
    #
    #   @return [String]
    #
    ApiGatewayApiAsset = ::Struct.new(
      :api_description,
      :api_endpoint,
      :api_id,
      :api_key,
      :api_name,
      :api_specification_download_url,
      :api_specification_download_url_expires_at,
      :protocol_type,
      :stage,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The destination for the asset.</p>
    #
    # @!attribute asset_id
    #   <p>The unique identifier for the asset.</p>
    #
    #   @return [String]
    #
    # @!attribute bucket
    #   <p>The S3 bucket that is the destination for the asset.</p>
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>The name of the object in Amazon S3 for the asset.</p>
    #
    #   @return [String]
    #
    AssetDestinationEntry = ::Struct.new(
      :asset_id,
      :bucket,
      :key,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the asset.</p>
    #
    # @!attribute s3_snapshot_asset
    #   <p>The S3 object that is the asset.</p>
    #
    #   @return [S3SnapshotAsset]
    #
    # @!attribute redshift_data_share_asset
    #   <p>The Amazon Redshift datashare that is the asset.</p>
    #
    #   @return [RedshiftDataShareAsset]
    #
    # @!attribute api_gateway_api_asset
    #   <p>Information about the API Gateway API asset.</p>
    #
    #   @return [ApiGatewayApiAsset]
    #
    AssetDetails = ::Struct.new(
      :s3_snapshot_asset,
      :redshift_data_share_asset,
      :api_gateway_api_asset,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An asset in AWS Data Exchange is a piece of data (S3 object) or a means of fulfilling data (Amazon Redshift datashare or Amazon API Gateway API). The asset can be a structured data file, an image file, or some other data file that can be stored as an S3 object, an Amazon API Gateway API, or an Amazon Redshift datashare. When you create an import job for your files, API Gateway APIs, or Amazon Redshift datashares, you create an asset in AWS Data Exchange.</p>
    #
    # @!attribute arn
    #   <p>The ARN for the asset.</p>
    #
    #   @return [String]
    #
    # @!attribute asset_details
    #   <p>Information about the asset.</p>
    #
    #   @return [AssetDetails]
    #
    # @!attribute asset_type
    #   <p>The type of asset that is added to a data set.</p>
    #
    #   Enum, one of: ["S3_SNAPSHOT", "REDSHIFT_DATA_SHARE", "API_GATEWAY_API"]
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The date and time that the asset was created, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    # @!attribute data_set_id
    #   <p>The unique identifier for the data set associated with this asset.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The unique identifier for the asset.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the asset. When importing from Amazon S3, the S3 object key is used as the asset name. When exporting to Amazon S3, the asset name is used as default target S3 object key. When importing from Amazon API Gateway API, the API name is used as the asset name. When importing from Amazon Redshift, the datashare name is used as the asset name.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_id
    #   <p>The unique identifier for the revision associated with this asset.</p>
    #
    #   @return [String]
    #
    # @!attribute source_id
    #   <p>The asset ID of the owned asset corresponding to the entitled asset being viewed. This parameter is returned when an asset owner is viewing the entitled copy of its owned asset.</p>
    #
    #   @return [String]
    #
    # @!attribute updated_at
    #   <p>The date and time that the asset was last updated, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    AssetEntry = ::Struct.new(
      :arn,
      :asset_details,
      :asset_type,
      :created_at,
      :data_set_id,
      :id,
      :name,
      :revision_id,
      :source_id,
      :updated_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The source of the assets.</p>
    #
    # @!attribute bucket
    #   <p>The S3 bucket that's part of the source of the asset.</p>
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>The name of the object in Amazon S3 for the asset.</p>
    #
    #   @return [String]
    #
    AssetSourceEntry = ::Struct.new(
      :bucket,
      :key,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AssetType
    #
    module AssetType
      # No documentation available.
      #
      S3_SNAPSHOT = "S3_SNAPSHOT"

      # No documentation available.
      #
      REDSHIFT_DATA_SHARE = "REDSHIFT_DATA_SHARE"

      # No documentation available.
      #
      API_GATEWAY_API = "API_GATEWAY_API"
    end

    # <p>A revision destination is the Amazon S3 bucket folder destination to where the export will be sent.</p>
    #
    # @!attribute bucket
    #   <p>The S3 bucket that is the destination for the event action.</p>
    #
    #   @return [String]
    #
    # @!attribute key_pattern
    #   <p>A string representing the pattern for generated names of the individual assets in the revision. For more information about key patterns, see <a href="https://docs.aws.amazon.com/data-exchange/latest/userguide/jobs.html revision-export-keypatterns">Key patterns when exporting revisions</a>.</p>
    #
    #   @return [String]
    #
    AutoExportRevisionDestinationEntry = ::Struct.new(
      :bucket,
      :key_pattern,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details of the operation to be performed by the job.</p>
    #
    # @!attribute encryption
    #   <p>Encryption configuration for the auto export job.</p>
    #
    #   @return [ExportServerSideEncryption]
    #
    # @!attribute revision_destination
    #   <p>A revision destination is the Amazon S3 bucket folder destination to where the export will be sent.</p>
    #
    #   @return [AutoExportRevisionDestinationEntry]
    #
    AutoExportRevisionToS3RequestDetails = ::Struct.new(
      :encryption,
      :revision_destination,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The unique identifier for a job.</p>
    #
    #   @return [String]
    #
    CancelJobInput = ::Struct.new(
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CancelJobOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Code
    #
    module Code
      # No documentation available.
      #
      ACCESS_DENIED_EXCEPTION = "ACCESS_DENIED_EXCEPTION"

      # No documentation available.
      #
      INTERNAL_SERVER_EXCEPTION = "INTERNAL_SERVER_EXCEPTION"

      # No documentation available.
      #
      MALWARE_DETECTED = "MALWARE_DETECTED"

      # No documentation available.
      #
      RESOURCE_NOT_FOUND_EXCEPTION = "RESOURCE_NOT_FOUND_EXCEPTION"

      # No documentation available.
      #
      SERVICE_QUOTA_EXCEEDED_EXCEPTION = "SERVICE_QUOTA_EXCEEDED_EXCEPTION"

      # No documentation available.
      #
      VALIDATION_EXCEPTION = "VALIDATION_EXCEPTION"

      # No documentation available.
      #
      MALWARE_SCAN_ENCRYPTED_FILE = "MALWARE_SCAN_ENCRYPTED_FILE"
    end

    # <p>The request couldn't be completed because it conflicted with the current state of the resource.</p>
    #
    # @!attribute message
    #   <p>The request couldn't be completed because it conflicted with the current state of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The unique identifier for the resource with the conflict.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of the resource with the conflict.</p>
    #
    #   Enum, one of: ["DATA_SET", "REVISION", "ASSET", "JOB", "EVENT_ACTION"]
    #
    #   @return [String]
    #
    ConflictException = ::Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request body for CreateDataSet.</p>
    #
    # @!attribute asset_type
    #   <p>The type of asset that is added to a data set.</p>
    #
    #   Enum, one of: ["S3_SNAPSHOT", "REDSHIFT_DATA_SHARE", "API_GATEWAY_API"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description for the data set. This value can be up to 16,348 characters long.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the data set.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A data set tag is an optional label that you can assign to a data set when you create it. Each tag consists of a key and an optional value, both of which you define. When you use tagging, you can also use tag-based access control in IAM policies to control access to these data sets and revisions.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateDataSetInput = ::Struct.new(
      :asset_type,
      :description,
      :name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The ARN for the data set.</p>
    #
    #   @return [String]
    #
    # @!attribute asset_type
    #   <p>The type of asset that is added to a data set.</p>
    #
    #   Enum, one of: ["S3_SNAPSHOT", "REDSHIFT_DATA_SHARE", "API_GATEWAY_API"]
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The date and time that the data set was created, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    # @!attribute description
    #   <p>The description for the data set.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The unique identifier for the data set.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the data set.</p>
    #
    #   @return [String]
    #
    # @!attribute origin
    #   <p>A property that defines the data set as OWNED by the account (for providers) or ENTITLED to the account (for subscribers).</p>
    #
    #   Enum, one of: ["OWNED", "ENTITLED"]
    #
    #   @return [String]
    #
    # @!attribute origin_details
    #   <p>If the origin of this data set is ENTITLED, includes the details for the product on AWS Marketplace.</p>
    #
    #   @return [OriginDetails]
    #
    # @!attribute source_id
    #   <p>The data set ID of the owned data set corresponding to the entitled data set being viewed. This parameter is returned when a data set owner is viewing the entitled copy of its owned data set.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags for the data set.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute updated_at
    #   <p>The date and time that the data set was last updated, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    CreateDataSetOutput = ::Struct.new(
      :arn,
      :asset_type,
      :created_at,
      :description,
      :id,
      :name,
      :origin,
      :origin_details,
      :source_id,
      :tags,
      :updated_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request body for CreateEventAction.</p>
    #
    # @!attribute action
    #   <p>What occurs after a certain event.</p>
    #
    #   @return [Action]
    #
    # @!attribute event
    #   <p>What occurs to start an action.</p>
    #
    #   @return [Event]
    #
    CreateEventActionInput = ::Struct.new(
      :action,
      :event,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute action
    #   <p>What occurs after a certain event.</p>
    #
    #   @return [Action]
    #
    # @!attribute arn
    #   <p>The ARN for the event action.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The date and time that the event action was created, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    # @!attribute event
    #   <p>What occurs to start an action.</p>
    #
    #   @return [Event]
    #
    # @!attribute id
    #   <p>The unique identifier for the event action.</p>
    #
    #   @return [String]
    #
    # @!attribute updated_at
    #   <p>The date and time that the event action was last updated, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    CreateEventActionOutput = ::Struct.new(
      :action,
      :arn,
      :created_at,
      :event,
      :id,
      :updated_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request body for CreateJob.</p>
    #
    # @!attribute details
    #   <p>The details for the CreateJob request.</p>
    #
    #   @return [RequestDetails]
    #
    # @!attribute type
    #   <p>The type of job to be created.</p>
    #
    #   Enum, one of: ["IMPORT_ASSETS_FROM_S3", "IMPORT_ASSET_FROM_SIGNED_URL", "EXPORT_ASSETS_TO_S3", "EXPORT_ASSET_TO_SIGNED_URL", "EXPORT_REVISIONS_TO_S3", "IMPORT_ASSETS_FROM_REDSHIFT_DATA_SHARES", "IMPORT_ASSET_FROM_API_GATEWAY_API"]
    #
    #   @return [String]
    #
    CreateJobInput = ::Struct.new(
      :details,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The ARN for the job.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The date and time that the job was created, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    # @!attribute details
    #   <p>Details about the job.</p>
    #
    #   @return [ResponseDetails]
    #
    # @!attribute errors
    #   <p>The errors associated with jobs.</p>
    #
    #   @return [Array<JobError>]
    #
    # @!attribute id
    #   <p>The unique identifier for the job.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the job.</p>
    #
    #   Enum, one of: ["WAITING", "IN_PROGRESS", "ERROR", "COMPLETED", "CANCELLED", "TIMED_OUT"]
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The job type.</p>
    #
    #   Enum, one of: ["IMPORT_ASSETS_FROM_S3", "IMPORT_ASSET_FROM_SIGNED_URL", "EXPORT_ASSETS_TO_S3", "EXPORT_ASSET_TO_SIGNED_URL", "EXPORT_REVISIONS_TO_S3", "IMPORT_ASSETS_FROM_REDSHIFT_DATA_SHARES", "IMPORT_ASSET_FROM_API_GATEWAY_API"]
    #
    #   @return [String]
    #
    # @!attribute updated_at
    #   <p>The date and time that the job was last updated, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    CreateJobOutput = ::Struct.new(
      :arn,
      :created_at,
      :details,
      :errors,
      :id,
      :state,
      :type,
      :updated_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request body for CreateRevision.</p>
    #
    # @!attribute comment
    #   <p>An optional comment about the revision.</p>
    #
    #   @return [String]
    #
    # @!attribute data_set_id
    #   <p>The unique identifier for a data set.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A revision tag is an optional label that you can assign to a revision when you create it. Each tag consists of a key and an optional value, both of which you define. When you use tagging, you can also use tag-based access control in IAM policies to control access to these data sets and revisions.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateRevisionInput = ::Struct.new(
      :comment,
      :data_set_id,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The ARN for the revision.</p>
    #
    #   @return [String]
    #
    # @!attribute comment
    #   <p>An optional comment about the revision.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The date and time that the revision was created, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    # @!attribute data_set_id
    #   <p>The unique identifier for the data set associated with this revision.</p>
    #
    #   @return [String]
    #
    # @!attribute finalized
    #   <p>To publish a revision to a data set in a product, the revision must first be finalized. Finalizing a revision tells AWS Data Exchange that your changes to the assets in the revision are complete. After it's in this read-only state, you can publish the revision to your products.</p> <p>Finalized revisions can be published through the AWS Data Exchange console or the AWS Marketplace Catalog API, using the StartChangeSet AWS Marketplace Catalog API action. When using the API, revisions are uniquely identified by their ARN.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute id
    #   <p>The unique identifier for the revision.</p>
    #
    #   @return [String]
    #
    # @!attribute source_id
    #   <p>The revision ID of the owned revision corresponding to the entitled revision being viewed. This parameter is returned when a revision owner is viewing the entitled copy of its owned revision.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags for the revision.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute updated_at
    #   <p>The date and time that the revision was last updated, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    # @!attribute revocation_comment
    #   <p>A required comment to inform subscribers of the reason their access to the revision was revoked.</p>
    #
    #   @return [String]
    #
    # @!attribute revoked
    #   <p>A status indicating that subscribers' access to the revision was revoked.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute revoked_at
    #   <p>The date and time that the revision was revoked, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    CreateRevisionOutput = ::Struct.new(
      :arn,
      :comment,
      :created_at,
      :data_set_id,
      :finalized,
      :id,
      :source_id,
      :tags,
      :updated_at,
      :revocation_comment,
      :revoked,
      :revoked_at,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.finalized ||= false
        self.revoked ||= false
      end

    end

    # <p>A data set is an AWS resource with one or more revisions.</p>
    #
    # @!attribute arn
    #   <p>The ARN for the data set.</p>
    #
    #   @return [String]
    #
    # @!attribute asset_type
    #   <p>The type of asset that is added to a data set.</p>
    #
    #   Enum, one of: ["S3_SNAPSHOT", "REDSHIFT_DATA_SHARE", "API_GATEWAY_API"]
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The date and time that the data set was created, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    # @!attribute description
    #   <p>The description for the data set.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The unique identifier for the data set.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the data set.</p>
    #
    #   @return [String]
    #
    # @!attribute origin
    #   <p>A property that defines the data set as OWNED by the account (for providers) or ENTITLED to the account (for subscribers).</p>
    #
    #   Enum, one of: ["OWNED", "ENTITLED"]
    #
    #   @return [String]
    #
    # @!attribute origin_details
    #   <p>If the origin of this data set is ENTITLED, includes the details for the product on AWS Marketplace.</p>
    #
    #   @return [OriginDetails]
    #
    # @!attribute source_id
    #   <p>The data set ID of the owned data set corresponding to the entitled data set being viewed. This parameter is returned when a data set owner is viewing the entitled copy of its owned data set.</p>
    #
    #   @return [String]
    #
    # @!attribute updated_at
    #   <p>The date and time that the data set was last updated, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    DataSetEntry = ::Struct.new(
      :arn,
      :asset_type,
      :created_at,
      :description,
      :id,
      :name,
      :origin,
      :origin_details,
      :source_id,
      :updated_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute asset_id
    #   <p>The unique identifier for an asset.</p>
    #
    #   @return [String]
    #
    # @!attribute data_set_id
    #   <p>The unique identifier for a data set.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_id
    #   <p>The unique identifier for a revision.</p>
    #
    #   @return [String]
    #
    DeleteAssetInput = ::Struct.new(
      :asset_id,
      :data_set_id,
      :revision_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteAssetOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute data_set_id
    #   <p>The unique identifier for a data set.</p>
    #
    #   @return [String]
    #
    DeleteDataSetInput = ::Struct.new(
      :data_set_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteDataSetOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute event_action_id
    #   <p>The unique identifier for the event action.</p>
    #
    #   @return [String]
    #
    DeleteEventActionInput = ::Struct.new(
      :event_action_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteEventActionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute data_set_id
    #   <p>The unique identifier for a data set.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_id
    #   <p>The unique identifier for a revision.</p>
    #
    #   @return [String]
    #
    DeleteRevisionInput = ::Struct.new(
      :data_set_id,
      :revision_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteRevisionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the job error.</p>
    #
    # @!attribute import_asset_from_signed_url_job_error_details
    #   <p>Information about the job error.</p>
    #
    #   @return [ImportAssetFromSignedUrlJobErrorDetails]
    #
    # @!attribute import_assets_from_s3_job_error_details
    #   <p>Information about the job error.</p>
    #
    #   @return [Array<AssetSourceEntry>]
    #
    Details = ::Struct.new(
      :import_asset_from_signed_url_job_error_details,
      :import_assets_from_s3_job_error_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>What occurs to start an action.</p>
    #
    # @!attribute revision_published
    #   <p>What occurs to start the revision publish action.</p>
    #
    #   @return [RevisionPublished]
    #
    Event = ::Struct.new(
      :revision_published,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An event action is an object that defines the relationship between a specific event and an automated action that will be taken on behalf of the customer.</p>
    #
    # @!attribute action
    #   <p>What occurs after a certain event.</p>
    #
    #   @return [Action]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) for the event action.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The date and time that the event action was created, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    # @!attribute event
    #   <p>What occurs to start an action.</p>
    #
    #   @return [Event]
    #
    # @!attribute id
    #   <p>The unique identifier for the event action.</p>
    #
    #   @return [String]
    #
    # @!attribute updated_at
    #   <p>The date and time that the event action was last updated, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    EventActionEntry = ::Struct.new(
      :action,
      :arn,
      :created_at,
      :event,
      :id,
      :updated_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ExceptionCause
    #
    module ExceptionCause
      # No documentation available.
      #
      InsufficientS3BucketPolicy = "InsufficientS3BucketPolicy"

      # No documentation available.
      #
      S3AccessDenied = "S3AccessDenied"
    end

    # <p>Details of the operation to be performed by the job.</p>
    #
    # @!attribute asset_id
    #   <p>The unique identifier for the asset that is exported to a signed URL.</p>
    #
    #   @return [String]
    #
    # @!attribute data_set_id
    #   <p>The unique identifier for the data set associated with this export job.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_id
    #   <p>The unique identifier for the revision associated with this export request.</p>
    #
    #   @return [String]
    #
    ExportAssetToSignedUrlRequestDetails = ::Struct.new(
      :asset_id,
      :data_set_id,
      :revision_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The details of the export to signed URL response.</p>
    #
    # @!attribute asset_id
    #   <p>The unique identifier for the asset associated with this export job.</p>
    #
    #   @return [String]
    #
    # @!attribute data_set_id
    #   <p>The unique identifier for the data set associated with this export job.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_id
    #   <p>The unique identifier for the revision associated with this export response.</p>
    #
    #   @return [String]
    #
    # @!attribute signed_url
    #   <p>The signed URL for the export request.</p>
    #
    #   @return [String]
    #
    # @!attribute signed_url_expires_at
    #   <p>The date and time that the signed URL expires, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    ExportAssetToSignedUrlResponseDetails = ::Struct.new(
      :asset_id,
      :data_set_id,
      :revision_id,
      :signed_url,
      :signed_url_expires_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details of the operation to be performed by the job.</p>
    #
    # @!attribute asset_destinations
    #   <p>The destination for the asset.</p>
    #
    #   @return [Array<AssetDestinationEntry>]
    #
    # @!attribute data_set_id
    #   <p>The unique identifier for the data set associated with this export job.</p>
    #
    #   @return [String]
    #
    # @!attribute encryption
    #   <p>Encryption configuration for the export job.</p>
    #
    #   @return [ExportServerSideEncryption]
    #
    # @!attribute revision_id
    #   <p>The unique identifier for the revision associated with this export request.</p>
    #
    #   @return [String]
    #
    ExportAssetsToS3RequestDetails = ::Struct.new(
      :asset_destinations,
      :data_set_id,
      :encryption,
      :revision_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about the export to Amazon S3 response.</p>
    #
    # @!attribute asset_destinations
    #   <p>The destination in Amazon S3 where the asset is exported.</p>
    #
    #   @return [Array<AssetDestinationEntry>]
    #
    # @!attribute data_set_id
    #   <p>The unique identifier for the data set associated with this export job.</p>
    #
    #   @return [String]
    #
    # @!attribute encryption
    #   <p>Encryption configuration of the export job.</p>
    #
    #   @return [ExportServerSideEncryption]
    #
    # @!attribute revision_id
    #   <p>The unique identifier for the revision associated with this export response.</p>
    #
    #   @return [String]
    #
    ExportAssetsToS3ResponseDetails = ::Struct.new(
      :asset_destinations,
      :data_set_id,
      :encryption,
      :revision_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details of the operation to be performed by the job.</p>
    #
    # @!attribute data_set_id
    #   <p>The unique identifier for the data set associated with this export job.</p>
    #
    #   @return [String]
    #
    # @!attribute encryption
    #   <p>Encryption configuration for the export job.</p>
    #
    #   @return [ExportServerSideEncryption]
    #
    # @!attribute revision_destinations
    #   <p>The destination for the revision.</p>
    #
    #   @return [Array<RevisionDestinationEntry>]
    #
    ExportRevisionsToS3RequestDetails = ::Struct.new(
      :data_set_id,
      :encryption,
      :revision_destinations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about the export revisions to Amazon S3 response.</p>
    #
    # @!attribute data_set_id
    #   <p>The unique identifier for the data set associated with this export job.</p>
    #
    #   @return [String]
    #
    # @!attribute encryption
    #   <p>Encryption configuration of the export job.</p>
    #
    #   @return [ExportServerSideEncryption]
    #
    # @!attribute revision_destinations
    #   <p>The destination in Amazon S3 where the revision is exported.</p>
    #
    #   @return [Array<RevisionDestinationEntry>]
    #
    # @!attribute event_action_arn
    #   <p>The Amazon Resource Name (ARN) of the event action.</p>
    #
    #   @return [String]
    #
    ExportRevisionsToS3ResponseDetails = ::Struct.new(
      :data_set_id,
      :encryption,
      :revision_destinations,
      :event_action_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Encryption configuration of the export job. Includes the encryption type in addition to the AWS KMS key. The KMS key is only necessary if you chose the KMS encryption. type.</p>
    #
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS KMS key you want to use to encrypt the Amazon S3 objects. This parameter is required if you choose aws:kms as an encryption type.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of server side encryption used for encrypting the objects in Amazon S3.</p>
    #
    #   Enum, one of: ["aws:kms", "AES256"]
    #
    #   @return [String]
    #
    ExportServerSideEncryption = ::Struct.new(
      :kms_key_arn,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute asset_id
    #   <p>The unique identifier for an asset.</p>
    #
    #   @return [String]
    #
    # @!attribute data_set_id
    #   <p>The unique identifier for a data set.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_id
    #   <p>The unique identifier for a revision.</p>
    #
    #   @return [String]
    #
    GetAssetInput = ::Struct.new(
      :asset_id,
      :data_set_id,
      :revision_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The ARN for the asset.</p>
    #
    #   @return [String]
    #
    # @!attribute asset_details
    #   <p>Information about the asset.</p>
    #
    #   @return [AssetDetails]
    #
    # @!attribute asset_type
    #   <p>The type of asset that is added to a data set.</p>
    #
    #   Enum, one of: ["S3_SNAPSHOT", "REDSHIFT_DATA_SHARE", "API_GATEWAY_API"]
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The date and time that the asset was created, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    # @!attribute data_set_id
    #   <p>The unique identifier for the data set associated with this asset.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The unique identifier for the asset.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the asset. When importing from Amazon S3, the S3 object key is used as the asset name. When exporting to Amazon S3, the asset name is used as default target S3 object key. When importing from Amazon API Gateway API, the API name is used as the asset name. When importing from Amazon Redshift, the datashare name is used as the asset name.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_id
    #   <p>The unique identifier for the revision associated with this asset.</p>
    #
    #   @return [String]
    #
    # @!attribute source_id
    #   <p>The asset ID of the owned asset corresponding to the entitled asset being viewed. This parameter is returned when an asset owner is viewing the entitled copy of its owned asset.</p>
    #
    #   @return [String]
    #
    # @!attribute updated_at
    #   <p>The date and time that the asset was last updated, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    GetAssetOutput = ::Struct.new(
      :arn,
      :asset_details,
      :asset_type,
      :created_at,
      :data_set_id,
      :id,
      :name,
      :revision_id,
      :source_id,
      :updated_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute data_set_id
    #   <p>The unique identifier for a data set.</p>
    #
    #   @return [String]
    #
    GetDataSetInput = ::Struct.new(
      :data_set_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The ARN for the data set.</p>
    #
    #   @return [String]
    #
    # @!attribute asset_type
    #   <p>The type of asset that is added to a data set.</p>
    #
    #   Enum, one of: ["S3_SNAPSHOT", "REDSHIFT_DATA_SHARE", "API_GATEWAY_API"]
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The date and time that the data set was created, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    # @!attribute description
    #   <p>The description for the data set.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The unique identifier for the data set.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the data set.</p>
    #
    #   @return [String]
    #
    # @!attribute origin
    #   <p>A property that defines the data set as OWNED by the account (for providers) or ENTITLED to the account (for subscribers).</p>
    #
    #   Enum, one of: ["OWNED", "ENTITLED"]
    #
    #   @return [String]
    #
    # @!attribute origin_details
    #   <p>If the origin of this data set is ENTITLED, includes the details for the product on AWS Marketplace.</p>
    #
    #   @return [OriginDetails]
    #
    # @!attribute source_id
    #   <p>The data set ID of the owned data set corresponding to the entitled data set being viewed. This parameter is returned when a data set owner is viewing the entitled copy of its owned data set.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags for the data set.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute updated_at
    #   <p>The date and time that the data set was last updated, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    GetDataSetOutput = ::Struct.new(
      :arn,
      :asset_type,
      :created_at,
      :description,
      :id,
      :name,
      :origin,
      :origin_details,
      :source_id,
      :tags,
      :updated_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute event_action_id
    #   <p>The unique identifier for the event action.</p>
    #
    #   @return [String]
    #
    GetEventActionInput = ::Struct.new(
      :event_action_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute action
    #   <p>What occurs after a certain event.</p>
    #
    #   @return [Action]
    #
    # @!attribute arn
    #   <p>The ARN for the event action.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The date and time that the event action was created, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    # @!attribute event
    #   <p>What occurs to start an action.</p>
    #
    #   @return [Event]
    #
    # @!attribute id
    #   <p>The unique identifier for the event action.</p>
    #
    #   @return [String]
    #
    # @!attribute updated_at
    #   <p>The date and time that the event action was last updated, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    GetEventActionOutput = ::Struct.new(
      :action,
      :arn,
      :created_at,
      :event,
      :id,
      :updated_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The unique identifier for a job.</p>
    #
    #   @return [String]
    #
    GetJobInput = ::Struct.new(
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The ARN for the job.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The date and time that the job was created, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    # @!attribute details
    #   <p>Details about the job.</p>
    #
    #   @return [ResponseDetails]
    #
    # @!attribute errors
    #   <p>The errors associated with jobs.</p>
    #
    #   @return [Array<JobError>]
    #
    # @!attribute id
    #   <p>The unique identifier for the job.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the job.</p>
    #
    #   Enum, one of: ["WAITING", "IN_PROGRESS", "ERROR", "COMPLETED", "CANCELLED", "TIMED_OUT"]
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The job type.</p>
    #
    #   Enum, one of: ["IMPORT_ASSETS_FROM_S3", "IMPORT_ASSET_FROM_SIGNED_URL", "EXPORT_ASSETS_TO_S3", "EXPORT_ASSET_TO_SIGNED_URL", "EXPORT_REVISIONS_TO_S3", "IMPORT_ASSETS_FROM_REDSHIFT_DATA_SHARES", "IMPORT_ASSET_FROM_API_GATEWAY_API"]
    #
    #   @return [String]
    #
    # @!attribute updated_at
    #   <p>The date and time that the job was last updated, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    GetJobOutput = ::Struct.new(
      :arn,
      :created_at,
      :details,
      :errors,
      :id,
      :state,
      :type,
      :updated_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute data_set_id
    #   <p>The unique identifier for a data set.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_id
    #   <p>The unique identifier for a revision.</p>
    #
    #   @return [String]
    #
    GetRevisionInput = ::Struct.new(
      :data_set_id,
      :revision_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The ARN for the revision.</p>
    #
    #   @return [String]
    #
    # @!attribute comment
    #   <p>An optional comment about the revision.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The date and time that the revision was created, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    # @!attribute data_set_id
    #   <p>The unique identifier for the data set associated with this revision.</p>
    #
    #   @return [String]
    #
    # @!attribute finalized
    #   <p>To publish a revision to a data set in a product, the revision must first be finalized. Finalizing a revision tells AWS Data Exchange that your changes to the assets in the revision are complete. After it's in this read-only state, you can publish the revision to your products.</p> <p>Finalized revisions can be published through the AWS Data Exchange console or the AWS Marketplace Catalog API, using the StartChangeSet AWS Marketplace Catalog API action. When using the API, revisions are uniquely identified by their ARN.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute id
    #   <p>The unique identifier for the revision.</p>
    #
    #   @return [String]
    #
    # @!attribute source_id
    #   <p>The revision ID of the owned revision corresponding to the entitled revision being viewed. This parameter is returned when a revision owner is viewing the entitled copy of its owned revision.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags for the revision.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute updated_at
    #   <p>The date and time that the revision was last updated, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    # @!attribute revocation_comment
    #   <p>A required comment to inform subscribers of the reason their access to the revision was revoked.</p>
    #
    #   @return [String]
    #
    # @!attribute revoked
    #   <p>A status indicating that subscribers' access to the revision was revoked.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute revoked_at
    #   <p>The date and time that the revision was revoked, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    GetRevisionOutput = ::Struct.new(
      :arn,
      :comment,
      :created_at,
      :data_set_id,
      :finalized,
      :id,
      :source_id,
      :tags,
      :updated_at,
      :revocation_comment,
      :revoked,
      :revoked_at,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.finalized ||= false
        self.revoked ||= false
      end

    end

    # <p>The request details.</p>
    #
    # @!attribute api_description
    #   <p>The API description. Markdown supported.</p>
    #
    #   @return [String]
    #
    # @!attribute api_id
    #   <p>The API Gateway API ID.</p>
    #
    #   @return [String]
    #
    # @!attribute api_key
    #   <p>The API Gateway API key.</p>
    #
    #   @return [String]
    #
    # @!attribute api_name
    #   <p>The API name.</p>
    #
    #   @return [String]
    #
    # @!attribute api_specification_md5_hash
    #   <p>The Base64-encoded MD5 hash of the OpenAPI 3.0 JSON API specification file. It is used to ensure the integrity of the file.</p>
    #
    #   @return [String]
    #
    # @!attribute data_set_id
    #   <p>The data set ID.</p>
    #
    #   @return [String]
    #
    # @!attribute protocol_type
    #   <p>The protocol type.</p>
    #
    #   Enum, one of: ["REST"]
    #
    #   @return [String]
    #
    # @!attribute revision_id
    #   <p>The revision ID.</p>
    #
    #   @return [String]
    #
    # @!attribute stage
    #   <p>The API stage.</p>
    #
    #   @return [String]
    #
    ImportAssetFromApiGatewayApiRequestDetails = ::Struct.new(
      :api_description,
      :api_id,
      :api_key,
      :api_name,
      :api_specification_md5_hash,
      :data_set_id,
      :protocol_type,
      :revision_id,
      :stage,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The response details.</p>
    #
    # @!attribute api_description
    #   <p>The API description.</p>
    #
    #   @return [String]
    #
    # @!attribute api_id
    #   <p>The API ID.</p>
    #
    #   @return [String]
    #
    # @!attribute api_key
    #   <p>The API key.</p>
    #
    #   @return [String]
    #
    # @!attribute api_name
    #   <p>The API name.</p>
    #
    #   @return [String]
    #
    # @!attribute api_specification_md5_hash
    #   <p>The Base64-encoded Md5 hash for the API asset, used to ensure the integrity of the API at that location.</p>
    #
    #   @return [String]
    #
    # @!attribute api_specification_upload_url
    #   <p>The upload URL of the API specification.</p>
    #
    #   @return [String]
    #
    # @!attribute api_specification_upload_url_expires_at
    #   <p>The date and time that the upload URL expires, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    # @!attribute data_set_id
    #   <p>The data set ID.</p>
    #
    #   @return [String]
    #
    # @!attribute protocol_type
    #   <p>The protocol type.</p>
    #
    #   Enum, one of: ["REST"]
    #
    #   @return [String]
    #
    # @!attribute revision_id
    #   <p>The revision ID.</p>
    #
    #   @return [String]
    #
    # @!attribute stage
    #   <p>The API stage.</p>
    #
    #   @return [String]
    #
    ImportAssetFromApiGatewayApiResponseDetails = ::Struct.new(
      :api_description,
      :api_id,
      :api_key,
      :api_name,
      :api_specification_md5_hash,
      :api_specification_upload_url,
      :api_specification_upload_url_expires_at,
      :data_set_id,
      :protocol_type,
      :revision_id,
      :stage,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the job error.</p>
    #
    # @!attribute asset_name
    #   <p>Information about the job error.</p>
    #
    #   @return [String]
    #
    ImportAssetFromSignedUrlJobErrorDetails = ::Struct.new(
      :asset_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details of the operation to be performed by the job.</p>
    #
    # @!attribute asset_name
    #   <p>The name of the asset. When importing from Amazon S3, the S3 object key is used as the asset name.</p>
    #
    #   @return [String]
    #
    # @!attribute data_set_id
    #   <p>The unique identifier for the data set associated with this import job.</p>
    #
    #   @return [String]
    #
    # @!attribute md5_hash
    #   <p>The Base64-encoded Md5 hash for the asset, used to ensure the integrity of the file at that location.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_id
    #   <p>The unique identifier for the revision associated with this import request.</p>
    #
    #   @return [String]
    #
    ImportAssetFromSignedUrlRequestDetails = ::Struct.new(
      :asset_name,
      :data_set_id,
      :md5_hash,
      :revision_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The details in the response for an import request, including the signed URL and other information.</p>
    #
    # @!attribute asset_name
    #   <p>The name for the asset associated with this import job.</p>
    #
    #   @return [String]
    #
    # @!attribute data_set_id
    #   <p>The unique identifier for the data set associated with this import job.</p>
    #
    #   @return [String]
    #
    # @!attribute md5_hash
    #   <p>The Base64-encoded Md5 hash for the asset, used to ensure the integrity of the file at that location.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_id
    #   <p>The unique identifier for the revision associated with this import response.</p>
    #
    #   @return [String]
    #
    # @!attribute signed_url
    #   <p>The signed URL.</p>
    #
    #   @return [String]
    #
    # @!attribute signed_url_expires_at
    #   <p>The time and date at which the signed URL expires, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    ImportAssetFromSignedUrlResponseDetails = ::Struct.new(
      :asset_name,
      :data_set_id,
      :md5_hash,
      :revision_id,
      :signed_url,
      :signed_url_expires_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Details from an import from Amazon Redshift datashare request.
    #
    # @!attribute asset_sources
    #   A list of Amazon Redshift datashare assets.
    #
    #   @return [Array<RedshiftDataShareAssetSourceEntry>]
    #
    # @!attribute data_set_id
    #   The unique identifier for the data set associated with this import job.
    #
    #   @return [String]
    #
    # @!attribute revision_id
    #   The unique identifier for the revision associated with this import job.
    #
    #   @return [String]
    #
    ImportAssetsFromRedshiftDataSharesRequestDetails = ::Struct.new(
      :asset_sources,
      :data_set_id,
      :revision_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Details from an import from Amazon Redshift datashare response.
    #
    # @!attribute asset_sources
    #   A list of Amazon Redshift datashare asset sources.
    #
    #   @return [Array<RedshiftDataShareAssetSourceEntry>]
    #
    # @!attribute data_set_id
    #   The unique identifier for the data set associated with this import job.
    #
    #   @return [String]
    #
    # @!attribute revision_id
    #   The unique identifier for the revision associated with this import job.
    #
    #   @return [String]
    #
    ImportAssetsFromRedshiftDataSharesResponseDetails = ::Struct.new(
      :asset_sources,
      :data_set_id,
      :revision_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details of the operation to be performed by the job.</p>
    #
    # @!attribute asset_sources
    #   <p>Is a list of S3 bucket and object key pairs.</p>
    #
    #   @return [Array<AssetSourceEntry>]
    #
    # @!attribute data_set_id
    #   <p>The unique identifier for the data set associated with this import job.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_id
    #   <p>The unique identifier for the revision associated with this import request.</p>
    #
    #   @return [String]
    #
    ImportAssetsFromS3RequestDetails = ::Struct.new(
      :asset_sources,
      :data_set_id,
      :revision_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details from an import from Amazon S3 response.</p>
    #
    # @!attribute asset_sources
    #   <p>Is a list of Amazon S3 bucket and object key pairs.</p>
    #
    #   @return [Array<AssetSourceEntry>]
    #
    # @!attribute data_set_id
    #   <p>The unique identifier for the data set associated with this import job.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_id
    #   <p>The unique identifier for the revision associated with this import response.</p>
    #
    #   @return [String]
    #
    ImportAssetsFromS3ResponseDetails = ::Struct.new(
      :asset_sources,
      :data_set_id,
      :revision_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # An exception occurred with the service.
    #
    # @!attribute message
    #   The message identifying the service exception that occurred.
    #
    #   @return [String]
    #
    InternalServerException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # AWS Data Exchange Jobs are asynchronous import or export operations used to create or copy assets. A data set owner can both import and export as they see fit. Someone with an entitlement to a data set can only export. Jobs are deleted 90 days after they are created.
    #
    # @!attribute arn
    #   <p>The ARN for the job.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The date and time that the job was created, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    # @!attribute details
    #   <p>Details of the operation to be performed by the job, such as export destination details or import source details.</p>
    #
    #   @return [ResponseDetails]
    #
    # @!attribute errors
    #   <p>Errors for jobs.</p>
    #
    #   @return [Array<JobError>]
    #
    # @!attribute id
    #   <p>The unique identifier for the job.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the job.</p>
    #
    #   Enum, one of: ["WAITING", "IN_PROGRESS", "ERROR", "COMPLETED", "CANCELLED", "TIMED_OUT"]
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The job type.</p>
    #
    #   Enum, one of: ["IMPORT_ASSETS_FROM_S3", "IMPORT_ASSET_FROM_SIGNED_URL", "EXPORT_ASSETS_TO_S3", "EXPORT_ASSET_TO_SIGNED_URL", "EXPORT_REVISIONS_TO_S3", "IMPORT_ASSETS_FROM_REDSHIFT_DATA_SHARES", "IMPORT_ASSET_FROM_API_GATEWAY_API"]
    #
    #   @return [String]
    #
    # @!attribute updated_at
    #   <p>The date and time that the job was last updated, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    JobEntry = ::Struct.new(
      :arn,
      :created_at,
      :details,
      :errors,
      :id,
      :state,
      :type,
      :updated_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # An error that occurred with the job request.
    #
    # @!attribute code
    #   The code for the job error.
    #
    #   Enum, one of: ["ACCESS_DENIED_EXCEPTION", "INTERNAL_SERVER_EXCEPTION", "MALWARE_DETECTED", "RESOURCE_NOT_FOUND_EXCEPTION", "SERVICE_QUOTA_EXCEEDED_EXCEPTION", "VALIDATION_EXCEPTION", "MALWARE_SCAN_ENCRYPTED_FILE"]
    #
    #   @return [String]
    #
    # @!attribute details
    #   <p>The details about the job error.</p>
    #
    #   @return [Details]
    #
    # @!attribute limit_name
    #   <p>The name of the limit that was reached.</p>
    #
    #   Enum, one of: ["Assets per revision", "Asset size in GB", "Amazon Redshift datashare assets per revision"]
    #
    #   @return [String]
    #
    # @!attribute limit_value
    #   The value of the exceeded limit.
    #
    #   @return [Float]
    #
    # @!attribute message
    #   The message related to the job error.
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   The unique identifier for the resource related to the error.
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   The type of resource related to the error.
    #
    #   Enum, one of: ["REVISION", "ASSET", "DATA_SET"]
    #
    #   @return [String]
    #
    JobError = ::Struct.new(
      :code,
      :details,
      :limit_name,
      :limit_value,
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.limit_value ||= 0
      end

    end

    # Includes enum constants for JobErrorLimitName
    #
    module JobErrorLimitName
      # No documentation available.
      #
      Assets_per_revision = "Assets per revision"

      # No documentation available.
      #
      Asset_size_in_GB = "Asset size in GB"

      # No documentation available.
      #
      Amazon_Redshift_datashare_assets_per_revision = "Amazon Redshift datashare assets per revision"
    end

    # Includes enum constants for JobErrorResourceTypes
    #
    module JobErrorResourceTypes
      # No documentation available.
      #
      REVISION = "REVISION"

      # No documentation available.
      #
      ASSET = "ASSET"

      # No documentation available.
      #
      DATA_SET = "DATA_SET"
    end

    # Includes enum constants for LimitName
    #
    module LimitName
      # No documentation available.
      #
      Products_per_account = "Products per account"

      # No documentation available.
      #
      Data_sets_per_account = "Data sets per account"

      # No documentation available.
      #
      Data_sets_per_product = "Data sets per product"

      # No documentation available.
      #
      Revisions_per_data_set = "Revisions per data set"

      # No documentation available.
      #
      Assets_per_revision = "Assets per revision"

      # No documentation available.
      #
      Assets_per_import_job_from_Amazon_S3 = "Assets per import job from Amazon S3"

      # No documentation available.
      #
      Asset_per_export_job_from_Amazon_S3 = "Asset per export job from Amazon S3"

      # No documentation available.
      #
      Asset_size_in_GB = "Asset size in GB"

      # No documentation available.
      #
      Concurrent_in_progress_jobs_to_export_assets_to_Amazon_S3 = "Concurrent in progress jobs to export assets to Amazon S3"

      # No documentation available.
      #
      Concurrent_in_progress_jobs_to_export_assets_to_a_signed_URL = "Concurrent in progress jobs to export assets to a signed URL"

      # No documentation available.
      #
      Concurrent_in_progress_jobs_to_import_assets_from_Amazon_S3 = "Concurrent in progress jobs to import assets from Amazon S3"

      # No documentation available.
      #
      Concurrent_in_progress_jobs_to_import_assets_from_a_signed_URL = "Concurrent in progress jobs to import assets from a signed URL"

      # No documentation available.
      #
      Concurrent_in_progress_jobs_to_export_revisions_to_Amazon_S3 = "Concurrent in progress jobs to export revisions to Amazon S3"

      # No documentation available.
      #
      Event_actions_per_account = "Event actions per account"

      # No documentation available.
      #
      Auto_export_event_actions_per_data_set = "Auto export event actions per data set"

      # No documentation available.
      #
      Amazon_Redshift_datashare_assets_per_import_job_from_Redshift = "Amazon Redshift datashare assets per import job from Redshift"

      # No documentation available.
      #
      Concurrent_in_progress_jobs_to_import_assets_from_Amazon_Redshift_datashares = "Concurrent in progress jobs to import assets from Amazon Redshift datashares"

      # No documentation available.
      #
      Revisions_per_Amazon_Redshift_datashare_data_set = "Revisions per Amazon Redshift datashare data set"

      # No documentation available.
      #
      Amazon_Redshift_datashare_assets_per_revision = "Amazon Redshift datashare assets per revision"

      # No documentation available.
      #
      Concurrent_in_progress_jobs_to_import_assets_from_an_API_Gateway_API = "Concurrent in progress jobs to import assets from an API Gateway API"

      # No documentation available.
      #
      Amazon_API_Gateway_API_assets_per_revision = "Amazon API Gateway API assets per revision"

      # No documentation available.
      #
      Revisions_per_Amazon_API_Gateway_API_data_set = "Revisions per Amazon API Gateway API data set"
    end

    # @!attribute data_set_id
    #   <p>The unique identifier for a data set.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results returned by a single call.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token value retrieved from a previous call to access the next page of results.</p>
    #
    #   @return [String]
    #
    ListDataSetRevisionsInput = ::Struct.new(
      :data_set_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_results ||= 0
      end

    end

    # @!attribute next_token
    #   <p>The token value retrieved from a previous call to access the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute revisions
    #   <p>The asset objects listed by the request.</p>
    #
    #   @return [Array<RevisionEntry>]
    #
    ListDataSetRevisionsOutput = ::Struct.new(
      :next_token,
      :revisions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results returned by a single call.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token value retrieved from a previous call to access the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute origin
    #   <p>A property that defines the data set as OWNED by the account (for providers) or ENTITLED to the account (for subscribers).</p>
    #
    #   @return [String]
    #
    ListDataSetsInput = ::Struct.new(
      :max_results,
      :next_token,
      :origin,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_results ||= 0
      end

    end

    # @!attribute data_sets
    #   <p>The data set objects listed by the request.</p>
    #
    #   @return [Array<DataSetEntry>]
    #
    # @!attribute next_token
    #   <p>The token value retrieved from a previous call to access the next page of results.</p>
    #
    #   @return [String]
    #
    ListDataSetsOutput = ::Struct.new(
      :data_sets,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute event_source_id
    #   <p>The unique identifier for the event source.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results returned by a single call.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token value retrieved from a previous call to access the next page of results.</p>
    #
    #   @return [String]
    #
    ListEventActionsInput = ::Struct.new(
      :event_source_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_results ||= 0
      end

    end

    # @!attribute event_actions
    #   <p>The event action objects listed by the request.</p>
    #
    #   @return [Array<EventActionEntry>]
    #
    # @!attribute next_token
    #   <p>The token value retrieved from a previous call to access the next page of results.</p>
    #
    #   @return [String]
    #
    ListEventActionsOutput = ::Struct.new(
      :event_actions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute data_set_id
    #   <p>The unique identifier for a data set.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results returned by a single call.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token value retrieved from a previous call to access the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_id
    #   <p>The unique identifier for a revision.</p>
    #
    #   @return [String]
    #
    ListJobsInput = ::Struct.new(
      :data_set_id,
      :max_results,
      :next_token,
      :revision_id,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_results ||= 0
      end

    end

    # @!attribute jobs
    #   <p>The jobs listed by the request.</p>
    #
    #   @return [Array<JobEntry>]
    #
    # @!attribute next_token
    #   <p>The token value retrieved from a previous call to access the next page of results.</p>
    #
    #   @return [String]
    #
    ListJobsOutput = ::Struct.new(
      :jobs,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute data_set_id
    #   <p>The unique identifier for a data set.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results returned by a single call.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token value retrieved from a previous call to access the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_id
    #   <p>The unique identifier for a revision.</p>
    #
    #   @return [String]
    #
    ListRevisionAssetsInput = ::Struct.new(
      :data_set_id,
      :max_results,
      :next_token,
      :revision_id,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_results ||= 0
      end

    end

    # @!attribute assets
    #   <p>The asset objects listed by the request.</p>
    #
    #   @return [Array<AssetEntry>]
    #
    # @!attribute next_token
    #   <p>The token value retrieved from a previous call to access the next page of results.</p>
    #
    #   @return [String]
    #
    ListRevisionAssetsOutput = ::Struct.new(
      :assets,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies an AWS resource.</p>
    #
    #   @return [String]
    #
    ListTagsForResourceInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tags
    #   A label that consists of a customer-defined key and an optional value.
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Origin
    #
    module Origin
      # No documentation available.
      #
      OWNED = "OWNED"

      # No documentation available.
      #
      ENTITLED = "ENTITLED"
    end

    # <p>Information about the origin of the data set.</p>
    #
    # @!attribute product_id
    #   <p>The product ID of the origin of the data set.</p>
    #
    #   @return [String]
    #
    OriginDetails = ::Struct.new(
      :product_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ProtocolType
    #
    module ProtocolType
      # No documentation available.
      #
      REST = "REST"
    end

    # The Amazon Redshift datashare asset.
    #
    # @!attribute arn
    #   The Amazon Resource Name (ARN) of the datashare asset.
    #
    #   @return [String]
    #
    RedshiftDataShareAsset = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The source of the Amazon Redshift datashare asset.</p>
    #
    # @!attribute data_share_arn
    #   The Amazon Resource Name (ARN) of the datashare asset.
    #
    #   @return [String]
    #
    RedshiftDataShareAssetSourceEntry = ::Struct.new(
      :data_share_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The details for the request.</p>
    #
    # @!attribute export_asset_to_signed_url
    #   <p>Details about the export to signed URL request.</p>
    #
    #   @return [ExportAssetToSignedUrlRequestDetails]
    #
    # @!attribute export_assets_to_s3
    #   <p>Details about the export to Amazon S3 request.</p>
    #
    #   @return [ExportAssetsToS3RequestDetails]
    #
    # @!attribute export_revisions_to_s3
    #   <p>Details about the export to Amazon S3 request.</p>
    #
    #   @return [ExportRevisionsToS3RequestDetails]
    #
    # @!attribute import_asset_from_signed_url
    #   <p>Details about the import from signed URL request.</p>
    #
    #   @return [ImportAssetFromSignedUrlRequestDetails]
    #
    # @!attribute import_assets_from_s3
    #   <p>Details about the import from Amazon S3 request.</p>
    #
    #   @return [ImportAssetsFromS3RequestDetails]
    #
    # @!attribute import_assets_from_redshift_data_shares
    #   <p>Details from an import from Amazon Redshift datashare request.</p>
    #
    #   @return [ImportAssetsFromRedshiftDataSharesRequestDetails]
    #
    # @!attribute import_asset_from_api_gateway_api
    #   <p>Information about the import asset from API Gateway API request.</p>
    #
    #   @return [ImportAssetFromApiGatewayApiRequestDetails]
    #
    RequestDetails = ::Struct.new(
      :export_asset_to_signed_url,
      :export_assets_to_s3,
      :export_revisions_to_s3,
      :import_asset_from_signed_url,
      :import_assets_from_s3,
      :import_assets_from_redshift_data_shares,
      :import_asset_from_api_gateway_api,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The resource couldn't be found.</p>
    #
    # @!attribute message
    #   <p>The resource couldn't be found.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The unique identifier for the resource that couldn't be found.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of resource that couldn't be found.</p>
    #
    #   Enum, one of: ["DATA_SET", "REVISION", "ASSET", "JOB", "EVENT_ACTION"]
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ResourceType
    #
    module ResourceType
      # No documentation available.
      #
      DATA_SET = "DATA_SET"

      # No documentation available.
      #
      REVISION = "REVISION"

      # No documentation available.
      #
      ASSET = "ASSET"

      # No documentation available.
      #
      JOB = "JOB"

      # No documentation available.
      #
      EVENT_ACTION = "EVENT_ACTION"
    end

    # <p>Details for the response.</p>
    #
    # @!attribute export_asset_to_signed_url
    #   <p>Details for the export to signed URL response.</p>
    #
    #   @return [ExportAssetToSignedUrlResponseDetails]
    #
    # @!attribute export_assets_to_s3
    #   <p>Details for the export to Amazon S3 response.</p>
    #
    #   @return [ExportAssetsToS3ResponseDetails]
    #
    # @!attribute export_revisions_to_s3
    #   <p>Details for the export revisions to Amazon S3 response.</p>
    #
    #   @return [ExportRevisionsToS3ResponseDetails]
    #
    # @!attribute import_asset_from_signed_url
    #   <p>Details for the import from signed URL response.</p>
    #
    #   @return [ImportAssetFromSignedUrlResponseDetails]
    #
    # @!attribute import_assets_from_s3
    #   <p>Details for the import from Amazon S3 response.</p>
    #
    #   @return [ImportAssetsFromS3ResponseDetails]
    #
    # @!attribute import_assets_from_redshift_data_shares
    #   <p>Details from an import from Amazon Redshift datashare response.</p>
    #
    #   @return [ImportAssetsFromRedshiftDataSharesResponseDetails]
    #
    # @!attribute import_asset_from_api_gateway_api
    #   <p>The response details.</p>
    #
    #   @return [ImportAssetFromApiGatewayApiResponseDetails]
    #
    ResponseDetails = ::Struct.new(
      :export_asset_to_signed_url,
      :export_assets_to_s3,
      :export_revisions_to_s3,
      :import_asset_from_signed_url,
      :import_assets_from_s3,
      :import_assets_from_redshift_data_shares,
      :import_asset_from_api_gateway_api,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The destination where the assets in the revision will be exported.</p>
    #
    # @!attribute bucket
    #   <p>The S3 bucket that is the destination for the assets in the revision.</p>
    #
    #   @return [String]
    #
    # @!attribute key_pattern
    #   <p>A string representing the pattern for generated names of the individual assets in the revision. For more information about key patterns, see <a href="https://docs.aws.amazon.com/data-exchange/latest/userguide/jobs.html revision-export-keypatterns">Key patterns when exporting revisions</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_id
    #   <p>The unique identifier for the revision.</p>
    #
    #   @return [String]
    #
    RevisionDestinationEntry = ::Struct.new(
      :bucket,
      :key_pattern,
      :revision_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A revision is a container for one or more assets.</p>
    #
    # @!attribute arn
    #   <p>The ARN for the revision.</p>
    #
    #   @return [String]
    #
    # @!attribute comment
    #   <p>An optional comment about the revision.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The date and time that the revision was created, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    # @!attribute data_set_id
    #   <p>The unique identifier for the data set associated with this revision.</p>
    #
    #   @return [String]
    #
    # @!attribute finalized
    #   <p>To publish a revision to a data set in a product, the revision must first be finalized. Finalizing a revision tells AWS Data Exchange that your changes to the assets in the revision are complete. After it's in this read-only state, you can publish the revision to your products.</p> <p>Finalized revisions can be published through the AWS Data Exchange console or the AWS Marketplace Catalog API, using the StartChangeSet AWS Marketplace Catalog API action. When using the API, revisions are uniquely identified by their ARN.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute id
    #   <p>The unique identifier for the revision.</p>
    #
    #   @return [String]
    #
    # @!attribute source_id
    #   <p>The revision ID of the owned revision corresponding to the entitled revision being viewed. This parameter is returned when a revision owner is viewing the entitled copy of its owned revision.</p>
    #
    #   @return [String]
    #
    # @!attribute updated_at
    #   <p>The date and time that the revision was last updated, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    # @!attribute revocation_comment
    #   <p>A required comment to inform subscribers of the reason their access to the revision was revoked.</p>
    #
    #   @return [String]
    #
    # @!attribute revoked
    #   <p>A status indicating that subscribers' access to the revision was revoked.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute revoked_at
    #   <p>The date and time that the revision was revoked, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    RevisionEntry = ::Struct.new(
      :arn,
      :comment,
      :created_at,
      :data_set_id,
      :finalized,
      :id,
      :source_id,
      :updated_at,
      :revocation_comment,
      :revoked,
      :revoked_at,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.finalized ||= false
        self.revoked ||= false
      end

    end

    # <p>Information about the published revision.</p>
    #
    # @!attribute data_set_id
    #   <p>The data set ID of the published revision.</p>
    #
    #   @return [String]
    #
    RevisionPublished = ::Struct.new(
      :data_set_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request body for RevokeRevision.</p>
    #
    # @!attribute data_set_id
    #   <p>The unique identifier for a data set.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_id
    #   <p>The unique identifier for a revision.</p>
    #
    #   @return [String]
    #
    # @!attribute revocation_comment
    #   <p>A required comment to inform subscribers of the reason their access to the revision was revoked.</p>
    #
    #   @return [String]
    #
    RevokeRevisionInput = ::Struct.new(
      :data_set_id,
      :revision_id,
      :revocation_comment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The ARN for the revision.</p>
    #
    #   @return [String]
    #
    # @!attribute comment
    #   <p>An optional comment about the revision.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The date and time that the revision was created, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    # @!attribute data_set_id
    #   <p>The unique identifier for the data set associated with this revision.</p>
    #
    #   @return [String]
    #
    # @!attribute finalized
    #   <p>To publish a revision to a data set in a product, the revision must first be finalized. Finalizing a revision tells AWS Data Exchange that changes to the assets in the revision are complete. After it's in this read-only state, you can publish the revision to your products.</p> <p>Finalized revisions can be published through the AWS Data Exchange console or the AWS Marketplace Catalog API, using the StartChangeSet AWS Marketplace Catalog API action. When using the API, revisions are uniquely identified by their ARN.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute id
    #   <p>The unique identifier for the revision.</p>
    #
    #   @return [String]
    #
    # @!attribute source_id
    #   <p>The revision ID of the owned revision corresponding to the entitled revision being viewed. This parameter is returned when a revision owner is viewing the entitled copy of its owned revision.</p>
    #
    #   @return [String]
    #
    # @!attribute updated_at
    #   <p>The date and time that the revision was last updated, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    # @!attribute revocation_comment
    #   <p>A required comment to inform subscribers of the reason their access to the revision was revoked.</p>
    #
    #   @return [String]
    #
    # @!attribute revoked
    #   <p>A status indicating that subscribers' access to the revision was revoked.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute revoked_at
    #   <p>The date and time that the revision was revoked, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    RevokeRevisionOutput = ::Struct.new(
      :arn,
      :comment,
      :created_at,
      :data_set_id,
      :finalized,
      :id,
      :source_id,
      :updated_at,
      :revocation_comment,
      :revoked,
      :revoked_at,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.finalized ||= false
        self.revoked ||= false
      end

    end

    # <p>The S3 object that is the asset.</p>
    #
    # @!attribute size
    #   <p>The size of the S3 object that is the object.</p>
    #
    #   @return [Float]
    #
    S3SnapshotAsset = ::Struct.new(
      :size,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.size ||= 0
      end

    end

    # <p>The request body for SendApiAsset.</p>
    #
    # @!attribute body
    #   <p>The request body.</p>
    #
    #   @return [String]
    #
    # @!attribute query_string_parameters
    #   <p>Attach query string parameters to the end of the URI (for example, /v1/examplePath?exampleParam=exampleValue).</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute asset_id
    #   <p>Asset ID value for the API request.</p>
    #
    #   @return [String]
    #
    # @!attribute data_set_id
    #   <p>Data set ID value for the API request.</p>
    #
    #   @return [String]
    #
    # @!attribute request_headers
    #   <p>Any header value prefixed with x-amzn-dataexchange-header- will have that stripped before sending the Asset API request. Use this when you want to override a header that AWS Data Exchange uses. Alternatively, you can use the header without a prefix to the HTTP request.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute member_method
    #   <p>HTTP method value for the API request. Alternatively, you can use the appropriate verb in your request.</p>
    #
    #   @return [String]
    #
    # @!attribute path
    #   <p>URI path value for the API request. Alternatively, you can set the URI path directly by invoking /v1/{pathValue}</p>
    #
    #   @return [String]
    #
    # @!attribute revision_id
    #   <p>Revision ID value for the API request.</p>
    #
    #   @return [String]
    #
    SendApiAssetInput = ::Struct.new(
      :body,
      :query_string_parameters,
      :asset_id,
      :data_set_id,
      :request_headers,
      :member_method,
      :path,
      :revision_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute body
    #   <p>The response body from the underlying API tracked by the API asset.</p>
    #
    #   @return [String]
    #
    # @!attribute response_headers
    #   <p>The response headers from the underlying API tracked by the API asset.</p>
    #
    #   @return [Hash<String, String>]
    #
    SendApiAssetOutput = ::Struct.new(
      :body,
      :response_headers,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ServerSideEncryptionTypes
    #
    module ServerSideEncryptionTypes
      # No documentation available.
      #
      aws_kms = "aws:kms"

      # No documentation available.
      #
      AES256 = "AES256"
    end

    # <p>The request has exceeded the quotas imposed by the service.</p>
    #
    # @!attribute limit_name
    #   <p>The name of the quota that was exceeded.</p>
    #
    #   Enum, one of: ["Products per account", "Data sets per account", "Data sets per product", "Revisions per data set", "Assets per revision", "Assets per import job from Amazon S3", "Asset per export job from Amazon S3", "Asset size in GB", "Concurrent in progress jobs to export assets to Amazon S3", "Concurrent in progress jobs to export assets to a signed URL", "Concurrent in progress jobs to import assets from Amazon S3", "Concurrent in progress jobs to import assets from a signed URL", "Concurrent in progress jobs to export revisions to Amazon S3", "Event actions per account", "Auto export event actions per data set", "Amazon Redshift datashare assets per import job from Redshift", "Concurrent in progress jobs to import assets from Amazon Redshift datashares", "Revisions per Amazon Redshift datashare data set", "Amazon Redshift datashare assets per revision", "Concurrent in progress jobs to import assets from an API Gateway API", "Amazon API Gateway API assets per revision", "Revisions per Amazon API Gateway API data set"]
    #
    #   @return [String]
    #
    # @!attribute limit_value
    #   <p>The maximum value for the service-specific limit.</p>
    #
    #   @return [Float]
    #
    # @!attribute message
    #   <p>The request has exceeded the quotas imposed by the service.</p>
    #
    #   @return [String]
    #
    ServiceLimitExceededException = ::Struct.new(
      :limit_name,
      :limit_value,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.limit_value ||= 0
      end

    end

    # @!attribute job_id
    #   <p>The unique identifier for a job.</p>
    #
    #   @return [String]
    #
    StartJobInput = ::Struct.new(
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    StartJobOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for State
    #
    module State
      # No documentation available.
      #
      WAITING = "WAITING"

      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      ERROR = "ERROR"

      # No documentation available.
      #
      COMPLETED = "COMPLETED"

      # No documentation available.
      #
      CANCELLED = "CANCELLED"

      # No documentation available.
      #
      TIMED_OUT = "TIMED_OUT"
    end

    # <p>The request body for TagResource.</p>
    #
    # @!attribute resource_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies an AWS resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   A label that consists of a customer-defined key and an optional value.
    #
    #   @return [Hash<String, String>]
    #
    TagResourceInput = ::Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    TagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The limit on the number of requests per second was exceeded.</p>
    #
    # @!attribute message
    #   <p>The limit on the number of requests per second was exceeded.</p>
    #
    #   @return [String]
    #
    ThrottlingException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Type
    #
    module Type
      # No documentation available.
      #
      IMPORT_ASSETS_FROM_S3 = "IMPORT_ASSETS_FROM_S3"

      # No documentation available.
      #
      IMPORT_ASSET_FROM_SIGNED_URL = "IMPORT_ASSET_FROM_SIGNED_URL"

      # No documentation available.
      #
      EXPORT_ASSETS_TO_S3 = "EXPORT_ASSETS_TO_S3"

      # No documentation available.
      #
      EXPORT_ASSET_TO_SIGNED_URL = "EXPORT_ASSET_TO_SIGNED_URL"

      # No documentation available.
      #
      EXPORT_REVISIONS_TO_S3 = "EXPORT_REVISIONS_TO_S3"

      # No documentation available.
      #
      IMPORT_ASSETS_FROM_REDSHIFT_DATA_SHARES = "IMPORT_ASSETS_FROM_REDSHIFT_DATA_SHARES"

      # No documentation available.
      #
      IMPORT_ASSET_FROM_API_GATEWAY_API = "IMPORT_ASSET_FROM_API_GATEWAY_API"
    end

    # @!attribute resource_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies an AWS resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   The key tags.
    #
    #   @return [Array<String>]
    #
    UntagResourceInput = ::Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UntagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request body for UpdateAsset.</p>
    #
    # @!attribute asset_id
    #   <p>The unique identifier for an asset.</p>
    #
    #   @return [String]
    #
    # @!attribute data_set_id
    #   <p>The unique identifier for a data set.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the asset. When importing from Amazon S3, the S3 object key is used as the asset name. When exporting to Amazon S3, the asset name is used as default target S3 object key. When importing from Amazon API Gateway API, the API name is used as the asset name. When importing from Amazon Redshift, the datashare name is used as the asset name.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_id
    #   <p>The unique identifier for a revision.</p>
    #
    #   @return [String]
    #
    UpdateAssetInput = ::Struct.new(
      :asset_id,
      :data_set_id,
      :name,
      :revision_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The ARN for the asset.</p>
    #
    #   @return [String]
    #
    # @!attribute asset_details
    #   <p>Information about the asset.</p>
    #
    #   @return [AssetDetails]
    #
    # @!attribute asset_type
    #   <p>The type of asset that is added to a data set.</p>
    #
    #   Enum, one of: ["S3_SNAPSHOT", "REDSHIFT_DATA_SHARE", "API_GATEWAY_API"]
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The date and time that the asset was created, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    # @!attribute data_set_id
    #   <p>The unique identifier for the data set associated with this asset.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The unique identifier for the asset.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the asset. When importing from Amazon S3, the S3 object key is used as the asset name. When exporting to Amazon S3, the asset name is used as default target S3 object key. When importing from Amazon API Gateway API, the API name is used as the asset name. When importing from Amazon Redshift, the datashare name is used as the asset name.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_id
    #   <p>The unique identifier for the revision associated with this asset.</p>
    #
    #   @return [String]
    #
    # @!attribute source_id
    #   <p>The asset ID of the owned asset corresponding to the entitled asset being viewed. This parameter is returned when an asset owner is viewing the entitled copy of its owned asset.</p>
    #
    #   @return [String]
    #
    # @!attribute updated_at
    #   <p>The date and time that the asset was last updated, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    UpdateAssetOutput = ::Struct.new(
      :arn,
      :asset_details,
      :asset_type,
      :created_at,
      :data_set_id,
      :id,
      :name,
      :revision_id,
      :source_id,
      :updated_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request body for UpdateDataSet.</p>
    #
    # @!attribute data_set_id
    #   <p>The unique identifier for a data set.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description for the data set.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the data set.</p>
    #
    #   @return [String]
    #
    UpdateDataSetInput = ::Struct.new(
      :data_set_id,
      :description,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The ARN for the data set.</p>
    #
    #   @return [String]
    #
    # @!attribute asset_type
    #   <p>The type of asset that is added to a data set.</p>
    #
    #   Enum, one of: ["S3_SNAPSHOT", "REDSHIFT_DATA_SHARE", "API_GATEWAY_API"]
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The date and time that the data set was created, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    # @!attribute description
    #   <p>The description for the data set.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The unique identifier for the data set.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the data set.</p>
    #
    #   @return [String]
    #
    # @!attribute origin
    #   <p>A property that defines the data set as OWNED by the account (for providers) or ENTITLED to the account (for subscribers).</p>
    #
    #   Enum, one of: ["OWNED", "ENTITLED"]
    #
    #   @return [String]
    #
    # @!attribute origin_details
    #   <p>If the origin of this data set is ENTITLED, includes the details for the product on AWS Marketplace.</p>
    #
    #   @return [OriginDetails]
    #
    # @!attribute source_id
    #   <p>The data set ID of the owned data set corresponding to the entitled data set being viewed. This parameter is returned when a data set owner is viewing the entitled copy of its owned data set.</p>
    #
    #   @return [String]
    #
    # @!attribute updated_at
    #   <p>The date and time that the data set was last updated, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    UpdateDataSetOutput = ::Struct.new(
      :arn,
      :asset_type,
      :created_at,
      :description,
      :id,
      :name,
      :origin,
      :origin_details,
      :source_id,
      :updated_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request body for UpdateEventAction.</p>
    #
    # @!attribute action
    #   <p>What occurs after a certain event.</p>
    #
    #   @return [Action]
    #
    # @!attribute event_action_id
    #   <p>The unique identifier for the event action.</p>
    #
    #   @return [String]
    #
    UpdateEventActionInput = ::Struct.new(
      :action,
      :event_action_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute action
    #   <p>What occurs after a certain event.</p>
    #
    #   @return [Action]
    #
    # @!attribute arn
    #   <p>The ARN for the event action.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The date and time that the event action was created, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    # @!attribute event
    #   <p>What occurs to start an action.</p>
    #
    #   @return [Event]
    #
    # @!attribute id
    #   <p>The unique identifier for the event action.</p>
    #
    #   @return [String]
    #
    # @!attribute updated_at
    #   <p>The date and time that the event action was last updated, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    UpdateEventActionOutput = ::Struct.new(
      :action,
      :arn,
      :created_at,
      :event,
      :id,
      :updated_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request body for UpdateRevision.</p>
    #
    # @!attribute comment
    #   <p>An optional comment about the revision.</p>
    #
    #   @return [String]
    #
    # @!attribute data_set_id
    #   <p>The unique identifier for a data set.</p>
    #
    #   @return [String]
    #
    # @!attribute finalized
    #   <p>Finalizing a revision tells AWS Data Exchange that your changes to the assets in the revision are complete. After it's in this read-only state, you can publish the revision to your products.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute revision_id
    #   <p>The unique identifier for a revision.</p>
    #
    #   @return [String]
    #
    UpdateRevisionInput = ::Struct.new(
      :comment,
      :data_set_id,
      :finalized,
      :revision_id,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.finalized ||= false
      end

    end

    # @!attribute arn
    #   <p>The ARN for the revision.</p>
    #
    #   @return [String]
    #
    # @!attribute comment
    #   <p>An optional comment about the revision.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The date and time that the revision was created, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    # @!attribute data_set_id
    #   <p>The unique identifier for the data set associated with this revision.</p>
    #
    #   @return [String]
    #
    # @!attribute finalized
    #   <p>To publish a revision to a data set in a product, the revision must first be finalized. Finalizing a revision tells AWS Data Exchange that changes to the assets in the revision are complete. After it's in this read-only state, you can publish the revision to your products.</p> <p>Finalized revisions can be published through the AWS Data Exchange console or the AWS Marketplace Catalog API, using the StartChangeSet AWS Marketplace Catalog API action. When using the API, revisions are uniquely identified by their ARN.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute id
    #   <p>The unique identifier for the revision.</p>
    #
    #   @return [String]
    #
    # @!attribute source_id
    #   <p>The revision ID of the owned revision corresponding to the entitled revision being viewed. This parameter is returned when a revision owner is viewing the entitled copy of its owned revision.</p>
    #
    #   @return [String]
    #
    # @!attribute updated_at
    #   <p>The date and time that the revision was last updated, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    # @!attribute revocation_comment
    #   <p>A required comment to inform subscribers of the reason their access to the revision was revoked.</p>
    #
    #   @return [String]
    #
    # @!attribute revoked
    #   <p>A status indicating that subscribers' access to the revision was revoked.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute revoked_at
    #   <p>The date and time that the revision was revoked, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    UpdateRevisionOutput = ::Struct.new(
      :arn,
      :comment,
      :created_at,
      :data_set_id,
      :finalized,
      :id,
      :source_id,
      :updated_at,
      :revocation_comment,
      :revoked,
      :revoked_at,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.finalized ||= false
        self.revoked ||= false
      end

    end

    # <p>The request was invalid.</p>
    #
    # @!attribute message
    #   <p>The message that informs you about what was invalid about the request.</p>
    #
    #   @return [String]
    #
    # @!attribute exception_cause
    #   <p>The message that informs you about what the exception was.</p>
    #
    #   Enum, one of: ["InsufficientS3BucketPolicy", "S3AccessDenied"]
    #
    #   @return [String]
    #
    ValidationException = ::Struct.new(
      :message,
      :exception_cause,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
