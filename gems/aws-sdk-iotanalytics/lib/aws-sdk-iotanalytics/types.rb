# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::IoTAnalytics
  module Types

    # <p>An activity that adds other attributes based on existing attributes in the message.</p>
    #
    # @!attribute name
    #   <p>The name of the addAttributes activity.</p>
    #
    #   @return [String]
    #
    # @!attribute attributes
    #   <p>A list of 1-50 <code>AttributeNameMapping</code> objects that map an existing attribute to
    #         a new attribute.</p>
    #            <note>
    #               <p>The existing attributes remain in the message, so if you want to remove the originals,
    #           use <code>RemoveAttributeActivity</code>.</p>
    #            </note>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute next
    #   <p>The next activity in the pipeline.</p>
    #
    #   @return [String]
    #
    AddAttributesActivity = ::Struct.new(
      :name,
      :attributes,
      :next,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains informations about errors.</p>
    #
    # @!attribute message_id
    #   <p>The ID of the message that caused the error. See the value corresponding to the
    #               <code>messageId</code> key in the message object.</p>
    #
    #   @return [String]
    #
    # @!attribute error_code
    #   <p>The code associated with the error.</p>
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>The message associated with the error.</p>
    #
    #   @return [String]
    #
    BatchPutMessageErrorEntry = ::Struct.new(
      :message_id,
      :error_code,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_name
    #   <p>The name of the channel where the messages are sent.</p>
    #
    #   @return [String]
    #
    # @!attribute messages
    #   <p>The list of messages to be sent. Each message has the format: { "messageId": "string",
    #            "payload": "string"}.</p>
    #            <p>The field names of message payloads (data) that you send to IoT Analytics:</p>
    #           <ul>
    #               <li>
    #                  <p>Must contain only alphanumeric characters and undescores (_). No other special characters are
    #                  allowed.</p>
    #               </li>
    #               <li>
    #                  <p>Must begin with an alphabetic character or single underscore (_).</p>
    #               </li>
    #               <li>
    #                  <p>Cannot contain hyphens (-).</p>
    #               </li>
    #               <li>
    #                  <p>In regular expression terms: "^[A-Za-z_]([A-Za-z0-9]*|[A-Za-z0-9][A-Za-z0-9_]*)$".
    #               </p>
    #               </li>
    #               <li>
    #                  <p>Cannot be more than 255 characters.</p>
    #               </li>
    #               <li>
    #                  <p>Are case insensitive. (Fields named foo and FOO in the same payload are considered
    #                  duplicates.)</p>
    #               </li>
    #            </ul>
    #            <p>For example, {"temp_01": 29} or {"_temp_01": 29} are valid, but {"temp-01": 29},
    #    {"01_temp": 29} or {"__temp_01": 29} are invalid in message payloads.  </p>
    #
    #   @return [Array<Message>]
    #
    BatchPutMessageInput = ::Struct.new(
      :channel_name,
      :messages,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute batch_put_message_error_entries
    #   <p>A list of any errors encountered when sending the messages to the channel.</p>
    #
    #   @return [Array<BatchPutMessageErrorEntry>]
    #
    BatchPutMessageOutput = ::Struct.new(
      :batch_put_message_error_entries,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute pipeline_name
    #   <p>The name of pipeline for which data reprocessing is canceled.</p>
    #
    #   @return [String]
    #
    # @!attribute reprocessing_id
    #   <p>The ID of the reprocessing task (returned by
    #         <code>StartPipelineReprocessing</code>).</p>
    #
    #   @return [String]
    #
    CancelPipelineReprocessingInput = ::Struct.new(
      :pipeline_name,
      :reprocessing_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CancelPipelineReprocessingOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A collection of data from an MQTT topic. Channels archive the raw, unprocessed messages
    #       before publishing the data to a pipeline.</p>
    #
    # @!attribute name
    #   <p>The name of the channel.</p>
    #
    #   @return [String]
    #
    # @!attribute storage
    #   <p>Where channel data is stored. You can choose one of <code>serviceManagedS3</code> or
    #           <code>customerManagedS3</code> storage. If not specified, the default is
    #           <code>serviceManagedS3</code>. You can't change this storage option after the channel is
    #         created.</p>
    #
    #   @return [ChannelStorage]
    #
    # @!attribute arn
    #   <p>The ARN of the channel.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the channel.</p>
    #
    #   Enum, one of: ["CREATING", "ACTIVE", "DELETING"]
    #
    #   @return [String]
    #
    # @!attribute retention_period
    #   <p>How long, in days, message data is kept for the channel.</p>
    #
    #   @return [RetentionPeriod]
    #
    # @!attribute creation_time
    #   <p>When the channel was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_update_time
    #   <p>When the channel was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_message_arrival_time
    #   <p>The last time when a new message arrived in the channel.</p>
    #            <p>IoT Analytics updates this value at most once per minute for one channel. Hence, the <code>lastMessageArrivalTime</code> value is an approximation.</p>
    #            <p>This feature only applies to messages that arrived in the data store after October 23, 2020. </p>
    #
    #   @return [Time]
    #
    Channel = ::Struct.new(
      :name,
      :storage,
      :arn,
      :status,
      :retention_period,
      :creation_time,
      :last_update_time,
      :last_message_arrival_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The activity that determines the source of the messages to be processed.</p>
    #
    # @!attribute name
    #   <p>The name of the channel activity.</p>
    #
    #   @return [String]
    #
    # @!attribute channel_name
    #   <p>The name of the channel from which the messages are processed.</p>
    #
    #   @return [String]
    #
    # @!attribute next
    #   <p>The next activity in the pipeline.</p>
    #
    #   @return [String]
    #
    ChannelActivity = ::Struct.new(
      :name,
      :channel_name,
      :next,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies one or more sets of channel messages.</p>
    #
    # @!attribute s3_paths
    #   <p>Specifies one or more keys that identify the Amazon Simple Storage Service (Amazon S3) objects that save your
    #         channel messages.</p>
    #            <p>You must use the full path for the key.</p>
    #            <p>Example path: <code>channel/mychannel/__dt=2020-02-29
    #           00:00:00/1582940490000_1582940520000_123456789012_mychannel_0_2118.0.json.gz</code>
    #            </p>
    #
    #   @return [Array<String>]
    #
    ChannelMessages = ::Struct.new(
      :s3_paths,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Statistics information about the channel.</p>
    #
    # @!attribute size
    #   <p>The estimated size of the channel.</p>
    #
    #   @return [EstimatedResourceSize]
    #
    ChannelStatistics = ::Struct.new(
      :size,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ChannelStatus
    #
    module ChannelStatus
      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      DELETING = "DELETING"
    end

    # <p>Where channel data is stored. You may choose one of <code>serviceManagedS3</code>,
    #         <code>customerManagedS3</code> storage. If not specified, the default is
    #         <code>serviceManagedS3</code>. This can't be changed after creation of the channel.</p>
    #
    # @!attribute service_managed_s3
    #   <p>Used to store channel data in an S3 bucket managed by IoT Analytics. You can't change the choice
    #         of S3 storage after the data store is created.</p>
    #
    #   @return [ServiceManagedChannelS3Storage]
    #
    # @!attribute customer_managed_s3
    #   <p>Used to store channel data in an S3 bucket that you manage. If customer managed storage is
    #         selected, the <code>retentionPeriod</code> parameter is ignored. You can't change the choice
    #         of S3 storage after the data store is created.</p>
    #
    #   @return [CustomerManagedChannelS3Storage]
    #
    ChannelStorage = ::Struct.new(
      :service_managed_s3,
      :customer_managed_s3,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Where channel data is stored.</p>
    #
    # @!attribute service_managed_s3
    #   <p>Used to store channel data in an S3 bucket managed by IoT Analytics.</p>
    #
    #   @return [ServiceManagedChannelS3StorageSummary]
    #
    # @!attribute customer_managed_s3
    #   <p>Used to store channel data in an S3 bucket that you manage.</p>
    #
    #   @return [CustomerManagedChannelS3StorageSummary]
    #
    ChannelStorageSummary = ::Struct.new(
      :service_managed_s3,
      :customer_managed_s3,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A summary of information about a channel.</p>
    #
    # @!attribute channel_name
    #   <p>The name of the channel.</p>
    #
    #   @return [String]
    #
    # @!attribute channel_storage
    #   <p>Where channel data is stored.</p>
    #
    #   @return [ChannelStorageSummary]
    #
    # @!attribute status
    #   <p>The status of the channel.</p>
    #
    #   Enum, one of: ["CREATING", "ACTIVE", "DELETING"]
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>When the channel was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_update_time
    #   <p>The last time the channel was updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_message_arrival_time
    #   <p>The last time when a new message arrived in the channel.</p>
    #            <p>IoT Analytics updates this value at most once per minute for one channel. Hence, the <code>lastMessageArrivalTime</code> value is an approximation.</p>
    #            <p>This feature only applies to messages that arrived in the data store after October 23, 2020. </p>
    #
    #   @return [Time]
    #
    ChannelSummary = ::Struct.new(
      :channel_name,
      :channel_storage,
      :status,
      :creation_time,
      :last_update_time,
      :last_message_arrival_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about a column that stores your data.</p>
    #
    # @!attribute name
    #   <p>The name of the column.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of data. For more information about the supported data types, see <a href="https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-common.html">Common data types</a>
    #         in the <i>Glue Developer Guide</i>.</p>
    #
    #   @return [String]
    #
    Column = ::Struct.new(
      :name,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ComputeType
    #
    module ComputeType
      # No documentation available.
      #
      ACU_1 = "ACU_1"

      # No documentation available.
      #
      ACU_2 = "ACU_2"
    end

    # <p>Information required to run the <code>containerAction</code> to produce dataset
    #       contents.</p>
    #
    # @!attribute image
    #   <p>The ARN of the Docker container stored in your account. The Docker container contains an
    #         application and required support libraries and is used to generate dataset contents.</p>
    #
    #   @return [String]
    #
    # @!attribute execution_role_arn
    #   <p>The ARN of the role that gives permission to the system to access required resources to
    #         run the <code>containerAction</code>. This includes, at minimum, permission to retrieve the
    #         dataset contents that are the input to the containerized application.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_configuration
    #   <p>Configuration of the resource that executes the <code>containerAction</code>.</p>
    #
    #   @return [ResourceConfiguration]
    #
    # @!attribute variables
    #   <p>The values of variables used in the context of the execution of the containerized
    #         application (basically, parameters passed to the application). Each variable must have a name
    #         and a value given by one of <code>stringValue</code>, <code>datasetContentVersionValue</code>,
    #         or <code>outputFileUriValue</code>.</p>
    #
    #   @return [Array<Variable>]
    #
    ContainerDatasetAction = ::Struct.new(
      :image,
      :execution_role_arn,
      :resource_configuration,
      :variables,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_name
    #   <p>The name of the channel.</p>
    #
    #   @return [String]
    #
    # @!attribute channel_storage
    #   <p>Where channel data is stored. You can choose one of <code>serviceManagedS3</code> or
    #           <code>customerManagedS3</code> storage. If not specified, the default is
    #           <code>serviceManagedS3</code>. You can't change this storage option after the channel is
    #         created.</p>
    #
    #   @return [ChannelStorage]
    #
    # @!attribute retention_period
    #   <p>How long, in days, message data is kept for the channel. When
    #           <code>customerManagedS3</code> storage is selected, this parameter is ignored.</p>
    #
    #   @return [RetentionPeriod]
    #
    # @!attribute tags
    #   <p>Metadata which can be used to manage the channel.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateChannelInput = ::Struct.new(
      :channel_name,
      :channel_storage,
      :retention_period,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_name
    #   <p>The name of the channel.</p>
    #
    #   @return [String]
    #
    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #
    #   @return [String]
    #
    # @!attribute retention_period
    #   <p>How long, in days, message data is kept for the channel.</p>
    #
    #   @return [RetentionPeriod]
    #
    CreateChannelOutput = ::Struct.new(
      :channel_name,
      :channel_arn,
      :retention_period,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute dataset_name
    #   <p>The name of the dataset.</p>
    #
    #   @return [String]
    #
    # @!attribute version_id
    #   <p>The version ID of the dataset content. To specify <code>versionId</code> for a dataset
    #         content, the dataset must use a <a href="https://docs.aws.amazon.com/iotanalytics/latest/APIReference/API_DeltaTime.html">DeltaTimer</a> filter.</p>
    #
    #   @return [String]
    #
    CreateDatasetContentInput = ::Struct.new(
      :dataset_name,
      :version_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute version_id
    #   <p>The version ID of the dataset contents that are being created.</p>
    #
    #   @return [String]
    #
    CreateDatasetContentOutput = ::Struct.new(
      :version_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute dataset_name
    #   <p>The name of the dataset.</p>
    #
    #   @return [String]
    #
    # @!attribute actions
    #   <p>A list of actions that create the dataset contents.</p>
    #
    #   @return [Array<DatasetAction>]
    #
    # @!attribute triggers
    #   <p>A list of triggers. A trigger causes dataset contents to be populated at a specified time
    #         interval or when another dataset's contents are created. The list of triggers can be empty or
    #         contain up to five <code>DataSetTrigger</code> objects.</p>
    #
    #   @return [Array<DatasetTrigger>]
    #
    # @!attribute content_delivery_rules
    #   <p>When dataset contents are created, they are delivered to destinations specified
    #         here.</p>
    #
    #   @return [Array<DatasetContentDeliveryRule>]
    #
    # @!attribute retention_period
    #   <p>Optional. How long, in days, versions of dataset contents are kept for the dataset. If not
    #         specified or set to <code>null</code>, versions of dataset contents are retained for at most
    #         90 days. The number of versions of dataset contents retained is determined by the
    #           <code>versioningConfiguration</code> parameter. For more information, see <a href="https://docs.aws.amazon.com/iotanalytics/latest/userguide/getting-started.html aws-iot-analytics-dataset-versions">
    #           Keeping Multiple Versions of IoT Analytics datasets</a> in the
    #           <i>IoT Analytics User Guide</i>.</p>
    #
    #   @return [RetentionPeriod]
    #
    # @!attribute versioning_configuration
    #   <p>Optional. How many versions of dataset contents are kept. If not specified or set to null,
    #         only the latest version plus the latest succeeded version (if they are different) are kept for
    #         the time period specified by the <code>retentionPeriod</code> parameter. For more information,
    #         see <a href="https://docs.aws.amazon.com/iotanalytics/latest/userguide/getting-started.html aws-iot-analytics-dataset-versions">Keeping Multiple Versions of IoT Analytics datasets</a> in the
    #           <i>IoT Analytics User Guide</i>.</p>
    #
    #   @return [VersioningConfiguration]
    #
    # @!attribute tags
    #   <p>Metadata which can be used to manage the dataset.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute late_data_rules
    #   <p>A list of data rules that send notifications to CloudWatch, when data arrives late. To specify <code>lateDataRules</code>, the dataset must use a <a href="https://docs.aws.amazon.com/iotanalytics/latest/APIReference/API_DeltaTime.html">DeltaTimer</a> filter.</p>
    #
    #   @return [Array<LateDataRule>]
    #
    CreateDatasetInput = ::Struct.new(
      :dataset_name,
      :actions,
      :triggers,
      :content_delivery_rules,
      :retention_period,
      :versioning_configuration,
      :tags,
      :late_data_rules,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute dataset_name
    #   <p>The name of the dataset.</p>
    #
    #   @return [String]
    #
    # @!attribute dataset_arn
    #   <p>The ARN of the dataset.</p>
    #
    #   @return [String]
    #
    # @!attribute retention_period
    #   <p>How long, in days, dataset contents are kept for the dataset.</p>
    #
    #   @return [RetentionPeriod]
    #
    CreateDatasetOutput = ::Struct.new(
      :dataset_name,
      :dataset_arn,
      :retention_period,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute datastore_name
    #   <p>The name of the data store.</p>
    #
    #   @return [String]
    #
    # @!attribute datastore_storage
    #   <p>Where data in a data store is stored.. You can choose <code>serviceManagedS3</code> storage, <code>customerManagedS3</code> storage, or <code>iotSiteWiseMultiLayerStorage</code> storage. The default is <code>serviceManagedS3</code>. You can't change the choice of Amazon S3 storage after your data store is created. </p>
    #
    #   @return [DatastoreStorage]
    #
    # @!attribute retention_period
    #   <p>How long, in days, message data is kept for the data store. When
    #           <code>customerManagedS3</code> storage is selected, this parameter is ignored.</p>
    #
    #   @return [RetentionPeriod]
    #
    # @!attribute tags
    #   <p>Metadata which can be used to manage the data store.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute file_format_configuration
    #   <p>Contains the configuration information of file formats.  IoT Analytics data stores support JSON and <a href="https://parquet.apache.org/">Parquet</a>.</p>
    #            <p>The default file format is JSON. You can specify only one format.</p>
    #            <p>You can't change the file format after you create the data store.</p>
    #
    #   @return [FileFormatConfiguration]
    #
    # @!attribute datastore_partitions
    #   <p> Contains information about the partition dimensions in a data store. </p>
    #
    #   @return [DatastorePartitions]
    #
    CreateDatastoreInput = ::Struct.new(
      :datastore_name,
      :datastore_storage,
      :retention_period,
      :tags,
      :file_format_configuration,
      :datastore_partitions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute datastore_name
    #   <p>The name of the data store.</p>
    #
    #   @return [String]
    #
    # @!attribute datastore_arn
    #   <p>The ARN of the data store.</p>
    #
    #   @return [String]
    #
    # @!attribute retention_period
    #   <p>How long, in days, message data is kept for the data store.</p>
    #
    #   @return [RetentionPeriod]
    #
    CreateDatastoreOutput = ::Struct.new(
      :datastore_name,
      :datastore_arn,
      :retention_period,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute pipeline_name
    #   <p>The name of the pipeline.</p>
    #
    #   @return [String]
    #
    # @!attribute pipeline_activities
    #   <p>A list of <code>PipelineActivity</code> objects. Activities perform transformations on
    #         your messages, such as removing, renaming or adding message attributes; filtering messages
    #         based on attribute values; invoking your Lambda unctions on messages for advanced processing;
    #         or performing mathematical transformations to normalize device data.</p>
    #            <p>The list can be 2-25 <code>PipelineActivity</code> objects and must contain both a
    #           <code>channel</code> and a <code>datastore</code> activity. Each entry in the list must
    #         contain only one activity. For example:</p>
    #            <p>
    #               <code>pipelineActivities = [ { "channel": { ... } }, { "lambda": { ... } }, ...
    #         ]</code>
    #            </p>
    #
    #   @return [Array<PipelineActivity>]
    #
    # @!attribute tags
    #   <p>Metadata which can be used to manage the pipeline.</p>
    #
    #   @return [Array<Tag>]
    #
    CreatePipelineInput = ::Struct.new(
      :pipeline_name,
      :pipeline_activities,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute pipeline_name
    #   <p>The name of the pipeline.</p>
    #
    #   @return [String]
    #
    # @!attribute pipeline_arn
    #   <p>The ARN of the pipeline.</p>
    #
    #   @return [String]
    #
    CreatePipelineOutput = ::Struct.new(
      :pipeline_name,
      :pipeline_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Used to store channel data in an S3 bucket that you manage. If customer-managed storage is
    #       selected, the <code>retentionPeriod</code> parameter is ignored. You can't change the choice
    #       of S3 storage after the data store is created.</p>
    #
    # @!attribute bucket
    #   <p>The name of the S3 bucket in which channel data is stored.</p>
    #
    #   @return [String]
    #
    # @!attribute key_prefix
    #   <p>(Optional) The prefix used to create the keys of the channel data objects. Each object in
    #         an S3 bucket has a key that is its unique identifier in the bucket. Each object in a bucket
    #         has exactly one key. The prefix must end with a forward slash (/).</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The ARN of the role that grants IoT Analytics permission to interact with your Amazon S3
    #         resources.</p>
    #
    #   @return [String]
    #
    CustomerManagedChannelS3Storage = ::Struct.new(
      :bucket,
      :key_prefix,
      :role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Used to store channel data in an S3 bucket that you manage.</p>
    #
    # @!attribute bucket
    #   <p>The name of the S3 bucket in which channel data is stored.</p>
    #
    #   @return [String]
    #
    # @!attribute key_prefix
    #   <p>(Optional) The prefix used to create the keys of the channel data objects. Each object in
    #         an S3 bucket has a key that is its unique identifier within the bucket (each object in a
    #         bucket has exactly one key). The prefix must end with a forward slash (/).</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The ARN of the role that grants IoT Analytics permission to interact with your Amazon S3
    #         resources.</p>
    #
    #   @return [String]
    #
    CustomerManagedChannelS3StorageSummary = ::Struct.new(
      :bucket,
      :key_prefix,
      :role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>S3-customer-managed; When you choose customer-managed storage, the <code>retentionPeriod</code> parameter is ignored. You can't change the choice of Amazon S3 storage after your data store is created.  </p>
    #
    # @!attribute bucket
    #   <p>The name of the Amazon S3 bucket where your data is stored.</p>
    #
    #   @return [String]
    #
    # @!attribute key_prefix
    #   <p>(Optional) The prefix used to create the keys of the data store data objects. Each object in an Amazon S3 bucket has a key that is its unique identifier in the bucket. Each object in a bucket has exactly one key. The prefix must end with a forward slash (/).</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The ARN of the role that grants IoT Analytics permission to interact with your Amazon S3 resources.</p>
    #
    #   @return [String]
    #
    CustomerManagedDatastoreS3Storage = ::Struct.new(
      :bucket,
      :key_prefix,
      :role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about the data store that you manage.</p>
    #
    # @!attribute bucket
    #   <p>The name of the Amazon S3 bucket where your data is stored.</p>
    #
    #   @return [String]
    #
    # @!attribute key_prefix
    #   <p>(Optional) The prefix used to create the keys of the data store data objects. Each object in an Amazon S3 bucket has a key that is its unique identifier in the bucket. Each object in a bucket has exactly one key. The prefix must end with a forward slash (/).</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The ARN of the role that grants IoT Analytics permission to interact with your Amazon S3 resources.</p>
    #
    #   @return [String]
    #
    CustomerManagedDatastoreS3StorageSummary = ::Struct.new(
      :bucket,
      :key_prefix,
      :role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a dataset.</p>
    #
    # @!attribute name
    #   <p>The name of the dataset.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The ARN of the dataset.</p>
    #
    #   @return [String]
    #
    # @!attribute actions
    #   <p>The <code>DatasetAction</code> objects that automatically create the dataset
    #         contents.</p>
    #
    #   @return [Array<DatasetAction>]
    #
    # @!attribute triggers
    #   <p>The <code>DatasetTrigger</code> objects that specify when the dataset is automatically
    #         updated.</p>
    #
    #   @return [Array<DatasetTrigger>]
    #
    # @!attribute content_delivery_rules
    #   <p>When dataset contents are created they are delivered to destinations specified
    #         here.</p>
    #
    #   @return [Array<DatasetContentDeliveryRule>]
    #
    # @!attribute status
    #   <p>The status of the dataset.</p>
    #
    #   Enum, one of: ["CREATING", "ACTIVE", "DELETING"]
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>When the dataset was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_update_time
    #   <p>The last time the dataset was updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute retention_period
    #   <p>Optional. How long, in days, message data is kept for the dataset.</p>
    #
    #   @return [RetentionPeriod]
    #
    # @!attribute versioning_configuration
    #   <p>Optional. How many versions of dataset contents are kept. If not specified or set to null,
    #         only the latest version plus the latest succeeded version (if they are different) are kept for
    #         the time period specified by the <code>retentionPeriod</code> parameter. For more information,
    #         see <a href="https://docs.aws.amazon.com/iotanalytics/latest/userguide/getting-started.html aws-iot-analytics-dataset-versions">
    #           Keeping Multiple Versions of IoT Analytics datasets</a> in the
    #           <i>IoT Analytics User Guide</i>.</p>
    #
    #   @return [VersioningConfiguration]
    #
    # @!attribute late_data_rules
    #   <p>A list of data rules that send notifications to CloudWatch, when data arrives late. To specify <code>lateDataRules</code>, the dataset must use a <a href="https://docs.aws.amazon.com/iotanalytics/latest/APIReference/API_DeltaTime.html">DeltaTimer</a> filter.</p>
    #
    #   @return [Array<LateDataRule>]
    #
    Dataset = ::Struct.new(
      :name,
      :arn,
      :actions,
      :triggers,
      :content_delivery_rules,
      :status,
      :creation_time,
      :last_update_time,
      :retention_period,
      :versioning_configuration,
      :late_data_rules,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A <code>DatasetAction</code> object that specifies how dataset contents are automatically
    #       created.</p>
    #
    # @!attribute action_name
    #   <p>The name of the dataset action by which dataset contents are automatically created.</p>
    #
    #   @return [String]
    #
    # @!attribute query_action
    #   <p>An <code>SqlQueryDatasetAction</code> object that uses an SQL query to automatically
    #         create dataset contents.</p>
    #
    #   @return [SqlQueryDatasetAction]
    #
    # @!attribute container_action
    #   <p>Information that allows the system to run a containerized application to create the
    #         dataset contents. The application must be in a Docker container along with any required
    #         support libraries.</p>
    #
    #   @return [ContainerDatasetAction]
    #
    DatasetAction = ::Struct.new(
      :action_name,
      :query_action,
      :container_action,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the action that automatically creates the dataset's contents.</p>
    #
    # @!attribute action_name
    #   <p>The name of the action that automatically creates the dataset's contents.</p>
    #
    #   @return [String]
    #
    # @!attribute action_type
    #   <p>The type of action by which the dataset's contents are automatically created.</p>
    #
    #   Enum, one of: ["QUERY", "CONTAINER"]
    #
    #   @return [String]
    #
    DatasetActionSummary = ::Struct.new(
      :action_name,
      :action_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DatasetActionType
    #
    module DatasetActionType
      # No documentation available.
      #
      QUERY = "QUERY"

      # No documentation available.
      #
      CONTAINER = "CONTAINER"
    end

    # <p>The destination to which dataset contents are delivered.</p>
    #
    # @!attribute iot_events_destination_configuration
    #   <p>Configuration information for delivery of dataset contents to IoT Events.</p>
    #
    #   @return [IotEventsDestinationConfiguration]
    #
    # @!attribute s3_destination_configuration
    #   <p>Configuration information for delivery of dataset contents to Amazon S3.</p>
    #
    #   @return [S3DestinationConfiguration]
    #
    DatasetContentDeliveryDestination = ::Struct.new(
      :iot_events_destination_configuration,
      :s3_destination_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>When dataset contents are created, they are delivered to destination specified
    #       here.</p>
    #
    # @!attribute entry_name
    #   <p>The name of the dataset content delivery rules entry.</p>
    #
    #   @return [String]
    #
    # @!attribute destination
    #   <p>The destination to which dataset contents are delivered.</p>
    #
    #   @return [DatasetContentDeliveryDestination]
    #
    DatasetContentDeliveryRule = ::Struct.new(
      :entry_name,
      :destination,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DatasetContentState
    #
    module DatasetContentState
      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      SUCCEEDED = "SUCCEEDED"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>The state of the dataset contents and the reason they are in this state.</p>
    #
    # @!attribute state
    #   <p>The state of the dataset contents. Can be one of READY, CREATING, SUCCEEDED, or
    #         FAILED.</p>
    #
    #   Enum, one of: ["CREATING", "SUCCEEDED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>The reason the dataset contents are in this state.</p>
    #
    #   @return [String]
    #
    DatasetContentStatus = ::Struct.new(
      :state,
      :reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Summary information about dataset contents.</p>
    #
    # @!attribute version
    #   <p>The version of the dataset contents.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the dataset contents.</p>
    #
    #   @return [DatasetContentStatus]
    #
    # @!attribute creation_time
    #   <p>The actual time the creation of the dataset contents was started.</p>
    #
    #   @return [Time]
    #
    # @!attribute schedule_time
    #   <p>The time the creation of the dataset contents was scheduled to start.</p>
    #
    #   @return [Time]
    #
    # @!attribute completion_time
    #   <p>The time the dataset content status was updated to SUCCEEDED or FAILED.</p>
    #
    #   @return [Time]
    #
    DatasetContentSummary = ::Struct.new(
      :version,
      :status,
      :creation_time,
      :schedule_time,
      :completion_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The dataset whose latest contents are used as input to the notebook or application.</p>
    #
    # @!attribute dataset_name
    #   <p>The name of the dataset whose latest contents are used as input to the notebook or
    #         application.</p>
    #
    #   @return [String]
    #
    DatasetContentVersionValue = ::Struct.new(
      :dataset_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The reference to a dataset entry.</p>
    #
    # @!attribute entry_name
    #   <p>The name of the dataset item.</p>
    #
    #   @return [String]
    #
    # @!attribute data_uri
    #   <p>The presigned URI of the dataset item.</p>
    #
    #   @return [String]
    #
    DatasetEntry = ::Struct.new(
      :entry_name,
      :data_uri,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DatasetStatus
    #
    module DatasetStatus
      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      DELETING = "DELETING"
    end

    # <p>A summary of information about a dataset.</p>
    #
    # @!attribute dataset_name
    #   <p>The name of the dataset.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the dataset.</p>
    #
    #   Enum, one of: ["CREATING", "ACTIVE", "DELETING"]
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The time the dataset was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_update_time
    #   <p>The last time the dataset was updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute triggers
    #   <p>A list of triggers. A trigger causes dataset content to be populated at a specified time
    #         interval or when another dataset is populated. The list of triggers can be empty or contain up
    #         to five <code>DataSetTrigger</code> objects</p>
    #
    #   @return [Array<DatasetTrigger>]
    #
    # @!attribute actions
    #   <p>A list of <code>DataActionSummary</code> objects.</p>
    #
    #   @return [Array<DatasetActionSummary>]
    #
    DatasetSummary = ::Struct.new(
      :dataset_name,
      :status,
      :creation_time,
      :last_update_time,
      :triggers,
      :actions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The <code>DatasetTrigger</code> that specifies when the dataset is automatically
    #       updated.</p>
    #
    # @!attribute schedule
    #   <p>The Schedule when the trigger is initiated.</p>
    #
    #   @return [Schedule]
    #
    # @!attribute dataset
    #   <p>The dataset whose content creation triggers the creation of this dataset's
    #         contents.</p>
    #
    #   @return [TriggeringDataset]
    #
    DatasetTrigger = ::Struct.new(
      :schedule,
      :dataset,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a data store.</p>
    #
    # @!attribute name
    #   <p>The name of the data store.</p>
    #
    #   @return [String]
    #
    # @!attribute storage
    #   <p>Where data in a data store is stored.. You can choose <code>serviceManagedS3</code> storage, <code>customerManagedS3</code> storage, or <code>iotSiteWiseMultiLayerStorage</code> storage. The default is <code>serviceManagedS3</code>. You can't change the choice of Amazon S3 storage after your data store is created. </p>
    #
    #   @return [DatastoreStorage]
    #
    # @!attribute arn
    #   <p>The ARN of the data store.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of a data store:</p>
    #            <dl>
    #               <dt>CREATING</dt>
    #               <dd>
    #                  <p>The data store is being created.</p>
    #               </dd>
    #               <dt>ACTIVE</dt>
    #               <dd>
    #                  <p>The data store has been created and can be used.</p>
    #               </dd>
    #               <dt>DELETING</dt>
    #               <dd>
    #                  <p>The data store is being deleted.</p>
    #               </dd>
    #            </dl>
    #
    #   Enum, one of: ["CREATING", "ACTIVE", "DELETING"]
    #
    #   @return [String]
    #
    # @!attribute retention_period
    #   <p>How long, in days, message data is kept for the data store. When
    #           <code>customerManagedS3</code> storage is selected, this parameter is ignored.</p>
    #
    #   @return [RetentionPeriod]
    #
    # @!attribute creation_time
    #   <p>When the data store was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_update_time
    #   <p>The last time the data store was updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_message_arrival_time
    #   <p>The last time when a new message arrived in the data store.</p>
    #            <p>IoT Analytics updates this value at most once per minute for Amazon Simple Storage Service one data store. Hence, the <code>lastMessageArrivalTime</code> value is an approximation.</p>
    #            <p>This feature only applies to messages that arrived in the data store after October 23, 2020. </p>
    #
    #   @return [Time]
    #
    # @!attribute file_format_configuration
    #   <p>Contains the configuration information of file formats.  IoT Analytics data stores support JSON and <a href="https://parquet.apache.org/">Parquet</a>.</p>
    #            <p>The default file format is JSON. You can specify only one format.</p>
    #            <p>You can't change the file format after you create the data store.</p>
    #
    #   @return [FileFormatConfiguration]
    #
    # @!attribute datastore_partitions
    #   <p> Contains information about the partition dimensions in a data store. </p>
    #
    #   @return [DatastorePartitions]
    #
    Datastore = ::Struct.new(
      :name,
      :storage,
      :arn,
      :status,
      :retention_period,
      :creation_time,
      :last_update_time,
      :last_message_arrival_time,
      :file_format_configuration,
      :datastore_partitions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The datastore activity that specifies where to store the processed data.</p>
    #
    # @!attribute name
    #   <p>The name of the datastore activity.</p>
    #
    #   @return [String]
    #
    # @!attribute datastore_name
    #   <p>The name of the data store where processed messages are stored.</p>
    #
    #   @return [String]
    #
    DatastoreActivity = ::Struct.new(
      :name,
      :datastore_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Used to store data used by IoT SiteWise in an Amazon S3 bucket that you manage. You can't change the choice of Amazon S3 storage after your data store is created.   </p>
    #
    # @!attribute customer_managed_s3_storage
    #   <p> Used to store data used by IoT SiteWise in an Amazon S3 bucket that you manage. </p>
    #
    #   @return [IotSiteWiseCustomerManagedDatastoreS3Storage]
    #
    DatastoreIotSiteWiseMultiLayerStorage = ::Struct.new(
      :customer_managed_s3_storage,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Contains information about the data store that you manage, which stores data used by IoT SiteWise. </p>
    #
    # @!attribute customer_managed_s3_storage
    #   <p>Used to store data used by IoT SiteWise in an Amazon S3 bucket that you manage.</p>
    #
    #   @return [IotSiteWiseCustomerManagedDatastoreS3StorageSummary]
    #
    DatastoreIotSiteWiseMultiLayerStorageSummary = ::Struct.new(
      :customer_managed_s3_storage,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> A single dimension to partition a data store. The dimension must be an
    #         <code>AttributePartition</code> or a <code>TimestampPartition</code>. </p>
    #
    # @!attribute attribute_partition
    #   <p> A partition dimension defined by an <code>attributeName</code>. </p>
    #
    #   @return [Partition]
    #
    # @!attribute timestamp_partition
    #   <p> A partition dimension defined by a timestamp attribute. </p>
    #
    #   @return [TimestampPartition]
    #
    DatastorePartition = ::Struct.new(
      :attribute_partition,
      :timestamp_partition,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Contains information about the partition dimensions in a data store. </p>
    #
    # @!attribute partitions
    #   <p> A list of partition dimensions in a data store. </p>
    #
    #   @return [Array<DatastorePartition>]
    #
    DatastorePartitions = ::Struct.new(
      :partitions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Statistical information about the data store.</p>
    #
    # @!attribute size
    #   <p>The estimated size of the data store.</p>
    #
    #   @return [EstimatedResourceSize]
    #
    DatastoreStatistics = ::Struct.new(
      :size,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DatastoreStatus
    #
    module DatastoreStatus
      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      DELETING = "DELETING"
    end

    # <p>Where data in a data store is stored.. You can choose <code>serviceManagedS3</code> storage, <code>customerManagedS3</code> storage, or <code>iotSiteWiseMultiLayerStorage</code> storage. The default is <code>serviceManagedS3</code>. You can't change the choice of Amazon S3 storage after your data store is created. </p>
    #
    class DatastoreStorage < Hearth::Union
      # <p>Used to store data in an Amazon S3 bucket managed by IoT Analytics. You can't change the choice of Amazon S3 storage after your data store is created.  </p>
      #
      class ServiceManagedS3 < DatastoreStorage
        def to_h
          { service_managed_s3: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::IoTAnalytics::Types::ServiceManagedS3 #{__getobj__ || 'nil'}>"
        end
      end

      # <p>S3-customer-managed; When you choose customer-managed storage, the <code>retentionPeriod</code> parameter is ignored. You can't change the choice of Amazon S3 storage after your data store is created.  </p>
      #
      class CustomerManagedS3 < DatastoreStorage
        def to_h
          { customer_managed_s3: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::IoTAnalytics::Types::CustomerManagedS3 #{__getobj__ || 'nil'}>"
        end
      end

      # <p> Used to store data used by IoT SiteWise in an Amazon S3 bucket that you manage. You can't change the choice of Amazon S3 storage after your data store is created.   </p>
      #
      class IotSiteWiseMultiLayerStorage < DatastoreStorage
        def to_h
          { iot_site_wise_multi_layer_storage: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::IoTAnalytics::Types::IotSiteWiseMultiLayerStorage #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < DatastoreStorage
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::IoTAnalytics::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p>Contains information about your data store.</p>
    #
    # @!attribute service_managed_s3
    #   <p>Used to store data in an Amazon S3 bucket managed by IoT Analytics.</p>
    #
    #   @return [ServiceManagedDatastoreS3StorageSummary]
    #
    # @!attribute customer_managed_s3
    #   <p>Used to store data in an Amazon S3 bucket managed by IoT Analytics.</p>
    #
    #   @return [CustomerManagedDatastoreS3StorageSummary]
    #
    # @!attribute iot_site_wise_multi_layer_storage
    #   <p> Used to store data used by IoT SiteWise in an Amazon S3 bucket that you manage. </p>
    #
    #   @return [DatastoreIotSiteWiseMultiLayerStorageSummary]
    #
    DatastoreStorageSummary = ::Struct.new(
      :service_managed_s3,
      :customer_managed_s3,
      :iot_site_wise_multi_layer_storage,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A summary of information about a data store.</p>
    #
    # @!attribute datastore_name
    #   <p>The name of the data store.</p>
    #
    #   @return [String]
    #
    # @!attribute datastore_storage
    #   <p>Where data in a data store is stored.</p>
    #
    #   @return [DatastoreStorageSummary]
    #
    # @!attribute status
    #   <p>The status of the data store.</p>
    #
    #   Enum, one of: ["CREATING", "ACTIVE", "DELETING"]
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>When the data store was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_update_time
    #   <p>The last time the data store was updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_message_arrival_time
    #   <p>The last time when a new message arrived in the data store.</p>
    #            <p>IoT Analytics updates this value at most once per minute for Amazon Simple Storage Service one data store. Hence, the <code>lastMessageArrivalTime</code> value is an approximation.</p>
    #            <p>This feature only applies to messages that arrived in the data store after October 23, 2020. </p>
    #
    #   @return [Time]
    #
    # @!attribute file_format_type
    #   <p>The file format of the data in the data store.</p>
    #
    #   Enum, one of: ["JSON", "PARQUET"]
    #
    #   @return [String]
    #
    # @!attribute datastore_partitions
    #   <p> Contains information about the partition dimensions in a data store. </p>
    #
    #   @return [DatastorePartitions]
    #
    DatastoreSummary = ::Struct.new(
      :datastore_name,
      :datastore_storage,
      :status,
      :creation_time,
      :last_update_time,
      :last_message_arrival_time,
      :file_format_type,
      :datastore_partitions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_name
    #   <p>The name of the channel to delete.</p>
    #
    #   @return [String]
    #
    DeleteChannelInput = ::Struct.new(
      :channel_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteChannelOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute dataset_name
    #   <p>The name of the dataset whose content is deleted.</p>
    #
    #   @return [String]
    #
    # @!attribute version_id
    #   <p>The version of the dataset whose content is deleted. You can also use the strings
    #         "$LATEST" or "$LATEST_SUCCEEDED" to delete the latest or latest successfully completed data
    #         set. If not specified, "$LATEST_SUCCEEDED" is the default.</p>
    #
    #   @return [String]
    #
    DeleteDatasetContentInput = ::Struct.new(
      :dataset_name,
      :version_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteDatasetContentOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute dataset_name
    #   <p>The name of the dataset to delete.</p>
    #
    #   @return [String]
    #
    DeleteDatasetInput = ::Struct.new(
      :dataset_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteDatasetOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute datastore_name
    #   <p>The name of the data store to delete.</p>
    #
    #   @return [String]
    #
    DeleteDatastoreInput = ::Struct.new(
      :datastore_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteDatastoreOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute pipeline_name
    #   <p>The name of the pipeline to delete.</p>
    #
    #   @return [String]
    #
    DeletePipelineInput = ::Struct.new(
      :pipeline_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeletePipelineOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Used to limit data to that which has arrived since the last execution of the
    #       action.</p>
    #
    # @!attribute offset_seconds
    #   <p>The number of seconds of estimated in-flight lag time of message data. When you create
    #         dataset contents using message data from a specified timeframe, some message data might still
    #         be in flight when processing begins, and so do not arrive in time to be processed. Use this
    #         field to make allowances for the in flight time of your message data, so that data not
    #         processed from a previous timeframe is included with the next timeframe. Otherwise, missed
    #         message data would be excluded from processing during the next timeframe too, because its
    #         timestamp places it within the previous timeframe.</p>
    #
    #   @return [Integer]
    #
    # @!attribute time_expression
    #   <p>An expression by which the time of the message data might be determined. This can be the
    #         name of a timestamp field or a SQL expression that is used to derive the time the message data
    #         was generated.</p>
    #
    #   @return [String]
    #
    DeltaTime = ::Struct.new(
      :offset_seconds,
      :time_expression,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure that contains the configuration information of a delta time session
    #       window.</p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/iotanalytics/latest/APIReference/API_DeltaTime.html">
    #                <code>DeltaTime</code>
    #             </a> specifies a time interval. You can use
    #         <code>DeltaTime</code> to create dataset contents with data that has arrived in the data
    #       store since the last execution. For an example of <code>DeltaTime</code>, see <a href="https://docs.aws.amazon.com/iotanalytics/latest/userguide/automate-create-dataset.html#automate-example6"> Creating
    #         a SQL dataset with a delta window (CLI)</a> in the
    #         <i>IoT Analytics User Guide</i>.</p>
    #
    # @!attribute timeout_in_minutes
    #   <p>A time interval. You can use <code>timeoutInMinutes</code> so that IoT Analytics can batch up late
    #         data notifications that have been generated since the last execution. IoT Analytics sends one batch of
    #         notifications to Amazon CloudWatch Events at one time.</p>
    #            <p>For more information about how to write a timestamp expression, see <a href="https://prestodb.io/docs/0.172/functions/datetime.html">Date and Time Functions and
    #           Operators</a>, in the <i>Presto 0.172 Documentation</i>.</p>
    #
    #   @return [Integer]
    #
    DeltaTimeSessionWindowConfiguration = ::Struct.new(
      :timeout_in_minutes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_name
    #   <p>The name of the channel whose information is retrieved.</p>
    #
    #   @return [String]
    #
    # @!attribute include_statistics
    #   <p>If true, additional statistical information about the channel is included in the response.
    #         This feature can't be used with a channel whose S3 storage is customer-managed.</p>
    #
    #   @return [Boolean]
    #
    DescribeChannelInput = ::Struct.new(
      :channel_name,
      :include_statistics,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.include_statistics ||= false
      end

    end

    # @!attribute channel
    #   <p>An object that contains information about the channel.</p>
    #
    #   @return [Channel]
    #
    # @!attribute statistics
    #   <p>Statistics about the channel. Included if the <code>includeStatistics</code> parameter is
    #         set to <code>true</code> in the request.</p>
    #
    #   @return [ChannelStatistics]
    #
    DescribeChannelOutput = ::Struct.new(
      :channel,
      :statistics,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute dataset_name
    #   <p>The name of the dataset whose information is retrieved.</p>
    #
    #   @return [String]
    #
    DescribeDatasetInput = ::Struct.new(
      :dataset_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute dataset
    #   <p>An object that contains information about the dataset.</p>
    #
    #   @return [Dataset]
    #
    DescribeDatasetOutput = ::Struct.new(
      :dataset,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute datastore_name
    #   <p>The name of the data store</p>
    #
    #   @return [String]
    #
    # @!attribute include_statistics
    #   <p>If true, additional statistical information about the data store is included in the
    #         response. This feature can't be used with a data store whose S3 storage is
    #         customer-managed.</p>
    #
    #   @return [Boolean]
    #
    DescribeDatastoreInput = ::Struct.new(
      :datastore_name,
      :include_statistics,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.include_statistics ||= false
      end

    end

    # @!attribute datastore
    #   <p>Information about the data store.</p>
    #
    #   @return [Datastore]
    #
    # @!attribute statistics
    #   <p>Additional statistical information about the data store. Included if the
    #           <code>includeStatistics</code> parameter is set to <code>true</code> in the request.</p>
    #
    #   @return [DatastoreStatistics]
    #
    DescribeDatastoreOutput = ::Struct.new(
      :datastore,
      :statistics,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DescribeLoggingOptionsInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute logging_options
    #   <p>The current settings of the IoT Analytics logging options.</p>
    #
    #   @return [LoggingOptions]
    #
    DescribeLoggingOptionsOutput = ::Struct.new(
      :logging_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute pipeline_name
    #   <p>The name of the pipeline whose information is retrieved.</p>
    #
    #   @return [String]
    #
    DescribePipelineInput = ::Struct.new(
      :pipeline_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute pipeline
    #   <p>A <code>Pipeline</code> object that contains information about the pipeline.</p>
    #
    #   @return [Pipeline]
    #
    DescribePipelineOutput = ::Struct.new(
      :pipeline,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An activity that adds data from the IoT device registry to your message.</p>
    #
    # @!attribute name
    #   <p>The name of the <code>deviceRegistryEnrich</code> activity.</p>
    #
    #   @return [String]
    #
    # @!attribute attribute
    #   <p>The name of the attribute that is added to the message.</p>
    #
    #   @return [String]
    #
    # @!attribute thing_name
    #   <p>The name of the IoT device whose registry information is added to the message.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The ARN of the role that allows access to the device's registry information.</p>
    #
    #   @return [String]
    #
    # @!attribute next
    #   <p>The next activity in the pipeline.</p>
    #
    #   @return [String]
    #
    DeviceRegistryEnrichActivity = ::Struct.new(
      :name,
      :attribute,
      :thing_name,
      :role_arn,
      :next,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An activity that adds information from the IoT Device Shadow service to a
    #       message.</p>
    #
    # @!attribute name
    #   <p>The name of the <code>deviceShadowEnrich</code> activity.</p>
    #
    #   @return [String]
    #
    # @!attribute attribute
    #   <p>The name of the attribute that is added to the message.</p>
    #
    #   @return [String]
    #
    # @!attribute thing_name
    #   <p>The name of the IoT device whose shadow information is added to the message.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The ARN of the role that allows access to the device's shadow.</p>
    #
    #   @return [String]
    #
    # @!attribute next
    #   <p>The next activity in the pipeline.</p>
    #
    #   @return [String]
    #
    DeviceShadowEnrichActivity = ::Struct.new(
      :name,
      :attribute,
      :thing_name,
      :role_arn,
      :next,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The estimated size of the resource.</p>
    #
    # @!attribute estimated_size_in_bytes
    #   <p>The estimated size of the resource, in bytes.</p>
    #
    #   @return [Float]
    #
    # @!attribute estimated_on
    #   <p>The time when the estimate of the size of the resource was made.</p>
    #
    #   @return [Time]
    #
    EstimatedResourceSize = ::Struct.new(
      :estimated_size_in_bytes,
      :estimated_on,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the configuration information of file formats.  IoT Analytics data stores support JSON and <a href="https://parquet.apache.org/">Parquet</a>.</p>
    #          <p>The default file format is JSON. You can specify only one format.</p>
    #          <p>You can't change the file format after you create the data store.</p>
    #
    # @!attribute json_configuration
    #   <p>Contains the configuration information of the JSON format.</p>
    #
    #   @return [JsonConfiguration]
    #
    # @!attribute parquet_configuration
    #   <p>Contains the configuration information of the Parquet format.</p>
    #
    #   @return [ParquetConfiguration]
    #
    FileFormatConfiguration = ::Struct.new(
      :json_configuration,
      :parquet_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FileFormatType
    #
    module FileFormatType
      # No documentation available.
      #
      JSON = "JSON"

      # No documentation available.
      #
      PARQUET = "PARQUET"
    end

    # <p>An activity that filters a message based on its attributes.</p>
    #
    # @!attribute name
    #   <p>The name of the filter activity.</p>
    #
    #   @return [String]
    #
    # @!attribute filter
    #   <p>An expression that looks like a SQL WHERE clause that must return a Boolean value.
    #         Messages that satisfy the condition are passed to the next activity. </p>
    #
    #   @return [String]
    #
    # @!attribute next
    #   <p>The next activity in the pipeline.</p>
    #
    #   @return [String]
    #
    FilterActivity = ::Struct.new(
      :name,
      :filter,
      :next,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute dataset_name
    #   <p>The name of the dataset whose contents are retrieved.</p>
    #
    #   @return [String]
    #
    # @!attribute version_id
    #   <p>The version of the dataset whose contents are retrieved. You can also use the strings
    #         "$LATEST" or "$LATEST_SUCCEEDED" to retrieve the contents of the latest or latest successfully
    #         completed dataset. If not specified, "$LATEST_SUCCEEDED" is the default.</p>
    #
    #   @return [String]
    #
    GetDatasetContentInput = ::Struct.new(
      :dataset_name,
      :version_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute entries
    #   <p>A list of <code>DatasetEntry</code> objects.</p>
    #
    #   @return [Array<DatasetEntry>]
    #
    # @!attribute timestamp
    #   <p>The time when the request was made.</p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>The status of the dataset content.</p>
    #
    #   @return [DatasetContentStatus]
    #
    GetDatasetContentOutput = ::Struct.new(
      :entries,
      :timestamp,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Configuration information for coordination with Glue, a fully managed extract, transform
    #       and load (ETL) service.</p>
    #
    # @!attribute table_name
    #   <p>The name of the table in your Glue Data Catalog that is used to perform the ETL
    #         operations. An Glue Data Catalog table contains partitioned data and descriptions of data
    #         sources and targets.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The name of the database in your Glue Data Catalog in which the table is located. An
    #         Glue Data Catalog database contains metadata tables.</p>
    #
    #   @return [String]
    #
    GlueConfiguration = ::Struct.new(
      :table_name,
      :database_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>There was an internal failure.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InternalFailureException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidRequestException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Configuration information for delivery of dataset contents to IoT Events.</p>
    #
    # @!attribute input_name
    #   <p>The name of the IoT Events input to which dataset contents are delivered.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The ARN of the role that grants IoT Analytics permission to deliver dataset contents to an IoT Events
    #         input.</p>
    #
    #   @return [String]
    #
    IotEventsDestinationConfiguration = ::Struct.new(
      :input_name,
      :role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Used to store data used by IoT SiteWise in an Amazon S3 bucket that you manage. You can't change the choice of Amazon S3 storage after your data store is created.   </p>
    #
    # @!attribute bucket
    #   <p> The name of the Amazon S3 bucket where your data is stored. </p>
    #
    #   @return [String]
    #
    # @!attribute key_prefix
    #   <p> (Optional) The prefix used to create the keys of the data store data objects. Each object in an Amazon S3 bucket has a key that is its unique identifier in the bucket. Each object in a bucket has exactly one key. The prefix must end with a forward slash (/). </p>
    #
    #   @return [String]
    #
    IotSiteWiseCustomerManagedDatastoreS3Storage = ::Struct.new(
      :bucket,
      :key_prefix,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Contains information about the data store that you manage, which stores data used by IoT SiteWise. </p>
    #
    # @!attribute bucket
    #   <p> The name of the Amazon S3 bucket where your data is stored. </p>
    #
    #   @return [String]
    #
    # @!attribute key_prefix
    #   <p> (Optional) The prefix used to create the keys of the data store data objects. Each object in an Amazon S3 bucket has a key that is its unique identifier in the bucket. Each object in a bucket has exactly one key. The prefix must end with a forward slash (/). </p>
    #
    #   @return [String]
    #
    IotSiteWiseCustomerManagedDatastoreS3StorageSummary = ::Struct.new(
      :bucket,
      :key_prefix,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the configuration information of the JSON format.</p>
    #
    JsonConfiguration = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An activity that runs a Lambda function to modify the message.</p>
    #
    # @!attribute name
    #   <p>The name of the lambda activity.</p>
    #
    #   @return [String]
    #
    # @!attribute lambda_name
    #   <p>The name of the Lambda function that is run on the message.</p>
    #
    #   @return [String]
    #
    # @!attribute batch_size
    #   <p>The number of messages passed to the Lambda function for processing.</p>
    #            <p>The Lambda function must be able to process all of these messages within five minutes,
    #         which is the maximum timeout duration for Lambda functions.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next
    #   <p>The next activity in the pipeline.</p>
    #
    #   @return [String]
    #
    LambdaActivity = ::Struct.new(
      :name,
      :lambda_name,
      :batch_size,
      :next,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure that contains the name and configuration information of a late data
    #       rule.</p>
    #
    # @!attribute rule_name
    #   <p>The name of the late data rule.</p>
    #
    #   @return [String]
    #
    # @!attribute rule_configuration
    #   <p>The information needed to configure the late data rule.</p>
    #
    #   @return [LateDataRuleConfiguration]
    #
    LateDataRule = ::Struct.new(
      :rule_name,
      :rule_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The information needed to configure a delta time session window.</p>
    #
    # @!attribute delta_time_session_window_configuration
    #   <p>The information needed to configure a delta time session window.</p>
    #
    #   @return [DeltaTimeSessionWindowConfiguration]
    #
    LateDataRuleConfiguration = ::Struct.new(
      :delta_time_session_window_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The command caused an internal limit to be exceeded.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    LimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in this request.</p>
    #            <p>The default value is 100.</p>
    #
    #   @return [Integer]
    #
    ListChannelsInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_summaries
    #   <p>A list of <code>ChannelSummary</code> objects.</p>
    #
    #   @return [Array<ChannelSummary>]
    #
    # @!attribute next_token
    #   <p>The token to retrieve the next set of results, or <code>null</code> if there are no more
    #         results.</p>
    #
    #   @return [String]
    #
    ListChannelsOutput = ::Struct.new(
      :channel_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute dataset_name
    #   <p>The name of the dataset whose contents information you want to list.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in this request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute scheduled_on_or_after
    #   <p>A filter to limit results to those dataset contents whose creation is scheduled on or
    #         after the given time. See the field <code>triggers.schedule</code> in the
    #           <code>CreateDataset</code> request. (timestamp)</p>
    #
    #   @return [Time]
    #
    # @!attribute scheduled_before
    #   <p>A filter to limit results to those dataset contents whose creation is scheduled before the
    #         given time. See the field <code>triggers.schedule</code> in the <code>CreateDataset</code>
    #         request. (timestamp)</p>
    #
    #   @return [Time]
    #
    ListDatasetContentsInput = ::Struct.new(
      :dataset_name,
      :next_token,
      :max_results,
      :scheduled_on_or_after,
      :scheduled_before,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute dataset_content_summaries
    #   <p>Summary information about dataset contents that have been created.</p>
    #
    #   @return [Array<DatasetContentSummary>]
    #
    # @!attribute next_token
    #   <p>The token to retrieve the next set of results, or <code>null</code> if there are no more
    #         results.</p>
    #
    #   @return [String]
    #
    ListDatasetContentsOutput = ::Struct.new(
      :dataset_content_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in this request.</p>
    #            <p>The default value is 100.</p>
    #
    #   @return [Integer]
    #
    ListDatasetsInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute dataset_summaries
    #   <p>A list of <code>DatasetSummary</code> objects.</p>
    #
    #   @return [Array<DatasetSummary>]
    #
    # @!attribute next_token
    #   <p>The token to retrieve the next set of results, or <code>null</code> if there are no more
    #         results.</p>
    #
    #   @return [String]
    #
    ListDatasetsOutput = ::Struct.new(
      :dataset_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in this request.</p>
    #            <p>The default value is 100.</p>
    #
    #   @return [Integer]
    #
    ListDatastoresInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute datastore_summaries
    #   <p>A list of <code>DatastoreSummary</code> objects.</p>
    #
    #   @return [Array<DatastoreSummary>]
    #
    # @!attribute next_token
    #   <p>The token to retrieve the next set of results, or <code>null</code> if there are no more
    #         results.</p>
    #
    #   @return [String]
    #
    ListDatastoresOutput = ::Struct.new(
      :datastore_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in this request.</p>
    #            <p>The default value is 100.</p>
    #
    #   @return [Integer]
    #
    ListPipelinesInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute pipeline_summaries
    #   <p>A list of <code>PipelineSummary</code> objects.</p>
    #
    #   @return [Array<PipelineSummary>]
    #
    # @!attribute next_token
    #   <p>The token to retrieve the next set of results, or <code>null</code> if there are no more
    #         results.</p>
    #
    #   @return [String]
    #
    ListPipelinesOutput = ::Struct.new(
      :pipeline_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource whose tags you want to list.</p>
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
    #   <p>The tags (metadata) that you have assigned to the resource.</p>
    #
    #   @return [Array<Tag>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for LoggingLevel
    #
    module LoggingLevel
      # No documentation available.
      #
      ERROR = "ERROR"
    end

    # <p>Information about logging options.</p>
    #
    # @!attribute role_arn
    #   <p>The ARN of the role that grants permission to IoT Analytics to perform logging.</p>
    #
    #   @return [String]
    #
    # @!attribute level
    #   <p>The logging level. Currently, only ERROR is supported.</p>
    #
    #   Enum, one of: ["ERROR"]
    #
    #   @return [String]
    #
    # @!attribute enabled
    #   <p>If true, logging is enabled for IoT Analytics.</p>
    #
    #   @return [Boolean]
    #
    LoggingOptions = ::Struct.new(
      :role_arn,
      :level,
      :enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.enabled ||= false
      end

    end

    # <p>An activity that computes an arithmetic expression using the message's attributes.</p>
    #
    # @!attribute name
    #   <p>The name of the math activity.</p>
    #
    #   @return [String]
    #
    # @!attribute attribute
    #   <p>The name of the attribute that contains the result of the math operation.</p>
    #
    #   @return [String]
    #
    # @!attribute math
    #   <p>An expression that uses one or more existing attributes and must return an integer
    #         value.</p>
    #
    #   @return [String]
    #
    # @!attribute next
    #   <p>The next activity in the pipeline.</p>
    #
    #   @return [String]
    #
    MathActivity = ::Struct.new(
      :name,
      :attribute,
      :math,
      :next,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a message.</p>
    #
    # @!attribute message_id
    #   <p>The ID you want to assign to the message. Each <code>messageId</code> must be unique
    #            within each batch sent.</p>
    #
    #   @return [String]
    #
    # @!attribute payload
    #   <p>The payload of the message. This can be a JSON string or a base64-encoded string
    #            representing binary data, in which case you must decode it by means of a pipeline
    #            activity.</p>
    #
    #   @return [String]
    #
    Message = ::Struct.new(
      :message_id,
      :payload,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The value of the variable as a structure that specifies an output file URI.</p>
    #
    # @!attribute file_name
    #   <p>The URI of the location where dataset contents are stored, usually the URI of a file in an
    #         S3 bucket.</p>
    #
    #   @return [String]
    #
    OutputFileUriValue = ::Struct.new(
      :file_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the configuration information of the Parquet format.</p>
    #
    # @!attribute schema_definition
    #   <p>Information needed to define a schema.</p>
    #
    #   @return [SchemaDefinition]
    #
    ParquetConfiguration = ::Struct.new(
      :schema_definition,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> A partition dimension defined by an attribute. </p>
    #
    # @!attribute attribute_name
    #   <p> The name of the attribute that defines a partition dimension. </p>
    #
    #   @return [String]
    #
    Partition = ::Struct.new(
      :attribute_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about a pipeline.</p>
    #
    # @!attribute name
    #   <p>The name of the pipeline.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The ARN of the pipeline.</p>
    #
    #   @return [String]
    #
    # @!attribute activities
    #   <p>The activities that perform transformations on the messages.</p>
    #
    #   @return [Array<PipelineActivity>]
    #
    # @!attribute reprocessing_summaries
    #   <p>A summary of information about the pipeline reprocessing.</p>
    #
    #   @return [Array<ReprocessingSummary>]
    #
    # @!attribute creation_time
    #   <p>When the pipeline was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_update_time
    #   <p>The last time the pipeline was updated.</p>
    #
    #   @return [Time]
    #
    Pipeline = ::Struct.new(
      :name,
      :arn,
      :activities,
      :reprocessing_summaries,
      :creation_time,
      :last_update_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An activity that performs a transformation on a message.</p>
    #
    # @!attribute channel
    #   <p>Determines the source of the messages to be processed.</p>
    #
    #   @return [ChannelActivity]
    #
    # @!attribute lambda
    #   <p>Runs a Lambda function to modify the message.</p>
    #
    #   @return [LambdaActivity]
    #
    # @!attribute datastore
    #   <p>Specifies where to store the processed message data.</p>
    #
    #   @return [DatastoreActivity]
    #
    # @!attribute add_attributes
    #   <p>Adds other attributes based on existing attributes in the message.</p>
    #
    #   @return [AddAttributesActivity]
    #
    # @!attribute remove_attributes
    #   <p>Removes attributes from a message.</p>
    #
    #   @return [RemoveAttributesActivity]
    #
    # @!attribute select_attributes
    #   <p>Used to create a new message using only the specified attributes from the original
    #         message. </p>
    #
    #   @return [SelectAttributesActivity]
    #
    # @!attribute filter
    #   <p>Filters a message based on its attributes.</p>
    #
    #   @return [FilterActivity]
    #
    # @!attribute math
    #   <p>Computes an arithmetic expression using the message's attributes and adds it to the
    #         message.</p>
    #
    #   @return [MathActivity]
    #
    # @!attribute device_registry_enrich
    #   <p>Adds data from the IoT device registry to your message.</p>
    #
    #   @return [DeviceRegistryEnrichActivity]
    #
    # @!attribute device_shadow_enrich
    #   <p>Adds information from the IoT Device Shadow service to a message.</p>
    #
    #   @return [DeviceShadowEnrichActivity]
    #
    PipelineActivity = ::Struct.new(
      :channel,
      :lambda,
      :datastore,
      :add_attributes,
      :remove_attributes,
      :select_attributes,
      :filter,
      :math,
      :device_registry_enrich,
      :device_shadow_enrich,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A summary of information about a pipeline.</p>
    #
    # @!attribute pipeline_name
    #   <p>The name of the pipeline.</p>
    #
    #   @return [String]
    #
    # @!attribute reprocessing_summaries
    #   <p>A summary of information about the pipeline reprocessing.</p>
    #
    #   @return [Array<ReprocessingSummary>]
    #
    # @!attribute creation_time
    #   <p>When the pipeline was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_update_time
    #   <p>When the pipeline was last updated.</p>
    #
    #   @return [Time]
    #
    PipelineSummary = ::Struct.new(
      :pipeline_name,
      :reprocessing_summaries,
      :creation_time,
      :last_update_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute logging_options
    #   <p>The new values of the IoT Analytics logging options.</p>
    #
    #   @return [LoggingOptions]
    #
    PutLoggingOptionsInput = ::Struct.new(
      :logging_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutLoggingOptionsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information that is used to filter message data, to segregate it according to the
    #       timeframe in which it arrives.</p>
    #
    # @!attribute delta_time
    #   <p>Used to limit data to that which has arrived since the last execution of the
    #         action.</p>
    #
    #   @return [DeltaTime]
    #
    QueryFilter = ::Struct.new(
      :delta_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An activity that removes attributes from a message.</p>
    #
    # @!attribute name
    #   <p>The name of the <code>removeAttributes</code> activity.</p>
    #
    #   @return [String]
    #
    # @!attribute attributes
    #   <p>A list of 1-50 attributes to remove from the message.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next
    #   <p>The next activity in the pipeline.</p>
    #
    #   @return [String]
    #
    RemoveAttributesActivity = ::Struct.new(
      :name,
      :attributes,
      :next,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ReprocessingStatus
    #
    module ReprocessingStatus
      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      SUCCEEDED = "SUCCEEDED"

      # No documentation available.
      #
      CANCELLED = "CANCELLED"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>Information about pipeline reprocessing.</p>
    #
    # @!attribute id
    #   <p>The <code>reprocessingId</code> returned by <code>StartPipelineReprocessing</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the pipeline reprocessing.</p>
    #
    #   Enum, one of: ["RUNNING", "SUCCEEDED", "CANCELLED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The time the pipeline reprocessing was created.</p>
    #
    #   @return [Time]
    #
    ReprocessingSummary = ::Struct.new(
      :id,
      :status,
      :creation_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A resource with the same name already exists.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #
    #   @return [String]
    #
    ResourceAlreadyExistsException = ::Struct.new(
      :message,
      :resource_id,
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configuration of the resource used to execute the <code>containerAction</code>.</p>
    #
    # @!attribute compute_type
    #   <p>The type of the compute resource used to execute the <code>containerAction</code>.
    #         Possible values are: <code>ACU_1</code> (vCPU=4, memory=16 GiB) or <code>ACU_2</code> (vCPU=8,
    #         memory=32 GiB).</p>
    #
    #   Enum, one of: ["ACU_1", "ACU_2"]
    #
    #   @return [String]
    #
    # @!attribute volume_size_in_gb
    #   <p>The size, in GB, of the persistent storage available to the resource instance used to
    #         execute the <code>containerAction</code> (min: 1, max: 50).</p>
    #
    #   @return [Integer]
    #
    ResourceConfiguration = ::Struct.new(
      :compute_type,
      :volume_size_in_gb,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.volume_size_in_gb ||= 0
      end

    end

    # <p>A resource with the specified name could not be found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>How long, in days, message data is kept.</p>
    #
    # @!attribute unlimited
    #   <p>If true, message data is kept indefinitely.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute number_of_days
    #   <p>The number of days that message data is kept. The <code>unlimited</code> parameter must be
    #         false.</p>
    #
    #   @return [Integer]
    #
    RetentionPeriod = ::Struct.new(
      :unlimited,
      :number_of_days,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.unlimited ||= false
      end

    end

    # @!attribute pipeline_activity
    #   <p>The pipeline activity that is run. This must not be a channel activity or a data store
    #         activity because these activities are used in a pipeline only to load the original message and
    #         to store the (possibly) transformed message. If a Lambda activity is specified, only
    #         short-running Lambda functions (those with a timeout of less than 30 seconds or less) can be
    #         used.</p>
    #
    #   @return [PipelineActivity]
    #
    # @!attribute payloads
    #   <p>The sample message payloads on which the pipeline activity is run.</p>
    #
    #   @return [Array<String>]
    #
    RunPipelineActivityInput = ::Struct.new(
      :pipeline_activity,
      :payloads,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute payloads
    #   <p>The enriched or transformed sample message payloads as base64-encoded strings. (The
    #         results of running the pipeline activity on each input sample message payload, encoded in
    #         base64.)</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute log_result
    #   <p>In case the pipeline activity fails, the log message that is generated.</p>
    #
    #   @return [String]
    #
    RunPipelineActivityOutput = ::Struct.new(
      :payloads,
      :log_result,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Configuration information for delivery of dataset contents to Amazon Simple Storage Service (Amazon S3).</p>
    #
    # @!attribute bucket
    #   <p>The name of the S3 bucket to which dataset contents are delivered.</p>
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>The key of the dataset contents object in an S3 bucket. Each object has a key that is a
    #         unique identifier. Each object has exactly one key.</p>
    #            <p>You can create a unique key with the following options:</p>
    #            <ul>
    #               <li>
    #                  <p>Use <code>!{iotanalytics:scheduleTime}</code> to insert the time of a scheduled SQL
    #             query run.</p>
    #               </li>
    #               <li>
    #                  <p>Use <code>!{iotanalytics:versionId}</code> to insert a unique hash that identifies a
    #             dataset content.</p>
    #               </li>
    #               <li>
    #                  <p>Use <code>!{iotanalytics:creationTime}</code> to insert the creation time of a dataset
    #             content.</p>
    #               </li>
    #            </ul>
    #            <p>The following example creates a unique key for a CSV file:
    #           <code>dataset/mydataset/!{iotanalytics:scheduleTime}/!{iotanalytics:versionId}.csv</code>
    #            </p>
    #            <note>
    #               <p>If you don't use <code>!{iotanalytics:versionId}</code> to specify the key, you might
    #           get duplicate keys. For example, you might have two dataset contents with the same
    #             <code>scheduleTime</code> but different <code>versionId</code>s. This means that one
    #           dataset content overwrites the other. </p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute glue_configuration
    #   <p>Configuration information for coordination with Glue, a fully managed extract, transform
    #         and load (ETL) service.</p>
    #
    #   @return [GlueConfiguration]
    #
    # @!attribute role_arn
    #   <p>The ARN of the role that grants IoT Analytics permission to interact with your Amazon S3 and Glue
    #         resources.</p>
    #
    #   @return [String]
    #
    S3DestinationConfiguration = ::Struct.new(
      :bucket,
      :key,
      :glue_configuration,
      :role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_name
    #   <p>The name of the channel whose message samples are retrieved.</p>
    #
    #   @return [String]
    #
    # @!attribute max_messages
    #   <p>The number of sample messages to be retrieved. The limit is 10. The default is also
    #         10.</p>
    #
    #   @return [Integer]
    #
    # @!attribute start_time
    #   <p>The start of the time window from which sample messages are retrieved.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The end of the time window from which sample messages are retrieved.</p>
    #
    #   @return [Time]
    #
    SampleChannelDataInput = ::Struct.new(
      :channel_name,
      :max_messages,
      :start_time,
      :end_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute payloads
    #   <p>The list of message samples. Each sample message is returned as a base64-encoded
    #         string.</p>
    #
    #   @return [Array<String>]
    #
    SampleChannelDataOutput = ::Struct.new(
      :payloads,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The schedule for when to trigger an update.</p>
    #
    # @!attribute expression
    #   <p>The expression that defines when to trigger an update. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html">Schedule
    #           Expressions for Rules</a> in the <i>Amazon CloudWatch Events User
    #           Guide</i>.</p>
    #
    #   @return [String]
    #
    Schedule = ::Struct.new(
      :expression,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information needed to define a schema.</p>
    #
    # @!attribute columns
    #   <p>Specifies one or more columns that store your data.</p>
    #            <p>Each schema can have up to 100 columns. Each column can have up to 100 nested
    #         types.</p>
    #
    #   @return [Array<Column>]
    #
    SchemaDefinition = ::Struct.new(
      :columns,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Used to create a new message using only the specified attributes from the original
    #       message.</p>
    #
    # @!attribute name
    #   <p>The name of the <code>selectAttributes</code> activity.</p>
    #
    #   @return [String]
    #
    # @!attribute attributes
    #   <p>A list of the attributes to select from the message.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next
    #   <p>The next activity in the pipeline.</p>
    #
    #   @return [String]
    #
    SelectAttributesActivity = ::Struct.new(
      :name,
      :attributes,
      :next,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Used to store channel data in an S3 bucket managed by IoT Analytics. You can't change the choice
    #       of S3 storage after the data store is created.</p>
    #
    ServiceManagedChannelS3Storage = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Used to store channel data in an S3 bucket managed by IoT Analytics.</p>
    #
    ServiceManagedChannelS3StorageSummary = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Used to store data in an Amazon S3 bucket managed by IoT Analytics. You can't change the choice of Amazon S3 storage after your data store is created.  </p>
    #
    ServiceManagedDatastoreS3Storage = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about the data store that is managed by IoT Analytics.</p>
    #
    ServiceManagedDatastoreS3StorageSummary = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The service is temporarily unavailable.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ServiceUnavailableException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The SQL query to modify the message.</p>
    #
    # @!attribute sql_query
    #   <p>A SQL query string.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>Prefilters applied to message data.</p>
    #
    #   @return [Array<QueryFilter>]
    #
    SqlQueryDatasetAction = ::Struct.new(
      :sql_query,
      :filters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute pipeline_name
    #   <p>The name of the pipeline on which to start reprocessing.</p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The start time (inclusive) of raw message data that is reprocessed.</p>
    #            <p>If you specify a value for the <code>startTime</code> parameter, you must not use the
    #           <code>channelMessages</code> object.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The end time (exclusive) of raw message data that is reprocessed.</p>
    #            <p>If you specify a value for the <code>endTime</code> parameter, you must not use the
    #           <code>channelMessages</code> object.</p>
    #
    #   @return [Time]
    #
    # @!attribute channel_messages
    #   <p>Specifies one or more sets of channel messages that you want to reprocess.</p>
    #            <p>If you use the <code>channelMessages</code> object, you must not specify a value for
    #           <code>startTime</code> and <code>endTime</code>.</p>
    #
    #   @return [ChannelMessages]
    #
    StartPipelineReprocessingInput = ::Struct.new(
      :pipeline_name,
      :start_time,
      :end_time,
      :channel_messages,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute reprocessing_id
    #   <p>The ID of the pipeline reprocessing activity that was started.</p>
    #
    #   @return [String]
    #
    StartPipelineReprocessingOutput = ::Struct.new(
      :reprocessing_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A set of key-value pairs that are used to manage the resource.</p>
    #
    # @!attribute key
    #   <p>The tag's key.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The tag's value.</p>
    #
    #   @return [String]
    #
    Tag = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource whose tags you want to modify.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The new or modified tags for the resource.</p>
    #
    #   @return [Array<Tag>]
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

    # <p>The request was denied due to request throttling.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ThrottlingException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> A partition dimension defined by a timestamp attribute. </p>
    #
    # @!attribute attribute_name
    #   <p> The attribute name of the partition defined by a timestamp. </p>
    #
    #   @return [String]
    #
    # @!attribute timestamp_format
    #   <p> The timestamp format of a partition defined by a timestamp. The default format is seconds
    #         since epoch (January 1, 1970 at midnight UTC time). </p>
    #
    #   @return [String]
    #
    TimestampPartition = ::Struct.new(
      :attribute_name,
      :timestamp_format,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the dataset whose content generation triggers the new dataset content
    #       generation.</p>
    #
    # @!attribute name
    #   <p>The name of the dataset whose content generation triggers the new dataset content
    #         generation.</p>
    #
    #   @return [String]
    #
    TriggeringDataset = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource whose tags you want to remove.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The keys of those tags which you want to remove.</p>
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

    # @!attribute channel_name
    #   <p>The name of the channel to be updated.</p>
    #
    #   @return [String]
    #
    # @!attribute channel_storage
    #   <p>Where channel data is stored. You can choose one of <code>serviceManagedS3</code> or
    #           <code>customerManagedS3</code> storage. If not specified, the default is
    #           <code>serviceManagedS3</code>. You can't change this storage option after the channel is
    #         created.</p>
    #
    #   @return [ChannelStorage]
    #
    # @!attribute retention_period
    #   <p>How long, in days, message data is kept for the channel. The retention period can't be
    #         updated if the channel's Amazon S3 storage is customer-managed.</p>
    #
    #   @return [RetentionPeriod]
    #
    UpdateChannelInput = ::Struct.new(
      :channel_name,
      :channel_storage,
      :retention_period,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateChannelOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute dataset_name
    #   <p>The name of the dataset to update.</p>
    #
    #   @return [String]
    #
    # @!attribute actions
    #   <p>A list of <code>DatasetAction</code> objects.</p>
    #
    #   @return [Array<DatasetAction>]
    #
    # @!attribute triggers
    #   <p>A list of <code>DatasetTrigger</code> objects. The list can be empty or can contain up to
    #         five <code>DatasetTrigger</code> objects.</p>
    #
    #   @return [Array<DatasetTrigger>]
    #
    # @!attribute content_delivery_rules
    #   <p>When dataset contents are created, they are delivered to destinations specified
    #         here.</p>
    #
    #   @return [Array<DatasetContentDeliveryRule>]
    #
    # @!attribute retention_period
    #   <p>How long, in days, dataset contents are kept for the dataset.</p>
    #
    #   @return [RetentionPeriod]
    #
    # @!attribute versioning_configuration
    #   <p>Optional. How many versions of dataset contents are kept. If not specified or set to null,
    #         only the latest version plus the latest succeeded version (if they are different) are kept for
    #         the time period specified by the <code>retentionPeriod</code> parameter. For more information,
    #         see <a href="https://docs.aws.amazon.com/iotanalytics/latest/userguide/getting-started.html aws-iot-analytics-dataset-versions">Keeping Multiple Versions of IoT Analytics datasets</a> in the
    #           <i>IoT Analytics User Guide</i>.</p>
    #
    #   @return [VersioningConfiguration]
    #
    # @!attribute late_data_rules
    #   <p>A list of data rules that send notifications to CloudWatch, when data arrives late. To specify <code>lateDataRules</code>, the dataset must use a <a href="https://docs.aws.amazon.com/iotanalytics/latest/APIReference/API_DeltaTime.html">DeltaTimer</a> filter.</p>
    #
    #   @return [Array<LateDataRule>]
    #
    UpdateDatasetInput = ::Struct.new(
      :dataset_name,
      :actions,
      :triggers,
      :content_delivery_rules,
      :retention_period,
      :versioning_configuration,
      :late_data_rules,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateDatasetOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute datastore_name
    #   <p>The name of the data store to be updated.</p>
    #
    #   @return [String]
    #
    # @!attribute retention_period
    #   <p>How long, in days, message data is kept for the data store. The retention period can't be
    #         updated if the data store's Amazon S3 storage is customer-managed.</p>
    #
    #   @return [RetentionPeriod]
    #
    # @!attribute datastore_storage
    #   <p>Where data in a data store is stored.. You can choose <code>serviceManagedS3</code> storage, <code>customerManagedS3</code> storage, or <code>iotSiteWiseMultiLayerStorage</code> storage. The default is <code>serviceManagedS3</code>. You can't change the choice of Amazon S3 storage after your data store is created. </p>
    #
    #   @return [DatastoreStorage]
    #
    # @!attribute file_format_configuration
    #   <p>Contains the configuration information of file formats.  IoT Analytics data stores support JSON and <a href="https://parquet.apache.org/">Parquet</a>.</p>
    #            <p>The default file format is JSON. You can specify only one format.</p>
    #            <p>You can't change the file format after you create the data store.</p>
    #
    #   @return [FileFormatConfiguration]
    #
    UpdateDatastoreInput = ::Struct.new(
      :datastore_name,
      :retention_period,
      :datastore_storage,
      :file_format_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateDatastoreOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute pipeline_name
    #   <p>The name of the pipeline to update.</p>
    #
    #   @return [String]
    #
    # @!attribute pipeline_activities
    #   <p>A list of <code>PipelineActivity</code> objects. Activities perform transformations on
    #         your messages, such as removing, renaming or adding message attributes; filtering messages
    #         based on attribute values; invoking your Lambda functions on messages for advanced processing;
    #         or performing mathematical transformations to normalize device data.</p>
    #            <p>The list can be 2-25 <code>PipelineActivity</code> objects and must contain both a
    #           <code>channel</code> and a <code>datastore</code> activity. Each entry in the list must
    #         contain only one activity. For example:</p>
    #            <p>
    #               <code>pipelineActivities = [ { "channel": { ... } }, { "lambda": { ... } }, ...
    #         ]</code>
    #            </p>
    #
    #   @return [Array<PipelineActivity>]
    #
    UpdatePipelineInput = ::Struct.new(
      :pipeline_name,
      :pipeline_activities,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdatePipelineOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An instance of a variable to be passed to the <code>containerAction</code> execution. Each
    #       variable must have a name and a value given by one of <code>stringValue</code>,
    #         <code>datasetContentVersionValue</code>, or <code>outputFileUriValue</code>.</p>
    #
    # @!attribute name
    #   <p>The name of the variable.</p>
    #
    #   @return [String]
    #
    # @!attribute string_value
    #   <p>The value of the variable as a string.</p>
    #
    #   @return [String]
    #
    # @!attribute double_value
    #   <p>The value of the variable as a double (numeric).</p>
    #
    #   @return [Float]
    #
    # @!attribute dataset_content_version_value
    #   <p>The value of the variable as a structure that specifies a dataset content version.</p>
    #
    #   @return [DatasetContentVersionValue]
    #
    # @!attribute output_file_uri_value
    #   <p>The value of the variable as a structure that specifies an output file URI.</p>
    #
    #   @return [OutputFileUriValue]
    #
    Variable = ::Struct.new(
      :name,
      :string_value,
      :double_value,
      :dataset_content_version_value,
      :output_file_uri_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the versioning of dataset contents.</p>
    #
    # @!attribute unlimited
    #   <p>If true, unlimited versions of dataset contents are kept.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute max_versions
    #   <p>How many versions of dataset contents are kept. The <code>unlimited</code> parameter must
    #         be <code>false</code>.</p>
    #
    #   @return [Integer]
    #
    VersioningConfiguration = ::Struct.new(
      :unlimited,
      :max_versions,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.unlimited ||= false
      end

    end

  end
end
