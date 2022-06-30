# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::LookoutEquipment
  module Types

    # <p>The request could not be completed because you do not have access to the resource.
    #       </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AccessDeniedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    # Entity that comprises information on categorical values in data.
    # </p>
    #
    # @!attribute status
    #   <p>
    #   Indicates whether there is a potential data issue related to categorical values.
    #   </p>
    #
    #   Enum, one of: ["POTENTIAL_ISSUE_DETECTED", "NO_ISSUE_DETECTED"]
    #
    #   @return [String]
    #
    # @!attribute number_of_category
    #   <p>
    #   Indicates the number of categories in the data.
    #   </p>
    #
    #   @return [Integer]
    #
    CategoricalValues = ::Struct.new(
      :status,
      :number_of_category,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The request could not be completed due to a conflict with the current state of the
    #          target resource. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ConflictException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #
    # Entity that comprises information of count and percentage.
    #
    # </p>
    #
    # @!attribute count
    #   <p>
    #
    #   Indicates the count of occurences of the given statistic.
    #
    #   </p>
    #
    #   @return [Integer]
    #
    # @!attribute percentage
    #   <p>
    #
    #   Indicates the percentage of occurances of the given statistic.
    #
    #   </p>
    #
    #   @return [Float]
    #
    CountPercent = ::Struct.new(
      :count,
      :percentage,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.percentage ||= 0
      end

    end

    # @!attribute dataset_name
    #   <p>The name of the dataset being created. </p>
    #
    #   @return [String]
    #
    # @!attribute dataset_schema
    #   <p>A JSON description of the data that is in each time series dataset, including names,
    #            column names, and data types. </p>
    #
    #   @return [DatasetSchema]
    #
    # @!attribute server_side_kms_key_id
    #   <p>Provides the identifier of the KMS key used to encrypt dataset data by Amazon Lookout for Equipment. </p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p> A unique identifier for the request. If you do not set the client request token, Amazon
    #            Lookout for Equipment generates one. </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Any tags associated with the ingested data described in the dataset. </p>
    #
    #   @return [Array<Tag>]
    #
    CreateDatasetInput = ::Struct.new(
      :dataset_name,
      :dataset_schema,
      :server_side_kms_key_id,
      :client_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute dataset_name
    #   <p>The name of the dataset being created. </p>
    #
    #   @return [String]
    #
    # @!attribute dataset_arn
    #   <p> The Amazon Resource Name (ARN) of the dataset being created. </p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Indicates the status of the <code>CreateDataset</code> operation. </p>
    #
    #   Enum, one of: ["CREATED", "INGESTION_IN_PROGRESS", "ACTIVE"]
    #
    #   @return [String]
    #
    CreateDatasetOutput = ::Struct.new(
      :dataset_name,
      :dataset_arn,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute model_name
    #   <p>The name of the previously trained ML model being used to create the inference
    #            scheduler. </p>
    #
    #   @return [String]
    #
    # @!attribute inference_scheduler_name
    #   <p>The name of the inference scheduler being created. </p>
    #
    #   @return [String]
    #
    # @!attribute data_delay_offset_in_minutes
    #   <p>A period of time (in minutes) by which inference on the data is delayed after the data
    #            starts. For instance, if you select an offset delay time of five minutes, inference will
    #            not begin on the data until the first data measurement after the five minute mark. For example, if
    #            five minutes is selected, the inference scheduler will wake up at the configured frequency with the
    #            additional five minute delay time to check the customer S3 bucket. The customer can upload data at
    #            the same frequency and they don't need to stop and restart the scheduler when uploading new data. </p>
    #
    #   @return [Integer]
    #
    # @!attribute data_upload_frequency
    #   <p> How often data is uploaded to the source S3 bucket for the input data. The value chosen
    #            is the length of time between data uploads. For instance, if you select 5 minutes, Amazon
    #            Lookout for Equipment will upload the real-time data to the source bucket once every 5 minutes. This frequency
    #            also determines how often Amazon Lookout for Equipment starts a scheduled inference on your data. In this
    #            example, it starts once every 5 minutes. </p>
    #
    #   Enum, one of: ["PT5M", "PT10M", "PT15M", "PT30M", "PT1H"]
    #
    #   @return [String]
    #
    # @!attribute data_input_configuration
    #   <p>Specifies configuration information for the input data for the inference scheduler,
    #            including delimiter, format, and dataset location. </p>
    #
    #   @return [InferenceInputConfiguration]
    #
    # @!attribute data_output_configuration
    #   <p>Specifies configuration information for the output results for the inference scheduler,
    #            including the S3 location for the output. </p>
    #
    #   @return [InferenceOutputConfiguration]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of a role with permission to access the data source being
    #            used for the inference. </p>
    #
    #   @return [String]
    #
    # @!attribute server_side_kms_key_id
    #   <p>Provides the identifier of the KMS key used to encrypt inference scheduler data by Amazon Lookout for Equipment. </p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p> A unique identifier for the request. If you do not set the client request token, Amazon
    #            Lookout for Equipment generates one. </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Any tags associated with the inference scheduler. </p>
    #
    #   @return [Array<Tag>]
    #
    CreateInferenceSchedulerInput = ::Struct.new(
      :model_name,
      :inference_scheduler_name,
      :data_delay_offset_in_minutes,
      :data_upload_frequency,
      :data_input_configuration,
      :data_output_configuration,
      :role_arn,
      :server_side_kms_key_id,
      :client_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute inference_scheduler_arn
    #   <p>The Amazon Resource Name (ARN) of the inference scheduler being created. </p>
    #
    #   @return [String]
    #
    # @!attribute inference_scheduler_name
    #   <p>The name of inference scheduler being created. </p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Indicates the status of the <code>CreateInferenceScheduler</code> operation. </p>
    #
    #   Enum, one of: ["PENDING", "RUNNING", "STOPPING", "STOPPED"]
    #
    #   @return [String]
    #
    CreateInferenceSchedulerOutput = ::Struct.new(
      :inference_scheduler_arn,
      :inference_scheduler_name,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute model_name
    #   <p>The name for the ML model to be created.</p>
    #
    #   @return [String]
    #
    # @!attribute dataset_name
    #   <p>The name of the dataset for the ML model being created. </p>
    #
    #   @return [String]
    #
    # @!attribute dataset_schema
    #   <p>The data schema for the ML model being created. </p>
    #
    #   @return [DatasetSchema]
    #
    # @!attribute labels_input_configuration
    #   <p>The input configuration for the labels being used for the ML model that's being created.
    #         </p>
    #
    #   @return [LabelsInputConfiguration]
    #
    # @!attribute client_token
    #   <p>A unique identifier for the request. If you do not set the client request token, Amazon
    #            Lookout for Equipment generates one. </p>
    #
    #   @return [String]
    #
    # @!attribute training_data_start_time
    #   <p>Indicates the time reference in the dataset that should be used to begin the subset of
    #            training data for the ML model. </p>
    #
    #   @return [Time]
    #
    # @!attribute training_data_end_time
    #   <p>Indicates the time reference in the dataset that should be used to end the subset of
    #            training data for the ML model. </p>
    #
    #   @return [Time]
    #
    # @!attribute evaluation_data_start_time
    #   <p>Indicates the time reference in the dataset that should be used to begin the subset of
    #            evaluation data for the ML model. </p>
    #
    #   @return [Time]
    #
    # @!attribute evaluation_data_end_time
    #   <p> Indicates the time reference in the dataset that should be used to end the subset of
    #            evaluation data for the ML model. </p>
    #
    #   @return [Time]
    #
    # @!attribute role_arn
    #   <p> The Amazon Resource Name (ARN) of a role with permission to access the data source
    #            being used to create the ML model. </p>
    #
    #   @return [String]
    #
    # @!attribute data_pre_processing_configuration
    #   <p>The configuration is the <code>TargetSamplingRate</code>, which is the sampling rate of
    #            the data after post processing by
    #            Amazon Lookout for Equipment. For example, if you provide data that
    #            has been collected at a 1 second level and you want the system to resample
    #            the data at a 1 minute rate before training, the <code>TargetSamplingRate</code> is 1 minute.</p>
    #            <p>When providing a value for the <code>TargetSamplingRate</code>, you must
    #               attach the prefix "PT" to the rate you want.  The value for a 1 second rate
    #               is therefore <i>PT1S</i>, the value for a 15 minute rate
    #               is <i>PT15M</i>, and the value for a 1 hour rate
    #               is <i>PT1H</i>
    #            </p>
    #
    #   @return [DataPreProcessingConfiguration]
    #
    # @!attribute server_side_kms_key_id
    #   <p>Provides the identifier of the KMS key used to encrypt model data by Amazon Lookout for Equipment. </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p> Any tags associated with the ML model being created. </p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute off_condition
    #   <p>Indicates that the asset associated with this sensor has been shut off. As long as this condition is met, Lookout for Equipment will not use data from this asset for training, evaluation, or inference.</p>
    #
    #   @return [String]
    #
    CreateModelInput = ::Struct.new(
      :model_name,
      :dataset_name,
      :dataset_schema,
      :labels_input_configuration,
      :client_token,
      :training_data_start_time,
      :training_data_end_time,
      :evaluation_data_start_time,
      :evaluation_data_end_time,
      :role_arn,
      :data_pre_processing_configuration,
      :server_side_kms_key_id,
      :tags,
      :off_condition,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute model_arn
    #   <p>The Amazon Resource Name (ARN) of the model being created. </p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Indicates the status of the <code>CreateModel</code> operation. </p>
    #
    #   Enum, one of: ["IN_PROGRESS", "SUCCESS", "FAILED"]
    #
    #   @return [String]
    #
    CreateModelOutput = ::Struct.new(
      :model_arn,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about a specified data ingestion job, including dataset
    #          information, data ingestion configuration, and status. </p>
    #
    # @!attribute job_id
    #   <p>Indicates the job ID of the data ingestion job. </p>
    #
    #   @return [String]
    #
    # @!attribute dataset_name
    #   <p>The name of the dataset used for the data ingestion job. </p>
    #
    #   @return [String]
    #
    # @!attribute dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset used in the data ingestion job. </p>
    #
    #   @return [String]
    #
    # @!attribute ingestion_input_configuration
    #   <p> Specifies information for the input data for the data inference job, including data Amazon S3
    #            location parameters. </p>
    #
    #   @return [IngestionInputConfiguration]
    #
    # @!attribute status
    #   <p>Indicates the status of the data ingestion job. </p>
    #
    #   Enum, one of: ["IN_PROGRESS", "SUCCESS", "FAILED"]
    #
    #   @return [String]
    #
    DataIngestionJobSummary = ::Struct.new(
      :job_id,
      :dataset_name,
      :dataset_arn,
      :ingestion_input_configuration,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configuration is the <code>TargetSamplingRate</code>, which is the sampling rate of
    #          the data after post processing by
    #          Amazon Lookout for Equipment. For example, if you provide data that
    #          has been collected at a 1 second level and you want the system to resample
    #          the data at a 1 minute rate before training, the <code>TargetSamplingRate</code> is 1 minute.</p>
    #             <p>When providing a value for the <code>TargetSamplingRate</code>, you must
    #                attach the prefix "PT" to the rate you want.  The value for a 1 second rate
    #                is therefore <i>PT1S</i>, the value for a 15 minute rate
    #                is <i>PT15M</i>, and the value for a 1 hour rate
    #                is <i>PT1H</i>
    #          </p>
    #
    # @!attribute target_sampling_rate
    #   <p>The sampling rate of the data after post processing by Amazon Lookout for Equipment.
    #            For example, if you provide data that has been collected at a 1 second level and
    #            you want the system to resample the data at a 1 minute rate before training,
    #            the <code>TargetSamplingRate</code> is 1 minute.</p>
    #            <p>When providing a value for the <code>TargetSamplingRate</code>, you must attach
    #               the prefix "PT" to the rate you want.  The value for a 1 second rate is
    #               therefore <i>PT1S</i>, the value for a 15 minute
    #               rate is <i>PT15M</i>, and the value for a 1 hour rate
    #               is <i>PT1H</i>
    #            </p>
    #
    #   Enum, one of: ["PT1S", "PT5S", "PT10S", "PT15S", "PT30S", "PT1M", "PT5M", "PT10M", "PT15M", "PT30M", "PT1H"]
    #
    #   @return [String]
    #
    DataPreProcessingConfiguration = ::Struct.new(
      :target_sampling_rate,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #
    # DataQualitySummary gives aggregated statistics over all the sensors about a completed ingestion job. It primarily gives more information about statistics over different incorrect data like MissingCompleteSensorData, MissingSensorData, UnsupportedDateFormats, InsufficientSensorData, DuplicateTimeStamps.
    #
    # </p>
    #
    # @!attribute insufficient_sensor_data
    #   <p>
    #
    #   Parameter that gives information about insufficient data for sensors in the dataset. This includes information about those sensors that have complete data missing and those with a short date range.
    #
    #   </p>
    #
    #   @return [InsufficientSensorData]
    #
    # @!attribute missing_sensor_data
    #   <p>
    #
    #   Parameter that gives information about data that is missing over all the sensors in the input data.
    #
    #   </p>
    #
    #   @return [MissingSensorData]
    #
    # @!attribute invalid_sensor_data
    #   <p>
    #
    #   Parameter that gives information about data that is invalid over all the sensors in the input data.
    #
    #   </p>
    #
    #   @return [InvalidSensorData]
    #
    # @!attribute unsupported_timestamps
    #   <p>
    #
    #   Parameter that gives information about unsupported timestamps in the input data.
    #
    #   </p>
    #
    #   @return [UnsupportedTimestamps]
    #
    # @!attribute duplicate_timestamps
    #   <p>
    #
    #   Parameter that gives information about duplicate timestamps in the input data.
    #
    #   </p>
    #
    #   @return [DuplicateTimestamps]
    #
    DataQualitySummary = ::Struct.new(
      :insufficient_sensor_data,
      :missing_sensor_data,
      :invalid_sensor_data,
      :unsupported_timestamps,
      :duplicate_timestamps,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DataUploadFrequency
    #
    module DataUploadFrequency
      # No documentation available.
      #
      PT5M = "PT5M"

      # No documentation available.
      #
      PT10M = "PT10M"

      # No documentation available.
      #
      PT15M = "PT15M"

      # No documentation available.
      #
      PT30M = "PT30M"

      # No documentation available.
      #
      PT1H = "PT1H"
    end

    # <p>Provides information about the data schema used with the given dataset. </p>
    #
    # @!attribute inline_data_schema
    #   <p>
    #         </p>
    #
    #   @return [String]
    #
    DatasetSchema = ::Struct.new(
      :inline_data_schema,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DatasetStatus
    #
    module DatasetStatus
      # No documentation available.
      #
      CREATED = "CREATED"

      # No documentation available.
      #
      INGESTION_IN_PROGRESS = "INGESTION_IN_PROGRESS"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"
    end

    # <p>Contains information about the specific data set, including name, ARN, and status.
    #       </p>
    #
    # @!attribute dataset_name
    #   <p>The name of the dataset. </p>
    #
    #   @return [String]
    #
    # @!attribute dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the specified dataset. </p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Indicates the status of the dataset. </p>
    #
    #   Enum, one of: ["CREATED", "INGESTION_IN_PROGRESS", "ACTIVE"]
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The time at which the dataset was created in Amazon Lookout for Equipment. </p>
    #
    #   @return [Time]
    #
    DatasetSummary = ::Struct.new(
      :dataset_name,
      :dataset_arn,
      :status,
      :created_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute dataset_name
    #   <p>The name of the dataset to be deleted. </p>
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

    # @!attribute inference_scheduler_name
    #   <p>The name of the inference scheduler to be deleted. </p>
    #
    #   @return [String]
    #
    DeleteInferenceSchedulerInput = ::Struct.new(
      :inference_scheduler_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteInferenceSchedulerOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute model_name
    #   <p>The name of the ML model to be deleted. </p>
    #
    #   @return [String]
    #
    DeleteModelInput = ::Struct.new(
      :model_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteModelOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The job ID of the data ingestion job. </p>
    #
    #   @return [String]
    #
    DescribeDataIngestionJobInput = ::Struct.new(
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>Indicates the job ID of the data ingestion job. </p>
    #
    #   @return [String]
    #
    # @!attribute dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset being used in the data ingestion job.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute ingestion_input_configuration
    #   <p>Specifies the S3 location configuration for the data input for the data ingestion job.
    #         </p>
    #
    #   @return [IngestionInputConfiguration]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role with permission to access the data source
    #            being ingested. </p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The time at which the data ingestion job was created. </p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>Indicates the status of the <code>DataIngestionJob</code> operation. </p>
    #
    #   Enum, one of: ["IN_PROGRESS", "SUCCESS", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute failed_reason
    #   <p>Specifies the reason for failure when a data ingestion job has failed. </p>
    #
    #   @return [String]
    #
    # @!attribute data_quality_summary
    #   <p>
    #   Gives statistics about a completed ingestion job. These statistics primarily relate to quantifying incorrect data such as MissingCompleteSensorData, MissingSensorData, UnsupportedDateFormats, InsufficientSensorData, and DuplicateTimeStamps.
    #   </p>
    #
    #   @return [DataQualitySummary]
    #
    # @!attribute ingested_files_summary
    #   <p>Gives statistics about how many files have been ingested, and which files have not been ingested, for a particular ingestion job.</p>
    #
    #   @return [IngestedFilesSummary]
    #
    # @!attribute status_detail
    #   <p>
    #            Provides details about status of the ingestion job that is currently in progress.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute ingested_data_size
    #   <p>
    #            Indicates the size of the ingested dataset.
    #         </p>
    #
    #   @return [Integer]
    #
    # @!attribute data_start_time
    #   <p>
    #            Indicates the earliest timestamp corresponding to data that was successfully ingested during this specific ingestion job.
    #         </p>
    #
    #   @return [Time]
    #
    # @!attribute data_end_time
    #   <p>
    #            Indicates the latest timestamp corresponding to data that was successfully ingested during this specific ingestion job.
    #         </p>
    #
    #   @return [Time]
    #
    DescribeDataIngestionJobOutput = ::Struct.new(
      :job_id,
      :dataset_arn,
      :ingestion_input_configuration,
      :role_arn,
      :created_at,
      :status,
      :failed_reason,
      :data_quality_summary,
      :ingested_files_summary,
      :status_detail,
      :ingested_data_size,
      :data_start_time,
      :data_end_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute dataset_name
    #   <p>The name of the dataset to be described. </p>
    #
    #   @return [String]
    #
    DescribeDatasetInput = ::Struct.new(
      :dataset_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute dataset_name
    #   <p>The name of the dataset being described. </p>
    #
    #   @return [String]
    #
    # @!attribute dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset being described. </p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>Specifies the time the dataset was created in Amazon Lookout for Equipment. </p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_at
    #   <p>Specifies the time the dataset was last updated, if it was. </p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>Indicates the status of the dataset. </p>
    #
    #   Enum, one of: ["CREATED", "INGESTION_IN_PROGRESS", "ACTIVE"]
    #
    #   @return [String]
    #
    # @!attribute schema
    #   <p>A JSON description of the data that is in each time series dataset, including names,
    #            column names, and data types. </p>
    #
    #   @return [String]
    #
    # @!attribute server_side_kms_key_id
    #   <p>Provides the identifier of the KMS key used to encrypt dataset data by Amazon Lookout for Equipment. </p>
    #
    #   @return [String]
    #
    # @!attribute ingestion_input_configuration
    #   <p>Specifies the S3 location configuration for the data input for the data ingestion job. </p>
    #
    #   @return [IngestionInputConfiguration]
    #
    # @!attribute data_quality_summary
    #   <p>
    #   Gives statistics associated with the given dataset for the latest successful associated ingestion job id. These statistics primarily relate to quantifying incorrect data such as MissingCompleteSensorData, MissingSensorData, UnsupportedDateFormats, InsufficientSensorData, and DuplicateTimeStamps.
    #   </p>
    #
    #   @return [DataQualitySummary]
    #
    # @!attribute ingested_files_summary
    #   <p>
    #   IngestedFilesSummary associated with the given dataset for the latest successful associated ingestion job id.
    #   </p>
    #
    #   @return [IngestedFilesSummary]
    #
    # @!attribute role_arn
    #   <p>
    #            The Amazon Resource Name (ARN) of the IAM role that you are using for this the data ingestion job.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute data_start_time
    #   <p>
    #            Indicates the earliest timestamp corresponding to data that was successfully ingested during the most recent ingestion of this particular dataset.
    #         </p>
    #
    #   @return [Time]
    #
    # @!attribute data_end_time
    #   <p>
    #            Indicates the latest timestamp corresponding to data that was successfully ingested during the most recent ingestion of this particular dataset.
    #         </p>
    #
    #   @return [Time]
    #
    DescribeDatasetOutput = ::Struct.new(
      :dataset_name,
      :dataset_arn,
      :created_at,
      :last_updated_at,
      :status,
      :schema,
      :server_side_kms_key_id,
      :ingestion_input_configuration,
      :data_quality_summary,
      :ingested_files_summary,
      :role_arn,
      :data_start_time,
      :data_end_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute inference_scheduler_name
    #   <p>The name of the inference scheduler being described. </p>
    #
    #   @return [String]
    #
    DescribeInferenceSchedulerInput = ::Struct.new(
      :inference_scheduler_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute model_arn
    #   <p>The Amazon Resource Name (ARN) of the ML model of the inference scheduler being
    #            described. </p>
    #
    #   @return [String]
    #
    # @!attribute model_name
    #   <p>The name of the ML model of the inference scheduler being described. </p>
    #
    #   @return [String]
    #
    # @!attribute inference_scheduler_name
    #   <p>The name of the inference scheduler being described. </p>
    #
    #   @return [String]
    #
    # @!attribute inference_scheduler_arn
    #   <p>The Amazon Resource Name (ARN) of the inference scheduler being described. </p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Indicates the status of the inference scheduler. </p>
    #
    #   Enum, one of: ["PENDING", "RUNNING", "STOPPING", "STOPPED"]
    #
    #   @return [String]
    #
    # @!attribute data_delay_offset_in_minutes
    #   <p> A period of time (in minutes) by which inference on the data is delayed after the data
    #            starts. For instance, if you select an offset delay time of five minutes, inference will
    #            not begin on the data until the first data measurement after the five minute mark. For example, if
    #            five minutes is selected, the inference scheduler will wake up at the configured frequency with the
    #            additional five minute delay time to check the customer S3 bucket. The customer can upload data at
    #            the same frequency and they don't need to stop and restart the scheduler when uploading new data.</p>
    #
    #   @return [Integer]
    #
    # @!attribute data_upload_frequency
    #   <p>Specifies how often data is uploaded to the source S3 bucket for the input data. This
    #            value is the length of time between data uploads. For instance, if you select 5 minutes,
    #            Amazon Lookout for Equipment will upload the real-time data to the source bucket once every 5 minutes. This
    #            frequency also determines how often Amazon Lookout for Equipment starts a scheduled inference on your data.
    #            In this example, it starts once every 5 minutes. </p>
    #
    #   Enum, one of: ["PT5M", "PT10M", "PT15M", "PT30M", "PT1H"]
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>Specifies the time at which the inference scheduler was created. </p>
    #
    #   @return [Time]
    #
    # @!attribute updated_at
    #   <p>Specifies the time at which the inference scheduler was last updated, if it was. </p>
    #
    #   @return [Time]
    #
    # @!attribute data_input_configuration
    #   <p> Specifies configuration information for the input data for the inference scheduler,
    #            including delimiter, format, and dataset location. </p>
    #
    #   @return [InferenceInputConfiguration]
    #
    # @!attribute data_output_configuration
    #   <p> Specifies information for the output results for the inference scheduler,
    #            including the output S3 location. </p>
    #
    #   @return [InferenceOutputConfiguration]
    #
    # @!attribute role_arn
    #   <p> The Amazon Resource Name (ARN) of a role with permission to access the data source for
    #            the inference scheduler being described. </p>
    #
    #   @return [String]
    #
    # @!attribute server_side_kms_key_id
    #   <p>Provides the identifier of the KMS key used to encrypt inference scheduler data by Amazon Lookout for Equipment. </p>
    #
    #   @return [String]
    #
    DescribeInferenceSchedulerOutput = ::Struct.new(
      :model_arn,
      :model_name,
      :inference_scheduler_name,
      :inference_scheduler_arn,
      :status,
      :data_delay_offset_in_minutes,
      :data_upload_frequency,
      :created_at,
      :updated_at,
      :data_input_configuration,
      :data_output_configuration,
      :role_arn,
      :server_side_kms_key_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute model_name
    #   <p>The name of the ML model to be described. </p>
    #
    #   @return [String]
    #
    DescribeModelInput = ::Struct.new(
      :model_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute model_name
    #   <p>The name of the ML model being described. </p>
    #
    #   @return [String]
    #
    # @!attribute model_arn
    #   <p>The Amazon Resource Name (ARN) of the ML model being described. </p>
    #
    #   @return [String]
    #
    # @!attribute dataset_name
    #   <p>The name of the dataset being used by the ML being described. </p>
    #
    #   @return [String]
    #
    # @!attribute dataset_arn
    #   <p>The Amazon Resouce Name (ARN) of the dataset used to create the ML model being
    #            described. </p>
    #
    #   @return [String]
    #
    # @!attribute schema
    #   <p>A JSON description of the data that is in each time series dataset, including names,
    #            column names, and data types. </p>
    #
    #   @return [String]
    #
    # @!attribute labels_input_configuration
    #   <p>Specifies configuration information about the labels input, including its S3 location.
    #         </p>
    #
    #   @return [LabelsInputConfiguration]
    #
    # @!attribute training_data_start_time
    #   <p> Indicates the time reference in the dataset that was used to begin the subset of
    #            training data for the ML model. </p>
    #
    #   @return [Time]
    #
    # @!attribute training_data_end_time
    #   <p> Indicates the time reference in the dataset that was used to end the subset of training
    #            data for the ML model. </p>
    #
    #   @return [Time]
    #
    # @!attribute evaluation_data_start_time
    #   <p> Indicates the time reference in the dataset that was used to begin the subset of
    #            evaluation data for the ML model. </p>
    #
    #   @return [Time]
    #
    # @!attribute evaluation_data_end_time
    #   <p> Indicates the time reference in the dataset that was used to end the subset of
    #            evaluation data for the ML model. </p>
    #
    #   @return [Time]
    #
    # @!attribute role_arn
    #   <p> The Amazon Resource Name (ARN) of a role with permission to access the data source for
    #            the ML model being described. </p>
    #
    #   @return [String]
    #
    # @!attribute data_pre_processing_configuration
    #   <p>The configuration is the <code>TargetSamplingRate</code>, which is the sampling rate of
    #            the data after post processing by
    #            Amazon Lookout for Equipment. For example, if you provide data that
    #            has been collected at a 1 second level and you want the system to resample
    #            the data at a 1 minute rate before training, the <code>TargetSamplingRate</code> is 1 minute.</p>
    #               <p>When providing a value for the <code>TargetSamplingRate</code>, you must
    #                  attach the prefix "PT" to the rate you want.  The value for a 1 second rate
    #                  is therefore <i>PT1S</i>, the value for a 15 minute rate
    #                  is <i>PT15M</i>, and the value for a 1 hour rate
    #                  is <i>PT1H</i>
    #            </p>
    #
    #   @return [DataPreProcessingConfiguration]
    #
    # @!attribute status
    #   <p>Specifies the current status of the model being described. Status describes the status
    #            of the most recent action of the model. </p>
    #
    #   Enum, one of: ["IN_PROGRESS", "SUCCESS", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute training_execution_start_time
    #   <p>Indicates the time at which the training of the ML model began. </p>
    #
    #   @return [Time]
    #
    # @!attribute training_execution_end_time
    #   <p>Indicates the time at which the training of the ML model was completed. </p>
    #
    #   @return [Time]
    #
    # @!attribute failed_reason
    #   <p>If the training of the ML model failed, this indicates the reason for that failure.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute model_metrics
    #   <p>The Model Metrics show an aggregated summary of the model's performance within the evaluation time
    #            range. This is the JSON content of the metrics created when evaluating the model. </p>
    #
    #   @return [String]
    #
    # @!attribute last_updated_time
    #   <p>Indicates the last time the ML model was updated. The type of update is not specified.
    #         </p>
    #
    #   @return [Time]
    #
    # @!attribute created_at
    #   <p>Indicates the time and date at which the ML model was created. </p>
    #
    #   @return [Time]
    #
    # @!attribute server_side_kms_key_id
    #   <p>Provides the identifier of the KMS key used to encrypt model data by Amazon Lookout for Equipment. </p>
    #
    #   @return [String]
    #
    # @!attribute off_condition
    #   <p>Indicates that the asset associated with this sensor has been shut off. As long as this condition is met, Lookout for Equipment will not use data from this asset for training, evaluation, or inference.</p>
    #
    #   @return [String]
    #
    DescribeModelOutput = ::Struct.new(
      :model_name,
      :model_arn,
      :dataset_name,
      :dataset_arn,
      :schema,
      :labels_input_configuration,
      :training_data_start_time,
      :training_data_end_time,
      :evaluation_data_start_time,
      :evaluation_data_end_time,
      :role_arn,
      :data_pre_processing_configuration,
      :status,
      :training_execution_start_time,
      :training_execution_end_time,
      :failed_reason,
      :model_metrics,
      :last_updated_time,
      :created_at,
      :server_side_kms_key_id,
      :off_condition,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #
    # Entity that comprises information abount duplicate timestamps in the dataset.
    #
    # </p>
    #
    # @!attribute total_number_of_duplicate_timestamps
    #   <p>
    #   Indicates the total number of duplicate timestamps.
    #   </p>
    #
    #   @return [Integer]
    #
    DuplicateTimestamps = ::Struct.new(
      :total_number_of_duplicate_timestamps,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for InferenceExecutionStatus
    #
    module InferenceExecutionStatus
      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      SUCCESS = "SUCCESS"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>Contains information about the specific inference execution, including input and output
    #          data configuration, inference scheduling information, status, and so on. </p>
    #
    # @!attribute model_name
    #   <p>The name of the ML model being used for the inference execution. </p>
    #
    #   @return [String]
    #
    # @!attribute model_arn
    #   <p>The Amazon Resource Name (ARN) of the ML model used for the inference execution. </p>
    #
    #   @return [String]
    #
    # @!attribute inference_scheduler_name
    #   <p>The name of the inference scheduler being used for the inference execution. </p>
    #
    #   @return [String]
    #
    # @!attribute inference_scheduler_arn
    #   <p> The Amazon Resource Name (ARN) of the inference scheduler being used for the inference
    #            execution. </p>
    #
    #   @return [String]
    #
    # @!attribute scheduled_start_time
    #   <p>Indicates the start time at which the inference scheduler began the specific inference
    #            execution. </p>
    #
    #   @return [Time]
    #
    # @!attribute data_start_time
    #   <p>Indicates the time reference in the dataset at which the inference execution began.
    #         </p>
    #
    #   @return [Time]
    #
    # @!attribute data_end_time
    #   <p>Indicates the time reference in the dataset at which the inference execution stopped.
    #         </p>
    #
    #   @return [Time]
    #
    # @!attribute data_input_configuration
    #   <p> Specifies configuration information for the input data for the inference scheduler,
    #            including delimiter, format, and dataset location. </p>
    #
    #   @return [InferenceInputConfiguration]
    #
    # @!attribute data_output_configuration
    #   <p> Specifies configuration information for the output results from for the inference
    #            execution, including the output Amazon S3 location. </p>
    #
    #   @return [InferenceOutputConfiguration]
    #
    # @!attribute customer_result_object
    #   <p>
    #         </p>
    #
    #   @return [S3Object]
    #
    # @!attribute status
    #   <p>Indicates the status of the inference execution. </p>
    #
    #   Enum, one of: ["IN_PROGRESS", "SUCCESS", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute failed_reason
    #   <p> Specifies the reason for failure when an inference execution has failed. </p>
    #
    #   @return [String]
    #
    InferenceExecutionSummary = ::Struct.new(
      :model_name,
      :model_arn,
      :inference_scheduler_name,
      :inference_scheduler_arn,
      :scheduled_start_time,
      :data_start_time,
      :data_end_time,
      :data_input_configuration,
      :data_output_configuration,
      :customer_result_object,
      :status,
      :failed_reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies configuration information for the input data for the inference, including Amazon S3
    #          location of input data.. </p>
    #
    # @!attribute s3_input_configuration
    #   <p> Specifies configuration information for the input data for the inference, including Amazon S3
    #            location of input data.</p>
    #
    #   @return [InferenceS3InputConfiguration]
    #
    # @!attribute input_time_zone_offset
    #   <p>Indicates the difference between your time zone and Coordinated Universal Time (UTC).</p>
    #
    #   @return [String]
    #
    # @!attribute inference_input_name_configuration
    #   <p>Specifies configuration information for the input data for the inference, including
    #            timestamp format and delimiter. </p>
    #
    #   @return [InferenceInputNameConfiguration]
    #
    InferenceInputConfiguration = ::Struct.new(
      :s3_input_configuration,
      :input_time_zone_offset,
      :inference_input_name_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies configuration information for the input data for the inference, including
    #          timestamp format and delimiter. </p>
    #
    # @!attribute timestamp_format
    #   <p>The format of the timestamp, whether Epoch time, or standard, with or without hyphens
    #            (-). </p>
    #
    #   @return [String]
    #
    # @!attribute component_timestamp_delimiter
    #   <p>Indicates the delimiter character used between items in the data. </p>
    #
    #   @return [String]
    #
    InferenceInputNameConfiguration = ::Struct.new(
      :timestamp_format,
      :component_timestamp_delimiter,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Specifies configuration information for the output results from for the inference,
    #          including KMS key ID and output S3 location. </p>
    #
    # @!attribute s3_output_configuration
    #   <p> Specifies configuration information for the output results from for the inference,
    #            output S3 location. </p>
    #
    #   @return [InferenceS3OutputConfiguration]
    #
    # @!attribute kms_key_id
    #   <p>The ID number for the AWS KMS key used to encrypt the inference output. </p>
    #
    #   @return [String]
    #
    InferenceOutputConfiguration = ::Struct.new(
      :s3_output_configuration,
      :kms_key_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Specifies configuration information for the input data for the inference, including
    #          input data S3 location. </p>
    #
    # @!attribute bucket
    #   <p>The bucket containing the input dataset for the inference. </p>
    #
    #   @return [String]
    #
    # @!attribute prefix
    #   <p>The prefix for the S3 bucket used for the input data for the inference. </p>
    #
    #   @return [String]
    #
    InferenceS3InputConfiguration = ::Struct.new(
      :bucket,
      :prefix,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Specifies configuration information for the output results from the inference,
    #          including output S3 location. </p>
    #
    # @!attribute bucket
    #   <p> The bucket containing the output results from the inference </p>
    #
    #   @return [String]
    #
    # @!attribute prefix
    #   <p> The prefix for the S3 bucket used for the output results from the inference. </p>
    #
    #   @return [String]
    #
    InferenceS3OutputConfiguration = ::Struct.new(
      :bucket,
      :prefix,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for InferenceSchedulerStatus
    #
    module InferenceSchedulerStatus
      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      STOPPING = "STOPPING"

      # No documentation available.
      #
      STOPPED = "STOPPED"
    end

    # <p>Contains information about the specific inference scheduler, including data delay
    #          offset, model name and ARN, status, and so on. </p>
    #
    # @!attribute model_name
    #   <p>The name of the ML model used for the inference scheduler. </p>
    #
    #   @return [String]
    #
    # @!attribute model_arn
    #   <p> The Amazon Resource Name (ARN) of the ML model used by the inference scheduler. </p>
    #
    #   @return [String]
    #
    # @!attribute inference_scheduler_name
    #   <p>The name of the inference scheduler. </p>
    #
    #   @return [String]
    #
    # @!attribute inference_scheduler_arn
    #   <p> The Amazon Resource Name (ARN) of the inference scheduler. </p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Indicates the status of the inference scheduler. </p>
    #
    #   Enum, one of: ["PENDING", "RUNNING", "STOPPING", "STOPPED"]
    #
    #   @return [String]
    #
    # @!attribute data_delay_offset_in_minutes
    #   <p>A period of time (in minutes) by which inference on the data is delayed after the data
    #            starts. For instance, if an offset delay time of five minutes was selected, inference will
    #            not begin on the data until the first data measurement after the five minute mark. For example, if
    #            five minutes is selected, the inference scheduler will wake up at the configured frequency with the
    #            additional five minute delay time to check the customer S3 bucket. The customer can upload data at
    #            the same frequency and they don't need to stop and restart the scheduler when uploading new data.
    #         </p>
    #
    #   @return [Integer]
    #
    # @!attribute data_upload_frequency
    #   <p>How often data is uploaded to the source S3 bucket for the input data. This value is the
    #            length of time between data uploads. For instance, if you select 5 minutes, Amazon Lookout for Equipment
    #            will upload the real-time data to the source bucket once every 5 minutes. This frequency also
    #            determines how often Amazon Lookout for Equipment starts a scheduled inference on your data. In this
    #            example, it starts once every 5 minutes. </p>
    #
    #   Enum, one of: ["PT5M", "PT10M", "PT15M", "PT30M", "PT1H"]
    #
    #   @return [String]
    #
    InferenceSchedulerSummary = ::Struct.new(
      :model_name,
      :model_arn,
      :inference_scheduler_name,
      :inference_scheduler_arn,
      :status,
      :data_delay_offset_in_minutes,
      :data_upload_frequency,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Gives statistics about how many files have been ingested, and which files have not been ingested, for a particular ingestion job.</p>
    #
    # @!attribute total_number_of_files
    #   <p>Indicates the total number of files that were submitted for ingestion.</p>
    #
    #   @return [Integer]
    #
    # @!attribute ingested_number_of_files
    #   <p>Indicates the number of files that were successfully ingested.</p>
    #
    #   @return [Integer]
    #
    # @!attribute discarded_files
    #   <p>Indicates the number of files that were discarded. A file could be discarded because its format is invalid (for example, a jpg or pdf) or not readable.</p>
    #
    #   @return [Array<S3Object>]
    #
    IngestedFilesSummary = ::Struct.new(
      :total_number_of_files,
      :ingested_number_of_files,
      :discarded_files,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Specifies configuration information for the input data for the data ingestion job,
    #          including input data S3 location. </p>
    #
    # @!attribute s3_input_configuration
    #   <p>The location information for the S3 bucket used for input data for the data ingestion.
    #         </p>
    #
    #   @return [IngestionS3InputConfiguration]
    #
    IngestionInputConfiguration = ::Struct.new(
      :s3_input_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for IngestionJobStatus
    #
    module IngestionJobStatus
      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      SUCCESS = "SUCCESS"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p> Specifies S3 configuration information for the input data for the data ingestion job.
    #       </p>
    #
    # @!attribute bucket
    #   <p>The name of the S3 bucket used for the input data for the data ingestion. </p>
    #
    #   @return [String]
    #
    # @!attribute prefix
    #   <p>The prefix for the S3 location being used for the input data for the data ingestion.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute key_pattern
    #   <p>
    #   Pattern for matching the Amazon S3 files which will be used for ingestion.
    #   If no KeyPattern is provided, we will use the default hierarchy file structure, which is same as KeyPattern {prefix}/{component_name}/*
    #   </p>
    #
    #   @return [String]
    #
    IngestionS3InputConfiguration = ::Struct.new(
      :bucket,
      :prefix,
      :key_pattern,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #
    # Entity that comprises aggregated information on sensors having insufficient data.
    #
    # </p>
    #
    # @!attribute missing_complete_sensor_data
    #   <p>
    #
    #   Parameter that describes the total number of sensors that have data completely missing for it.
    #
    #   </p>
    #
    #   @return [MissingCompleteSensorData]
    #
    # @!attribute sensors_with_short_date_range
    #   <p>
    #
    #   Parameter that describes the total number of sensors that have a short date range of less than 90 days of data overall.
    #
    #   </p>
    #
    #   @return [SensorsWithShortDateRange]
    #
    InsufficientSensorData = ::Struct.new(
      :missing_complete_sensor_data,
      :sensors_with_short_date_range,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Processing of the request has failed because of an unknown error, exception or failure.
    #       </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InternalServerException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #
    # Entity that comprises aggregated information on sensors having insufficient data.
    #
    # </p>
    #
    # @!attribute affected_sensor_count
    #   <p>
    #
    #   Indicates the number of sensors that have at least some invalid values.
    #
    #   </p>
    #
    #   @return [Integer]
    #
    # @!attribute total_number_of_invalid_values
    #   <p>
    #
    #   Indicates the total number of invalid values across all the sensors.
    #
    #   </p>
    #
    #   @return [Integer]
    #
    InvalidSensorData = ::Struct.new(
      :affected_sensor_count,
      :total_number_of_invalid_values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the configuration information for the S3 location being used to hold label
    #          data. </p>
    #
    # @!attribute s3_input_configuration
    #   <p>Contains location information for the S3 location being used for label data. </p>
    #
    #   @return [LabelsS3InputConfiguration]
    #
    LabelsInputConfiguration = ::Struct.new(
      :s3_input_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The location information (prefix and bucket name) for the s3 location being used for
    #          label data. </p>
    #
    # @!attribute bucket
    #   <p>The name of the S3 bucket holding the label data. </p>
    #
    #   @return [String]
    #
    # @!attribute prefix
    #   <p> The prefix for the S3 bucket used for the label data. </p>
    #
    #   @return [String]
    #
    LabelsS3InputConfiguration = ::Struct.new(
      :bucket,
      :prefix,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    # Entity that comprises information on large gaps between consecutive timestamps in data.
    # </p>
    #
    # @!attribute status
    #   <p>
    #   Indicates whether there is a potential data issue related to large gaps in timestamps.
    #   </p>
    #
    #   Enum, one of: ["POTENTIAL_ISSUE_DETECTED", "NO_ISSUE_DETECTED"]
    #
    #   @return [String]
    #
    # @!attribute number_of_large_timestamp_gaps
    #   <p>
    #   Indicates the number of large timestamp gaps, if there are any.
    #   </p>
    #
    #   @return [Integer]
    #
    # @!attribute max_timestamp_gap_in_days
    #   <p>
    #   Indicates the size of the largest timestamp gap, in days.
    #   </p>
    #
    #   @return [Integer]
    #
    LargeTimestampGaps = ::Struct.new(
      :status,
      :number_of_large_timestamp_gaps,
      :max_timestamp_gap_in_days,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute dataset_name
    #   <p>The name of the dataset being used for the data ingestion job. </p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p> An opaque pagination token indicating where to continue the listing of data ingestion
    #            jobs. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p> Specifies the maximum number of data ingestion jobs to list. </p>
    #
    #   @return [Integer]
    #
    # @!attribute status
    #   <p>Indicates the status of the data ingestion job. </p>
    #
    #   Enum, one of: ["IN_PROGRESS", "SUCCESS", "FAILED"]
    #
    #   @return [String]
    #
    ListDataIngestionJobsInput = ::Struct.new(
      :dataset_name,
      :next_token,
      :max_results,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p> An opaque pagination token indicating where to continue the listing of data ingestion
    #            jobs. </p>
    #
    #   @return [String]
    #
    # @!attribute data_ingestion_job_summaries
    #   <p>Specifies information about the specific data ingestion job, including dataset name and
    #            status. </p>
    #
    #   @return [Array<DataIngestionJobSummary>]
    #
    ListDataIngestionJobsOutput = ::Struct.new(
      :next_token,
      :data_ingestion_job_summaries,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p> An opaque pagination token indicating where to continue the listing of datasets.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p> Specifies the maximum number of datasets to list. </p>
    #
    #   @return [Integer]
    #
    # @!attribute dataset_name_begins_with
    #   <p>The beginning of the name of the datasets to be listed. </p>
    #
    #   @return [String]
    #
    ListDatasetsInput = ::Struct.new(
      :next_token,
      :max_results,
      :dataset_name_begins_with,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p> An opaque pagination token indicating where to continue the listing of datasets.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute dataset_summaries
    #   <p>Provides information about the specified dataset, including creation time, dataset ARN,
    #            and status. </p>
    #
    #   @return [Array<DatasetSummary>]
    #
    ListDatasetsOutput = ::Struct.new(
      :next_token,
      :dataset_summaries,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>An opaque pagination token indicating where to continue the listing of inference
    #            executions.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Specifies the maximum number of inference executions to list. </p>
    #
    #   @return [Integer]
    #
    # @!attribute inference_scheduler_name
    #   <p>The name of the inference scheduler for the inference execution listed. </p>
    #
    #   @return [String]
    #
    # @!attribute data_start_time_after
    #   <p>The time reference in the inferenced dataset after which Amazon Lookout for Equipment started the
    #            inference execution. </p>
    #
    #   @return [Time]
    #
    # @!attribute data_end_time_before
    #   <p>The time reference in the inferenced dataset before which Amazon Lookout for Equipment stopped the
    #            inference execution. </p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>The status of the inference execution. </p>
    #
    #   Enum, one of: ["IN_PROGRESS", "SUCCESS", "FAILED"]
    #
    #   @return [String]
    #
    ListInferenceExecutionsInput = ::Struct.new(
      :next_token,
      :max_results,
      :inference_scheduler_name,
      :data_start_time_after,
      :data_end_time_before,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p> An opaque pagination token indicating where to continue the listing of inference
    #            executions. </p>
    #
    #   @return [String]
    #
    # @!attribute inference_execution_summaries
    #   <p>Provides an array of information about the individual inference executions returned from
    #            the <code>ListInferenceExecutions</code> operation, including model used, inference
    #            scheduler, data configuration, and so on. </p>
    #
    #   @return [Array<InferenceExecutionSummary>]
    #
    ListInferenceExecutionsOutput = ::Struct.new(
      :next_token,
      :inference_execution_summaries,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p> An opaque pagination token indicating where to continue the listing of inference
    #            schedulers. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p> Specifies the maximum number of inference schedulers to list. </p>
    #
    #   @return [Integer]
    #
    # @!attribute inference_scheduler_name_begins_with
    #   <p>The beginning of the name of the inference schedulers to be listed. </p>
    #
    #   @return [String]
    #
    # @!attribute model_name
    #   <p>The name of the ML model used by the inference scheduler to be listed. </p>
    #
    #   @return [String]
    #
    ListInferenceSchedulersInput = ::Struct.new(
      :next_token,
      :max_results,
      :inference_scheduler_name_begins_with,
      :model_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p> An opaque pagination token indicating where to continue the listing of inference
    #            schedulers. </p>
    #
    #   @return [String]
    #
    # @!attribute inference_scheduler_summaries
    #   <p>Provides information about the specified inference scheduler, including data upload
    #            frequency, model name and ARN, and status. </p>
    #
    #   @return [Array<InferenceSchedulerSummary>]
    #
    ListInferenceSchedulersOutput = ::Struct.new(
      :next_token,
      :inference_scheduler_summaries,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p> An opaque pagination token indicating where to continue the listing of ML models.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p> Specifies the maximum number of ML models to list. </p>
    #
    #   @return [Integer]
    #
    # @!attribute status
    #   <p>The status of the ML model. </p>
    #
    #   Enum, one of: ["IN_PROGRESS", "SUCCESS", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute model_name_begins_with
    #   <p>The beginning of the name of the ML models being listed. </p>
    #
    #   @return [String]
    #
    # @!attribute dataset_name_begins_with
    #   <p>The beginning of the name of the dataset of the ML models to be listed. </p>
    #
    #   @return [String]
    #
    ListModelsInput = ::Struct.new(
      :next_token,
      :max_results,
      :status,
      :model_name_begins_with,
      :dataset_name_begins_with,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p> An opaque pagination token indicating where to continue the listing of ML models.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute model_summaries
    #   <p>Provides information on the specified model, including created time, model and dataset
    #            ARNs, and status. </p>
    #
    #   @return [Array<ModelSummary>]
    #
    ListModelsOutput = ::Struct.new(
      :next_token,
      :model_summaries,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute dataset_name
    #   <p>
    #   The name of the dataset associated with the list of Sensor Statistics.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute ingestion_job_id
    #   <p>
    #   The ingestion job id associated with the list of Sensor Statistics. To get sensor statistics for a particular ingestion job id, both dataset name and ingestion job id must be submitted as inputs.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>
    #   Specifies the maximum number of sensors for which to retrieve statistics.
    #   </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>
    #   An opaque pagination token indicating where to continue the listing of sensor statistics.
    #   </p>
    #
    #   @return [String]
    #
    ListSensorStatisticsInput = ::Struct.new(
      :dataset_name,
      :ingestion_job_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute sensor_statistics_summaries
    #   <p>
    #   Provides ingestion-based statistics regarding the specified sensor with respect to various validation types, such as whether data exists, the number and percentage of missing values, and the number and percentage of duplicate timestamps.
    #   </p>
    #
    #   @return [Array<SensorStatisticsSummary>]
    #
    # @!attribute next_token
    #   <p>
    #   An opaque pagination token indicating where to continue the listing of sensor statistics.
    #   </p>
    #
    #   @return [String]
    #
    ListSensorStatisticsOutput = ::Struct.new(
      :sensor_statistics_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource (such as the dataset or model) that is
    #            the focus of the <code>ListTagsForResource</code> operation. </p>
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
    #   <p> Any tags associated with the resource. </p>
    #
    #   @return [Array<Tag>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #
    # Entity that comprises information on sensors that have sensor data completely missing.
    #
    # </p>
    #
    # @!attribute affected_sensor_count
    #   <p>
    #
    #   Indicates the number of sensors that have data missing completely.
    #
    #   </p>
    #
    #   @return [Integer]
    #
    MissingCompleteSensorData = ::Struct.new(
      :affected_sensor_count,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #
    # Entity that comprises aggregated information on sensors having missing data.
    #
    # </p>
    #
    # @!attribute affected_sensor_count
    #   <p>
    #
    #   Indicates the number of sensors that have atleast some data missing.
    #
    #   </p>
    #
    #   @return [Integer]
    #
    # @!attribute total_number_of_missing_values
    #   <p>
    #
    #   Indicates the total number of missing values across all the sensors.
    #
    #   </p>
    #
    #   @return [Integer]
    #
    MissingSensorData = ::Struct.new(
      :affected_sensor_count,
      :total_number_of_missing_values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ModelStatus
    #
    module ModelStatus
      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      SUCCESS = "SUCCESS"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>Provides information about the specified ML model, including dataset and model names and
    #          ARNs, as well as status. </p>
    #
    # @!attribute model_name
    #   <p>The name of the ML model. </p>
    #
    #   @return [String]
    #
    # @!attribute model_arn
    #   <p> The Amazon Resource Name (ARN) of the ML model. </p>
    #
    #   @return [String]
    #
    # @!attribute dataset_name
    #   <p>The name of the dataset being used for the ML model. </p>
    #
    #   @return [String]
    #
    # @!attribute dataset_arn
    #   <p> The Amazon Resource Name (ARN) of the dataset used to create the model. </p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Indicates the status of the ML model. </p>
    #
    #   Enum, one of: ["IN_PROGRESS", "SUCCESS", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The time at which the specific model was created. </p>
    #
    #   @return [Time]
    #
    ModelSummary = ::Struct.new(
      :model_name,
      :model_arn,
      :dataset_name,
      :dataset_arn,
      :status,
      :created_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    # Entity that comprises information on monotonic values in the data.
    # </p>
    #
    # @!attribute status
    #   <p>
    #   Indicates whether there is a potential data issue related to having monotonic values.
    #   </p>
    #
    #   Enum, one of: ["POTENTIAL_ISSUE_DETECTED", "NO_ISSUE_DETECTED"]
    #
    #   @return [String]
    #
    # @!attribute monotonicity
    #   <p>
    #   Indicates the monotonicity of values. Can be INCREASING, DECREASING, or STATIC.
    #   </p>
    #
    #   Enum, one of: ["DECREASING", "INCREASING", "STATIC"]
    #
    #   @return [String]
    #
    MonotonicValues = ::Struct.new(
      :status,
      :monotonicity,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Monotonicity
    #
    module Monotonicity
      # No documentation available.
      #
      DECREASING = "DECREASING"

      # No documentation available.
      #
      INCREASING = "INCREASING"

      # No documentation available.
      #
      STATIC = "STATIC"
    end

    # <p>
    # Entity that comprises information on operating modes in data.
    # </p>
    #
    # @!attribute status
    #   <p>
    #       Indicates whether there is a potential data issue related to having multiple operating modes.
    #   </p>
    #
    #   Enum, one of: ["POTENTIAL_ISSUE_DETECTED", "NO_ISSUE_DETECTED"]
    #
    #   @return [String]
    #
    MultipleOperatingModes = ::Struct.new(
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The resource requested could not be found. Verify the resource ID and retry your
    #          request. </p>
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

    # <p>Contains information about an S3 bucket. </p>
    #
    # @!attribute bucket
    #   <p>The name of the specific S3 bucket. </p>
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>The AWS Key Management Service (AWS KMS) key being used to encrypt the S3 object.
    #            Without this key, data in the bucket is not accessible. </p>
    #
    #   @return [String]
    #
    S3Object = ::Struct.new(
      :bucket,
      :key,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #
    # Summary of ingestion statistics like whether data exists, number of missing values, number of invalid values and so on related to the particular sensor.
    #
    # </p>
    #
    # @!attribute component_name
    #   <p>
    #
    #   Name of the component to which the particular sensor belongs for which the statistics belong to.
    #
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute sensor_name
    #   <p>
    #
    #   Name of the sensor that the statistics belong to.
    #
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute data_exists
    #   <p>
    #
    #   Parameter that indicates whether data exists for the sensor that the statistics belong to.
    #
    #   </p>
    #
    #   @return [Boolean]
    #
    # @!attribute missing_values
    #   <p>
    #
    #   Parameter that describes the total number of, and percentage of, values that are missing for the sensor that the statistics belong to.
    #
    #   </p>
    #
    #   @return [CountPercent]
    #
    # @!attribute invalid_values
    #   <p>
    #
    #   Parameter that describes the total number of, and percentage of, values that are invalid for the sensor that the statistics belong to.
    #
    #   </p>
    #
    #   @return [CountPercent]
    #
    # @!attribute invalid_date_entries
    #   <p>
    #
    #   Parameter that describes the total number of invalid date entries associated with the sensor that the statistics belong to.
    #
    #   </p>
    #
    #   @return [CountPercent]
    #
    # @!attribute duplicate_timestamps
    #   <p>
    #   Parameter that describes the total number of duplicate timestamp records associated with the sensor that the statistics belong to.
    #   </p>
    #
    #   @return [CountPercent]
    #
    # @!attribute categorical_values
    #   <p>
    #   Parameter that describes potential risk about whether data associated with the sensor is categorical.
    #   </p>
    #
    #   @return [CategoricalValues]
    #
    # @!attribute multiple_operating_modes
    #   <p>
    #   Parameter that describes potential risk about whether data associated with the sensor has more than one operating mode.
    #   </p>
    #
    #   @return [MultipleOperatingModes]
    #
    # @!attribute large_timestamp_gaps
    #   <p>
    #   Parameter that describes potential risk about whether data associated with the sensor contains one or more large gaps between consecutive timestamps.
    #   </p>
    #
    #   @return [LargeTimestampGaps]
    #
    # @!attribute monotonic_values
    #   <p>
    #   Parameter that describes potential risk about whether data associated with the sensor is mostly monotonic.
    #   </p>
    #
    #   @return [MonotonicValues]
    #
    # @!attribute data_start_time
    #   <p>
    #   Indicates the time reference to indicate the beginning of valid data associated with the sensor that the statistics belong to.
    #   </p>
    #
    #   @return [Time]
    #
    # @!attribute data_end_time
    #   <p>
    #   Indicates the time reference to indicate the end of valid data associated with the sensor that the statistics belong to.
    #   </p>
    #
    #   @return [Time]
    #
    SensorStatisticsSummary = ::Struct.new(
      :component_name,
      :sensor_name,
      :data_exists,
      :missing_values,
      :invalid_values,
      :invalid_date_entries,
      :duplicate_timestamps,
      :categorical_values,
      :multiple_operating_modes,
      :large_timestamp_gaps,
      :monotonic_values,
      :data_start_time,
      :data_end_time,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.data_exists ||= false
      end

    end

    # <p>
    #
    # Entity that comprises information on sensors that have shorter date range.
    #
    # </p>
    #
    # @!attribute affected_sensor_count
    #   <p>
    #
    #   Indicates the number of sensors that have less than 90 days of data.
    #
    #   </p>
    #
    #   @return [Integer]
    #
    SensorsWithShortDateRange = ::Struct.new(
      :affected_sensor_count,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Resource limitations have been exceeded. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ServiceQuotaExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute dataset_name
    #   <p>The name of the dataset being used by the data ingestion job. </p>
    #
    #   @return [String]
    #
    # @!attribute ingestion_input_configuration
    #   <p> Specifies information for the input data for the data ingestion job, including dataset
    #            S3 location. </p>
    #
    #   @return [IngestionInputConfiguration]
    #
    # @!attribute role_arn
    #   <p> The Amazon Resource Name (ARN) of a role with permission to access the data source for
    #            the data ingestion job. </p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p> A unique identifier for the request. If you do not set the client request token, Amazon
    #            Lookout for Equipment generates one. </p>
    #
    #   @return [String]
    #
    StartDataIngestionJobInput = ::Struct.new(
      :dataset_name,
      :ingestion_input_configuration,
      :role_arn,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>Indicates the job ID of the data ingestion job. </p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Indicates the status of the <code>StartDataIngestionJob</code> operation. </p>
    #
    #   Enum, one of: ["IN_PROGRESS", "SUCCESS", "FAILED"]
    #
    #   @return [String]
    #
    StartDataIngestionJobOutput = ::Struct.new(
      :job_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute inference_scheduler_name
    #   <p>The name of the inference scheduler to be started. </p>
    #
    #   @return [String]
    #
    StartInferenceSchedulerInput = ::Struct.new(
      :inference_scheduler_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute model_arn
    #   <p>The Amazon Resource Name (ARN) of the ML model being used by the inference scheduler.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute model_name
    #   <p>The name of the ML model being used by the inference scheduler. </p>
    #
    #   @return [String]
    #
    # @!attribute inference_scheduler_name
    #   <p>The name of the inference scheduler being started. </p>
    #
    #   @return [String]
    #
    # @!attribute inference_scheduler_arn
    #   <p>The Amazon Resource Name (ARN) of the inference scheduler being started. </p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Indicates the status of the inference scheduler. </p>
    #
    #   Enum, one of: ["PENDING", "RUNNING", "STOPPING", "STOPPED"]
    #
    #   @return [String]
    #
    StartInferenceSchedulerOutput = ::Struct.new(
      :model_arn,
      :model_name,
      :inference_scheduler_name,
      :inference_scheduler_arn,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for StatisticalIssueStatus
    #
    module StatisticalIssueStatus
      # No documentation available.
      #
      POTENTIAL_ISSUE_DETECTED = "POTENTIAL_ISSUE_DETECTED"

      # No documentation available.
      #
      NO_ISSUE_DETECTED = "NO_ISSUE_DETECTED"
    end

    # @!attribute inference_scheduler_name
    #   <p>The name of the inference scheduler to be stopped. </p>
    #
    #   @return [String]
    #
    StopInferenceSchedulerInput = ::Struct.new(
      :inference_scheduler_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute model_arn
    #   <p>The Amazon Resource Name (ARN) of the ML model used by the inference scheduler being
    #            stopped. </p>
    #
    #   @return [String]
    #
    # @!attribute model_name
    #   <p>The name of the ML model used by the inference scheduler being stopped. </p>
    #
    #   @return [String]
    #
    # @!attribute inference_scheduler_name
    #   <p>The name of the inference scheduler being stopped. </p>
    #
    #   @return [String]
    #
    # @!attribute inference_scheduler_arn
    #   <p>The Amazon Resource Name (ARN) of the inference schedule being stopped. </p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Indicates the status of the inference scheduler. </p>
    #
    #   Enum, one of: ["PENDING", "RUNNING", "STOPPING", "STOPPED"]
    #
    #   @return [String]
    #
    StopInferenceSchedulerOutput = ::Struct.new(
      :model_arn,
      :model_name,
      :inference_scheduler_name,
      :inference_scheduler_arn,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A tag is a key-value pair that can be added to a resource as metadata. </p>
    #
    # @!attribute key
    #   <p>The key for the specified tag. </p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value for the specified tag. </p>
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
    #   <p>The Amazon Resource Name (ARN) of the specific resource to which the tag should be
    #            associated. </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tag or tags to be associated with a specific resource. Both the tag key and value
    #            are specified. </p>
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

    # Includes enum constants for TargetSamplingRate
    #
    module TargetSamplingRate
      # No documentation available.
      #
      PT1S = "PT1S"

      # No documentation available.
      #
      PT5S = "PT5S"

      # No documentation available.
      #
      PT10S = "PT10S"

      # No documentation available.
      #
      PT15S = "PT15S"

      # No documentation available.
      #
      PT30S = "PT30S"

      # No documentation available.
      #
      PT1M = "PT1M"

      # No documentation available.
      #
      PT5M = "PT5M"

      # No documentation available.
      #
      PT10M = "PT10M"

      # No documentation available.
      #
      PT15M = "PT15M"

      # No documentation available.
      #
      PT30M = "PT30M"

      # No documentation available.
      #
      PT1H = "PT1H"
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

    # <p>
    #
    # Entity that comprises information abount unsupported timestamps in the dataset.
    #
    # </p>
    #
    # @!attribute total_number_of_unsupported_timestamps
    #   <p>
    #
    #   Indicates the total number of unsupported timestamps across the ingested data.
    #
    #   </p>
    #
    #   @return [Integer]
    #
    UnsupportedTimestamps = ::Struct.new(
      :total_number_of_unsupported_timestamps,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to which the tag is currently associated.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>Specifies the key of the tag to be removed from a specified resource. </p>
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

    # @!attribute inference_scheduler_name
    #   <p>The name of the inference scheduler to be updated. </p>
    #
    #   @return [String]
    #
    # @!attribute data_delay_offset_in_minutes
    #   <p> A period of time (in minutes) by which inference on the data is delayed after the data
    #            starts. For instance, if you select an offset delay time of five minutes, inference will
    #            not begin on the data until the first data measurement after the five minute mark. For example, if
    #            five minutes is selected, the inference scheduler will wake up at the configured frequency with the
    #            additional five minute delay time to check the customer S3 bucket. The customer can upload data at
    #            the same frequency and they don't need to stop and restart the scheduler when uploading new data.</p>
    #
    #   @return [Integer]
    #
    # @!attribute data_upload_frequency
    #   <p>How often data is uploaded to the source S3 bucket for the input data. The value chosen
    #            is the length of time between data uploads. For instance, if you select 5 minutes, Amazon
    #            Lookout for Equipment will upload the real-time data to the source bucket once every 5 minutes. This frequency
    #            also determines how often Amazon Lookout for Equipment starts a scheduled inference on your data. In this
    #            example, it starts once every 5 minutes. </p>
    #
    #   Enum, one of: ["PT5M", "PT10M", "PT15M", "PT30M", "PT1H"]
    #
    #   @return [String]
    #
    # @!attribute data_input_configuration
    #   <p> Specifies information for the input data for the inference scheduler, including
    #            delimiter, format, and dataset location. </p>
    #
    #   @return [InferenceInputConfiguration]
    #
    # @!attribute data_output_configuration
    #   <p> Specifies information for the output results from the inference scheduler, including the output S3 location. </p>
    #
    #   @return [InferenceOutputConfiguration]
    #
    # @!attribute role_arn
    #   <p> The Amazon Resource Name (ARN) of a role with permission to access the data source for
    #            the inference scheduler. </p>
    #
    #   @return [String]
    #
    UpdateInferenceSchedulerInput = ::Struct.new(
      :inference_scheduler_name,
      :data_delay_offset_in_minutes,
      :data_upload_frequency,
      :data_input_configuration,
      :data_output_configuration,
      :role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateInferenceSchedulerOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The input fails to satisfy constraints specified by Amazon Lookout for Equipment or a related AWS
    #          service that's being utilized. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ValidationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
