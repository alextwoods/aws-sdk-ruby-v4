# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CognitoSync
  module Types

    # An exception thrown when a bulk publish operation is requested less than 24 hours after a previous bulk publish operation completed successfully.
    #
    # @!attribute message
    #   The message associated with the AlreadyStreamedException exception.
    #
    #   @return [String]
    #
    AlreadyStreamedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # The input for the BulkPublish operation.
    #
    # @!attribute identity_pool_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    #
    #   @return [String]
    #
    BulkPublishInput = ::Struct.new(
      :identity_pool_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # The output for the BulkPublish operation.
    #
    # @!attribute identity_pool_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    #
    #   @return [String]
    #
    BulkPublishOutput = ::Struct.new(
      :identity_pool_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for BulkPublishStatus
    #
    module BulkPublishStatus
      # No documentation available.
      #
      NOT_STARTED = "NOT_STARTED"

      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      SUCCEEDED = "SUCCEEDED"
    end

    # Configuration options for configure Cognito streams.
    #
    # @!attribute stream_name
    #   The name of the Cognito stream to receive updates. This stream must be in the developers account and in the same region as the identity pool.
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   The ARN of the role Amazon Cognito can assume in order to publish to the stream. This role must grant access to Amazon Cognito (cognito-sync) to invoke PutRecord on your Cognito stream.
    #
    #   @return [String]
    #
    # @!attribute streaming_status
    #   Status of the Cognito streams. Valid values are:
    #         <p>ENABLED - Streaming of updates to identity pool is enabled.</p>
    #         <p>DISABLED - Streaming of updates to identity pool is disabled. Bulk publish will also fail if StreamingStatus is DISABLED.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    CognitoStreams = ::Struct.new(
      :stream_name,
      :role_arn,
      :streaming_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Thrown if there are parallel requests to modify a resource.</p>
    #
    # @!attribute message
    #   <p>The message returned by a ConcurrentModicationException.</p>
    #
    #   @return [String]
    #
    ConcurrentModificationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # A collection of data for an identity pool. An identity pool can
    #       have multiple datasets. A dataset is per identity and can be general or associated with a
    #       particular entity in an application (like a saved game). Datasets are automatically created if
    #       they don't exist. Data is synced by dataset, and a dataset can hold up to 1MB of key-value
    #       pairs.
    #
    # @!attribute identity_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    #
    #   @return [String]
    #
    # @!attribute dataset_name
    #   A string of up to 128 characters. Allowed characters
    #         are a-z, A-Z, 0-9, '_' (underscore), '-' (dash), and '.' (dot).
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   Date on which the dataset was
    #         created.
    #
    #   @return [Time]
    #
    # @!attribute last_modified_date
    #   Date when the dataset was last
    #         modified.
    #
    #   @return [Time]
    #
    # @!attribute last_modified_by
    #   The device that made the last change to this
    #         dataset.
    #
    #   @return [String]
    #
    # @!attribute data_storage
    #   Total size in bytes of the records in this
    #         dataset.
    #
    #   @return [Integer]
    #
    # @!attribute num_records
    #   Number of records in this dataset.
    #
    #   @return [Integer]
    #
    Dataset = ::Struct.new(
      :identity_id,
      :dataset_name,
      :creation_date,
      :last_modified_date,
      :last_modified_by,
      :data_storage,
      :num_records,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # A request to delete the specific
    #       dataset.
    #
    # @!attribute identity_pool_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    #
    #   @return [String]
    #
    # @!attribute identity_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    #
    #   @return [String]
    #
    # @!attribute dataset_name
    #   A string of up to 128 characters.
    #         Allowed characters are a-z, A-Z, 0-9, '_' (underscore), '-' (dash), and '.'
    #         (dot).
    #
    #   @return [String]
    #
    DeleteDatasetInput = ::Struct.new(
      :identity_pool_id,
      :identity_id,
      :dataset_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Response to a successful DeleteDataset
    #       request.
    #
    # @!attribute dataset
    #   A collection of data for an identity pool.
    #         An identity pool can have multiple datasets. A dataset is per identity and can be general or
    #         associated with a particular entity in an application (like a saved game). Datasets are
    #         automatically created if they don't exist. Data is synced by dataset, and a dataset can hold
    #         up to 1MB of key-value pairs.
    #
    #   @return [Dataset]
    #
    DeleteDatasetOutput = ::Struct.new(
      :dataset,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # A request for meta data about a dataset (creation
    #       date, number of records, size) by owner and dataset name.
    #
    # @!attribute identity_pool_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    #
    #   @return [String]
    #
    # @!attribute identity_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    #
    #   @return [String]
    #
    # @!attribute dataset_name
    #   A string of up to 128 characters.
    #         Allowed characters are a-z, A-Z, 0-9, '_' (underscore), '-' (dash), and '.'
    #         (dot).
    #
    #   @return [String]
    #
    DescribeDatasetInput = ::Struct.new(
      :identity_pool_id,
      :identity_id,
      :dataset_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Response to a successful DescribeDataset
    #       request.
    #
    # @!attribute dataset
    #   Meta data for a collection of data for an
    #         identity. An identity can have multiple datasets. A dataset can be general or associated with
    #         a particular entity in an application (like a saved game). Datasets are automatically created
    #         if they don't exist. Data is synced by dataset, and a dataset can hold up to 1MB of key-value
    #         pairs.
    #
    #   @return [Dataset]
    #
    DescribeDatasetOutput = ::Struct.new(
      :dataset,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # A request for usage information about
    #       the identity pool.
    #
    # @!attribute identity_pool_id
    #   A name-spaced GUID (for
    #         example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID
    #         generation is unique within a region.
    #
    #   @return [String]
    #
    DescribeIdentityPoolUsageInput = ::Struct.new(
      :identity_pool_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Response to a successful
    #       DescribeIdentityPoolUsage request.
    #
    # @!attribute identity_pool_usage
    #   Information about the
    #         usage of the identity pool.
    #
    #   @return [IdentityPoolUsage]
    #
    DescribeIdentityPoolUsageOutput = ::Struct.new(
      :identity_pool_usage,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # A request for information about the usage of
    #       an identity pool.
    #
    # @!attribute identity_pool_id
    #   A name-spaced GUID (for
    #         example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID
    #         generation is unique within a region.
    #
    #   @return [String]
    #
    # @!attribute identity_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    #
    #   @return [String]
    #
    DescribeIdentityUsageInput = ::Struct.new(
      :identity_pool_id,
      :identity_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # The response to a successful
    #       DescribeIdentityUsage request.
    #
    # @!attribute identity_usage
    #   Usage information for the
    #         identity.
    #
    #   @return [IdentityUsage]
    #
    DescribeIdentityUsageOutput = ::Struct.new(
      :identity_usage,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # An exception thrown when there is an IN_PROGRESS bulk publish operation for the given identity pool.
    #
    # @!attribute message
    #   The message associated with the DuplicateRequestException exception.
    #
    #   @return [String]
    #
    DuplicateRequestException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # The input for the GetBulkPublishDetails operation.
    #
    # @!attribute identity_pool_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    #
    #   @return [String]
    #
    GetBulkPublishDetailsInput = ::Struct.new(
      :identity_pool_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # The output for the GetBulkPublishDetails operation.
    #
    # @!attribute identity_pool_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    #
    #   @return [String]
    #
    # @!attribute bulk_publish_start_time
    #   The date/time at which the last bulk publish was initiated.
    #
    #   @return [Time]
    #
    # @!attribute bulk_publish_complete_time
    #   If BulkPublishStatus is SUCCEEDED, the time the last bulk publish operation completed.
    #
    #   @return [Time]
    #
    # @!attribute bulk_publish_status
    #   Status of the last bulk publish operation, valid values are:
    #         <p>NOT_STARTED - No bulk publish has been requested for this identity pool</p>
    #         <p>IN_PROGRESS - Data is being published to the configured stream</p>
    #         <p>SUCCEEDED - All data for the identity pool has been published to the configured stream</p>
    #         <p>FAILED - Some portion of the data has failed to publish, check FailureMessage for the cause.</p>
    #
    #   Enum, one of: ["NOT_STARTED", "IN_PROGRESS", "FAILED", "SUCCEEDED"]
    #
    #   @return [String]
    #
    # @!attribute failure_message
    #   If BulkPublishStatus is FAILED this field will contain the error message that caused the bulk publish to fail.
    #
    #   @return [String]
    #
    GetBulkPublishDetailsOutput = ::Struct.new(
      :identity_pool_id,
      :bulk_publish_start_time,
      :bulk_publish_complete_time,
      :bulk_publish_status,
      :failure_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A request for a list of the configured Cognito Events</p>
    #
    # @!attribute identity_pool_id
    #   <p>The Cognito Identity Pool ID for the request</p>
    #
    #   @return [String]
    #
    GetCognitoEventsInput = ::Struct.new(
      :identity_pool_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The response from the GetCognitoEvents request</p>
    #
    # @!attribute events
    #   <p>The Cognito Events returned from the GetCognitoEvents request</p>
    #
    #   @return [Hash<String, String>]
    #
    GetCognitoEventsOutput = ::Struct.new(
      :events,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The input for the GetIdentityPoolConfiguration operation.</p>
    #
    # @!attribute identity_pool_id
    #   <p>A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by
    #            Amazon Cognito. This is the ID of the pool for which to return a configuration.</p>
    #
    #   @return [String]
    #
    GetIdentityPoolConfigurationInput = ::Struct.new(
      :identity_pool_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The output for the GetIdentityPoolConfiguration operation.</p>
    #
    # @!attribute identity_pool_id
    #   <p>A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by
    #            Amazon Cognito.</p>
    #
    #   @return [String]
    #
    # @!attribute push_sync
    #   <p>Options to apply to this identity pool for push synchronization.</p>
    #
    #   @return [PushSync]
    #
    # @!attribute cognito_streams
    #   Options to apply to this identity pool for Amazon Cognito streams.
    #
    #   @return [CognitoStreams]
    #
    GetIdentityPoolConfigurationOutput = ::Struct.new(
      :identity_pool_id,
      :push_sync,
      :cognito_streams,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Usage information for the identity
    #       pool.
    #
    # @!attribute identity_pool_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    #
    #   @return [String]
    #
    # @!attribute sync_sessions_count
    #   Number of sync sessions for the
    #         identity pool.
    #
    #   @return [Integer]
    #
    # @!attribute data_storage
    #   Data storage information for the identity
    #         pool.
    #
    #   @return [Integer]
    #
    # @!attribute last_modified_date
    #   Date on which the identity pool was
    #         last modified.
    #
    #   @return [Time]
    #
    IdentityPoolUsage = ::Struct.new(
      :identity_pool_id,
      :sync_sessions_count,
      :data_storage,
      :last_modified_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Usage information for the identity.
    #
    # @!attribute identity_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    #
    #   @return [String]
    #
    # @!attribute identity_pool_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    #
    #   @return [String]
    #
    # @!attribute last_modified_date
    #   Date on which the identity was last
    #         modified.
    #
    #   @return [Time]
    #
    # @!attribute dataset_count
    #   Number of datasets for the
    #         identity.
    #
    #   @return [Integer]
    #
    # @!attribute data_storage
    #   Total data storage for this
    #         identity.
    #
    #   @return [Integer]
    #
    IdentityUsage = ::Struct.new(
      :identity_id,
      :identity_pool_id,
      :last_modified_date,
      :dataset_count,
      :data_storage,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.dataset_count ||= 0
      end

    end

    # Indicates an internal service
    #       error.
    #
    # @!attribute message
    #   Message returned by
    #         InternalErrorException.
    #
    #   @return [String]
    #
    InternalErrorException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute message
    #   Message returned by
    #         InvalidConfigurationException.
    #
    #   @return [String]
    #
    InvalidConfigurationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The AWS Lambda function returned invalid output or an exception.</p>
    #
    # @!attribute message
    #   <p>A message returned when an InvalidLambdaFunctionOutputException occurs</p>
    #
    #   @return [String]
    #
    InvalidLambdaFunctionOutputException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Thrown when a request parameter does not comply
    #       with the associated constraints.
    #
    # @!attribute message
    #   Message returned by
    #         InvalidParameterException.
    #
    #   @return [String]
    #
    InvalidParameterException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>AWS Lambda throttled your account, please contact AWS Support</p>
    #
    # @!attribute message
    #   <p>A message returned when an LambdaThrottledException is thrown</p>
    #
    #   @return [String]
    #
    LambdaThrottledException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Thrown when the limit on the number of objects or
    #       operations has been exceeded.
    #
    # @!attribute message
    #   Message returned by
    #         LimitExceededException.
    #
    #   @return [String]
    #
    LimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Request for a list of datasets for an
    #       identity.
    #
    # @!attribute identity_pool_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    #
    #   @return [String]
    #
    # @!attribute identity_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   A pagination token for obtaining the next
    #         page of results.
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   The maximum number of results to be
    #         returned.
    #
    #   @return [Integer]
    #
    ListDatasetsInput = ::Struct.new(
      :identity_pool_id,
      :identity_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_results ||= 0
      end

    end

    # Returned for a successful ListDatasets
    #       request.
    #
    # @!attribute datasets
    #   A set of datasets.
    #
    #   @return [Array<Dataset>]
    #
    # @!attribute count
    #   Number of datasets returned.
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   A pagination token for obtaining the next
    #         page of results.
    #
    #   @return [String]
    #
    ListDatasetsOutput = ::Struct.new(
      :datasets,
      :count,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.count ||= 0
      end

    end

    # A request for usage information on an
    #       identity pool.
    #
    # @!attribute next_token
    #   A pagination token for obtaining
    #         the next page of results.
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   The maximum number of results to
    #         be returned.
    #
    #   @return [Integer]
    #
    ListIdentityPoolUsageInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_results ||= 0
      end

    end

    # Returned for a successful
    #       ListIdentityPoolUsage request.
    #
    # @!attribute identity_pool_usages
    #   Usage information for
    #         the identity pools.
    #
    #   @return [Array<IdentityPoolUsage>]
    #
    # @!attribute max_results
    #   The maximum number of results to
    #         be returned.
    #
    #   @return [Integer]
    #
    # @!attribute count
    #   Total number of identities for the
    #         identity pool.
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   A pagination token for obtaining
    #         the next page of results.
    #
    #   @return [String]
    #
    ListIdentityPoolUsageOutput = ::Struct.new(
      :identity_pool_usages,
      :max_results,
      :count,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_results ||= 0
        self.count ||= 0
      end

    end

    # A request for a list of records.
    #
    # @!attribute identity_pool_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    #
    #   @return [String]
    #
    # @!attribute identity_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    #
    #   @return [String]
    #
    # @!attribute dataset_name
    #   A string of up to 128 characters. Allowed
    #         characters are a-z, A-Z, 0-9, '_' (underscore), '-' (dash), and '.' (dot).
    #
    #   @return [String]
    #
    # @!attribute last_sync_count
    #   The last server sync count for this
    #         record.
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   A pagination token for obtaining the next
    #         page of results.
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   The maximum number of results to be
    #         returned.
    #
    #   @return [Integer]
    #
    # @!attribute sync_session_token
    #   A token containing a session ID,
    #         identity ID, and expiration.
    #
    #   @return [String]
    #
    ListRecordsInput = ::Struct.new(
      :identity_pool_id,
      :identity_id,
      :dataset_name,
      :last_sync_count,
      :next_token,
      :max_results,
      :sync_session_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_results ||= 0
      end

    end

    # Returned for a successful
    #       ListRecordsRequest.
    #
    # @!attribute records
    #   A list of all records.
    #
    #   @return [Array<Record>]
    #
    # @!attribute next_token
    #   A pagination token for obtaining the next
    #         page of results.
    #
    #   @return [String]
    #
    # @!attribute count
    #   Total number of records.
    #
    #   @return [Integer]
    #
    # @!attribute dataset_sync_count
    #   Server sync count for this
    #         dataset.
    #
    #   @return [Integer]
    #
    # @!attribute last_modified_by
    #   The user/device that made the last
    #         change to this record.
    #
    #   @return [String]
    #
    # @!attribute merged_dataset_names
    #   Names of merged
    #         datasets.
    #
    #   @return [Array<String>]
    #
    # @!attribute dataset_exists
    #   Indicates whether the dataset
    #         exists.
    #
    #   @return [Boolean]
    #
    # @!attribute dataset_deleted_after_requested_sync_count
    #   A boolean value
    #         specifying whether to delete the dataset locally.
    #
    #   @return [Boolean]
    #
    # @!attribute sync_session_token
    #   A token containing a session ID,
    #         identity ID, and expiration.
    #
    #   @return [String]
    #
    ListRecordsOutput = ::Struct.new(
      :records,
      :next_token,
      :count,
      :dataset_sync_count,
      :last_modified_by,
      :merged_dataset_names,
      :dataset_exists,
      :dataset_deleted_after_requested_sync_count,
      :sync_session_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.count ||= 0
        self.dataset_exists ||= false
        self.dataset_deleted_after_requested_sync_count ||= false
      end

    end

    # Thrown when a user is not authorized to access the
    #       requested resource.
    #
    # @!attribute message
    #   The message returned by a
    #         NotAuthorizedException.
    #
    #   @return [String]
    #
    NotAuthorizedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Operation
    #
    module Operation
      # No documentation available.
      #
      replace = "replace"

      # No documentation available.
      #
      remove = "remove"
    end

    # Includes enum constants for Platform
    #
    module Platform
      # No documentation available.
      #
      APNS = "APNS"

      # No documentation available.
      #
      APNS_SANDBOX = "APNS_SANDBOX"

      # No documentation available.
      #
      GCM = "GCM"

      # No documentation available.
      #
      ADM = "ADM"
    end

    # <p>Configuration options to be applied to the identity pool.</p>
    #
    # @!attribute application_arns
    #   <p>List of SNS platform application ARNs that could be used by clients.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute role_arn
    #   <p>A role configured to allow Cognito to call SNS on behalf of the developer.</p>
    #
    #   @return [String]
    #
    PushSync = ::Struct.new(
      :application_arns,
      :role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # The basic data structure of a dataset.
    #
    # @!attribute key
    #   The key for the record.
    #
    #   @return [String]
    #
    # @!attribute value
    #   The value for the record.
    #
    #   @return [String]
    #
    # @!attribute sync_count
    #   The server sync count for this record.
    #
    #   @return [Integer]
    #
    # @!attribute last_modified_date
    #   The date on which the record was last
    #         modified.
    #
    #   @return [Time]
    #
    # @!attribute last_modified_by
    #   The user/device that made the last change to this
    #         record.
    #
    #   @return [String]
    #
    # @!attribute device_last_modified_date
    #   The last modified date of the client
    #         device.
    #
    #   @return [Time]
    #
    Record = ::Struct.new(
      :key,
      :value,
      :sync_count,
      :last_modified_date,
      :last_modified_by,
      :device_last_modified_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # An update operation for a record.
    #
    # @!attribute op
    #   An operation, either replace or remove.
    #
    #   Enum, one of: ["replace", "remove"]
    #
    #   @return [String]
    #
    # @!attribute key
    #   The key associated with the record patch.
    #
    #   @return [String]
    #
    # @!attribute value
    #   The value associated with the record
    #         patch.
    #
    #   @return [String]
    #
    # @!attribute sync_count
    #   Last known server sync count for this record. Set
    #         to 0 if unknown.
    #
    #   @return [Integer]
    #
    # @!attribute device_last_modified_date
    #   The last modified date of the client
    #         device.
    #
    #   @return [Time]
    #
    RecordPatch = ::Struct.new(
      :op,
      :key,
      :value,
      :sync_count,
      :device_last_modified_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A request to RegisterDevice.</p>
    #
    # @!attribute identity_pool_id
    #   <p>A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by
    #            Amazon Cognito. Here, the ID of the pool that the identity belongs to.</p>
    #
    #   @return [String]
    #
    # @!attribute identity_id
    #   <p>The unique ID for this identity.</p>
    #
    #   @return [String]
    #
    # @!attribute platform
    #   <p>The SNS platform type (e.g. GCM, SDM, APNS, APNS_SANDBOX).</p>
    #
    #   Enum, one of: ["APNS", "APNS_SANDBOX", "GCM", "ADM"]
    #
    #   @return [String]
    #
    # @!attribute token
    #   <p>The push token.</p>
    #
    #   @return [String]
    #
    RegisterDeviceInput = ::Struct.new(
      :identity_pool_id,
      :identity_id,
      :platform,
      :token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Response to a RegisterDevice request.</p>
    #
    # @!attribute device_id
    #   <p>The unique ID generated for this device by Cognito.</p>
    #
    #   @return [String]
    #
    RegisterDeviceOutput = ::Struct.new(
      :device_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Thrown if an update can't be applied because
    #       the resource was changed by another call and this would result in a conflict.
    #
    # @!attribute message
    #   The message returned by a
    #         ResourceConflictException.
    #
    #   @return [String]
    #
    ResourceConflictException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Thrown if the resource doesn't
    #       exist.
    #
    # @!attribute message
    #   Message returned by a
    #         ResourceNotFoundException.
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A request to configure Cognito Events"</p>"
    #
    # @!attribute identity_pool_id
    #   <p>The Cognito Identity Pool to use when configuring Cognito Events</p>
    #
    #   @return [String]
    #
    # @!attribute events
    #   <p>The events to configure</p>
    #
    #   @return [Hash<String, String>]
    #
    SetCognitoEventsInput = ::Struct.new(
      :identity_pool_id,
      :events,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    SetCognitoEventsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The input for the SetIdentityPoolConfiguration operation.</p>
    #
    # @!attribute identity_pool_id
    #   <p>A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by
    #            Amazon Cognito. This is the ID of the pool to modify.</p>
    #
    #   @return [String]
    #
    # @!attribute push_sync
    #   <p>Options to apply to this identity pool for push synchronization.</p>
    #
    #   @return [PushSync]
    #
    # @!attribute cognito_streams
    #   Options to apply to this identity pool for Amazon Cognito streams.
    #
    #   @return [CognitoStreams]
    #
    SetIdentityPoolConfigurationInput = ::Struct.new(
      :identity_pool_id,
      :push_sync,
      :cognito_streams,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The output for the SetIdentityPoolConfiguration operation</p>
    #
    # @!attribute identity_pool_id
    #   <p>A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by
    #            Amazon Cognito.</p>
    #
    #   @return [String]
    #
    # @!attribute push_sync
    #   <p>Options to apply to this identity pool for push synchronization.</p>
    #
    #   @return [PushSync]
    #
    # @!attribute cognito_streams
    #   Options to apply to this identity pool for Amazon Cognito streams.
    #
    #   @return [CognitoStreams]
    #
    SetIdentityPoolConfigurationOutput = ::Struct.new(
      :identity_pool_id,
      :push_sync,
      :cognito_streams,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for StreamingStatus
    #
    module StreamingStatus
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # <p>A request to SubscribeToDatasetRequest.</p>
    #
    # @!attribute identity_pool_id
    #   <p>A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by
    #            Amazon Cognito. The ID of the pool to which the identity belongs.</p>
    #
    #   @return [String]
    #
    # @!attribute identity_id
    #   <p>Unique ID for this identity.</p>
    #
    #   @return [String]
    #
    # @!attribute dataset_name
    #   <p>The name of the dataset to subcribe to.</p>
    #
    #   @return [String]
    #
    # @!attribute device_id
    #   <p>The unique ID generated for this device by Cognito.</p>
    #
    #   @return [String]
    #
    SubscribeToDatasetInput = ::Struct.new(
      :identity_pool_id,
      :identity_id,
      :dataset_name,
      :device_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Response to a SubscribeToDataset request.</p>
    #
    SubscribeToDatasetOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Thrown if the request is
    #       throttled.
    #
    # @!attribute message
    #   Message returned by a
    #         TooManyRequestsException.
    #
    #   @return [String]
    #
    TooManyRequestsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A request to UnsubscribeFromDataset.</p>
    #
    # @!attribute identity_pool_id
    #   <p>A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by
    #            Amazon Cognito. The ID of the pool to which this identity belongs.</p>
    #
    #   @return [String]
    #
    # @!attribute identity_id
    #   <p>Unique ID for this identity.</p>
    #
    #   @return [String]
    #
    # @!attribute dataset_name
    #   <p>The name of the dataset from which to unsubcribe.</p>
    #
    #   @return [String]
    #
    # @!attribute device_id
    #   <p>The unique ID generated for this device by Cognito.</p>
    #
    #   @return [String]
    #
    UnsubscribeFromDatasetInput = ::Struct.new(
      :identity_pool_id,
      :identity_id,
      :dataset_name,
      :device_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Response to an UnsubscribeFromDataset request.</p>
    #
    UnsubscribeFromDatasetOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # A request to post updates to records or add and
    #       delete records for a dataset and user.
    #
    # @!attribute identity_pool_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    #
    #   @return [String]
    #
    # @!attribute identity_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    #
    #   @return [String]
    #
    # @!attribute dataset_name
    #   A string of up to 128 characters.
    #         Allowed characters are a-z, A-Z, 0-9, '_' (underscore), '-' (dash), and '.'
    #         (dot).
    #
    #   @return [String]
    #
    # @!attribute device_id
    #   <p>The unique ID generated for this device by Cognito.</p>
    #
    #   @return [String]
    #
    # @!attribute record_patches
    #   A list of patch
    #         operations.
    #
    #   @return [Array<RecordPatch>]
    #
    # @!attribute sync_session_token
    #   The SyncSessionToken returned by a
    #         previous call to ListRecords for this dataset and identity.
    #
    #   @return [String]
    #
    # @!attribute client_context
    #   Intended to supply a device ID that
    #         will populate the lastModifiedBy field referenced in other methods. The
    #            ClientContext field is not yet implemented.
    #
    #   @return [String]
    #
    UpdateRecordsInput = ::Struct.new(
      :identity_pool_id,
      :identity_id,
      :dataset_name,
      :device_id,
      :record_patches,
      :sync_session_token,
      :client_context,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Returned for a successful
    #       UpdateRecordsRequest.
    #
    # @!attribute records
    #   A list of records that have been
    #         updated.
    #
    #   @return [Array<Record>]
    #
    UpdateRecordsOutput = ::Struct.new(
      :records,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
