# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::LookoutVision
  module Types

    # <p>You are not authorized to perform the action.</p>
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

    # <p>The update or deletion of a resource caused an inconsistent state.</p>
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
    # @!attribute resource_type
    #   <p>The type of the resource.</p>
    #
    #   Enum, one of: ["PROJECT", "DATASET", "MODEL", "TRIAL", "MODEL_PACKAGE_JOB"]
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

    # @!attribute project_name
    #   <p>The name of the project in which you want to create a dataset.</p>
    #
    #   @return [String]
    #
    # @!attribute dataset_type
    #   <p>The type of the dataset. Specify <code>train</code> for a training dataset.
    #         Specify <code>test</code> for a test dataset.</p>
    #
    #   @return [String]
    #
    # @!attribute dataset_source
    #   <p>The location of the manifest file that Amazon Lookout for Vision uses to create the dataset.</p>
    #            <p>If you don't specify <code>DatasetSource</code>, an empty dataset is created and the operation
    #         synchronously returns. Later, you can add JSON Lines by calling <a>UpdateDatasetEntries</a>.
    #        </p>
    #            <p>If you specify a value for <code>DataSource</code>, the manifest at the S3 location
    #        is validated and used to create the dataset. The call to <code>CreateDataset</code> is asynchronous
    #        and might take a while to complete. To find out the current status, Check the value of <code>Status</code>
    #        returned in a call to <a>DescribeDataset</a>.</p>
    #
    #   @return [DatasetSource]
    #
    # @!attribute client_token
    #   <p>ClientToken is an idempotency token that ensures a call to <code>CreateDataset</code>
    #         completes only once.  You choose the value to pass. For example, An issue might prevent you
    #         from getting a response from <code>CreateDataset</code>.
    #         In this case, safely retry your call
    #          to <code>CreateDataset</code> by using the same <code>ClientToken</code> parameter value.</p>
    #            <p>If you don't supply a value for <code>ClientToken</code>, the AWS SDK you are using inserts a value for you.
    #            This prevents retries after a network error from making multiple dataset creation requests. You'll need to
    #            provide your own value for other use cases. </p>
    #            <p>An error occurs if the other input parameters are not the same as in the first request. Using a different
    #          value for <code>ClientToken</code> is considered a new call to <code>CreateDataset</code>. An idempotency
    #          token is active for 8 hours.
    #       </p>
    #
    #   @return [String]
    #
    CreateDatasetInput = ::Struct.new(
      :project_name,
      :dataset_type,
      :dataset_source,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute dataset_metadata
    #   <p>Information about the dataset.</p>
    #
    #   @return [DatasetMetadata]
    #
    CreateDatasetOutput = ::Struct.new(
      :dataset_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project_name
    #   <p>The name of the project in which you want to create a model version.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description for the version of the model.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>ClientToken is an idempotency token that ensures a call to <code>CreateModel</code>
    #         completes only once.  You choose the value to pass. For example, An issue
    #         might prevent you from getting a response from <code>CreateModel</code>.
    #         In this case, safely retry your call
    #          to <code>CreateModel</code> by using the same <code>ClientToken</code> parameter value. </p>
    #            <p>If you don't supply a value for <code>ClientToken</code>, the AWS SDK you are using inserts a value for you.
    #               This prevents retries after a network error from starting multiple training jobs. You'll need to
    #               provide your own value for other use cases. </p>
    #           <p>An error occurs if the other input parameters are not the same as in the first request. Using a different
    #          value for <code>ClientToken</code> is considered a new call to <code>CreateModel</code>. An idempotency
    #          token is active for 8 hours.</p>
    #
    #   @return [String]
    #
    # @!attribute output_config
    #   <p>The location where Amazon Lookout for Vision saves the training results.</p>
    #
    #   @return [OutputConfig]
    #
    # @!attribute kms_key_id
    #   <p>The identifier for your AWS KMS key.
    #            The key is used to encrypt training and test images copied into the service for model training. Your
    #            source images are unaffected.
    #            If this parameter is not specified, the copied images are encrypted by a key that AWS owns and manages.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A set of tags (key-value pairs) that you want to attach to the model.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateModelInput = ::Struct.new(
      :project_name,
      :description,
      :client_token,
      :output_config,
      :kms_key_id,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute model_metadata
    #   <p>The response from a call to <code>CreateModel</code>.</p>
    #
    #   @return [ModelMetadata]
    #
    CreateModelOutput = ::Struct.new(
      :model_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project_name
    #   <p>The name for the project.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>ClientToken is an idempotency token that ensures a call to <code>CreateProject</code>
    #         completes only once.  You choose the value to pass. For example, An issue might prevent you from
    #         getting a response from <code>CreateProject</code>.
    #         In this case, safely retry your call
    #          to <code>CreateProject</code> by using the same <code>ClientToken</code> parameter value. </p>
    #            <p>If you don't supply a value for <code>ClientToken</code>, the AWS SDK you are using inserts a value for you.
    #             This prevents retries after a network error from making multiple project creation requests. You'll need to
    #              provide your own value for other use cases. </p>
    #            <p>An error occurs
    #          if the other input parameters are not the same as in the first request. Using a different
    #          value for <code>ClientToken</code> is considered a new call to <code>CreateProject</code>. An idempotency
    #          token is active for 8 hours.</p>
    #
    #   @return [String]
    #
    CreateProjectInput = ::Struct.new(
      :project_name,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project_metadata
    #   <p>Information about the project.</p>
    #
    #   @return [ProjectMetadata]
    #
    CreateProjectOutput = ::Struct.new(
      :project_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The description for a dataset. For more information, see <a>DescribeDataset</a>.</p>
    #
    # @!attribute project_name
    #   <p>The name of the project that contains the dataset.</p>
    #
    #   @return [String]
    #
    # @!attribute dataset_type
    #   <p>The type of the dataset. The value <code>train</code> represents a training dataset or single dataset project.
    #         The value <code>test</code> represents a test dataset.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_timestamp
    #   <p>The Unix timestamp for the time and date that the dataset was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_timestamp
    #   <p>The Unix timestamp for the date and time that the dataset was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>The status of the dataset.</p>
    #
    #   Enum, one of: ["CREATE_IN_PROGRESS", "CREATE_COMPLETE", "CREATE_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_COMPLETE", "UPDATE_FAILED_ROLLBACK_IN_PROGRESS", "UPDATE_FAILED_ROLLBACK_COMPLETE", "DELETE_IN_PROGRESS", "DELETE_COMPLETE", "DELETE_FAILED"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>The status message for the dataset. </p>
    #
    #   @return [String]
    #
    # @!attribute image_stats
    #   <p>Statistics about the images in a dataset.</p>
    #
    #   @return [DatasetImageStats]
    #
    DatasetDescription = ::Struct.new(
      :project_name,
      :dataset_type,
      :creation_timestamp,
      :last_updated_timestamp,
      :status,
      :status_message,
      :image_stats,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Location information about a manifest file. You can use a manifest file to
    #       create a dataset.</p>
    #
    # @!attribute s3_object
    #   <p>The S3 bucket location for the manifest file.</p>
    #
    #   @return [InputS3Object]
    #
    DatasetGroundTruthManifest = ::Struct.new(
      :s3_object,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Statistics about the images in a dataset.</p>
    #
    # @!attribute total
    #   <p>The total number of images in the dataset.</p>
    #
    #   @return [Integer]
    #
    # @!attribute labeled
    #   <p>The total number of labeled images.</p>
    #
    #   @return [Integer]
    #
    # @!attribute normal
    #   <p>The total number of images labeled as normal.</p>
    #
    #   @return [Integer]
    #
    # @!attribute anomaly
    #   <p>the total number of images labeled as an anomaly.</p>
    #
    #   @return [Integer]
    #
    DatasetImageStats = ::Struct.new(
      :total,
      :labeled,
      :normal,
      :anomaly,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Summary information for an Amazon Lookout for Vision dataset. For more information,
    #       see <a>DescribeDataset</a> and <a>ProjectDescription</a>.</p>
    #
    # @!attribute dataset_type
    #   <p>The type of the dataset.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_timestamp
    #   <p>The Unix timestamp for the date and time that the dataset was created. </p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>The status for the dataset.</p>
    #
    #   Enum, one of: ["CREATE_IN_PROGRESS", "CREATE_COMPLETE", "CREATE_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_COMPLETE", "UPDATE_FAILED_ROLLBACK_IN_PROGRESS", "UPDATE_FAILED_ROLLBACK_COMPLETE", "DELETE_IN_PROGRESS", "DELETE_COMPLETE", "DELETE_FAILED"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>The status message for the dataset.</p>
    #
    #   @return [String]
    #
    DatasetMetadata = ::Struct.new(
      :dataset_type,
      :creation_timestamp,
      :status,
      :status_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the location of a manifest file that Amazon Lookout for Vision uses to to create a dataset.</p>
    #
    # @!attribute ground_truth_manifest
    #   <p>Location information for the manifest file.</p>
    #
    #   @return [DatasetGroundTruthManifest]
    #
    DatasetSource = ::Struct.new(
      :ground_truth_manifest,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DatasetStatus
    #
    module DatasetStatus
      # No documentation available.
      #
      CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS"

      # No documentation available.
      #
      CREATE_COMPLETE = "CREATE_COMPLETE"

      # No documentation available.
      #
      CREATE_FAILED = "CREATE_FAILED"

      # No documentation available.
      #
      UPDATE_IN_PROGRESS = "UPDATE_IN_PROGRESS"

      # No documentation available.
      #
      UPDATE_COMPLETE = "UPDATE_COMPLETE"

      # No documentation available.
      #
      UPDATE_FAILED_ROLLBACK_IN_PROGRESS = "UPDATE_FAILED_ROLLBACK_IN_PROGRESS"

      # No documentation available.
      #
      UPDATE_FAILED_ROLLBACK_COMPLETE = "UPDATE_FAILED_ROLLBACK_COMPLETE"

      # No documentation available.
      #
      DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS"

      # No documentation available.
      #
      DELETE_COMPLETE = "DELETE_COMPLETE"

      # No documentation available.
      #
      DELETE_FAILED = "DELETE_FAILED"
    end

    # @!attribute project_name
    #   <p>The name of the project that contains the dataset that you want to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute dataset_type
    #   <p>The type of the dataset to delete. Specify <code>train</code> to delete the training dataset.
    #         Specify <code>test</code> to delete the test dataset. To delete the dataset in a single dataset project,
    #            specify <code>train</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>ClientToken is an idempotency token that ensures a call to <code>DeleteDataset</code>
    #         completes only once.  You choose the value to pass. For example, An issue might prevent you from getting a response from <code>DeleteDataset</code>.
    #         In this case, safely retry your call
    #          to <code>DeleteDataset</code> by using the same <code>ClientToken</code> parameter value. </p>
    #            <p>If you don't supply a value for <code>ClientToken</code>, the AWS SDK you are using inserts a value for you.
    #                    This prevents retries after a network error from making multiple deletetion requests. You'll need to
    #                    provide your own value for other use cases. </p>
    #            <p>An error occurs if the other input parameters are not the same as in the first request. Using a different
    #          value for <code>ClientToken</code> is considered a new call to <code>DeleteDataset</code>. An idempotency
    #          token is active for 8 hours.</p>
    #
    #   @return [String]
    #
    DeleteDatasetInput = ::Struct.new(
      :project_name,
      :dataset_type,
      :client_token,
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

    # @!attribute project_name
    #   <p>The name of the project that contains the model that you want to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute model_version
    #   <p>The version of the model that you want to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>ClientToken is an idempotency token that ensures a call to <code>DeleteModel</code>
    #         completes only once.  You choose the value to pass. For example, an issue might prevent
    #         you from getting a response from <code>DeleteModel</code>.
    #         In this case, safely retry your call
    #          to <code>DeleteModel</code> by using the same <code>ClientToken</code> parameter value.</p>
    #            <p>If you don't supply a value for ClientToken, the AWS SDK you are using inserts a value for you.
    #            This prevents retries after a network error from making multiple model deletion requests. You'll need to
    #            provide your own value for other use cases. </p>
    #
    #            <p>An error occurs if the other input parameters are not the same as in the first request. Using a different
    #          value for <code>ClientToken</code> is considered a new call to <code>DeleteModel</code>. An idempotency
    #          token is active for 8 hours.</p>
    #
    #   @return [String]
    #
    DeleteModelInput = ::Struct.new(
      :project_name,
      :model_version,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute model_arn
    #   <p>The Amazon Resource Name (ARN) of the model that was deleted.</p>
    #
    #   @return [String]
    #
    DeleteModelOutput = ::Struct.new(
      :model_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project_name
    #   <p>The name of the project to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>ClientToken is an idempotency token that ensures a call to <code>DeleteProject</code>
    #            completes only once.  You choose the value to pass. For example, An issue
    #            might prevent you from getting a response from <code>DeleteProject</code>.
    #            In this case, safely retry your call
    #            to <code>DeleteProject</code> by using the same <code>ClientToken</code> parameter value. </p>
    #            <p>If you don't supply a value for <code>ClientToken</code>, the AWS SDK you are using inserts a value for you.
    #            This prevents retries after a network error from making multiple project deletion requests. You'll need to
    #            provide your own value for other use cases. </p>
    #            <p>An error occurs if the other input parameters are not the same as in the first request. Using a different
    #            value for <code>ClientToken</code> is considered a new call to <code>DeleteProject</code>. An idempotency
    #            token is active for 8 hours.</p>
    #
    #   @return [String]
    #
    DeleteProjectInput = ::Struct.new(
      :project_name,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project_arn
    #   <p>The Amazon Resource Name (ARN) of the project that was deleted.</p>
    #
    #   @return [String]
    #
    DeleteProjectOutput = ::Struct.new(
      :project_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project_name
    #   <p>The name of the project that contains the dataset that you want to describe.</p>
    #
    #   @return [String]
    #
    # @!attribute dataset_type
    #   <p>The type of the dataset to describe. Specify <code>train</code> to describe the
    #         training dataset. Specify <code>test</code> to describe the test dataset.
    #         If you have a single dataset project, specify <code>train</code>
    #            </p>
    #
    #   @return [String]
    #
    DescribeDatasetInput = ::Struct.new(
      :project_name,
      :dataset_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute dataset_description
    #   <p>The description of the requested dataset. </p>
    #
    #   @return [DatasetDescription]
    #
    DescribeDatasetOutput = ::Struct.new(
      :dataset_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project_name
    #   <p>The project that contains the version of a model that you want to describe.</p>
    #
    #   @return [String]
    #
    # @!attribute model_version
    #   <p>The version of the model that you want to describe.</p>
    #
    #   @return [String]
    #
    DescribeModelInput = ::Struct.new(
      :project_name,
      :model_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute model_description
    #   <p>Contains the description of the model.</p>
    #
    #   @return [ModelDescription]
    #
    DescribeModelOutput = ::Struct.new(
      :model_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project_name
    #   <p>The name of the project that contains the model packaging job that you want to describe.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute job_name
    #   <p>The job name for the model packaging job.
    #
    #   </p>
    #
    #   @return [String]
    #
    DescribeModelPackagingJobInput = ::Struct.new(
      :project_name,
      :job_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute model_packaging_description
    #   <p>The description of the model packaging job.
    #   </p>
    #
    #   @return [ModelPackagingDescription]
    #
    DescribeModelPackagingJobOutput = ::Struct.new(
      :model_packaging_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project_name
    #   <p>The name of the project that you want to describe.</p>
    #
    #   @return [String]
    #
    DescribeProjectInput = ::Struct.new(
      :project_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project_description
    #   <p>The description of the project.</p>
    #
    #   @return [ProjectDescription]
    #
    DescribeProjectOutput = ::Struct.new(
      :project_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project_name
    #   <p>The name of the project that contains the model version that you want to use.</p>
    #
    #   @return [String]
    #
    # @!attribute model_version
    #   <p>The version of the model that you want to use.</p>
    #
    #   @return [String]
    #
    # @!attribute body
    #   <p>The unencrypted image bytes that you want to analyze. </p>
    #
    #   @return [String]
    #
    # @!attribute content_type
    #   <p>The type of the image passed in <code>Body</code>.
    #            Valid values are <code>image/png</code> (PNG format images) and <code>image/jpeg</code> (JPG format images). </p>
    #
    #   @return [String]
    #
    DetectAnomaliesInput = ::Struct.new(
      :project_name,
      :model_version,
      :body,
      :content_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute detect_anomaly_result
    #   <p>The results of the <code>DetectAnomalies</code> operation.</p>
    #
    #   @return [DetectAnomalyResult]
    #
    DetectAnomaliesOutput = ::Struct.new(
      :detect_anomaly_result,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The prediction results from a call to <a>DetectAnomalies</a>.</p>
    #
    # @!attribute source
    #   <p>The source of the image that was analyzed. <code>direct</code> means that the
    #         images was supplied from the local computer. No other values are supported.</p>
    #
    #   @return [ImageSource]
    #
    # @!attribute is_anomalous
    #   <p>True if the image contains an anomaly, otherwise false.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute confidence
    #   <p>The confidence that Amazon Lookout for Vision has in the accuracy of the prediction.</p>
    #
    #   @return [Float]
    #
    DetectAnomalyResult = ::Struct.new(
      :source,
      :is_anomalous,
      :confidence,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.is_anomalous ||= false
      end

    end

    # <p>Configuration information for the AWS IoT Greengrass component created in a model packaging job.
    #    For more information, see <a>StartModelPackagingJob</a>.
    # </p>
    #          <note>
    #             <p>You can't specify a component with the same <code>ComponentName</code> and <code>Componentversion</code> as
    #       an existing component with the same component name and component version.</p>
    #          </note>
    #
    # @!attribute compiler_options
    #   <p>Additional compiler options for the Greengrass component. Currently,
    #      only NVIDIA Graphics Processing Units (GPU) are supported. If you specify <code>TargetPlatform</code>, you must specify
    #   <code>CompilerOptions</code>. If you specify <code>TargetDevice</code>, don't specify <code>CompilerOptions</code>.</p>
    #
    #
    #            <p>For more information, see
    #         <i>Compiler options</i> in the  Amazon Lookout for Vision Developer Guide. </p>
    #
    #   @return [String]
    #
    # @!attribute target_device
    #   <p>The target device for the model. Currently the only supported value is <code>jetson_xavier</code>.
    #         If you specify <code>TargetDevice</code>, you can't specify
    #         <code>TargetPlatform</code>.
    #
    #   </p>
    #
    #   Enum, one of: ["jetson_xavier"]
    #
    #   @return [String]
    #
    # @!attribute target_platform
    #   <p>The target platform for the model. If you specify <code>TargetPlatform</code>, you can't specify
    #            <code>TargetDevice</code>.
    #         </p>
    #
    #   @return [TargetPlatform]
    #
    # @!attribute s3_output_location
    #   <p>
    #            An S3 location in which Lookout for Vision stores the component artifacts.
    #         </p>
    #
    #   @return [S3Location]
    #
    # @!attribute component_name
    #   <p>
    #      A name for the AWS IoT Greengrass component.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute component_version
    #   <p>A Version for the AWS IoT Greengrass component. If you don't provide a
    #         value, a default value of <code>
    #                  <i>Model Version</i>.0.0</code> is used.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute component_description
    #   <p>
    #      A description for the AWS IoT Greengrass component.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>
    #      A set of tags (key-value pairs) that you want to attach to the AWS IoT Greengrass component.
    #   </p>
    #
    #   @return [Array<Tag>]
    #
    GreengrassConfiguration = ::Struct.new(
      :compiler_options,
      :target_device,
      :target_platform,
      :s3_output_location,
      :component_name,
      :component_version,
      :component_description,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the AWS IoT Greengrass component created by a model packaging job.
    #
    # </p>
    #
    # @!attribute component_version_arn
    #   <p>
    #   The Amazon Resource Name (ARN) of the component.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute component_name
    #   <p>
    #   The name of the component.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute component_version
    #   <p>
    #   The version of the component.
    #   </p>
    #
    #   @return [String]
    #
    GreengrassOutputDetails = ::Struct.new(
      :component_version_arn,
      :component_name,
      :component_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The source for an image.</p>
    #
    # @!attribute type
    #   <p>The type of the image.</p>
    #
    #   @return [String]
    #
    ImageSource = ::Struct.new(
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Amazon S3 Location information for an input manifest file. </p>
    #
    # @!attribute bucket
    #   <p>The Amazon S3 bucket that contains the manifest.</p>
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>The name and location of the manifest file withiin the bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute version_id
    #   <p>The version ID of the bucket.</p>
    #
    #   @return [String]
    #
    InputS3Object = ::Struct.new(
      :bucket,
      :key,
      :version_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Amazon Lookout for Vision experienced a service issue. Try your call again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute retry_after_seconds
    #   <p>The period of time, in seconds, before the operation can be retried.</p>
    #
    #   @return [Integer]
    #
    InternalServerException = ::Struct.new(
      :message,
      :retry_after_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.retry_after_seconds ||= 0
      end

    end

    # @!attribute project_name
    #   <p>The name of the project that contains the dataset that you want to list.</p>
    #
    #   @return [String]
    #
    # @!attribute dataset_type
    #   <p>The type of the dataset that you want to list.  Specify <code>train</code> to list
    #            the training dataset. Specify <code>test</code> to list the test dataset. If you have a single dataset
    #         project, specify <code>train</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute labeled
    #   <p>Specify <code>true</code> to include labeled entries, otherwise specify <code>false</code>. If you
    #         don't specify a value, Lookout for Vision returns all entries.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute anomaly_class
    #   <p>Specify <code>normal</code> to include only normal images. Specify <code>anomaly</code> to only include
    #            anomalous entries. If you don't specify a value, Amazon Lookout for Vision returns normal and anomalous images.</p>
    #
    #   @return [String]
    #
    # @!attribute before_creation_date
    #   <p>Only includes entries before the specified date in the response. For example, <code>2020-06-23T00:00:00</code>.</p>
    #
    #   @return [Time]
    #
    # @!attribute after_creation_date
    #   <p>Only includes entries after the specified date in the response. For example, <code>2020-06-23T00:00:00</code>.</p>
    #
    #   @return [Time]
    #
    # @!attribute next_token
    #   <p>If the previous response was incomplete (because there is more data to retrieve),
    #            Amazon Lookout for Vision returns a pagination token in the response. You can use this pagination token to
    #            retrieve the next set of dataset entries.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per paginated call. The largest value you can specify is 100.
    #            If you specify a value greater than 100, a ValidationException
    #            error occurs. The default value is 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute source_ref_contains
    #   <p>Perform a "contains" search on the  values of the <code>source-ref</code> key within the dataset.
    #            For example a value of "IMG_17"  returns all JSON Lines where the <code>source-ref</code> key value matches <i>*IMG_17*</i>.</p>
    #
    #   @return [String]
    #
    ListDatasetEntriesInput = ::Struct.new(
      :project_name,
      :dataset_type,
      :labeled,
      :anomaly_class,
      :before_creation_date,
      :after_creation_date,
      :next_token,
      :max_results,
      :source_ref_contains,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute dataset_entries
    #   <p>A list of the entries (JSON Lines) within the dataset.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>If the response is truncated, Amazon Lookout for Vision returns this token
    #            that you can use in the subsequent request to retrieve the next set ofdataset entries.</p>
    #
    #   @return [String]
    #
    ListDatasetEntriesOutput = ::Struct.new(
      :dataset_entries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project_name
    #   <p>
    #   The name of the project for which you want to list the model packaging jobs.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>If the previous response was incomplete (because there is more
    #         results to retrieve), Amazon Lookout for Vision returns a pagination token in the response. You can use this pagination
    #         token to retrieve the next set of results. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per paginated call. The largest value you can specify is 100.
    #         If you specify a value greater than 100, a ValidationException
    #         error occurs. The default value is 100. </p>
    #
    #   @return [Integer]
    #
    ListModelPackagingJobsInput = ::Struct.new(
      :project_name,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute model_packaging_jobs
    #   <p>
    #   A list of the model packaging jobs created for the specified Amazon Lookout for Vision project.
    #   </p>
    #
    #   @return [Array<ModelPackagingJobMetadata>]
    #
    # @!attribute next_token
    #   <p>If the previous response was incomplete (because there is more
    #      results to retrieve), Amazon Lookout for Vision returns a pagination token in the response. You can use this pagination
    #      token to retrieve the next set of results.
    #   </p>
    #
    #   @return [String]
    #
    ListModelPackagingJobsOutput = ::Struct.new(
      :model_packaging_jobs,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project_name
    #   <p>The name of the project that contains the model versions that you want to list.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>If the previous response was incomplete (because there is more data to retrieve),
    #            Amazon Lookout for Vision returns a pagination token in the response. You can use this pagination token to
    #            retrieve the next set of models.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per paginated call. The largest value you can specify is 100.
    #            If you specify a value greater than 100, a ValidationException
    #            error occurs. The default value is 100.</p>
    #
    #   @return [Integer]
    #
    ListModelsInput = ::Struct.new(
      :project_name,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute models
    #   <p>A list of model versions in the specified project. </p>
    #
    #   @return [Array<ModelMetadata>]
    #
    # @!attribute next_token
    #   <p>If the response is truncated, Amazon Lookout for Vision returns this token
    #            that you can use in the subsequent request to retrieve the next set of models. </p>
    #
    #   @return [String]
    #
    ListModelsOutput = ::Struct.new(
      :models,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>If the previous response was incomplete (because there is more data to retrieve),
    #            Amazon Lookout for Vision returns a pagination token in the response. You can use this pagination token to
    #            retrieve the next set of projects.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per paginated call. The largest value you can specify is 100.
    #            If you specify a value greater than 100, a ValidationException
    #            error occurs. The default value is 100.</p>
    #
    #   @return [Integer]
    #
    ListProjectsInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute projects
    #   <p>A list of projects in your AWS account.</p>
    #
    #   @return [Array<ProjectMetadata>]
    #
    # @!attribute next_token
    #   <p>If the response is truncated, Amazon Lookout for Vision returns this token
    #            that you can use in the subsequent request to retrieve the next set of projects.</p>
    #
    #   @return [String]
    #
    ListProjectsOutput = ::Struct.new(
      :projects,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the model for which you want to list tags. </p>
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
    #   <p>A map of tag keys and values attached to the specified model.</p>
    #
    #   @return [Array<Tag>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes an Amazon Lookout for Vision model.</p>
    #
    # @!attribute model_version
    #   <p>The version of the model</p>
    #
    #   @return [String]
    #
    # @!attribute model_arn
    #   <p>The Amazon Resource Name (ARN) of the model.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_timestamp
    #   <p>The unix timestamp for the date and time that the model was created. </p>
    #
    #   @return [Time]
    #
    # @!attribute description
    #   <p>The description for the model.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the model.</p>
    #
    #   Enum, one of: ["TRAINING", "TRAINED", "TRAINING_FAILED", "STARTING_HOSTING", "HOSTED", "HOSTING_FAILED", "STOPPING_HOSTING", "SYSTEM_UPDATING", "DELETING"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>The status message for the model.</p>
    #
    #   @return [String]
    #
    # @!attribute performance
    #   <p>Performance metrics for the model. Created during training.</p>
    #
    #   @return [ModelPerformance]
    #
    # @!attribute output_config
    #   <p>The S3 location where Amazon Lookout for Vision saves model training files.</p>
    #
    #   @return [OutputConfig]
    #
    # @!attribute evaluation_manifest
    #   <p>The S3 location where Amazon Lookout for Vision saves the manifest file
    #            that was used to test the trained model and generate the performance scores.</p>
    #
    #   @return [OutputS3Object]
    #
    # @!attribute evaluation_result
    #   <p>The S3 location where Amazon Lookout for Vision saves the performance metrics.</p>
    #
    #   @return [OutputS3Object]
    #
    # @!attribute evaluation_end_timestamp
    #   <p>The unix timestamp for the date and time that the evaluation ended. </p>
    #
    #   @return [Time]
    #
    # @!attribute kms_key_id
    #   <p>The identifer for the AWS Key Management Service (AWS KMS) key that was used to encrypt the model
    #            during training.</p>
    #
    #   @return [String]
    #
    ModelDescription = ::Struct.new(
      :model_version,
      :model_arn,
      :creation_timestamp,
      :description,
      :status,
      :status_message,
      :performance,
      :output_config,
      :evaluation_manifest,
      :evaluation_result,
      :evaluation_end_timestamp,
      :kms_key_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ModelHostingStatus
    #
    module ModelHostingStatus
      # No documentation available.
      #
      STARTING_HOSTING = "STARTING_HOSTING"

      # No documentation available.
      #
      HOSTED = "HOSTED"

      # No documentation available.
      #
      HOSTING_FAILED = "HOSTING_FAILED"

      # No documentation available.
      #
      STOPPING_HOSTING = "STOPPING_HOSTING"

      # No documentation available.
      #
      SYSTEM_UPDATING = "SYSTEM_UPDATING"
    end

    # <p>Describes an Amazon Lookout for Vision model.</p>
    #
    # @!attribute creation_timestamp
    #   <p>The unix timestamp for the date and time that the model was created. </p>
    #
    #   @return [Time]
    #
    # @!attribute model_version
    #   <p>The version of the model.</p>
    #
    #   @return [String]
    #
    # @!attribute model_arn
    #   <p>The Amazon Resource Name (ARN) of the model.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description for the model.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the model.</p>
    #
    #   Enum, one of: ["TRAINING", "TRAINED", "TRAINING_FAILED", "STARTING_HOSTING", "HOSTED", "HOSTING_FAILED", "STOPPING_HOSTING", "SYSTEM_UPDATING", "DELETING"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>The status message for the model.</p>
    #
    #   @return [String]
    #
    # @!attribute performance
    #   <p>Performance metrics for the model. Not available until training has successfully completed.</p>
    #
    #   @return [ModelPerformance]
    #
    ModelMetadata = ::Struct.new(
      :creation_timestamp,
      :model_version,
      :model_arn,
      :description,
      :status,
      :status_message,
      :performance,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    # Configuration information for a Amazon Lookout for Vision model packaging job. For more information,
    # see <a>StartModelPackagingJob</a>.
    # </p>
    #
    # @!attribute greengrass
    #   <p>
    #   Configuration information for the AWS IoT Greengrass component in a model packaging job.
    #   </p>
    #
    #   @return [GreengrassConfiguration]
    #
    ModelPackagingConfiguration = ::Struct.new(
      :greengrass,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    # Information about a model packaging job. For more information, see
    # <a>DescribeModelPackagingJob</a>.
    # </p>
    #
    # @!attribute job_name
    #   <p>
    #   The name of the model packaging job.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute project_name
    #   <p>The name of the project that's associated with a model that's in the model package.
    #
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute model_version
    #   <p>The version of the model used in the model packaging job.
    #
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute model_packaging_configuration
    #   <p>
    #   The configuration information used in the model packaging job.
    #   </p>
    #
    #   @return [ModelPackagingConfiguration]
    #
    # @!attribute model_packaging_job_description
    #   <p>The description for the model packaging job.
    #
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute model_packaging_method
    #   <p>The AWS service used to package the job. Currently Lookout for Vision can package
    #   jobs with AWS IoT Greengrass.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute model_packaging_output_details
    #   <p>Information about the output of the model packaging job. For more information,
    #      see <a>DescribeModelPackagingJob</a>.
    #   </p>
    #
    #   @return [ModelPackagingOutputDetails]
    #
    # @!attribute status
    #   <p>
    #   The status of the model packaging job.
    #   </p>
    #
    #   Enum, one of: ["CREATED", "RUNNING", "SUCCEEDED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>
    #   The status message for the model packaging job.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute creation_timestamp
    #   <p>
    #      The Unix timestamp for the time and date that the model packaging job was created.
    #   </p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_timestamp
    #   <p>
    #      The Unix timestamp for the time and date that the model packaging job was last updated.
    #   </p>
    #
    #   @return [Time]
    #
    ModelPackagingDescription = ::Struct.new(
      :job_name,
      :project_name,
      :model_version,
      :model_packaging_configuration,
      :model_packaging_job_description,
      :model_packaging_method,
      :model_packaging_output_details,
      :status,
      :status_message,
      :creation_timestamp,
      :last_updated_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #    Metadata for a model packaging job. For more information, see <a>ListModelPackagingJobs</a>.
    # </p>
    #
    # @!attribute job_name
    #   <p>
    #   The name of the model packaging job.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute project_name
    #   <p>
    #   The project that contains the model that is in the model package.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute model_version
    #   <p>
    #   The version of the model that is in the model package.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute model_packaging_job_description
    #   <p>
    #   The description for the model packaging job.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute model_packaging_method
    #   <p>
    #   The AWS service used to package the job. Currently Lookout for Vision can package
    #         jobs with AWS IoT Greengrass.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the model packaging job.
    #   </p>
    #
    #   Enum, one of: ["CREATED", "RUNNING", "SUCCEEDED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>The status message for the model packaging job.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute creation_timestamp
    #   <p>The Unix timestamp for the time and date that the model packaging job was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_timestamp
    #   <p>The Unix timestamp for the time and date that the model packaging job was last updated.</p>
    #
    #   @return [Time]
    #
    ModelPackagingJobMetadata = ::Struct.new(
      :job_name,
      :project_name,
      :model_version,
      :model_packaging_job_description,
      :model_packaging_method,
      :status,
      :status_message,
      :creation_timestamp,
      :last_updated_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ModelPackagingJobStatus
    #
    module ModelPackagingJobStatus
      # No documentation available.
      #
      CREATED = "CREATED"

      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      SUCCEEDED = "SUCCEEDED"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>
    # Information about the output from a model packaging job.
    # </p>
    #
    # @!attribute greengrass
    #   <p>
    #   Information about the AWS IoT Greengrass component in a model packaging job.
    #   </p>
    #
    #   @return [GreengrassOutputDetails]
    #
    ModelPackagingOutputDetails = ::Struct.new(
      :greengrass,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the evaluation performance of a trained model. </p>
    #
    # @!attribute f1_score
    #   <p>The overall F1 score metric for the trained model.</p>
    #
    #   @return [Float]
    #
    # @!attribute recall
    #   <p>The overall recall metric value for the trained model. </p>
    #
    #   @return [Float]
    #
    # @!attribute precision
    #   <p>The overall precision metric value for the trained model.</p>
    #
    #   @return [Float]
    #
    ModelPerformance = ::Struct.new(
      :f1_score,
      :recall,
      :precision,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ModelStatus
    #
    module ModelStatus
      # No documentation available.
      #
      TRAINING = "TRAINING"

      # No documentation available.
      #
      TRAINED = "TRAINED"

      # No documentation available.
      #
      TRAINING_FAILED = "TRAINING_FAILED"

      # No documentation available.
      #
      STARTING_HOSTING = "STARTING_HOSTING"

      # No documentation available.
      #
      HOSTED = "HOSTED"

      # No documentation available.
      #
      HOSTING_FAILED = "HOSTING_FAILED"

      # No documentation available.
      #
      STOPPING_HOSTING = "STOPPING_HOSTING"

      # No documentation available.
      #
      SYSTEM_UPDATING = "SYSTEM_UPDATING"

      # No documentation available.
      #
      DELETING = "DELETING"
    end

    # <p>The S3 location where Amazon Lookout for Vision saves model training files.</p>
    #
    # @!attribute s3_location
    #   <p>The S3 location for the output.</p>
    #
    #   @return [S3Location]
    #
    OutputConfig = ::Struct.new(
      :s3_location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The S3 location where Amazon Lookout for Vision saves training output.</p>
    #
    # @!attribute bucket
    #   <p>The bucket that contains the training output.</p>
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>The location of the training output in the bucket.</p>
    #
    #   @return [String]
    #
    OutputS3Object = ::Struct.new(
      :bucket,
      :key,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describe an Amazon Lookout for Vision project. For more information, see <a>DescribeProject</a>.</p>
    #
    # @!attribute project_arn
    #   <p>The Amazon Resource Name (ARN) of the project.</p>
    #
    #   @return [String]
    #
    # @!attribute project_name
    #   <p>The name of the project.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_timestamp
    #   <p>The unix timestamp for the date and time that the project was created. </p>
    #
    #   @return [Time]
    #
    # @!attribute datasets
    #   <p>A list of datasets in the project.</p>
    #
    #   @return [Array<DatasetMetadata>]
    #
    ProjectDescription = ::Struct.new(
      :project_arn,
      :project_name,
      :creation_timestamp,
      :datasets,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Metadata about an Amazon Lookout for Vision project.</p>
    #
    # @!attribute project_arn
    #   <p>The Amazon Resource Name (ARN) of the project.</p>
    #
    #   @return [String]
    #
    # @!attribute project_name
    #   <p>The name of the project.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_timestamp
    #   <p>The unix timestamp for the date and time that the project was created. </p>
    #
    #   @return [Time]
    #
    ProjectMetadata = ::Struct.new(
      :project_arn,
      :project_name,
      :creation_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The resource could not be found.</p>
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
    # @!attribute resource_type
    #   <p>The type of the resource.</p>
    #
    #   Enum, one of: ["PROJECT", "DATASET", "MODEL", "TRIAL", "MODEL_PACKAGE_JOB"]
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
      PROJECT = "PROJECT"

      # No documentation available.
      #
      DATASET = "DATASET"

      # No documentation available.
      #
      MODEL = "MODEL"

      # No documentation available.
      #
      TRIAL = "TRIAL"

      # No documentation available.
      #
      MODEL_PACKAGE_JOB = "MODEL_PACKAGE_JOB"
    end

    # <p>Information about the location of training output or the output of a model packaging job.</p>
    #
    # @!attribute bucket
    #   <p>The S3 bucket that contains the training or model packaging job output. If you are training a model,
    #            the bucket must in your AWS account. If you use an S3 bucket for a model packaging job,
    #         the S3 bucket must be in the same AWS Region and AWS account in which you use AWS IoT Greengrass.</p>
    #
    #   @return [String]
    #
    # @!attribute prefix
    #   <p>The path of the folder, within the S3 bucket, that contains the output.</p>
    #
    #   @return [String]
    #
    S3Location = ::Struct.new(
      :bucket,
      :prefix,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A service quota was exceeded the allowed limit. For more information, see
    #         Limits in Amazon Lookout for Vision in the Amazon Lookout for Vision Developer Guide. </p>
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
    # @!attribute resource_type
    #   <p>The type of the resource.</p>
    #
    #   Enum, one of: ["PROJECT", "DATASET", "MODEL", "TRIAL", "MODEL_PACKAGE_JOB"]
    #
    #   @return [String]
    #
    # @!attribute quota_code
    #   <p>The quota code. </p>
    #
    #   @return [String]
    #
    # @!attribute service_code
    #   <p>The service code. </p>
    #
    #   @return [String]
    #
    ServiceQuotaExceededException = ::Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :quota_code,
      :service_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project_name
    #   <p>The name of the project that contains the model that you want to start.</p>
    #
    #   @return [String]
    #
    # @!attribute model_version
    #   <p>The version of the model that you want to start.</p>
    #
    #   @return [String]
    #
    # @!attribute min_inference_units
    #   <p>The minimum number of inference units to use. A single
    #            inference unit represents 1 hour of processing.
    #            Use a higher number to increase the TPS throughput of your model. You are charged for the number
    #            of inference units that you use.
    #         </p>
    #
    #   @return [Integer]
    #
    # @!attribute client_token
    #   <p>ClientToken is an idempotency token that ensures a call to <code>StartModel</code>
    #            completes only once.  You choose the value to pass. For example, An issue might prevent
    #            you from getting a response from <code>StartModel</code>.
    #            In this case, safely retry your call
    #            to <code>StartModel</code> by using the same <code>ClientToken</code> parameter value. </p>
    #            <p>If you don't supply a value for <code>ClientToken</code>, the AWS SDK you are using inserts a value for you.
    #            This prevents retries after a network error from making multiple start requests. You'll need to
    #            provide your own value for other use cases. </p>
    #
    #            <p>An error occurs if the other input parameters are not the same as in the first request. Using a different
    #            value for <code>ClientToken</code> is considered a new call to <code>StartModel</code>. An idempotency
    #            token is active for 8 hours.
    #         </p>
    #
    #   @return [String]
    #
    StartModelInput = ::Struct.new(
      :project_name,
      :model_version,
      :min_inference_units,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute status
    #   <p>The current running status of the model.</p>
    #
    #   Enum, one of: ["STARTING_HOSTING", "HOSTED", "HOSTING_FAILED", "STOPPING_HOSTING", "SYSTEM_UPDATING"]
    #
    #   @return [String]
    #
    StartModelOutput = ::Struct.new(
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project_name
    #   <p>
    #   The name of the project which contains the version of the model that you want to package.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute model_version
    #   <p>
    #   The version of the model within the project that you want to package.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute job_name
    #   <p>A name for the model packaging job. If you don't supply a value, the service creates
    #      a job name for you.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute configuration
    #   <p>The configuration for the model packaging job.
    #   </p>
    #
    #   @return [ModelPackagingConfiguration]
    #
    # @!attribute description
    #   <p>A description for the model packaging job.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>ClientToken is an idempotency token that ensures a call to <code>StartModelPackagingJob</code>
    #         completes only once.  You choose the value to pass. For example, An issue might prevent you
    #         from getting a response from <code>StartModelPackagingJob</code>.
    #         In this case, safely retry your call
    #         to <code>StartModelPackagingJob</code> by using the same <code>ClientToken</code> parameter value.</p>
    #            <p>If you don't supply a value for <code>ClientToken</code>, the AWS SDK you are using inserts a value for you.
    #         This prevents retries after a network error from making multiple dataset creation requests. You'll need to
    #         provide your own value for other use cases. </p>
    #            <p>An error occurs if the other input parameters are not the same as in the first request. Using a different
    #         value for <code>ClientToken</code> is considered a new call to <code>StartModelPackagingJob</code>. An idempotency
    #         token is active for 8 hours.
    #      </p>
    #
    #   @return [String]
    #
    StartModelPackagingJobInput = ::Struct.new(
      :project_name,
      :model_version,
      :job_name,
      :configuration,
      :description,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_name
    #   <p>The job name for the model packaging job. If you don't supply a job name in the <code>JobName</code> input parameter,
    #      the service creates a job name for you.
    #
    #   </p>
    #
    #   @return [String]
    #
    StartModelPackagingJobOutput = ::Struct.new(
      :job_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project_name
    #   <p>The name of the project that contains the model that you want to stop.</p>
    #
    #   @return [String]
    #
    # @!attribute model_version
    #   <p>The version of the model that you want to stop.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>ClientToken is an idempotency token that ensures a call to <code>StopModel</code>
    #            completes only once.  You choose the value to pass. For example, An issue
    #            might prevent you from getting a response from <code>StopModel</code>.
    #            In this case, safely retry your call
    #            to <code>StopModel</code> by using the same <code>ClientToken</code> parameter value.</p>
    #            <p>If you don't supply a value for <code>ClientToken</code>, the AWS SDK you are using inserts a value for you.
    #            This prevents retries after a network error from making multiple stop requests. You'll need to
    #            provide your own value for other use cases. </p>
    #            <p>An error occurs if the other input parameters are not the same as in the first request. Using a different
    #            value for <code>ClientToken</code> is considered a new call to <code>StopModel</code>. An idempotency
    #            token is active for 8 hours.
    #
    #
    #         </p>
    #
    #   @return [String]
    #
    StopModelInput = ::Struct.new(
      :project_name,
      :model_version,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute status
    #   <p>The status of the model.</p>
    #
    #   Enum, one of: ["STARTING_HOSTING", "HOSTED", "HOSTING_FAILED", "STOPPING_HOSTING", "SYSTEM_UPDATING"]
    #
    #   @return [String]
    #
    StopModelOutput = ::Struct.new(
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A key and value pair that is attached to the specified Amazon Lookout for Vision model.</p>
    #
    # @!attribute key
    #   <p>The key of the tag that is attached to the specified model.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the tag that is attached to the specified model.</p>
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
    #   <p>The Amazon Resource Name (ARN) of the model to assign the tags.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The key-value tags to assign to the model.</p>
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

    # Includes enum constants for TargetDevice
    #
    module TargetDevice
      # No documentation available.
      #
      JETSON_XAVIER = "jetson_xavier"
    end

    # <p>The platform on which a model runs on an AWS IoT Greengrass core device.</p>
    #
    # @!attribute os
    #   <p>The target operating system for the model. Linux is the only operating system
    #            that is currently supported.
    #         </p>
    #
    #   Enum, one of: ["LINUX"]
    #
    #   @return [String]
    #
    # @!attribute arch
    #   <p>The target architecture for the model. The currently supported architectures are
    #            X86_64 (64-bit version of the x86 instruction set) and ARM_64 (ARMv8 64-bit CPU).
    #         </p>
    #
    #   Enum, one of: ["ARM64", "X86_64"]
    #
    #   @return [String]
    #
    # @!attribute accelerator
    #   <p>The target accelerator for the model. NVIDIA (Nvidia graphics processing unit)
    #            is the only accelerator that is currently supported. You must also specify the <code>gpu-code</code>, <code>trt-ver</code>,
    #            and <code>cuda-ver</code> compiler options.
    #
    #         </p>
    #
    #   Enum, one of: ["NVIDIA"]
    #
    #   @return [String]
    #
    TargetPlatform = ::Struct.new(
      :os,
      :arch,
      :accelerator,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TargetPlatformAccelerator
    #
    module TargetPlatformAccelerator
      # No documentation available.
      #
      NVIDIA = "NVIDIA"
    end

    # Includes enum constants for TargetPlatformArch
    #
    module TargetPlatformArch
      # No documentation available.
      #
      ARM64 = "ARM64"

      # No documentation available.
      #
      X86_64 = "X86_64"
    end

    # Includes enum constants for TargetPlatformOs
    #
    module TargetPlatformOs
      # No documentation available.
      #
      LINUX = "LINUX"
    end

    # <p>Amazon Lookout for Vision is temporarily unable to process the request. Try your call again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute quota_code
    #   <p>The quota code. </p>
    #
    #   @return [String]
    #
    # @!attribute service_code
    #   <p>The service code. </p>
    #
    #   @return [String]
    #
    # @!attribute retry_after_seconds
    #   <p>The period of time, in seconds, before the operation can be retried. </p>
    #
    #   @return [Integer]
    #
    ThrottlingException = ::Struct.new(
      :message,
      :quota_code,
      :service_code,
      :retry_after_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.retry_after_seconds ||= 0
      end

    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the model from which you want to remove tags. </p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>A list of the keys of the tags that you want to remove.</p>
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

    # @!attribute project_name
    #   <p>The name of the project that contains the dataset that you want to update.</p>
    #
    #   @return [String]
    #
    # @!attribute dataset_type
    #   <p>The type of the dataset that you want to update. Specify <code>train</code> to update
    #         the training dataset. Specify <code>test</code> to update the test dataset. If you
    #          have a single dataset project, specify <code>train</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute changes
    #   <p>The entries to add to the dataset.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>ClientToken is an idempotency token that ensures a call to <code>UpdateDatasetEntries</code>
    #            completes only once.  You choose the value to pass. For example, An issue
    #            might prevent you from getting a response from <code>UpdateDatasetEntries</code>.
    #            In this case, safely retry your call
    #            to <code>UpdateDatasetEntries</code> by using the same <code>ClientToken</code> parameter value.</p>
    #            <p>If you don't supply a value for <code>ClientToken</code>, the AWS SDK you are using inserts a value for you.
    #            This prevents retries after a network error from making multiple updates with the same dataset entries. You'll need to
    #            provide your own value for other use cases. </p>
    #            <p>An error occurs
    #            if the other input parameters are not the same as in the first request. Using a different
    #            value for <code>ClientToken</code> is considered a new call to <code>UpdateDatasetEntries</code>. An idempotency
    #            token is active for 8 hours.
    #         </p>
    #
    #   @return [String]
    #
    UpdateDatasetEntriesInput = ::Struct.new(
      :project_name,
      :dataset_type,
      :changes,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute status
    #   <p>The status of the dataset update.</p>
    #
    #   Enum, one of: ["CREATE_IN_PROGRESS", "CREATE_COMPLETE", "CREATE_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_COMPLETE", "UPDATE_FAILED_ROLLBACK_IN_PROGRESS", "UPDATE_FAILED_ROLLBACK_COMPLETE", "DELETE_IN_PROGRESS", "DELETE_COMPLETE", "DELETE_FAILED"]
    #
    #   @return [String]
    #
    UpdateDatasetEntriesOutput = ::Struct.new(
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An input validation error occured. For example, invalid characters in a project name,
    #       or if a pagination token is invalid.</p>
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
