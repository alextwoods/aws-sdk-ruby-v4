# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::FraudDetector
  module Types

    # <p>An exception indicating Amazon Fraud Detector does not have the needed permissions. This can occur if you submit a request, such as <code>PutExternalModel</code>, that specifies a role that is not in your account.</p>
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

    # Includes enum constants for AsyncJobStatus
    #
    module AsyncJobStatus
      # No documentation available.
      #
      IN_PROGRESS_INITIALIZING = "IN_PROGRESS_INITIALIZING"

      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      CANCEL_IN_PROGRESS = "CANCEL_IN_PROGRESS"

      # No documentation available.
      #
      CANCELED = "CANCELED"

      # No documentation available.
      #
      COMPLETE = "COMPLETE"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>Provides the error of the batch create variable API.</p>
    #
    # @!attribute name
    #   <p>The name.</p>
    #
    #   @return [String]
    #
    # @!attribute code
    #   <p>The error code. </p>
    #
    #   @return [Integer]
    #
    # @!attribute message
    #   <p>The error message.</p>
    #
    #   @return [String]
    #
    BatchCreateVariableError = ::Struct.new(
      :name,
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.code ||= 0
      end

    end

    # @!attribute variable_entries
    #   <p>The list of variables for the batch create variable request.</p>
    #
    #   @return [Array<VariableEntry>]
    #
    # @!attribute tags
    #   <p>A collection of key and value pairs.</p>
    #
    #   @return [Array<Tag>]
    #
    BatchCreateVariableInput = ::Struct.new(
      :variable_entries,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute errors
    #   <p>Provides the errors for the <code>BatchCreateVariable</code> request.</p>
    #
    #   @return [Array<BatchCreateVariableError>]
    #
    BatchCreateVariableOutput = ::Struct.new(
      :errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides the error of the batch get variable API.</p>
    #
    # @!attribute name
    #   <p>The error name. </p>
    #
    #   @return [String]
    #
    # @!attribute code
    #   <p>The error code. </p>
    #
    #   @return [Integer]
    #
    # @!attribute message
    #   <p>The error message.</p>
    #
    #   @return [String]
    #
    BatchGetVariableError = ::Struct.new(
      :name,
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.code ||= 0
      end

    end

    # @!attribute names
    #   <p>The list of variable names to get.</p>
    #
    #   @return [Array<String>]
    #
    BatchGetVariableInput = ::Struct.new(
      :names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute variables
    #   <p>The returned variables.</p>
    #
    #   @return [Array<Variable>]
    #
    # @!attribute errors
    #   <p>The errors from the request.</p>
    #
    #   @return [Array<BatchGetVariableError>]
    #
    BatchGetVariableOutput = ::Struct.new(
      :variables,
      :errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The batch import job details.</p>
    #
    # @!attribute job_id
    #   <p>The ID of the batch import job. </p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the batch import job.</p>
    #
    #   Enum, one of: ["IN_PROGRESS_INITIALIZING", "IN_PROGRESS", "CANCEL_IN_PROGRESS", "CANCELED", "COMPLETE", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute failure_reason
    #   <p>The reason batch import job failed.</p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>Timestamp of when the batch import job started.</p>
    #
    #   @return [String]
    #
    # @!attribute completion_time
    #   <p>Timestamp of when batch import job completed.</p>
    #
    #   @return [String]
    #
    # @!attribute input_path
    #   <p>The Amazon S3 location of your data file for batch import.</p>
    #
    #   @return [String]
    #
    # @!attribute output_path
    #   <p>The Amazon S3 location of your output file.</p>
    #
    #   @return [String]
    #
    # @!attribute event_type_name
    #   <p>The name of the event type.</p>
    #
    #   @return [String]
    #
    # @!attribute iam_role_arn
    #   <p>The ARN of the IAM role to use for this job request.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The ARN of the batch import job.</p>
    #
    #   @return [String]
    #
    # @!attribute processed_records_count
    #   <p>The number of records processed by batch import job.</p>
    #
    #   @return [Integer]
    #
    # @!attribute failed_records_count
    #   <p>The number of records that failed to import. </p>
    #
    #   @return [Integer]
    #
    # @!attribute total_records_count
    #   <p>The total number of records in the batch import job.</p>
    #
    #   @return [Integer]
    #
    BatchImport = ::Struct.new(
      :job_id,
      :status,
      :failure_reason,
      :start_time,
      :completion_time,
      :input_path,
      :output_path,
      :event_type_name,
      :iam_role_arn,
      :arn,
      :processed_records_count,
      :failed_records_count,
      :total_records_count,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The batch prediction details.</p>
    #
    # @!attribute job_id
    #   <p>The job ID for the batch prediction.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The batch prediction status.</p>
    #
    #   Enum, one of: ["IN_PROGRESS_INITIALIZING", "IN_PROGRESS", "CANCEL_IN_PROGRESS", "CANCELED", "COMPLETE", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute failure_reason
    #   <p>The reason a batch prediction job failed.</p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>Timestamp of when the batch prediction job started.</p>
    #
    #   @return [String]
    #
    # @!attribute completion_time
    #   <p>Timestamp of when the batch prediction job completed.</p>
    #
    #   @return [String]
    #
    # @!attribute last_heartbeat_time
    #   <p>Timestamp of most recent heartbeat indicating the batch prediction job was making progress.</p>
    #
    #   @return [String]
    #
    # @!attribute input_path
    #   <p>The Amazon S3 location of your training file.</p>
    #
    #   @return [String]
    #
    # @!attribute output_path
    #   <p>The Amazon S3 location of your output file.</p>
    #
    #   @return [String]
    #
    # @!attribute event_type_name
    #   <p>The name of the event type.</p>
    #
    #   @return [String]
    #
    # @!attribute detector_name
    #   <p>The name of the detector.</p>
    #
    #   @return [String]
    #
    # @!attribute detector_version
    #   <p>The detector version. </p>
    #
    #   @return [String]
    #
    # @!attribute iam_role_arn
    #   <p>The ARN of the IAM role to use for this job request.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The ARN of batch prediction job.</p>
    #
    #   @return [String]
    #
    # @!attribute processed_records_count
    #   <p>The number of records processed by the batch prediction job.</p>
    #
    #   @return [Integer]
    #
    # @!attribute total_records_count
    #   <p>The total number of records in the batch prediction job.</p>
    #
    #   @return [Integer]
    #
    BatchPrediction = ::Struct.new(
      :job_id,
      :status,
      :failure_reason,
      :start_time,
      :completion_time,
      :last_heartbeat_time,
      :input_path,
      :output_path,
      :event_type_name,
      :detector_name,
      :detector_version,
      :iam_role_arn,
      :arn,
      :processed_records_count,
      :total_records_count,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p> The ID of an in-progress batch import job to cancel. </p>
    #            <p>Amazon Fraud Detector will throw an error if the batch import job is in <code>FAILED</code>, <code>CANCELED</code>, or  <code>COMPLETED</code> state.</p>
    #
    #   @return [String]
    #
    CancelBatchImportJobInput = ::Struct.new(
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CancelBatchImportJobOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The ID of the batch prediction job to cancel.</p>
    #
    #   @return [String]
    #
    CancelBatchPredictionJobInput = ::Struct.new(
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CancelBatchPredictionJobOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An exception indicating there was a conflict during a delete operation.</p>
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

    # @!attribute job_id
    #   <p>The ID of the batch import job. The ID cannot be of a past job, unless the job exists in <code>CREATE_FAILED</code> state.</p>
    #
    #   @return [String]
    #
    # @!attribute input_path
    #   <p>The URI that points to the Amazon S3 location of your data file.</p>
    #
    #   @return [String]
    #
    # @!attribute output_path
    #   <p>The URI that points to the Amazon S3 location for storing your results. </p>
    #
    #   @return [String]
    #
    # @!attribute event_type_name
    #   <p>The name of the event type.</p>
    #
    #   @return [String]
    #
    # @!attribute iam_role_arn
    #   <p>The ARN of the IAM role created for Amazon S3 bucket that holds your data file.
    #            The IAM role must have read and write permissions to both input and output S3 buckets.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A collection of key-value pairs associated with this request.  </p>
    #
    #   @return [Array<Tag>]
    #
    CreateBatchImportJobInput = ::Struct.new(
      :job_id,
      :input_path,
      :output_path,
      :event_type_name,
      :iam_role_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CreateBatchImportJobOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The ID of the batch prediction job.</p>
    #
    #   @return [String]
    #
    # @!attribute input_path
    #   <p>The Amazon S3 location of your training file.</p>
    #
    #   @return [String]
    #
    # @!attribute output_path
    #   <p>The Amazon S3 location of your output file.</p>
    #
    #   @return [String]
    #
    # @!attribute event_type_name
    #   <p>The name of the event type.</p>
    #
    #   @return [String]
    #
    # @!attribute detector_name
    #   <p>The name of the detector.</p>
    #
    #   @return [String]
    #
    # @!attribute detector_version
    #   <p>The detector version.</p>
    #
    #   @return [String]
    #
    # @!attribute iam_role_arn
    #   <p>The ARN of the IAM role to use for this job request.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A collection of key and value pairs.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateBatchPredictionJobInput = ::Struct.new(
      :job_id,
      :input_path,
      :output_path,
      :event_type_name,
      :detector_name,
      :detector_version,
      :iam_role_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CreateBatchPredictionJobOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute detector_id
    #   <p>The ID of the detector under which you want to create a new version.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the detector version.</p>
    #
    #   @return [String]
    #
    # @!attribute external_model_endpoints
    #   <p>The Amazon Sagemaker model endpoints to include in the detector version.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute rules
    #   <p>The rules to include in the detector version.</p>
    #
    #   @return [Array<Rule>]
    #
    # @!attribute model_versions
    #   <p>The model versions to include in the detector version.</p>
    #
    #   @return [Array<ModelVersion>]
    #
    # @!attribute rule_execution_mode
    #   <p>The rule execution mode for the rules included in the detector version.</p>
    #   	        <p>You can define and edit the rule mode at the detector version level, when it is in draft status.</p>
    #   	        <p>If you specify <code>FIRST_MATCHED</code>, Amazon Fraud Detector evaluates rules sequentially, first to last, stopping at the first matched rule. Amazon Fraud dectector then provides the outcomes for that single rule.</p>
    #   	        <p>If you specifiy <code>ALL_MATCHED</code>, Amazon Fraud Detector evaluates all rules and returns the outcomes for all matched rules. </p>
    #            <p>The default behavior is <code>FIRST_MATCHED</code>.</p>
    #
    #   Enum, one of: ["ALL_MATCHED", "FIRST_MATCHED"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A collection of key and value pairs.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateDetectorVersionInput = ::Struct.new(
      :detector_id,
      :description,
      :external_model_endpoints,
      :rules,
      :model_versions,
      :rule_execution_mode,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute detector_id
    #   <p>The ID for the created version's parent detector.</p>
    #
    #   @return [String]
    #
    # @!attribute detector_version_id
    #   <p>The ID for the created detector. </p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the detector version.</p>
    #
    #   Enum, one of: ["DRAFT", "ACTIVE", "INACTIVE"]
    #
    #   @return [String]
    #
    CreateDetectorVersionOutput = ::Struct.new(
      :detector_id,
      :detector_version_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute model_id
    #   <p>The model ID.</p>
    #
    #   @return [String]
    #
    # @!attribute model_type
    #   <p>The model type. </p>
    #
    #   Enum, one of: ["ONLINE_FRAUD_INSIGHTS", "TRANSACTION_FRAUD_INSIGHTS"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The model description. </p>
    #
    #   @return [String]
    #
    # @!attribute event_type_name
    #   <p>The name of the event type.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A collection of key and value pairs.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateModelInput = ::Struct.new(
      :model_id,
      :model_type,
      :description,
      :event_type_name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CreateModelOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute model_id
    #   <p>The model ID. </p>
    #
    #   @return [String]
    #
    # @!attribute model_type
    #   <p>The model type.</p>
    #
    #   Enum, one of: ["ONLINE_FRAUD_INSIGHTS", "TRANSACTION_FRAUD_INSIGHTS"]
    #
    #   @return [String]
    #
    # @!attribute training_data_source
    #   <p>The training data source location in Amazon S3. </p>
    #
    #   Enum, one of: ["EXTERNAL_EVENTS", "INGESTED_EVENTS"]
    #
    #   @return [String]
    #
    # @!attribute training_data_schema
    #   <p>The training data schema.</p>
    #
    #   @return [TrainingDataSchema]
    #
    # @!attribute external_events_detail
    #   <p>Details of the external events data used for model version training. Required if <code>trainingDataSource</code> is <code>EXTERNAL_EVENTS</code>.</p>
    #
    #   @return [ExternalEventsDetail]
    #
    # @!attribute ingested_events_detail
    #   <p>Details of the ingested events data used for model version training. Required if <code>trainingDataSource</code> is <code>INGESTED_EVENTS</code>.</p>
    #
    #   @return [IngestedEventsDetail]
    #
    # @!attribute tags
    #   <p>A collection of key and value pairs.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateModelVersionInput = ::Struct.new(
      :model_id,
      :model_type,
      :training_data_source,
      :training_data_schema,
      :external_events_detail,
      :ingested_events_detail,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute model_id
    #   <p>The model ID.</p>
    #
    #   @return [String]
    #
    # @!attribute model_type
    #   <p>The model type.</p>
    #
    #   Enum, one of: ["ONLINE_FRAUD_INSIGHTS", "TRANSACTION_FRAUD_INSIGHTS"]
    #
    #   @return [String]
    #
    # @!attribute model_version_number
    #   <p>The model version number of the model version created.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The model version status. </p>
    #
    #   @return [String]
    #
    CreateModelVersionOutput = ::Struct.new(
      :model_id,
      :model_type,
      :model_version_number,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute rule_id
    #   <p>The rule ID.</p>
    #
    #   @return [String]
    #
    # @!attribute detector_id
    #   <p>The detector ID for the rule's parent detector.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The rule description.</p>
    #
    #   @return [String]
    #
    # @!attribute expression
    #   <p>The rule expression.</p>
    #
    #   @return [String]
    #
    # @!attribute language
    #   <p>The language of the rule.</p>
    #
    #   Enum, one of: ["DETECTORPL"]
    #
    #   @return [String]
    #
    # @!attribute outcomes
    #   <p>The outcome or outcomes returned when the rule expression matches.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tags
    #   <p>A collection of key and value pairs.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateRuleInput = ::Struct.new(
      :rule_id,
      :detector_id,
      :description,
      :expression,
      :language,
      :outcomes,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::FraudDetector::Types::CreateRuleInput "\
          "rule_id=#{rule_id || 'nil'}, "\
          "detector_id=#{detector_id || 'nil'}, "\
          "description=#{description || 'nil'}, "\
          "expression=\"[SENSITIVE]\", "\
          "language=#{language || 'nil'}, "\
          "outcomes=#{outcomes || 'nil'}, "\
          "tags=#{tags || 'nil'}>"
      end
    end

    # @!attribute rule
    #   <p>The created rule.</p>
    #
    #   @return [Rule]
    #
    CreateRuleOutput = ::Struct.new(
      :rule,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the variable.</p>
    #
    #   @return [String]
    #
    # @!attribute data_type
    #   <p>The data type.</p>
    #
    #   Enum, one of: ["STRING", "INTEGER", "FLOAT", "BOOLEAN"]
    #
    #   @return [String]
    #
    # @!attribute data_source
    #   <p>The source of the data.</p>
    #
    #   Enum, one of: ["EVENT", "MODEL_SCORE", "EXTERNAL_MODEL_SCORE"]
    #
    #   @return [String]
    #
    # @!attribute default_value
    #   <p>The default value for the variable when no value is received.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description.</p>
    #
    #   @return [String]
    #
    # @!attribute variable_type
    #   <p>The variable type. For more information see <a href="https://docs.aws.amazon.com/frauddetector/latest/ug/create-a-variable.html variable-types">Variable types</a>.
    #   				</p>
    #            <p>Valid Values: <code>AUTH_CODE | AVS | BILLING_ADDRESS_L1 | BILLING_ADDRESS_L2 | BILLING_CITY | BILLING_COUNTRY | BILLING_NAME | BILLING_PHONE | BILLING_STATE | BILLING_ZIP | CARD_BIN | CATEGORICAL | CURRENCY_CODE | EMAIL_ADDRESS | FINGERPRINT | FRAUD_LABEL | FREE_FORM_TEXT | IP_ADDRESS | NUMERIC | ORDER_ID | PAYMENT_TYPE | PHONE_NUMBER | PRICE | PRODUCT_CATEGORY | SHIPPING_ADDRESS_L1 | SHIPPING_ADDRESS_L2 | SHIPPING_CITY | SHIPPING_COUNTRY | SHIPPING_NAME | SHIPPING_PHONE | SHIPPING_STATE | SHIPPING_ZIP | USERAGENT</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A collection of key and value pairs.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateVariableInput = ::Struct.new(
      :name,
      :data_type,
      :data_source,
      :default_value,
      :description,
      :variable_type,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CreateVariableOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DataSource
    #
    module DataSource
      # No documentation available.
      #
      EVENT = "EVENT"

      # No documentation available.
      #
      MODEL_SCORE = "MODEL_SCORE"

      # No documentation available.
      #
      EXTERNAL_MODEL_SCORE = "EXTERNAL_MODEL_SCORE"
    end

    # Includes enum constants for DataType
    #
    module DataType
      # No documentation available.
      #
      STRING = "STRING"

      # No documentation available.
      #
      INTEGER = "INTEGER"

      # No documentation available.
      #
      FLOAT = "FLOAT"

      # No documentation available.
      #
      BOOLEAN = "BOOLEAN"
    end

    # <p>The model training validation messages.</p>
    #
    # @!attribute file_level_messages
    #   <p>The file-specific model training validation messages.</p>
    #
    #   @return [Array<FileValidationMessage>]
    #
    # @!attribute field_level_messages
    #   <p>The field-specific model training validation messages.</p>
    #
    #   @return [Array<FieldValidationMessage>]
    #
    DataValidationMetrics = ::Struct.new(
      :file_level_messages,
      :field_level_messages,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The ID of the batch import job to delete. </p>
    #
    #   @return [String]
    #
    DeleteBatchImportJobInput = ::Struct.new(
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteBatchImportJobOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The ID of the batch prediction job to delete.</p>
    #
    #   @return [String]
    #
    DeleteBatchPredictionJobInput = ::Struct.new(
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteBatchPredictionJobOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute detector_id
    #   <p>The ID of the detector to delete.</p>
    #
    #   @return [String]
    #
    DeleteDetectorInput = ::Struct.new(
      :detector_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteDetectorOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute detector_id
    #   <p>The ID of the parent detector for the detector version to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute detector_version_id
    #   <p>The ID of the detector version to delete.</p>
    #
    #   @return [String]
    #
    DeleteDetectorVersionInput = ::Struct.new(
      :detector_id,
      :detector_version_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteDetectorVersionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the entity type to delete.</p>
    #
    #   @return [String]
    #
    DeleteEntityTypeInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteEntityTypeOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute event_id
    #   <p>The ID of the event to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute event_type_name
    #   <p>The name of the event type.</p>
    #
    #   @return [String]
    #
    # @!attribute delete_audit_history
    #   <p>Specifies whether or not to delete any predictions associated with the event.</p>
    #
    #   @return [Boolean]
    #
    DeleteEventInput = ::Struct.new(
      :event_id,
      :event_type_name,
      :delete_audit_history,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteEventOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the event type to delete.</p>
    #
    #   @return [String]
    #
    DeleteEventTypeInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteEventTypeOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute event_type_name
    #   <p>The name of the event type.</p>
    #
    #   @return [String]
    #
    DeleteEventsByEventTypeInput = ::Struct.new(
      :event_type_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute event_type_name
    #   <p>Name of event type for which to delete the events.</p>
    #
    #   @return [String]
    #
    # @!attribute events_deletion_status
    #   <p>The status of the delete request.</p>
    #
    #   @return [String]
    #
    DeleteEventsByEventTypeOutput = ::Struct.new(
      :event_type_name,
      :events_deletion_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute model_endpoint
    #   <p>The endpoint of the Amazon Sagemaker model to delete.</p>
    #
    #   @return [String]
    #
    DeleteExternalModelInput = ::Struct.new(
      :model_endpoint,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteExternalModelOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the label to delete.</p>
    #
    #   @return [String]
    #
    DeleteLabelInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteLabelOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute model_id
    #   <p>The model ID of the model to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute model_type
    #   <p>The model type of the model to delete.</p>
    #
    #   Enum, one of: ["ONLINE_FRAUD_INSIGHTS", "TRANSACTION_FRAUD_INSIGHTS"]
    #
    #   @return [String]
    #
    DeleteModelInput = ::Struct.new(
      :model_id,
      :model_type,
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

    # @!attribute model_id
    #   <p>The model ID of the model version to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute model_type
    #   <p>The model type of the model version to delete.</p>
    #
    #   Enum, one of: ["ONLINE_FRAUD_INSIGHTS", "TRANSACTION_FRAUD_INSIGHTS"]
    #
    #   @return [String]
    #
    # @!attribute model_version_number
    #   <p>The model version number of the model version to delete.</p>
    #
    #   @return [String]
    #
    DeleteModelVersionInput = ::Struct.new(
      :model_id,
      :model_type,
      :model_version_number,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteModelVersionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the outcome to delete.</p>
    #
    #   @return [String]
    #
    DeleteOutcomeInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteOutcomeOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute rule
    #   <p>A rule.</p>
    #
    #   @return [Rule]
    #
    DeleteRuleInput = ::Struct.new(
      :rule,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteRuleOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the variable to delete.</p>
    #
    #   @return [String]
    #
    DeleteVariableInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteVariableOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute detector_id
    #   <p>The detector ID.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The next token from the previous response.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return for the request.</p>
    #
    #   @return [Integer]
    #
    DescribeDetectorInput = ::Struct.new(
      :detector_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute detector_id
    #   <p>The detector ID.</p>
    #
    #   @return [String]
    #
    # @!attribute detector_version_summaries
    #   <p>The status and description for each detector version.</p>
    #
    #   @return [Array<DetectorVersionSummary>]
    #
    # @!attribute next_token
    #   <p>The next token to be used for subsequent requests.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The detector ARN.</p>
    #
    #   @return [String]
    #
    DescribeDetectorOutput = ::Struct.new(
      :detector_id,
      :detector_version_summaries,
      :next_token,
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute model_id
    #   <p>The model ID.</p>
    #
    #   @return [String]
    #
    # @!attribute model_version_number
    #   <p>The model version number.</p>
    #
    #   @return [String]
    #
    # @!attribute model_type
    #   <p>The model type.</p>
    #
    #   Enum, one of: ["ONLINE_FRAUD_INSIGHTS", "TRANSACTION_FRAUD_INSIGHTS"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The next token from the previous results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #
    #   @return [Integer]
    #
    DescribeModelVersionsInput = ::Struct.new(
      :model_id,
      :model_version_number,
      :model_type,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute model_version_details
    #   <p>The model version details.</p>
    #
    #   @return [Array<ModelVersionDetail>]
    #
    # @!attribute next_token
    #   <p>The next token.</p>
    #
    #   @return [String]
    #
    DescribeModelVersionsOutput = ::Struct.new(
      :model_version_details,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The detector.</p>
    #
    # @!attribute detector_id
    #   <p>The detector ID.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The detector description.</p>
    #
    #   @return [String]
    #
    # @!attribute event_type_name
    #   <p>The name of the event type.</p>
    #
    #   @return [String]
    #
    # @!attribute last_updated_time
    #   <p>Timestamp of when the detector was last updated.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>Timestamp of when the detector was created.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The detector ARN.</p>
    #
    #   @return [String]
    #
    Detector = ::Struct.new(
      :detector_id,
      :description,
      :event_type_name,
      :last_updated_time,
      :created_time,
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DetectorVersionStatus
    #
    module DetectorVersionStatus
      # No documentation available.
      #
      DRAFT = "DRAFT"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      INACTIVE = "INACTIVE"
    end

    # <p>The summary of the detector version.</p>
    #
    # @!attribute detector_version_id
    #   <p>The detector version ID. </p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The detector version status. </p>
    #
    #   Enum, one of: ["DRAFT", "ACTIVE", "INACTIVE"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The detector version description. </p>
    #
    #   @return [String]
    #
    # @!attribute last_updated_time
    #   <p>Timestamp of when the detector version was last updated.</p>
    #
    #   @return [String]
    #
    DetectorVersionSummary = ::Struct.new(
      :detector_version_id,
      :status,
      :description,
      :last_updated_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The entity details. </p>
    #
    # @note
    #   This shape is sensitive and must be handled with care.
    #
    # @!attribute entity_type
    #   <p>The entity type.</p>
    #
    #   @return [String]
    #
    # @!attribute entity_id
    #   <p>The entity ID. If you do not know the <code>entityId</code>, you can pass <code>unknown</code>, which is areserved string literal.</p>
    #
    #   @return [String]
    #
    Entity = ::Struct.new(
      :entity_type,
      :entity_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::FraudDetector::Types::Entity [SENSITIVE]>"
      end
    end

    # <p>The entity type details.</p>
    #
    # @!attribute name
    #   <p>The entity type name.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The entity type description.</p>
    #
    #   @return [String]
    #
    # @!attribute last_updated_time
    #   <p>Timestamp of when the entity type was last updated.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>Timestamp of when the entity type was created.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The entity type ARN.</p>
    #
    #   @return [String]
    #
    EntityType = ::Struct.new(
      :name,
      :description,
      :last_updated_time,
      :created_time,
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    # The details of the external (Amazon Sagemaker) model evaluated for generating predictions.
    # </p>
    #
    # @!attribute model_endpoint
    #   <p>
    #   The endpoint of the external (Amazon Sagemaker) model.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute use_event_variables
    #   <p>
    #   Indicates whether event variables were used to generate predictions.
    #   </p>
    #
    #   @return [Boolean]
    #
    # @!attribute input_variables
    #   <p>
    #   Input variables use for generating predictions.
    #   </p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute output_variables
    #   <p>
    #   Output variables.
    #   </p>
    #
    #   @return [Hash<String, String>]
    #
    EvaluatedExternalModel = ::Struct.new(
      :model_endpoint,
      :use_event_variables,
      :input_variables,
      :output_variables,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::FraudDetector::Types::EvaluatedExternalModel "\
          "model_endpoint=#{model_endpoint || 'nil'}, "\
          "use_event_variables=#{use_event_variables || 'nil'}, "\
          "input_variables=\"[SENSITIVE]\", "\
          "output_variables=\"[SENSITIVE]\">"
      end
    end

    # <p>
    # The model version evaluated for generating prediction.
    # </p>
    #
    # @!attribute model_id
    #   <p>
    #   The model ID.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute model_version
    #   <p>
    #   The model version.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute model_type
    #   <p>The model type. </p>
    #            <p>Valid values: <code>ONLINE_FRAUD_INSIGHTS</code> | <code>TRANSACTION_FRAUD_INSIGHTS</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute evaluations
    #   <p>
    #   Evaluations generated for the model version.
    #   </p>
    #
    #   @return [Array<ModelVersionEvaluation>]
    #
    EvaluatedModelVersion = ::Struct.new(
      :model_id,
      :model_version,
      :model_type,
      :evaluations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    # The details of the rule used for evaluating variable values.
    # </p>
    #
    # @!attribute rule_id
    #   <p>
    #   The rule ID.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute rule_version
    #   <p>
    #   The rule version.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute expression
    #   <p>
    #   The rule expression.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute expression_with_values
    #   <p>
    #   The rule expression value.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute outcomes
    #   <p>
    #   The rule outcome.
    #   </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute evaluated
    #   <p>
    #   Indicates whether the rule was evaluated.
    #   </p>
    #
    #   @return [Boolean]
    #
    # @!attribute matched
    #   <p>
    #   Indicates whether the rule matched.
    #   </p>
    #
    #   @return [Boolean]
    #
    EvaluatedRule = ::Struct.new(
      :rule_id,
      :rule_version,
      :expression,
      :expression_with_values,
      :outcomes,
      :evaluated,
      :matched,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::FraudDetector::Types::EvaluatedRule "\
          "rule_id=#{rule_id || 'nil'}, "\
          "rule_version=#{rule_version || 'nil'}, "\
          "expression=\"[SENSITIVE]\", "\
          "expression_with_values=\"[SENSITIVE]\", "\
          "outcomes=#{outcomes || 'nil'}, "\
          "evaluated=#{evaluated || 'nil'}, "\
          "matched=#{matched || 'nil'}>"
      end
    end

    # <p>The event details.</p>
    #
    # @!attribute event_id
    #   <p>The event ID.</p>
    #
    #   @return [String]
    #
    # @!attribute event_type_name
    #   <p>The event type.</p>
    #
    #   @return [String]
    #
    # @!attribute event_timestamp
    #   <p>The timestamp that defines when the event under evaluation occurred. The timestamp must be specified using ISO 8601 standard in UTC.</p>
    #
    #   @return [String]
    #
    # @!attribute event_variables
    #   <p>Names of the event type's variables you defined in Amazon Fraud Detector to represent data elements and their corresponding values for the event you are sending for evaluation.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute current_label
    #   <p>The label associated with the event.</p>
    #
    #   @return [String]
    #
    # @!attribute label_timestamp
    #   <p>The timestamp associated with the label to update. The timestamp must be specified using ISO 8601 standard in UTC.</p>
    #
    #   @return [String]
    #
    # @!attribute entities
    #   <p>The event entities.</p>
    #
    #   @return [Array<Entity>]
    #
    Event = ::Struct.new(
      :event_id,
      :event_type_name,
      :event_timestamp,
      :event_variables,
      :current_label,
      :label_timestamp,
      :entities,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EventIngestion
    #
    module EventIngestion
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # <p>
    # Information about the summary of an event prediction.
    # </p>
    #
    # @!attribute event_id
    #   <p>
    #   The event ID.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute event_type_name
    #   <p>
    #   The event type.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute event_timestamp
    #   <p>
    #   The timestamp of the event.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute prediction_timestamp
    #   <p>
    #   The timestamp when the prediction was generated.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute detector_id
    #   <p>
    #   The detector ID.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute detector_version_id
    #   <p>
    #   The detector version ID.
    #   </p>
    #
    #   @return [String]
    #
    EventPredictionSummary = ::Struct.new(
      :event_id,
      :event_type_name,
      :event_timestamp,
      :prediction_timestamp,
      :detector_id,
      :detector_version_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The event type details.</p>
    #
    # @note
    #   This shape is sensitive and must be handled with care.
    #
    # @!attribute name
    #   <p>The event type name.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The event type description.</p>
    #
    #   @return [String]
    #
    # @!attribute event_variables
    #   <p>The event type event variables.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute labels
    #   <p>The event type labels.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute entity_types
    #   <p>The event type entity types.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute event_ingestion
    #   <p>If <code>Enabled</code>, Amazon Fraud Detector stores event data when you generate a prediction and uses that data to update calculated variables in near real-time. Amazon Fraud Detector uses this data, known as <code>INGESTED_EVENTS</code>, to train your model and  improve fraud predictions.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute ingested_event_statistics
    #   <p>Data about the stored events.</p>
    #
    #   @return [IngestedEventStatistics]
    #
    # @!attribute last_updated_time
    #   <p>Timestamp of when the event type was last updated.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>Timestamp of when the event type was created.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The entity type ARN.</p>
    #
    #   @return [String]
    #
    EventType = ::Struct.new(
      :name,
      :description,
      :event_variables,
      :labels,
      :entity_types,
      :event_ingestion,
      :ingested_event_statistics,
      :last_updated_time,
      :created_time,
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::FraudDetector::Types::EventType [SENSITIVE]>"
      end
    end

    # <p>
    # Information about the summary of an event variable that was evaluated for generating prediction.
    # </p>
    #
    # @!attribute name
    #   <p>
    #   The event variable name.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>
    #   The value of the event variable.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute source
    #   <p>
    #   The event variable source.
    #   </p>
    #
    #   @return [String]
    #
    EventVariableSummary = ::Struct.new(
      :name,
      :value,
      :source,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::FraudDetector::Types::EventVariableSummary "\
          "name=\"[SENSITIVE]\", "\
          "value=\"[SENSITIVE]\", "\
          "source=\"[SENSITIVE]\">"
      end
    end

    # <p>Details for the external events data used for model version training.</p>
    #
    # @!attribute data_location
    #   <p>The Amazon S3 bucket location for the data.</p>
    #
    #   @return [String]
    #
    # @!attribute data_access_role_arn
    #   <p>The ARN of the role that provides Amazon Fraud Detector access to the data location.</p>
    #
    #   @return [String]
    #
    ExternalEventsDetail = ::Struct.new(
      :data_location,
      :data_access_role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The Amazon SageMaker model.</p>
    #
    # @!attribute model_endpoint
    #   <p>The Amazon SageMaker model endpoints.</p>
    #
    #   @return [String]
    #
    # @!attribute model_source
    #   <p>The source of the model.</p>
    #
    #   Enum, one of: ["SAGEMAKER"]
    #
    #   @return [String]
    #
    # @!attribute invoke_model_endpoint_role_arn
    #   <p>The role used to invoke the model. </p>
    #
    #   @return [String]
    #
    # @!attribute input_configuration
    #   <p>The input configuration.</p>
    #
    #   @return [ModelInputConfiguration]
    #
    # @!attribute output_configuration
    #   <p>The output configuration.</p>
    #
    #   @return [ModelOutputConfiguration]
    #
    # @!attribute model_endpoint_status
    #   <p>The Amazon Fraud Detector status for the external model endpoint</p>
    #
    #   Enum, one of: ["ASSOCIATED", "DISSOCIATED"]
    #
    #   @return [String]
    #
    # @!attribute last_updated_time
    #   <p>Timestamp of when the model was last updated.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>Timestamp of when the model was last created.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The model ARN.</p>
    #
    #   @return [String]
    #
    ExternalModel = ::Struct.new(
      :model_endpoint,
      :model_source,
      :invoke_model_endpoint_role_arn,
      :input_configuration,
      :output_configuration,
      :model_endpoint_status,
      :last_updated_time,
      :created_time,
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The fraud prediction scores from Amazon SageMaker model.</p>
    #
    # @!attribute external_model
    #   <p>The Amazon SageMaker model.</p>
    #
    #   @return [ExternalModelSummary]
    #
    # @!attribute outputs
    #   <p>The fraud prediction scores from Amazon SageMaker model.</p>
    #
    #   @return [Hash<String, String>]
    #
    ExternalModelOutputs = ::Struct.new(
      :external_model,
      :outputs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The Amazon SageMaker model.</p>
    #
    # @!attribute model_endpoint
    #   <p>The endpoint of the Amazon SageMaker model.</p>
    #
    #   @return [String]
    #
    # @!attribute model_source
    #   <p>The source of the model.</p>
    #
    #   Enum, one of: ["SAGEMAKER"]
    #
    #   @return [String]
    #
    ExternalModelSummary = ::Struct.new(
      :model_endpoint,
      :model_source,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The message details.</p>
    #
    # @!attribute field_name
    #   <p>The field name.</p>
    #
    #   @return [String]
    #
    # @!attribute identifier
    #   <p>The message ID.</p>
    #
    #   @return [String]
    #
    # @!attribute title
    #   <p>The message title.</p>
    #
    #   @return [String]
    #
    # @!attribute content
    #   <p>The message content.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The message type.</p>
    #
    #   @return [String]
    #
    FieldValidationMessage = ::Struct.new(
      :field_name,
      :identifier,
      :title,
      :content,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The message details.</p>
    #
    # @!attribute title
    #   <p>The message title.</p>
    #
    #   @return [String]
    #
    # @!attribute content
    #   <p>The message content.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The message type.</p>
    #
    #   @return [String]
    #
    FileValidationMessage = ::Struct.new(
      :title,
      :content,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    # A conditional statement for filtering a list of past predictions.
    # </p>
    #
    # @!attribute value
    #   <p>
    #   A statement containing a resource property and a value to specify filter condition.
    #   </p>
    #
    #   @return [String]
    #
    FilterCondition = ::Struct.new(
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The ID of the batch import job to get.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of objects to return for request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The next token from the previous request.</p>
    #
    #   @return [String]
    #
    GetBatchImportJobsInput = ::Struct.new(
      :job_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute batch_imports
    #   <p>An array containing the details of each batch import job.</p>
    #
    #   @return [Array<BatchImport>]
    #
    # @!attribute next_token
    #   <p>The next token for the subsequent resquest.</p>
    #
    #   @return [String]
    #
    GetBatchImportJobsOutput = ::Struct.new(
      :batch_imports,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The batch prediction job for which to get the details.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of objects to return for the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The next token from the previous request.</p>
    #
    #   @return [String]
    #
    GetBatchPredictionJobsInput = ::Struct.new(
      :job_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute batch_predictions
    #   <p>An array containing the details of each batch prediction job.</p>
    #
    #   @return [Array<BatchPrediction>]
    #
    # @!attribute next_token
    #   <p>The next token for the subsequent request.</p>
    #
    #   @return [String]
    #
    GetBatchPredictionJobsOutput = ::Struct.new(
      :batch_predictions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute event_type_name
    #   <p>Name of event type for which to get the deletion status.</p>
    #
    #   @return [String]
    #
    GetDeleteEventsByEventTypeStatusInput = ::Struct.new(
      :event_type_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute event_type_name
    #   <p>The event type name.</p>
    #
    #   @return [String]
    #
    # @!attribute events_deletion_status
    #   <p>The deletion status.</p>
    #
    #   Enum, one of: ["IN_PROGRESS_INITIALIZING", "IN_PROGRESS", "CANCEL_IN_PROGRESS", "CANCELED", "COMPLETE", "FAILED"]
    #
    #   @return [String]
    #
    GetDeleteEventsByEventTypeStatusOutput = ::Struct.new(
      :event_type_name,
      :events_deletion_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute detector_id
    #   <p>The detector ID.</p>
    #
    #   @return [String]
    #
    # @!attribute detector_version_id
    #   <p>The detector version ID.</p>
    #
    #   @return [String]
    #
    GetDetectorVersionInput = ::Struct.new(
      :detector_id,
      :detector_version_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute detector_id
    #   <p>The detector ID.</p>
    #
    #   @return [String]
    #
    # @!attribute detector_version_id
    #   <p>The detector version ID.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The detector version description.</p>
    #
    #   @return [String]
    #
    # @!attribute external_model_endpoints
    #   <p>The Amazon SageMaker model endpoints included in the detector version.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute model_versions
    #   <p>The model versions included in the detector version. </p>
    #
    #   @return [Array<ModelVersion>]
    #
    # @!attribute rules
    #   <p>The rules included in the detector version.</p>
    #
    #   @return [Array<Rule>]
    #
    # @!attribute status
    #   <p>The status of the detector version.</p>
    #
    #   Enum, one of: ["DRAFT", "ACTIVE", "INACTIVE"]
    #
    #   @return [String]
    #
    # @!attribute last_updated_time
    #   <p>The timestamp when the detector version was last updated.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>The timestamp when the detector version was created. </p>
    #
    #   @return [String]
    #
    # @!attribute rule_execution_mode
    #   <p>The execution mode of the rule in the dectector</p>
    #   	        <p>
    #               <code>FIRST_MATCHED</code> indicates that Amazon Fraud Detector evaluates rules sequentially, first to last, stopping at the first matched rule. Amazon Fraud dectector then provides the outcomes for that single rule.</p>
    #   	        <p>
    #               <code>ALL_MATCHED</code> indicates that Amazon Fraud Detector evaluates all rules and returns the outcomes for all matched rules. You can define and edit the rule mode at the detector version level, when it is in draft status.</p>
    #
    #   Enum, one of: ["ALL_MATCHED", "FIRST_MATCHED"]
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The detector version ARN.</p>
    #
    #   @return [String]
    #
    GetDetectorVersionOutput = ::Struct.new(
      :detector_id,
      :detector_version_id,
      :description,
      :external_model_endpoints,
      :model_versions,
      :rules,
      :status,
      :last_updated_time,
      :created_time,
      :rule_execution_mode,
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute detector_id
    #   <p>The detector ID.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The next token for the subsequent request.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of objects to return for the request.</p>
    #
    #   @return [Integer]
    #
    GetDetectorsInput = ::Struct.new(
      :detector_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute detectors
    #   <p>The detectors.</p>
    #
    #   @return [Array<Detector>]
    #
    # @!attribute next_token
    #   <p>The next page token.</p>
    #
    #   @return [String]
    #
    GetDetectorsOutput = ::Struct.new(
      :detectors,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The next token for the subsequent request.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of objects to return for the request.</p>
    #
    #   @return [Integer]
    #
    GetEntityTypesInput = ::Struct.new(
      :name,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute entity_types
    #   <p>An array of entity types.</p>
    #
    #   @return [Array<EntityType>]
    #
    # @!attribute next_token
    #   <p>The next page token.</p>
    #
    #   @return [String]
    #
    GetEntityTypesOutput = ::Struct.new(
      :entity_types,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute event_id
    #   <p>The ID of the event to retrieve.</p>
    #
    #   @return [String]
    #
    # @!attribute event_type_name
    #   <p>The event type of the event to retrieve.</p>
    #
    #   @return [String]
    #
    GetEventInput = ::Struct.new(
      :event_id,
      :event_type_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute event
    #   <p>The details of the event.</p>
    #
    #   @return [Event]
    #
    GetEventOutput = ::Struct.new(
      :event,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute detector_id
    #   <p>The detector ID.</p>
    #
    #   @return [String]
    #
    # @!attribute detector_version_id
    #   <p>The detector version ID.</p>
    #
    #   @return [String]
    #
    # @!attribute event_id
    #   <p>The unique ID used to identify the event.</p>
    #
    #   @return [String]
    #
    # @!attribute event_type_name
    #   <p>The event type associated with the detector specified for the prediction.</p>
    #
    #   @return [String]
    #
    # @!attribute entities
    #   <p>The entity type (associated with the detector's event type) and specific entity ID representing who performed the event. If an entity id is not available, use "UNKNOWN."</p>
    #
    #   @return [Array<Entity>]
    #
    # @!attribute event_timestamp
    #   <p>Timestamp that defines when the event under evaluation occurred. The timestamp must be specified using ISO 8601 standard in UTC.</p>
    #
    #   @return [String]
    #
    # @!attribute event_variables
    #   <p>Names of the event type's variables you defined in Amazon Fraud Detector to represent data elements and
    #            their corresponding values for the event you are sending for evaluation.</p>
    #            <important>
    #               <p>You must provide at least one eventVariable</p>
    #            </important>
    #
    #            <p>To ensure most accurate fraud prediction and to simplify your data preparation, Amazon Fraud Detector will replace all missing variables or values as follows:</p>
    #
    #            <p>
    #               <b>For Amazon Fraud Detector trained models:</b>
    #            </p>
    #            <p>If a null value is provided explicitly for a variable or if a variable is missing, model will replace the null value or the missing variable (no variable name in the eventVariables map)
    #            with calculated default mean/medians for numeric variables and with special values for categorical variables.</p>
    #
    #            <p>
    #               <b>For imported SageMaker models:</b>
    #            </p>
    #            <p>If a null value is provided explicitly for a variable, the model and rules will use “null” as the value. If a variable is not provided (no variable name in the eventVariables map), model and rules
    #            will use the default value that is provided for the variable. </p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute external_model_endpoint_data_blobs
    #   <p>The Amazon SageMaker model endpoint input data blobs.</p>
    #
    #   @return [Hash<String, ModelEndpointDataBlob>]
    #
    GetEventPredictionInput = ::Struct.new(
      :detector_id,
      :detector_version_id,
      :event_id,
      :event_type_name,
      :entities,
      :event_timestamp,
      :event_variables,
      :external_model_endpoint_data_blobs,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::FraudDetector::Types::GetEventPredictionInput "\
          "detector_id=#{detector_id || 'nil'}, "\
          "detector_version_id=#{detector_version_id || 'nil'}, "\
          "event_id=#{event_id || 'nil'}, "\
          "event_type_name=#{event_type_name || 'nil'}, "\
          "entities=#{entities || 'nil'}, "\
          "event_timestamp=#{event_timestamp || 'nil'}, "\
          "event_variables=#{event_variables || 'nil'}, "\
          "external_model_endpoint_data_blobs=\"[SENSITIVE]\">"
      end
    end

    # @!attribute event_id
    #   <p>
    #   The event ID.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute event_type_name
    #   <p>
    #   The event type associated with the detector specified for the prediction.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute detector_id
    #   <p>
    #   The detector ID.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute detector_version_id
    #   <p>
    #   The detector version ID.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute prediction_timestamp
    #   <p>
    #       The timestamp that defines when the prediction was generated. The timestamp must be specified using ISO 8601 standard in UTC.</p>
    #            <p>We recommend calling <a href="https://docs.aws.amazon.com/frauddetector/latest/api/API_ListEventPredictions.html">ListEventPredictions</a>
    #           first, and using the <code>predictionTimestamp</code> value in the response to provide an accurate prediction timestamp value.</p>
    #
    #   @return [String]
    #
    GetEventPredictionMetadataInput = ::Struct.new(
      :event_id,
      :event_type_name,
      :detector_id,
      :detector_version_id,
      :prediction_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute event_id
    #   <p>
    #   The event ID.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute event_type_name
    #   <p>
    #   The event type associated with the detector specified for this prediction.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute entity_id
    #   <p>
    #   The entity ID.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute entity_type
    #   <p>
    #   The entity type.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute event_timestamp
    #   <p>
    #   The timestamp for when the prediction was generated for the associated event ID.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute detector_id
    #   <p>
    #   The detector ID.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute detector_version_id
    #   <p>
    #   The detector version ID.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute detector_version_status
    #   <p>
    #   The status of the detector version.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute event_variables
    #   <p>
    #   A list of event variables that influenced the prediction scores.
    #   </p>
    #
    #   @return [Array<EventVariableSummary>]
    #
    # @!attribute rules
    #   <p>
    #   List of rules associated with the detector version that were used for evaluating variable values.
    #   </p>
    #
    #   @return [Array<EvaluatedRule>]
    #
    # @!attribute rule_execution_mode
    #   <p>
    #   The execution mode of the rule used for evaluating variable values.
    #   </p>
    #
    #   Enum, one of: ["ALL_MATCHED", "FIRST_MATCHED"]
    #
    #   @return [String]
    #
    # @!attribute outcomes
    #   <p>
    #   The outcomes of the matched rule, based on the rule execution mode.
    #   </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute evaluated_model_versions
    #   <p>
    #   Model versions that were evaluated for generating predictions.
    #   </p>
    #
    #   @return [Array<EvaluatedModelVersion>]
    #
    # @!attribute evaluated_external_models
    #   <p>
    #   External (Amazon SageMaker) models that were evaluated for generating predictions.
    #   </p>
    #
    #   @return [Array<EvaluatedExternalModel>]
    #
    # @!attribute prediction_timestamp
    #   <p>The timestamp that defines when the prediction was generated. </p>
    #
    #   @return [String]
    #
    GetEventPredictionMetadataOutput = ::Struct.new(
      :event_id,
      :event_type_name,
      :entity_id,
      :entity_type,
      :event_timestamp,
      :detector_id,
      :detector_version_id,
      :detector_version_status,
      :event_variables,
      :rules,
      :rule_execution_mode,
      :outcomes,
      :evaluated_model_versions,
      :evaluated_external_models,
      :prediction_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute model_scores
    #   <p>The model scores. Amazon Fraud Detector generates model scores between 0 and 1000, where 0 is low fraud risk and 1000 is high fraud risk. Model scores are directly related to the false positive rate (FPR). For example, a score of 600 corresponds to an estimated 10% false positive rate whereas a score of 900 corresponds to an estimated 2% false positive rate.</p>
    #
    #   @return [Array<ModelScores>]
    #
    # @!attribute rule_results
    #   <p>The results from the rules.</p>
    #
    #   @return [Array<RuleResult>]
    #
    # @!attribute external_model_outputs
    #   <p>The model scores for Amazon SageMaker models.</p>
    #
    #   @return [Array<ExternalModelOutputs>]
    #
    GetEventPredictionOutput = ::Struct.new(
      :model_scores,
      :rule_results,
      :external_model_outputs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The next token for the subsequent request.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of objects to return for the request.</p>
    #
    #   @return [Integer]
    #
    GetEventTypesInput = ::Struct.new(
      :name,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute event_types
    #   <p>An array of event types.</p>
    #
    #   @return [Array<EventType>]
    #
    # @!attribute next_token
    #   <p>The next page token.</p>
    #
    #   @return [String]
    #
    GetEventTypesOutput = ::Struct.new(
      :event_types,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute model_endpoint
    #   <p>The Amazon SageMaker model endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The next page token for the request.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of objects to return for the request.</p>
    #
    #   @return [Integer]
    #
    GetExternalModelsInput = ::Struct.new(
      :model_endpoint,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute external_models
    #   <p>Gets the Amazon SageMaker models.</p>
    #
    #   @return [Array<ExternalModel>]
    #
    # @!attribute next_token
    #   <p>The next page token to be used in subsequent requests.</p>
    #
    #   @return [String]
    #
    GetExternalModelsOutput = ::Struct.new(
      :external_models,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    GetKMSEncryptionKeyInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute kms_key
    #   <p>The KMS encryption key.</p>
    #
    #   @return [KMSKey]
    #
    GetKMSEncryptionKeyOutput = ::Struct.new(
      :kms_key,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the label or labels to get.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The next token for the subsequent request.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of objects to return for the request.</p>
    #
    #   @return [Integer]
    #
    GetLabelsInput = ::Struct.new(
      :name,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute labels
    #   <p>An array of labels.</p>
    #
    #   @return [Array<Label>]
    #
    # @!attribute next_token
    #   <p>The next page token.</p>
    #
    #   @return [String]
    #
    GetLabelsOutput = ::Struct.new(
      :labels,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute model_id
    #   <p>The model ID.</p>
    #
    #   @return [String]
    #
    # @!attribute model_type
    #   <p>The model type.</p>
    #
    #   Enum, one of: ["ONLINE_FRAUD_INSIGHTS", "TRANSACTION_FRAUD_INSIGHTS"]
    #
    #   @return [String]
    #
    # @!attribute model_version_number
    #   <p>The model version number.</p>
    #
    #   @return [String]
    #
    GetModelVersionInput = ::Struct.new(
      :model_id,
      :model_type,
      :model_version_number,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute model_id
    #   <p>The model ID.</p>
    #
    #   @return [String]
    #
    # @!attribute model_type
    #   <p>The model type.</p>
    #
    #   Enum, one of: ["ONLINE_FRAUD_INSIGHTS", "TRANSACTION_FRAUD_INSIGHTS"]
    #
    #   @return [String]
    #
    # @!attribute model_version_number
    #   <p>The model version number.</p>
    #
    #   @return [String]
    #
    # @!attribute training_data_source
    #   <p>The training data source.</p>
    #
    #   Enum, one of: ["EXTERNAL_EVENTS", "INGESTED_EVENTS"]
    #
    #   @return [String]
    #
    # @!attribute training_data_schema
    #   <p>The training data schema.</p>
    #
    #   @return [TrainingDataSchema]
    #
    # @!attribute external_events_detail
    #   <p>The details of the external events data used for training the model version.
    #            This will be populated if the <code>trainingDataSource</code> is <code>EXTERNAL_EVENTS</code>
    #            </p>
    #
    #   @return [ExternalEventsDetail]
    #
    # @!attribute ingested_events_detail
    #   <p>The details of the ingested events data used for training the model version.
    #            This will be populated if the <code>trainingDataSource</code> is <code>INGESTED_EVENTS</code>.</p>
    #
    #   @return [IngestedEventsDetail]
    #
    # @!attribute status
    #   <p>The model version status.</p>
    #   	        <p>Possible values are:</p>
    #   	        <ul>
    #               <li>
    #                  <p>
    #                     <code>TRAINING_IN_PROGRESS</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TRAINING_COMPLETE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVATE_REQUESTED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVATE_IN_PROGRESS</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INACTIVATE_REQUESTED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INACTIVATE_IN_PROGRESS</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INACTIVE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ERROR</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The model version ARN.</p>
    #
    #   @return [String]
    #
    GetModelVersionOutput = ::Struct.new(
      :model_id,
      :model_type,
      :model_version_number,
      :training_data_source,
      :training_data_schema,
      :external_events_detail,
      :ingested_events_detail,
      :status,
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute model_id
    #   <p>The model ID.</p>
    #
    #   @return [String]
    #
    # @!attribute model_type
    #   <p>The model type.</p>
    #
    #   Enum, one of: ["ONLINE_FRAUD_INSIGHTS", "TRANSACTION_FRAUD_INSIGHTS"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The next token for the subsequent request.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of objects to return for the request. </p>
    #
    #   @return [Integer]
    #
    GetModelsInput = ::Struct.new(
      :model_id,
      :model_type,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The next page token to be used in subsequent requests.</p>
    #
    #   @return [String]
    #
    # @!attribute models
    #   <p>The array of models.</p>
    #
    #   @return [Array<Model>]
    #
    GetModelsOutput = ::Struct.new(
      :next_token,
      :models,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the outcome or outcomes to get.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The next page token for the request. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of objects to return for the request. </p>
    #
    #   @return [Integer]
    #
    GetOutcomesInput = ::Struct.new(
      :name,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute outcomes
    #   <p>The outcomes. </p>
    #
    #   @return [Array<Outcome>]
    #
    # @!attribute next_token
    #   <p>The next page token for subsequent requests.</p>
    #
    #   @return [String]
    #
    GetOutcomesOutput = ::Struct.new(
      :outcomes,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute rule_id
    #   <p>The rule ID.</p>
    #
    #   @return [String]
    #
    # @!attribute detector_id
    #   <p>The detector ID.</p>
    #
    #   @return [String]
    #
    # @!attribute rule_version
    #   <p>The rule version.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The next page token.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of rules to return for the request.</p>
    #
    #   @return [Integer]
    #
    GetRulesInput = ::Struct.new(
      :rule_id,
      :detector_id,
      :rule_version,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute rule_details
    #   <p>The details of the requested rule.</p>
    #
    #   @return [Array<RuleDetail>]
    #
    # @!attribute next_token
    #   <p>The next page token to be used in subsequent requests.</p>
    #
    #   @return [String]
    #
    GetRulesOutput = ::Struct.new(
      :rule_details,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the variable. </p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The next page token of the get variable request. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The max size per page determined for the get variable request. </p>
    #
    #   @return [Integer]
    #
    GetVariablesInput = ::Struct.new(
      :name,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute variables
    #   <p>The names of the variables returned. </p>
    #
    #   @return [Array<Variable>]
    #
    # @!attribute next_token
    #   <p>The next page token to be used in subsequent requests. </p>
    #
    #   @return [String]
    #
    GetVariablesOutput = ::Struct.new(
      :variables,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Data about the stored events.</p>
    #
    # @!attribute number_of_events
    #   <p>The number of stored events.</p>
    #
    #   @return [Integer]
    #
    # @!attribute event_data_size_in_bytes
    #   <p>The total size of the stored events.</p>
    #
    #   @return [Integer]
    #
    # @!attribute least_recent_event
    #   <p>The oldest stored event.</p>
    #
    #   @return [String]
    #
    # @!attribute most_recent_event
    #   <p>The newest stored event.</p>
    #
    #   @return [String]
    #
    # @!attribute last_updated_time
    #   <p>Timestamp of when the stored event was last updated.
    #         </p>
    #
    #   @return [String]
    #
    IngestedEventStatistics = ::Struct.new(
      :number_of_events,
      :event_data_size_in_bytes,
      :least_recent_event,
      :most_recent_event,
      :last_updated_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The details of the ingested event.</p>
    #
    # @!attribute ingested_events_time_window
    #   <p>The start and stop time of the ingested events.</p>
    #
    #   @return [IngestedEventsTimeWindow]
    #
    IngestedEventsDetail = ::Struct.new(
      :ingested_events_time_window,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The start and stop time of the ingested events.</p>
    #
    # @!attribute start_time
    #   <p>Timestamp of the first ingensted event.</p>
    #
    #   @return [String]
    #
    # @!attribute end_time
    #   <p>Timestamp of the final ingested event.</p>
    #
    #   @return [String]
    #
    IngestedEventsTimeWindow = ::Struct.new(
      :start_time,
      :end_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An exception indicating an internal server error.</p>
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

    # <p>The KMS key details.</p>
    #
    # @!attribute kms_encryption_key_arn
    #   <p>The encryption key ARN.</p>
    #
    #   @return [String]
    #
    KMSKey = ::Struct.new(
      :kms_encryption_key_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The label details.</p>
    #
    # @!attribute name
    #   <p>The label name.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The label description.</p>
    #
    #   @return [String]
    #
    # @!attribute last_updated_time
    #   <p>Timestamp of when the label was last updated.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>Timestamp of when the event type was created.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The label ARN.</p>
    #
    #   @return [String]
    #
    Label = ::Struct.new(
      :name,
      :description,
      :last_updated_time,
      :created_time,
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The label schema.</p>
    #
    # @!attribute label_mapper
    #   <p>The label mapper maps the Amazon Fraud Detector supported model classification labels (<code>FRAUD</code>, <code>LEGIT</code>) to the appropriate event type labels. For example, if "<code>FRAUD</code>" and "<code>LEGIT</code>" are Amazon Fraud Detector supported labels, this mapper could be: <code>{"FRAUD" => ["0"]</code>, <code>"LEGIT" => ["1"]}</code> or <code>{"FRAUD" => ["false"]</code>, <code>"LEGIT" => ["true"]}</code> or <code>{"FRAUD" => ["fraud", "abuse"]</code>, <code>"LEGIT" => ["legit", "safe"]}</code>. The value part of the mapper is a list, because you may have multiple label variants from your event type for a single Amazon Fraud Detector label.
    #           </p>
    #
    #   @return [Hash<String, Array<String>>]
    #
    # @!attribute unlabeled_events_treatment
    #   <p>The action to take for unlabeled events.</p>
    #
    #   Enum, one of: ["IGNORE", "FRAUD", "LEGIT"]
    #
    #   @return [String]
    #
    LabelSchema = ::Struct.new(
      :label_mapper,
      :unlabeled_events_treatment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Language
    #
    module Language
      # No documentation available.
      #
      DETECTORPL = "DETECTORPL"
    end

    # @!attribute event_id
    #   <p>
    #   The event ID.
    #   </p>
    #
    #   @return [FilterCondition]
    #
    # @!attribute event_type
    #   <p>
    #   The event type associated with the detector.
    #   </p>
    #
    #   @return [FilterCondition]
    #
    # @!attribute detector_id
    #   <p>
    #   The detector ID.
    #   </p>
    #
    #   @return [FilterCondition]
    #
    # @!attribute detector_version_id
    #   <p>
    #   The detector version ID.
    #   </p>
    #
    #   @return [FilterCondition]
    #
    # @!attribute prediction_time_range
    #   <p>
    #   The time period for when the predictions were generated.
    #   </p>
    #
    #   @return [PredictionTimeRange]
    #
    # @!attribute next_token
    #   <p>
    #   Identifies the next page of results to return. Use the token to make the call again to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>
    #   The maximum number of predictions to return for the request.
    #   </p>
    #
    #   @return [Integer]
    #
    ListEventPredictionsInput = ::Struct.new(
      :event_id,
      :event_type,
      :detector_id,
      :detector_version_id,
      :prediction_time_range,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute event_prediction_summaries
    #   <p>
    #   The summary of the past predictions.
    #   </p>
    #
    #   @return [Array<EventPredictionSummary>]
    #
    # @!attribute next_token
    #   <p>
    #   Identifies the next page of results to return. Use the token to make the call again to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours.
    #   </p>
    #
    #   @return [String]
    #
    ListEventPredictionsOutput = ::Struct.new(
      :event_prediction_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN that specifies the resource whose tags you want to list.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The next token from the previous results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of objects to return for the request. </p>
    #
    #   @return [Integer]
    #
    ListTagsForResourceInput = ::Struct.new(
      :resource_arn,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tags
    #   <p>A collection of key and value pairs.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute next_token
    #   <p>The next token for subsequent requests. </p>
    #
    #   @return [String]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The log odds metric details.</p>
    #
    # @!attribute variable_name
    #   <p>The name of the variable.</p>
    #
    #   @return [String]
    #
    # @!attribute variable_type
    #   <p>The type of variable.</p>
    #
    #   @return [String]
    #
    # @!attribute variable_importance
    #   <p>The relative importance of the variable. For more information, see <a href="https://docs.aws.amazon.com/frauddetector/latest/ug/model-variable-importance.html">Model variable importance</a>.</p>
    #
    #   @return [Float]
    #
    LogOddsMetric = ::Struct.new(
      :variable_name,
      :variable_type,
      :variable_importance,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Model performance metrics data points.</p>
    #
    # @!attribute fpr
    #   <p>The false positive rate. This is the percentage of total legitimate events that are incorrectly predicted as fraud.</p>
    #
    #   @return [Float]
    #
    # @!attribute precision
    #   <p>The percentage of fraud events correctly predicted as fraudulent as compared to all events predicted as fraudulent.</p>
    #
    #   @return [Float]
    #
    # @!attribute tpr
    #   <p>The true positive rate. This is the percentage of total fraud the model detects. Also known as capture rate.</p>
    #
    #   @return [Float]
    #
    # @!attribute threshold
    #   <p>The model threshold that specifies an acceptable fraud capture rate. For example, a threshold of 500 means any model score 500 or above is labeled as fraud.</p>
    #
    #   @return [Float]
    #
    MetricDataPoint = ::Struct.new(
      :fpr,
      :precision,
      :tpr,
      :threshold,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The model.</p>
    #
    # @!attribute model_id
    #   <p>The model ID.</p>
    #
    #   @return [String]
    #
    # @!attribute model_type
    #   <p>The model type.</p>
    #
    #   Enum, one of: ["ONLINE_FRAUD_INSIGHTS", "TRANSACTION_FRAUD_INSIGHTS"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The model description.</p>
    #
    #   @return [String]
    #
    # @!attribute event_type_name
    #   <p>The name of the event type.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>Timestamp of when the model was created.</p>
    #
    #   @return [String]
    #
    # @!attribute last_updated_time
    #   <p>Timestamp of last time the model was updated.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The ARN of the model.</p>
    #
    #   @return [String]
    #
    Model = ::Struct.new(
      :model_id,
      :model_type,
      :description,
      :event_type_name,
      :created_time,
      :last_updated_time,
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A pre-formed Amazon SageMaker model input you can include if your detector version includes an imported Amazon SageMaker model endpoint with pass-through input configuration.</p>
    #
    # @!attribute byte_buffer
    #   <p>The byte buffer of the Amazon SageMaker model endpoint input data blob.</p>
    #
    #   @return [String]
    #
    # @!attribute content_type
    #   <p>The content type of the Amazon SageMaker model endpoint input data blob. </p>
    #
    #   @return [String]
    #
    ModelEndpointDataBlob = ::Struct.new(
      :byte_buffer,
      :content_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ModelEndpointStatus
    #
    module ModelEndpointStatus
      # No documentation available.
      #
      ASSOCIATED = "ASSOCIATED"

      # No documentation available.
      #
      DISSOCIATED = "DISSOCIATED"
    end

    # <p>The Amazon SageMaker model input configuration.</p>
    #
    # @!attribute event_type_name
    #   <p>The event type name.</p>
    #
    #   @return [String]
    #
    # @!attribute format
    #   <p> The format of the model input configuration. The format differs depending on if it is
    #               passed through to SageMaker or constructed by Amazon Fraud Detector.</p>
    #
    #   Enum, one of: ["TEXT_CSV", "APPLICATION_JSON"]
    #
    #   @return [String]
    #
    # @!attribute use_event_variables
    #   <p>The event variables.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute json_input_template
    #   <p> Template for constructing the JSON input-data sent to SageMaker. At event-evaluation,
    #               the placeholders for variable names in the template will be replaced with the variable
    #               values before being sent to SageMaker. </p>
    #
    #   @return [String]
    #
    # @!attribute csv_input_template
    #   <p> Template for constructing the CSV input-data sent to SageMaker. At event-evaluation,
    #               the placeholders for variable-names in the template will be replaced with the variable
    #               values before being sent to SageMaker. </p>
    #
    #   @return [String]
    #
    ModelInputConfiguration = ::Struct.new(
      :event_type_name,
      :format,
      :use_event_variables,
      :json_input_template,
      :csv_input_template,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ModelInputDataFormat
    #
    module ModelInputDataFormat
      # No documentation available.
      #
      CSV = "TEXT_CSV"

      # No documentation available.
      #
      JSON = "APPLICATION_JSON"
    end

    # <p>Provides the Amazon Sagemaker model output configuration.</p>
    #
    # @!attribute format
    #   <p>The format of the model output configuration.</p>
    #
    #   Enum, one of: ["TEXT_CSV", "APPLICATION_JSONLINES"]
    #
    #   @return [String]
    #
    # @!attribute json_key_to_variable_map
    #   <p>A map of JSON keys in response from SageMaker to the Amazon Fraud Detector variables. </p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute csv_index_to_variable_map
    #   <p>A map of CSV index values in the SageMaker response to the Amazon Fraud Detector variables. </p>
    #
    #   @return [Hash<String, String>]
    #
    ModelOutputConfiguration = ::Struct.new(
      :format,
      :json_key_to_variable_map,
      :csv_index_to_variable_map,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ModelOutputDataFormat
    #
    module ModelOutputDataFormat
      # No documentation available.
      #
      CSV = "TEXT_CSV"

      # No documentation available.
      #
      JSONLINES = "APPLICATION_JSONLINES"
    end

    # <p>The fraud prediction scores.</p>
    #
    # @!attribute model_version
    #   <p>The model version.</p>
    #
    #   @return [ModelVersion]
    #
    # @!attribute scores
    #   <p>The model's fraud prediction scores.</p>
    #
    #   @return [Hash<String, Float>]
    #
    ModelScores = ::Struct.new(
      :model_version,
      :scores,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ModelSource
    #
    module ModelSource
      # No documentation available.
      #
      SAGEMAKER = "SAGEMAKER"
    end

    # Includes enum constants for ModelTypeEnum
    #
    module ModelTypeEnum
      # No documentation available.
      #
      ONLINE_FRAUD_INSIGHTS = "ONLINE_FRAUD_INSIGHTS"

      # No documentation available.
      #
      TRANSACTION_FRAUD_INSIGHTS = "TRANSACTION_FRAUD_INSIGHTS"
    end

    # <p>The model version.</p>
    #
    # @!attribute model_id
    #   <p>The model ID.</p>
    #
    #   @return [String]
    #
    # @!attribute model_type
    #   <p>The model type.</p>
    #
    #   Enum, one of: ["ONLINE_FRAUD_INSIGHTS", "TRANSACTION_FRAUD_INSIGHTS"]
    #
    #   @return [String]
    #
    # @!attribute model_version_number
    #   <p>The model version number.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The model version ARN.</p>
    #
    #   @return [String]
    #
    ModelVersion = ::Struct.new(
      :model_id,
      :model_type,
      :model_version_number,
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The details of the model version.</p>
    #
    # @!attribute model_id
    #   <p>The model ID.</p>
    #
    #   @return [String]
    #
    # @!attribute model_type
    #   <p>The model type.</p>
    #
    #   Enum, one of: ["ONLINE_FRAUD_INSIGHTS", "TRANSACTION_FRAUD_INSIGHTS"]
    #
    #   @return [String]
    #
    # @!attribute model_version_number
    #   <p>The model version number.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the model version.</p>
    #
    #   @return [String]
    #
    # @!attribute training_data_source
    #   <p>The model version training data source.</p>
    #
    #   Enum, one of: ["EXTERNAL_EVENTS", "INGESTED_EVENTS"]
    #
    #   @return [String]
    #
    # @!attribute training_data_schema
    #   <p>The training data schema.</p>
    #
    #   @return [TrainingDataSchema]
    #
    # @!attribute external_events_detail
    #   <p>The external events data details. This will be populated if the <code>trainingDataSource</code> for the model version is specified as  <code>EXTERNAL_EVENTS</code>.</p>
    #
    #   @return [ExternalEventsDetail]
    #
    # @!attribute ingested_events_detail
    #   <p>The ingested events data details. This will be populated if the <code>trainingDataSource</code> for the model version is specified as  <code>INGESTED_EVENTS</code>.</p>
    #
    #   @return [IngestedEventsDetail]
    #
    # @!attribute training_result
    #   <p>The training results.</p>
    #
    #   @return [TrainingResult]
    #
    # @!attribute last_updated_time
    #   <p>The timestamp when the model was last updated.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>The timestamp when the model was created.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The model version ARN.</p>
    #
    #   @return [String]
    #
    ModelVersionDetail = ::Struct.new(
      :model_id,
      :model_type,
      :model_version_number,
      :status,
      :training_data_source,
      :training_data_schema,
      :external_events_detail,
      :ingested_events_detail,
      :training_result,
      :last_updated_time,
      :created_time,
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    # The model version evalutions.
    # </p>
    #
    # @!attribute output_variable_name
    #   <p>
    #   The output variable name.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute evaluation_score
    #   <p>
    #   The evaluation score generated for the model version.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute prediction_explanations
    #   <p>
    #   The prediction explanations generated for the model version.
    #   </p>
    #
    #   @return [PredictionExplanations]
    #
    ModelVersionEvaluation = ::Struct.new(
      :output_variable_name,
      :evaluation_score,
      :prediction_explanations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ModelVersionStatus
    #
    module ModelVersionStatus
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      INACTIVE = "INACTIVE"

      # No documentation available.
      #
      TRAINING_CANCELLED = "TRAINING_CANCELLED"
    end

    # <p>The outcome.</p>
    #
    # @!attribute name
    #   <p>The outcome name.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The outcome description.</p>
    #
    #   @return [String]
    #
    # @!attribute last_updated_time
    #   <p>The timestamp when the outcome was last updated.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>The timestamp when the outcome was created.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The outcome ARN.</p>
    #
    #   @return [String]
    #
    Outcome = ::Struct.new(
      :name,
      :description,
      :last_updated_time,
      :created_time,
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    # The prediction explanations that provide insight into how each event variable impacted the model version's fraud prediction score.
    # </p>
    #
    # @!attribute variable_impact_explanations
    #   <p>
    #   The details of the event variable's impact on the prediction score.
    #   </p>
    #
    #   @return [Array<VariableImpactExplanation>]
    #
    PredictionExplanations = ::Struct.new(
      :variable_impact_explanations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    # The time period for when the predictions were generated.
    # </p>
    #
    # @!attribute start_time
    #   <p>
    #   The start time of the time period for when the predictions were generated.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute end_time
    #   <p>
    #   The end time of the time period for when the predictions were generated.
    #   </p>
    #
    #   @return [String]
    #
    PredictionTimeRange = ::Struct.new(
      :start_time,
      :end_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute detector_id
    #   <p>The detector ID. </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the detector.</p>
    #
    #   @return [String]
    #
    # @!attribute event_type_name
    #   <p>The name of the event type.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A collection of key and value pairs.</p>
    #
    #   @return [Array<Tag>]
    #
    PutDetectorInput = ::Struct.new(
      :detector_id,
      :description,
      :event_type_name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutDetectorOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the entity type.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A collection of key and value pairs.</p>
    #
    #   @return [Array<Tag>]
    #
    PutEntityTypeInput = ::Struct.new(
      :name,
      :description,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutEntityTypeOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the event type.</p>
    #
    #   @return [String]
    #
    # @!attribute event_variables
    #   <p>The event type variables.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute labels
    #   <p>The event type labels.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute entity_types
    #   <p>The entity type for the event type. Example entity types: customer, merchant, account.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute event_ingestion
    #   <p>Specifies if ingenstion is enabled or disabled.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A collection of key and value pairs.</p>
    #
    #   @return [Array<Tag>]
    #
    PutEventTypeInput = ::Struct.new(
      :name,
      :description,
      :event_variables,
      :labels,
      :entity_types,
      :event_ingestion,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutEventTypeOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute model_endpoint
    #   <p>The model endpoints name.</p>
    #
    #   @return [String]
    #
    # @!attribute model_source
    #   <p>The source of the model.</p>
    #
    #   Enum, one of: ["SAGEMAKER"]
    #
    #   @return [String]
    #
    # @!attribute invoke_model_endpoint_role_arn
    #   <p>The IAM role used to invoke the model endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute input_configuration
    #   <p>The model endpoint input configuration.</p>
    #
    #   @return [ModelInputConfiguration]
    #
    # @!attribute output_configuration
    #   <p>The model endpoint output configuration.</p>
    #
    #   @return [ModelOutputConfiguration]
    #
    # @!attribute model_endpoint_status
    #   <p>The model endpoint’s status in Amazon Fraud Detector.</p>
    #
    #   Enum, one of: ["ASSOCIATED", "DISSOCIATED"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A collection of key and value pairs.</p>
    #
    #   @return [Array<Tag>]
    #
    PutExternalModelInput = ::Struct.new(
      :model_endpoint,
      :model_source,
      :invoke_model_endpoint_role_arn,
      :input_configuration,
      :output_configuration,
      :model_endpoint_status,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutExternalModelOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute kms_encryption_key_arn
    #   <p>The KMS encryption key ARN.</p>
    #
    #   @return [String]
    #
    PutKMSEncryptionKeyInput = ::Struct.new(
      :kms_encryption_key_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutKMSEncryptionKeyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The label name.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The label description.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p></p>
    #
    #   @return [Array<Tag>]
    #
    PutLabelInput = ::Struct.new(
      :name,
      :description,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutLabelOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the outcome.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The outcome description.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A collection of key and value pairs.</p>
    #
    #   @return [Array<Tag>]
    #
    PutOutcomeInput = ::Struct.new(
      :name,
      :description,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutOutcomeOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An exception indicating the specified resource was not found.</p>
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

    # <p>An exception indicating that the attached customer-owned (external) model threw an exception when Amazon Fraud Detector invoked the model.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceUnavailableException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A rule.</p>
    #
    # @!attribute detector_id
    #   <p>The detector for which the rule is associated.</p>
    #
    #   @return [String]
    #
    # @!attribute rule_id
    #   <p>The rule ID.</p>
    #
    #   @return [String]
    #
    # @!attribute rule_version
    #   <p>The rule version.</p>
    #
    #   @return [String]
    #
    Rule = ::Struct.new(
      :detector_id,
      :rule_id,
      :rule_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The details of the rule.</p>
    #
    # @!attribute rule_id
    #   <p>The rule ID.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The rule description.</p>
    #
    #   @return [String]
    #
    # @!attribute detector_id
    #   <p>The detector for which the rule is associated.</p>
    #
    #   @return [String]
    #
    # @!attribute rule_version
    #   <p>The rule version.</p>
    #
    #   @return [String]
    #
    # @!attribute expression
    #   <p>The rule expression.</p>
    #
    #   @return [String]
    #
    # @!attribute language
    #   <p>The rule language.</p>
    #
    #   Enum, one of: ["DETECTORPL"]
    #
    #   @return [String]
    #
    # @!attribute outcomes
    #   <p>The rule outcomes.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute last_updated_time
    #   <p>Timestamp of the last time the rule was updated.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>The timestamp of when the rule was created.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The rule ARN.</p>
    #
    #   @return [String]
    #
    RuleDetail = ::Struct.new(
      :rule_id,
      :description,
      :detector_id,
      :rule_version,
      :expression,
      :language,
      :outcomes,
      :last_updated_time,
      :created_time,
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::FraudDetector::Types::RuleDetail "\
          "rule_id=#{rule_id || 'nil'}, "\
          "description=#{description || 'nil'}, "\
          "detector_id=#{detector_id || 'nil'}, "\
          "rule_version=#{rule_version || 'nil'}, "\
          "expression=\"[SENSITIVE]\", "\
          "language=#{language || 'nil'}, "\
          "outcomes=#{outcomes || 'nil'}, "\
          "last_updated_time=#{last_updated_time || 'nil'}, "\
          "created_time=#{created_time || 'nil'}, "\
          "arn=#{arn || 'nil'}>"
      end
    end

    # Includes enum constants for RuleExecutionMode
    #
    module RuleExecutionMode
      # No documentation available.
      #
      ALL_MATCHED = "ALL_MATCHED"

      # No documentation available.
      #
      FIRST_MATCHED = "FIRST_MATCHED"
    end

    # <p>The rule results.</p>
    #
    # @!attribute rule_id
    #   <p>The rule ID that was matched, based on the rule execution mode.</p>
    #
    #   @return [String]
    #
    # @!attribute outcomes
    #   <p>The outcomes of the matched rule, based on the rule execution mode.</p>
    #
    #   @return [Array<String>]
    #
    RuleResult = ::Struct.new(
      :rule_id,
      :outcomes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute event_id
    #   <p>The event ID to upload.</p>
    #
    #   @return [String]
    #
    # @!attribute event_type_name
    #   <p>The event type name of the event.</p>
    #
    #   @return [String]
    #
    # @!attribute event_timestamp
    #   <p>The timestamp that defines when the event under evaluation occurred. The timestamp must be specified using ISO 8601 standard in UTC.</p>
    #
    #   @return [String]
    #
    # @!attribute event_variables
    #   <p>Names of the event type's variables you defined in Amazon Fraud Detector to represent data elements and their corresponding values for the event you are sending for evaluation.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute assigned_label
    #   <p>The label to associate with the event. Required if specifying <code>labelTimestamp</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute label_timestamp
    #   <p>The timestamp associated with the label. Required if specifying <code>assignedLabel</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute entities
    #   <p>An array of entities.</p>
    #
    #   @return [Array<Entity>]
    #
    SendEventInput = ::Struct.new(
      :event_id,
      :event_type_name,
      :event_timestamp,
      :event_variables,
      :assigned_label,
      :label_timestamp,
      :entities,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    SendEventOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A key and value pair. </p>
    #
    # @!attribute key
    #   <p>A tag key.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>A value assigned to a tag key.</p>
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
    #   <p>The resource ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to assign to the resource.</p>
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

    # <p>An exception indicating a throttling error.</p>
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

    # <p>The training data schema.</p>
    #
    # @!attribute model_variables
    #   <p>The training data schema variables.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute label_schema
    #   <p>The label schema.</p>
    #
    #   @return [LabelSchema]
    #
    TrainingDataSchema = ::Struct.new(
      :model_variables,
      :label_schema,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TrainingDataSourceEnum
    #
    module TrainingDataSourceEnum
      # No documentation available.
      #
      EXTERNAL_EVENTS = "EXTERNAL_EVENTS"

      # No documentation available.
      #
      INGESTED_EVENTS = "INGESTED_EVENTS"
    end

    # <p>The training metric details.</p>
    #
    # @!attribute auc
    #   <p>The area under the curve. This summarizes true positive rate (TPR) and false positive rate (FPR) across all possible model score thresholds. A model with no predictive power has an AUC of 0.5, whereas a perfect model has a score of 1.0.</p>
    #
    #   @return [Float]
    #
    # @!attribute metric_data_points
    #   <p>The data points details.</p>
    #
    #   @return [Array<MetricDataPoint>]
    #
    TrainingMetrics = ::Struct.new(
      :auc,
      :metric_data_points,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The training result details.</p>
    #
    # @!attribute data_validation_metrics
    #   <p>The validation metrics.</p>
    #
    #   @return [DataValidationMetrics]
    #
    # @!attribute training_metrics
    #   <p>The training metric details.</p>
    #
    #   @return [TrainingMetrics]
    #
    # @!attribute variable_importance_metrics
    #   <p>The variable importance metrics.</p>
    #
    #   @return [VariableImportanceMetrics]
    #
    TrainingResult = ::Struct.new(
      :data_validation_metrics,
      :training_metrics,
      :variable_importance_metrics,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for UnlabeledEventsTreatment
    #
    module UnlabeledEventsTreatment
      # No documentation available.
      #
      IGNORE = "IGNORE"

      # No documentation available.
      #
      FRAUD = "FRAUD"

      # No documentation available.
      #
      LEGIT = "LEGIT"
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource from which to remove the tag.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The resource ARN.</p>
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

    # @!attribute detector_id
    #   <p>The parent detector ID for the detector version you want to update.</p>
    #
    #   @return [String]
    #
    # @!attribute detector_version_id
    #   <p>The detector version ID. </p>
    #
    #   @return [String]
    #
    # @!attribute external_model_endpoints
    #   <p>The Amazon SageMaker model endpoints to include in the detector version.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute rules
    #   <p>The rules to include in the detector version.</p>
    #
    #   @return [Array<Rule>]
    #
    # @!attribute description
    #   <p>The detector version description. </p>
    #
    #   @return [String]
    #
    # @!attribute model_versions
    #   <p>The model versions to include in the detector version.</p>
    #
    #   @return [Array<ModelVersion>]
    #
    # @!attribute rule_execution_mode
    #   <p>The rule execution mode to add to the detector.</p>
    #   	        <p>If you specify <code>FIRST_MATCHED</code>, Amazon Fraud Detector evaluates rules sequentially, first to last, stopping at the first matched rule. Amazon Fraud dectector then provides the outcomes for that single rule.</p>
    #   	        <p>If you specifiy <code>ALL_MATCHED</code>, Amazon Fraud Detector evaluates all rules and returns the outcomes for all matched rules. You can define and edit the rule mode at the detector version level, when it is in draft status.</p>
    #            <p>The default behavior is <code>FIRST_MATCHED</code>.</p>
    #
    #   Enum, one of: ["ALL_MATCHED", "FIRST_MATCHED"]
    #
    #   @return [String]
    #
    UpdateDetectorVersionInput = ::Struct.new(
      :detector_id,
      :detector_version_id,
      :external_model_endpoints,
      :rules,
      :description,
      :model_versions,
      :rule_execution_mode,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute detector_id
    #   <p>The detector ID.</p>
    #
    #   @return [String]
    #
    # @!attribute detector_version_id
    #   <p>The detector version ID. </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description.</p>
    #
    #   @return [String]
    #
    UpdateDetectorVersionMetadataInput = ::Struct.new(
      :detector_id,
      :detector_version_id,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateDetectorVersionMetadataOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateDetectorVersionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute detector_id
    #   <p>The detector ID. </p>
    #
    #   @return [String]
    #
    # @!attribute detector_version_id
    #   <p>The detector version ID. </p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The new status.</p>
    #
    #   Enum, one of: ["DRAFT", "ACTIVE", "INACTIVE"]
    #
    #   @return [String]
    #
    UpdateDetectorVersionStatusInput = ::Struct.new(
      :detector_id,
      :detector_version_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateDetectorVersionStatusOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute event_id
    #   <p>The ID of the event associated with the label to update.</p>
    #
    #   @return [String]
    #
    # @!attribute event_type_name
    #   <p>The event type of the event associated with the label to update.</p>
    #
    #   @return [String]
    #
    # @!attribute assigned_label
    #   <p>The new label to assign to the event.</p>
    #
    #   @return [String]
    #
    # @!attribute label_timestamp
    #   <p>The timestamp associated with the label. The timestamp must be specified using ISO 8601 standard in UTC. </p>
    #
    #   @return [String]
    #
    UpdateEventLabelInput = ::Struct.new(
      :event_id,
      :event_type_name,
      :assigned_label,
      :label_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateEventLabelOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute model_id
    #   <p>The model ID.</p>
    #
    #   @return [String]
    #
    # @!attribute model_type
    #   <p>The model type.</p>
    #
    #   Enum, one of: ["ONLINE_FRAUD_INSIGHTS", "TRANSACTION_FRAUD_INSIGHTS"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The new model description.</p>
    #
    #   @return [String]
    #
    UpdateModelInput = ::Struct.new(
      :model_id,
      :model_type,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateModelOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute model_id
    #   <p>The model ID.</p>
    #
    #   @return [String]
    #
    # @!attribute model_type
    #   <p>The model type.</p>
    #
    #   Enum, one of: ["ONLINE_FRAUD_INSIGHTS", "TRANSACTION_FRAUD_INSIGHTS"]
    #
    #   @return [String]
    #
    # @!attribute major_version_number
    #   <p>The major version number.</p>
    #
    #   @return [String]
    #
    # @!attribute external_events_detail
    #   <p>The details of the external events data used for training the model version. Required if <code>trainingDataSource</code> is <code>EXTERNAL_EVENTS</code>.</p>
    #
    #   @return [ExternalEventsDetail]
    #
    # @!attribute ingested_events_detail
    #   <p>The details of the ingested event used for training the model version. Required if your <code>trainingDataSource</code> is <code>INGESTED_EVENTS</code>.</p>
    #
    #   @return [IngestedEventsDetail]
    #
    # @!attribute tags
    #   <p>A collection of key and value pairs.</p>
    #
    #   @return [Array<Tag>]
    #
    UpdateModelVersionInput = ::Struct.new(
      :model_id,
      :model_type,
      :major_version_number,
      :external_events_detail,
      :ingested_events_detail,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute model_id
    #   <p>The model ID.</p>
    #
    #   @return [String]
    #
    # @!attribute model_type
    #   <p>The model type.</p>
    #
    #   Enum, one of: ["ONLINE_FRAUD_INSIGHTS", "TRANSACTION_FRAUD_INSIGHTS"]
    #
    #   @return [String]
    #
    # @!attribute model_version_number
    #   <p>The model version number of the model version updated.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the updated model version.</p>
    #
    #   @return [String]
    #
    UpdateModelVersionOutput = ::Struct.new(
      :model_id,
      :model_type,
      :model_version_number,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute model_id
    #   <p>The model ID of the model version to update.</p>
    #
    #   @return [String]
    #
    # @!attribute model_type
    #   <p>The model type.</p>
    #
    #   Enum, one of: ["ONLINE_FRAUD_INSIGHTS", "TRANSACTION_FRAUD_INSIGHTS"]
    #
    #   @return [String]
    #
    # @!attribute model_version_number
    #   <p>The model version number.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The model version status.</p>
    #
    #   Enum, one of: ["ACTIVE", "INACTIVE", "TRAINING_CANCELLED"]
    #
    #   @return [String]
    #
    UpdateModelVersionStatusInput = ::Struct.new(
      :model_id,
      :model_type,
      :model_version_number,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateModelVersionStatusOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute rule
    #   <p>The rule to update.</p>
    #
    #   @return [Rule]
    #
    # @!attribute description
    #   <p>The rule description.</p>
    #
    #   @return [String]
    #
    UpdateRuleMetadataInput = ::Struct.new(
      :rule,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateRuleMetadataOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute rule
    #   <p>The rule to update.</p>
    #
    #   @return [Rule]
    #
    # @!attribute description
    #   <p>The description.</p>
    #
    #   @return [String]
    #
    # @!attribute expression
    #   <p>The rule expression.</p>
    #
    #   @return [String]
    #
    # @!attribute language
    #   <p>The language.</p>
    #
    #   Enum, one of: ["DETECTORPL"]
    #
    #   @return [String]
    #
    # @!attribute outcomes
    #   <p>The outcomes.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tags
    #   <p>The tags to assign to the rule version.</p>
    #
    #   @return [Array<Tag>]
    #
    UpdateRuleVersionInput = ::Struct.new(
      :rule,
      :description,
      :expression,
      :language,
      :outcomes,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::FraudDetector::Types::UpdateRuleVersionInput "\
          "rule=#{rule || 'nil'}, "\
          "description=#{description || 'nil'}, "\
          "expression=\"[SENSITIVE]\", "\
          "language=#{language || 'nil'}, "\
          "outcomes=#{outcomes || 'nil'}, "\
          "tags=#{tags || 'nil'}>"
      end
    end

    # @!attribute rule
    #   <p>The new rule version that was created.</p>
    #
    #   @return [Rule]
    #
    UpdateRuleVersionOutput = ::Struct.new(
      :rule,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the variable.</p>
    #
    #   @return [String]
    #
    # @!attribute default_value
    #   <p>The new default value of the variable.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The new description.</p>
    #
    #   @return [String]
    #
    # @!attribute variable_type
    #   <p>The variable type. For more information see <a href="https://docs.aws.amazon.com/frauddetector/latest/ug/create-a-variable.html variable-types">Variable types</a>.</p>
    #
    #   @return [String]
    #
    UpdateVariableInput = ::Struct.new(
      :name,
      :default_value,
      :description,
      :variable_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateVariableOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An exception indicating a specified value is not allowed.</p>
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

    # <p>The variable.</p>
    #
    # @!attribute name
    #   <p>The name of the variable.</p>
    #
    #   @return [String]
    #
    # @!attribute data_type
    #   <p>The data type of the variable. For more information see <a href="https://docs.aws.amazon.com/frauddetector/latest/ug/create-a-variable.html variable-types">Variable types</a>.</p>
    #
    #   Enum, one of: ["STRING", "INTEGER", "FLOAT", "BOOLEAN"]
    #
    #   @return [String]
    #
    # @!attribute data_source
    #   <p>The data source of the variable.</p>
    #
    #   Enum, one of: ["EVENT", "MODEL_SCORE", "EXTERNAL_MODEL_SCORE"]
    #
    #   @return [String]
    #
    # @!attribute default_value
    #   <p>The default value of the variable.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the variable. </p>
    #
    #   @return [String]
    #
    # @!attribute variable_type
    #   <p>The variable type of the variable.</p>
    #            <p>Valid Values: <code>AUTH_CODE | AVS | BILLING_ADDRESS_L1 | BILLING_ADDRESS_L2 | BILLING_CITY | BILLING_COUNTRY | BILLING_NAME | BILLING_PHONE | BILLING_STATE | BILLING_ZIP | CARD_BIN | CATEGORICAL | CURRENCY_CODE | EMAIL_ADDRESS | FINGERPRINT | FRAUD_LABEL | FREE_FORM_TEXT | IP_ADDRESS | NUMERIC | ORDER_ID | PAYMENT_TYPE | PHONE_NUMBER | PRICE | PRODUCT_CATEGORY | SHIPPING_ADDRESS_L1 | SHIPPING_ADDRESS_L2 | SHIPPING_CITY | SHIPPING_COUNTRY | SHIPPING_NAME | SHIPPING_PHONE | SHIPPING_STATE | SHIPPING_ZIP | USERAGENT </code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute last_updated_time
    #   <p>The time when variable was last updated.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>The time when the variable was created.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The ARN of the variable.</p>
    #
    #   @return [String]
    #
    Variable = ::Struct.new(
      :name,
      :data_type,
      :data_source,
      :default_value,
      :description,
      :variable_type,
      :last_updated_time,
      :created_time,
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A variable in the list of variables for the batch create variable request.</p>
    #
    # @!attribute name
    #   <p>The name of the variable.</p>
    #
    #   @return [String]
    #
    # @!attribute data_type
    #   <p>The data type of the variable.</p>
    #
    #   @return [String]
    #
    # @!attribute data_source
    #   <p>The data source of the variable.</p>
    #
    #   @return [String]
    #
    # @!attribute default_value
    #   <p>The default value of the variable.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the variable.</p>
    #
    #   @return [String]
    #
    # @!attribute variable_type
    #   <p>The type of the variable. For more information see <a href="https://docs.aws.amazon.com/frauddetector/latest/ug/create-a-variable.html variable-types">Variable types</a>.</p>
    #            <p>Valid Values: <code>AUTH_CODE | AVS | BILLING_ADDRESS_L1 | BILLING_ADDRESS_L2 | BILLING_CITY | BILLING_COUNTRY | BILLING_NAME | BILLING_PHONE | BILLING_STATE | BILLING_ZIP | CARD_BIN | CATEGORICAL | CURRENCY_CODE | EMAIL_ADDRESS | FINGERPRINT | FRAUD_LABEL | FREE_FORM_TEXT | IP_ADDRESS | NUMERIC | ORDER_ID | PAYMENT_TYPE | PHONE_NUMBER | PRICE | PRODUCT_CATEGORY | SHIPPING_ADDRESS_L1 | SHIPPING_ADDRESS_L2 | SHIPPING_CITY | SHIPPING_COUNTRY | SHIPPING_NAME | SHIPPING_PHONE | SHIPPING_STATE | SHIPPING_ZIP | USERAGENT </code>
    #            </p>
    #
    #   @return [String]
    #
    VariableEntry = ::Struct.new(
      :name,
      :data_type,
      :data_source,
      :default_value,
      :description,
      :variable_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    # The details of the event variable's impact on the prediction score.
    # </p>
    #
    # @!attribute event_variable_name
    #   <p>
    #   The event variable name.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute relative_impact
    #   <p>
    #       The event variable's relative impact in terms of magnitude on the prediction scores.
    #       The relative impact values consist of a numerical rating (0-5, 5 being the highest) and direction (increased/decreased) impact of the fraud risk.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute log_odds_impact
    #   <p>
    #       The raw, uninterpreted value represented as log-odds of the fraud. These values are usually between -10 to +10, but range from - infinity to + infinity.</p>
    #            <ul>
    #               <li>
    #                  <p>A positive value indicates that the variable drove the risk score up.</p>
    #               </li>
    #               <li>
    #                  <p>A negative value indicates that the variable drove the risk score down.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Float]
    #
    VariableImpactExplanation = ::Struct.new(
      :event_variable_name,
      :relative_impact,
      :log_odds_impact,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The variable importance metrics details.</p>
    #
    # @!attribute log_odds_metrics
    #   <p>List of variable metrics.</p>
    #
    #   @return [Array<LogOddsMetric>]
    #
    VariableImportanceMetrics = ::Struct.new(
      :log_odds_metrics,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
