# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::HealthLake
  module Types

    # <p>Access is denied. Your account is not authorized to perform this operation.</p>
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

    # Includes enum constants for CmkType
    #
    module CmkType
      # No documentation available.
      #
      CM_CMK = "CUSTOMER_MANAGED_KMS_KEY"

      # No documentation available.
      #
      AO_CMK = "AWS_OWNED_KMS_KEY"
    end

    # <p>The Data Store is in a transition state and the user requested action can not be performed.</p>
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

    # @!attribute datastore_name
    #   <p>The user generated name for the Data Store.</p>
    #
    #   @return [String]
    #
    # @!attribute datastore_type_version
    #   <p>The FHIR version of the Data Store. The only supported version is R4.</p>
    #
    #   Enum, one of: ["R4"]
    #
    #   @return [String]
    #
    # @!attribute sse_configuration
    #   <p>
    #               The server-side encryption key configuration for a customer provided encryption key specified for creating a Data Store.
    #            </p>
    #
    #   @return [SseConfiguration]
    #
    # @!attribute preload_data_config
    #   <p>Optional parameter to preload data upon creation of the Data Store. Currently, the only
    #            supported preloaded data is synthetic data generated from Synthea.</p>
    #
    #   @return [PreloadDataConfig]
    #
    # @!attribute client_token
    #   <p>Optional user provided token used for ensuring idempotency.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>
    #               Resource tags that are applied to a Data Store when it is created.
    #            </p>
    #
    #   @return [Array<Tag>]
    #
    CreateFHIRDatastoreInput = ::Struct.new(
      :datastore_name,
      :datastore_type_version,
      :sse_configuration,
      :preload_data_config,
      :client_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute datastore_id
    #   <p>The AWS-generated Data Store id. This id is in the output from the initial Data Store
    #            creation call.</p>
    #
    #   @return [String]
    #
    # @!attribute datastore_arn
    #   <p>The datastore ARN is generated during the creation of the Data Store and can be found in
    #            the output from the initial Data Store creation call.</p>
    #
    #   @return [String]
    #
    # @!attribute datastore_status
    #   <p>The status of the FHIR Data Store. Possible statuses are ‘CREATING’, ‘ACTIVE’, ‘DELETING’,
    #            ‘DELETED’.</p>
    #
    #   Enum, one of: ["CREATING", "ACTIVE", "DELETING", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute datastore_endpoint
    #   <p>The AWS endpoint for the created Data Store. For preview, only US-east-1 endpoints are
    #            supported.</p>
    #
    #   @return [String]
    #
    CreateFHIRDatastoreOutput = ::Struct.new(
      :datastore_id,
      :datastore_arn,
      :datastore_status,
      :datastore_endpoint,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The filters applied to Data Store query.</p>
    #
    # @!attribute datastore_name
    #   <p>Allows the user to filter Data Store results by name.</p>
    #
    #   @return [String]
    #
    # @!attribute datastore_status
    #   <p>Allows the user to filter Data Store results by status.</p>
    #
    #   Enum, one of: ["CREATING", "ACTIVE", "DELETING", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute created_before
    #   <p>A filter that allows the user to set cutoff dates for records. All Data Stores created
    #            before the specified date will be included in the results. </p>
    #
    #   @return [Time]
    #
    # @!attribute created_after
    #   <p>A filter that allows the user to set cutoff dates for records. All Data Stores created
    #            after the specified date will be included in the results.</p>
    #
    #   @return [Time]
    #
    DatastoreFilter = ::Struct.new(
      :datastore_name,
      :datastore_status,
      :created_before,
      :created_after,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Displays the properties of the Data Store, including the ID, Arn, name, and the status of the Data Store.</p>
    #
    # @!attribute datastore_id
    #   <p>The AWS-generated ID number for the Data Store.</p>
    #
    #   @return [String]
    #
    # @!attribute datastore_arn
    #   <p>The Amazon Resource Name used in the creation of the Data Store.</p>
    #
    #   @return [String]
    #
    # @!attribute datastore_name
    #   <p>The user-generated name for the Data Store.</p>
    #
    #   @return [String]
    #
    # @!attribute datastore_status
    #   <p>The status of the Data Store. Possible statuses are 'CREATING', 'ACTIVE', 'DELETING', or 'DELETED'.</p>
    #
    #   Enum, one of: ["CREATING", "ACTIVE", "DELETING", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The time that a Data Store was created. </p>
    #
    #   @return [Time]
    #
    # @!attribute datastore_type_version
    #   <p>The FHIR version. Only R4 version data is supported.</p>
    #
    #   Enum, one of: ["R4"]
    #
    #   @return [String]
    #
    # @!attribute datastore_endpoint
    #   <p>The AWS endpoint for the Data Store. Each Data Store will have it's own endpoint with Data Store ID in the endpoint URL.</p>
    #
    #   @return [String]
    #
    # @!attribute sse_configuration
    #   <p>
    #               The server-side encryption key configuration for a customer provided encryption key (CMK).
    #            </p>
    #
    #   @return [SseConfiguration]
    #
    # @!attribute preload_data_config
    #   <p>The preloaded data configuration for the Data Store. Only data preloaded from Synthea is supported.</p>
    #
    #   @return [PreloadDataConfig]
    #
    DatastoreProperties = ::Struct.new(
      :datastore_id,
      :datastore_arn,
      :datastore_name,
      :datastore_status,
      :created_at,
      :datastore_type_version,
      :datastore_endpoint,
      :sse_configuration,
      :preload_data_config,
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

      # No documentation available.
      #
      DELETED = "DELETED"
    end

    # @!attribute datastore_id
    #   <p> The AWS-generated ID for the Data Store to be deleted.</p>
    #
    #   @return [String]
    #
    DeleteFHIRDatastoreInput = ::Struct.new(
      :datastore_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute datastore_id
    #   <p>The AWS-generated ID for the Data Store to be deleted.</p>
    #
    #   @return [String]
    #
    # @!attribute datastore_arn
    #   <p>The Amazon Resource Name (ARN) that gives Amazon HealthLake access permission.</p>
    #
    #   @return [String]
    #
    # @!attribute datastore_status
    #   <p>The status of the Data Store that the user has requested to be deleted.
    #         </p>
    #
    #   Enum, one of: ["CREATING", "ACTIVE", "DELETING", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute datastore_endpoint
    #   <p>The AWS endpoint for the Data Store the user has requested to be deleted.</p>
    #
    #   @return [String]
    #
    DeleteFHIRDatastoreOutput = ::Struct.new(
      :datastore_id,
      :datastore_arn,
      :datastore_status,
      :datastore_endpoint,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute datastore_id
    #   <p>The AWS-generated Data Store id. This is part of the ‘CreateFHIRDatastore’ output.</p>
    #
    #   @return [String]
    #
    DescribeFHIRDatastoreInput = ::Struct.new(
      :datastore_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute datastore_properties
    #   <p>All properties associated with a Data Store, including the Data Store ID, Data Store ARN,
    #            Data Store name, Data Store status, created at, Data Store type version, and Data Store
    #            endpoint.</p>
    #
    #   @return [DatastoreProperties]
    #
    DescribeFHIRDatastoreOutput = ::Struct.new(
      :datastore_properties,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute datastore_id
    #   <p>The AWS generated ID for the Data Store from which files are being exported from for an export job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>The AWS generated ID for an export job.</p>
    #
    #   @return [String]
    #
    DescribeFHIRExportJobInput = ::Struct.new(
      :datastore_id,
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute export_job_properties
    #   <p>Displays the properties of the export job, including the ID, Arn, Name, and the status of the job. </p>
    #
    #   @return [ExportJobProperties]
    #
    DescribeFHIRExportJobOutput = ::Struct.new(
      :export_job_properties,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute datastore_id
    #   <p>The AWS-generated ID of the Data Store.</p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>The AWS-generated job ID.</p>
    #
    #   @return [String]
    #
    DescribeFHIRImportJobInput = ::Struct.new(
      :datastore_id,
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute import_job_properties
    #   <p>The properties of the Import job request, including the ID, ARN, name, and the status of the job.</p>
    #
    #   @return [ImportJobProperties]
    #
    DescribeFHIRImportJobOutput = ::Struct.new(
      :import_job_properties,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The properties of a FHIR export job, including the ID, ARN, name, and the status of the job.</p>
    #
    # @!attribute job_id
    #   <p>The AWS generated ID for an export job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_name
    #   <p>The user generated name for an export job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_status
    #   <p>The status of a FHIR export job. Possible statuses are SUBMITTED, IN_PROGRESS, COMPLETED, or FAILED.</p>
    #
    #   Enum, one of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED_WITH_ERRORS", "COMPLETED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute submit_time
    #   <p>The time an export job was initiated.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The time an export job completed.</p>
    #
    #   @return [Time]
    #
    # @!attribute datastore_id
    #   <p>The AWS generated ID for the Data Store from which files are being exported for an export job.</p>
    #
    #   @return [String]
    #
    # @!attribute output_data_config
    #   <p>The output data configuration that was supplied when the export job was created.</p>
    #
    #   @return [OutputDataConfig]
    #
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name used during the initiation of the job.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>An explanation of any errors that may have occurred during the export job.</p>
    #
    #   @return [String]
    #
    ExportJobProperties = ::Struct.new(
      :job_id,
      :job_name,
      :job_status,
      :submit_time,
      :end_time,
      :datastore_id,
      :output_data_config,
      :data_access_role_arn,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FHIRVersion
    #
    module FHIRVersion
      # No documentation available.
      #
      R4 = "R4"
    end

    # <p>Displays the properties of the import job, including the ID, Arn, Name, and the status of the Data Store.</p>
    #
    # @!attribute job_id
    #   <p>The AWS-generated id number for the Import job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_name
    #   <p>The user-generated name for an Import job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_status
    #   <p>The job status for an Import job. Possible statuses are SUBMITTED, IN_PROGRESS, COMPLETED, FAILED.</p>
    #
    #   Enum, one of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED_WITH_ERRORS", "COMPLETED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute submit_time
    #   <p>The time that the Import job was submitted for processing.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The time that the Import job was completed.</p>
    #
    #   @return [Time]
    #
    # @!attribute datastore_id
    #   <p>The datastore id used when the Import job was created. </p>
    #
    #   @return [String]
    #
    # @!attribute input_data_config
    #   <p>The input data configuration that was supplied when the Import job was created.</p>
    #
    #   @return [InputDataConfig]
    #
    # @!attribute job_output_data_config
    #   <p>The output data configuration that was supplied when the export job was created.</p>
    #
    #   @return [OutputDataConfig]
    #
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) that gives Amazon HealthLake access to your input data.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>An explanation of any errors that may have occurred during the FHIR import job. </p>
    #
    #   @return [String]
    #
    ImportJobProperties = ::Struct.new(
      :job_id,
      :job_name,
      :job_status,
      :submit_time,
      :end_time,
      :datastore_id,
      :input_data_config,
      :job_output_data_config,
      :data_access_role_arn,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The input properties for an import job.</p>
    #
    class InputDataConfig < Hearth::Union
      # <p>The S3Uri is the user specified S3 location of the FHIR data to be imported into Amazon HealthLake. </p>
      #
      class S3Uri < InputDataConfig
        def to_h
          { s3_uri: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::HealthLake::Types::S3Uri #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < InputDataConfig
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::HealthLake::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p>Unknown error occurs in the service.</p>
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

    # Includes enum constants for JobStatus
    #
    module JobStatus
      # No documentation available.
      #
      SUBMITTED = "SUBMITTED"

      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      COMPLETED_WITH_ERRORS = "COMPLETED_WITH_ERRORS"

      # No documentation available.
      #
      COMPLETED = "COMPLETED"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>
    #             The customer-managed-key(CMK) used when creating a Data Store. If a customer owned key is not specified, an AWS owned key will be used for encryption.
    #          </p>
    #
    # @!attribute cmk_type
    #   <p>
    #               The type of customer-managed-key(CMK) used for encyrption. The two types of supported CMKs are customer owned CMKs and AWS owned CMKs.
    #            </p>
    #
    #   Enum, one of: ["CUSTOMER_MANAGED_KMS_KEY", "AWS_OWNED_KMS_KEY"]
    #
    #   @return [String]
    #
    # @!attribute kms_key_id
    #   <p>
    #               The KMS encryption key id/alias used to encrypt the Data Store contents at rest.
    #            </p>
    #
    #   @return [String]
    #
    KmsEncryptionConfig = ::Struct.new(
      :cmk_type,
      :kms_key_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filter
    #   <p>Lists all filters associated with a FHIR Data Store request.</p>
    #
    #   @return [DatastoreFilter]
    #
    # @!attribute next_token
    #   <p>Fetches the next page of Data Stores when results are paginated.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of Data Stores returned in a single page of a
    #            ListFHIRDatastoresRequest call.</p>
    #
    #   @return [Integer]
    #
    ListFHIRDatastoresInput = ::Struct.new(
      :filter,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute datastore_properties_list
    #   <p>All properties associated with the listed Data Stores.</p>
    #
    #   @return [Array<DatastoreProperties>]
    #
    # @!attribute next_token
    #   <p>Pagination token that can be used to retrieve the next page of results.</p>
    #
    #   @return [String]
    #
    ListFHIRDatastoresOutput = ::Struct.new(
      :datastore_properties_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute datastore_id
    #   <p>
    #               This parameter limits the response to the export job with the specified Data Store ID.
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>
    #               A pagination token used to identify the next page of results to return for a ListFHIRExportJobs query.
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>
    #               This parameter limits the number of results returned for a ListFHIRExportJobs to a maximum quantity specified by the user.
    #            </p>
    #
    #   @return [Integer]
    #
    # @!attribute job_name
    #   <p>
    #               This parameter limits the response to the export job with the specified job name.
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute job_status
    #   <p>
    #               This parameter limits the response to the export jobs with the specified job status.
    #            </p>
    #
    #   Enum, one of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED_WITH_ERRORS", "COMPLETED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute submitted_before
    #   <p>
    #               This parameter limits the response to FHIR export jobs submitted before a user specified date.
    #            </p>
    #
    #   @return [Time]
    #
    # @!attribute submitted_after
    #   <p>
    #               This parameter limits the response to FHIR export jobs submitted after a user specified date.
    #            </p>
    #
    #   @return [Time]
    #
    ListFHIRExportJobsInput = ::Struct.new(
      :datastore_id,
      :next_token,
      :max_results,
      :job_name,
      :job_status,
      :submitted_before,
      :submitted_after,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute export_job_properties_list
    #   <p>
    #               The properties of listed FHIR export jobs, including the ID, ARN, name, and the status of the job.
    #            </p>
    #
    #   @return [Array<ExportJobProperties>]
    #
    # @!attribute next_token
    #   <p>
    #               A pagination token used to identify the next page of results to return for a ListFHIRExportJobs query.
    #            </p>
    #
    #   @return [String]
    #
    ListFHIRExportJobsOutput = ::Struct.new(
      :export_job_properties_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute datastore_id
    #   <p>
    #               This parameter limits the response to the import job with the specified Data Store ID.
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>
    #               A pagination token used to identify the next page of results to return for a ListFHIRImportJobs query.
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>
    #               This parameter limits the number of results returned for a ListFHIRImportJobs to a maximum quantity specified by the user.
    #            </p>
    #
    #   @return [Integer]
    #
    # @!attribute job_name
    #   <p>
    #               This parameter limits the response to the import job with the specified job name.
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute job_status
    #   <p>
    #               This parameter limits the response to the import job with the specified job status.
    #            </p>
    #
    #   Enum, one of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED_WITH_ERRORS", "COMPLETED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute submitted_before
    #   <p>
    #               This parameter limits the response to FHIR import jobs submitted before a user specified date.
    #            </p>
    #
    #   @return [Time]
    #
    # @!attribute submitted_after
    #   <p>
    #               This parameter limits the response to FHIR import jobs submitted after a user specified date.
    #            </p>
    #
    #   @return [Time]
    #
    ListFHIRImportJobsInput = ::Struct.new(
      :datastore_id,
      :next_token,
      :max_results,
      :job_name,
      :job_status,
      :submitted_before,
      :submitted_after,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute import_job_properties_list
    #   <p>
    #               The properties of a listed FHIR import jobs, including the ID, ARN, name, and the status of the job.
    #            </p>
    #
    #   @return [Array<ImportJobProperties>]
    #
    # @!attribute next_token
    #   <p>
    #               A pagination token used to identify the next page of results to return for a ListFHIRImportJobs query.
    #            </p>
    #
    #   @return [String]
    #
    ListFHIRImportJobsOutput = ::Struct.new(
      :import_job_properties_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>
    #               The Amazon Resource Name(ARN) of the Data Store for which tags are being added.
    #            </p>
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
    #   <p>
    #               Returns a list of tags associated with a Data Store.
    #            </p>
    #
    #   @return [Array<Tag>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The output data configuration that was supplied when the export job was created.</p>
    #
    class OutputDataConfig < Hearth::Union
      # <p>
      #             The output data configuration that was supplied when the export job was created.
      #          </p>
      #
      class S3Configuration < OutputDataConfig
        def to_h
          { s3_configuration: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::HealthLake::Types::S3Configuration #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < OutputDataConfig
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::HealthLake::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p> The input properties for the preloaded Data Store. Only data preloaded from Synthea is supported.</p>
    #
    # @!attribute preload_data_type
    #   <p>The type of preloaded data. Only Synthea preloaded data is supported.</p>
    #
    #   Enum, one of: ["SYNTHEA"]
    #
    #   @return [String]
    #
    PreloadDataConfig = ::Struct.new(
      :preload_data_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PreloadDataType
    #
    module PreloadDataType
      # No documentation available.
      #
      SYNTHEA = "SYNTHEA"
    end

    # <p> The requested Data Store was not found.</p>
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

    # <p>
    #             The configuration of the S3 bucket for either an import or export job. This includes assigning permissions for access.
    #          </p>
    #
    # @!attribute s3_uri
    #   <p>
    #               The S3Uri is the user specified S3 location of the FHIR data to be imported into Amazon HealthLake.
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute kms_key_id
    #   <p>
    #               The KMS key ID used to access the S3 bucket.
    #            </p>
    #
    #   @return [String]
    #
    S3Configuration = ::Struct.new(
      :s3_uri,
      :kms_key_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             The server-side encryption key configuration for a customer provided encryption key.
    #          </p>
    #
    # @!attribute kms_encryption_config
    #   <p>
    #               The KMS encryption configuration used to provide details for data encryption.
    #            </p>
    #
    #   @return [KmsEncryptionConfig]
    #
    SseConfiguration = ::Struct.new(
      :kms_encryption_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_name
    #   <p>The user generated name for an export job.</p>
    #
    #   @return [String]
    #
    # @!attribute output_data_config
    #   <p>The output data configuration that was supplied when the export job was created.</p>
    #
    #   @return [OutputDataConfig]
    #
    # @!attribute datastore_id
    #   <p>The AWS generated ID for the Data Store from which files are being exported for an export job.</p>
    #
    #   @return [String]
    #
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name used during the initiation of the job.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>An optional user provided token used for ensuring idempotency.</p>
    #
    #   @return [String]
    #
    StartFHIRExportJobInput = ::Struct.new(
      :job_name,
      :output_data_config,
      :datastore_id,
      :data_access_role_arn,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The AWS generated ID for an export job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_status
    #   <p>The status of a FHIR export job. Possible statuses are SUBMITTED, IN_PROGRESS, COMPLETED, or FAILED.</p>
    #
    #   Enum, one of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED_WITH_ERRORS", "COMPLETED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute datastore_id
    #   <p>The AWS generated ID for the Data Store from which files are being exported for an export job.</p>
    #
    #   @return [String]
    #
    StartFHIRExportJobOutput = ::Struct.new(
      :job_id,
      :job_status,
      :datastore_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_name
    #   <p>The name of the FHIR Import job in the StartFHIRImport job request.</p>
    #
    #   @return [String]
    #
    # @!attribute input_data_config
    #   <p>The input properties of the FHIR Import job in the StartFHIRImport job request.</p>
    #
    #   @return [InputDataConfig]
    #
    # @!attribute job_output_data_config
    #   <p>The output data configuration that was supplied when the export job was created.</p>
    #
    #   @return [OutputDataConfig]
    #
    # @!attribute datastore_id
    #   <p>The AWS-generated Data Store ID.</p>
    #
    #   @return [String]
    #
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) that gives Amazon HealthLake access permission.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>Optional user provided token used for ensuring idempotency.</p>
    #
    #   @return [String]
    #
    StartFHIRImportJobInput = ::Struct.new(
      :job_name,
      :input_data_config,
      :job_output_data_config,
      :datastore_id,
      :data_access_role_arn,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The AWS-generated job ID.</p>
    #
    #   @return [String]
    #
    # @!attribute job_status
    #   <p>The status of an import job.</p>
    #
    #   Enum, one of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED_WITH_ERRORS", "COMPLETED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute datastore_id
    #   <p>The AWS-generated Data Store ID.</p>
    #
    #   @return [String]
    #
    StartFHIRImportJobOutput = ::Struct.new(
      :job_id,
      :job_status,
      :datastore_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             A tag is a label consisting of a user-defined key and value. The form for tags is {"Key", "Value"}
    #          </p>
    #
    # @!attribute key
    #   <p>
    #               The key portion of a tag. Tag keys are case sensitive.
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>
    #               The value portion of tag. Tag values are case sensitive.
    #            </p>
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
    #   <p>
    #               The Amazon Resource Name(ARN)that gives Amazon HealthLake access to the Data Store which tags are being added to.
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>
    #               The user specified key and value pair tags being added to a Data Store.
    #            </p>
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

    # <p>The user has exceeded their maximum number of allowed calls to the given API. </p>
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

    # @!attribute resource_arn
    #   <p>
    #               "The Amazon Resource Name(ARN) of the Data Store for which tags are being removed
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>
    #               The keys for the tags to be removed from the Healthlake Data Store.
    #            </p>
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

    # <p>The user input parameter was invalid.</p>
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
