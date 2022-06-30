# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Glue
  module Types

    # <p>Access to a resource was denied.</p>
    #
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #
    #   @return [String]
    #
    AccessDeniedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Defines an action to be initiated by a trigger.</p>
    #
    # @!attribute job_name
    #   <p>The name of a job to be run.</p>
    #
    #   @return [String]
    #
    # @!attribute arguments
    #   <p>The job arguments used when this trigger fires. For this job run, they replace the default arguments set in the job definition itself.</p>
    #            <p>You can specify arguments here that your own job-execution script
    #         consumes, as well as arguments that Glue itself consumes.</p>
    #            <p>For information about how to specify and consume your own Job arguments, see the <a href="https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html">Calling Glue APIs in Python</a> topic in the developer guide.</p>
    #            <p>For information about the key-value pairs that Glue consumes to set up your job, see the <a href="https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html">Special Parameters Used by Glue</a> topic in the developer guide.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute timeout
    #   <p>The <code>JobRun</code> timeout in minutes. This is the maximum time that a job run can
    #         consume resources before it is terminated and enters <code>TIMEOUT</code> status. The default
    #         is 2,880 minutes (48 hours). This overrides the timeout value set in the parent job.</p>
    #
    #   @return [Integer]
    #
    # @!attribute security_configuration
    #   <p>The name of the <code>SecurityConfiguration</code> structure to be used with this
    #         action.</p>
    #
    #   @return [String]
    #
    # @!attribute notification_property
    #   <p>Specifies configuration properties of a job run notification.</p>
    #
    #   @return [NotificationProperty]
    #
    # @!attribute crawler_name
    #   <p>The name of the crawler to be used with this action.</p>
    #
    #   @return [String]
    #
    Action = ::Struct.new(
      :job_name,
      :arguments,
      :timeout,
      :security_configuration,
      :notification_property,
      :crawler_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AggFunction
    #
    module AggFunction
      # No documentation available.
      #
      avg = "avg"

      # No documentation available.
      #
      countDistinct = "countDistinct"

      # No documentation available.
      #
      count = "count"

      # No documentation available.
      #
      first = "first"

      # No documentation available.
      #
      last = "last"

      # No documentation available.
      #
      kurtosis = "kurtosis"

      # No documentation available.
      #
      max = "max"

      # No documentation available.
      #
      min = "min"

      # No documentation available.
      #
      skewness = "skewness"

      # No documentation available.
      #
      stddev_samp = "stddev_samp"

      # No documentation available.
      #
      stddev_pop = "stddev_pop"

      # No documentation available.
      #
      sum = "sum"

      # No documentation available.
      #
      sumDistinct = "sumDistinct"

      # No documentation available.
      #
      var_samp = "var_samp"

      # No documentation available.
      #
      var_pop = "var_pop"
    end

    # <p>Specifies a transform that groups rows by chosen fields and computes the aggregated value by specified function.</p>
    #
    # @!attribute name
    #   <p>The name of the transform node.</p>
    #
    #   @return [String]
    #
    # @!attribute inputs
    #   <p>Specifies the fields and rows to use as inputs for the aggregate transform.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute groups
    #   <p>Specifies the fields to group by.</p>
    #
    #   @return [Array<Array<String>>]
    #
    # @!attribute aggs
    #   <p>Specifies the aggregate functions to be performed on specified fields. </p>
    #
    #   @return [Array<AggregateOperation>]
    #
    Aggregate = ::Struct.new(
      :name,
      :inputs,
      :groups,
      :aggs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the set of parameters needed to perform aggregation in the aggregate transform.</p>
    #
    # @!attribute column
    #   <p>Specifies the column on the data set on which the aggregation function will be applied.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute agg_func
    #   <p>Specifies the aggregation function to apply.</p>
    #            <p>Possible aggregation functions include: avg countDistinct, count, first, last, kurtosis, max, min, skewness,
    #         stddev_samp, stddev_pop, sum, sumDistinct, var_samp, var_pop</p>
    #
    #   Enum, one of: ["avg", "countDistinct", "count", "first", "last", "kurtosis", "max", "min", "skewness", "stddev_samp", "stddev_pop", "sum", "sumDistinct", "var_samp", "var_pop"]
    #
    #   @return [String]
    #
    AggregateOperation = ::Struct.new(
      :column,
      :agg_func,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A resource to be created or added already exists.</p>
    #
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #
    #   @return [String]
    #
    AlreadyExistsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a transform that maps data property keys in the data source to data property keys in the data target. You can rename keys, modify the data types for keys, and choose which keys to drop from the dataset.</p>
    #
    # @!attribute name
    #   <p>The name of the transform node.</p>
    #
    #   @return [String]
    #
    # @!attribute inputs
    #   <p>The data inputs identified by their node names.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute mapping
    #   <p>Specifies the mapping of data property keys in the data source to data property keys in the data target.</p>
    #
    #   @return [Array<Mapping>]
    #
    ApplyMapping = ::Struct.new(
      :name,
      :inputs,
      :mapping,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a connector to an Amazon Athena data source.</p>
    #
    # @!attribute name
    #   <p>The name of the data source.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_name
    #   <p>The name of the connection that is associated with the connector.</p>
    #
    #   @return [String]
    #
    # @!attribute connector_name
    #   <p>The name of a connector that assists with accessing the data store in Glue Studio.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_type
    #   <p>The type of connection, such as marketplace.athena or custom.athena, designating a connection to an Amazon Athena data store.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_table
    #   <p>The name of the table in the data source.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_name
    #   <p>The name of the Cloudwatch log group to read from. For example, <code>/aws-glue/jobs/output</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute output_schemas
    #   <p>Specifies the data schema for the custom Athena source.</p>
    #
    #   @return [Array<GlueSchema>]
    #
    AthenaConnectorSource = ::Struct.new(
      :name,
      :connection_name,
      :connector_name,
      :connection_type,
      :connection_table,
      :schema_name,
      :output_schemas,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure containing information for audit.</p>
    #
    # @!attribute additional_audit_context
    #   <p>The context for the audit..</p>
    #
    #   @return [String]
    #
    # @!attribute requested_columns
    #   <p>The requested columns for audit.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute all_columns_requested
    #   <p>All columns request for audit.</p>
    #
    #   @return [Boolean]
    #
    AuditContext = ::Struct.new(
      :additional_audit_context,
      :requested_columns,
      :all_columns_requested,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A list of errors that can occur when registering partition indexes for an existing table.</p>
    # 	
    # 	        <p>These errors give the details about why an index registration failed and provide a limited number of partitions in the response, so that you can fix the partitions at fault and try registering the index again. The most common set of errors that can occur are categorized as follows:</p>
    # 	
    # 	        <ul>
    #             <li>
    #                <p>EncryptedPartitionError: The partitions are encrypted.</p>
    #             </li>
    #             <li>
    #                <p>InvalidPartitionTypeDataError: The partition value doesn't match the data type for that partition column.</p>
    #             </li>
    #             <li>
    #                <p>MissingPartitionValueError: The partitions are encrypted.</p>
    #             </li>
    #             <li>
    #                <p>UnsupportedPartitionCharacterError: Characters inside the partition value are not supported. For example: U+0000 , U+0001, U+0002.</p>
    #             </li>
    #             <li>
    #                <p>InternalError: Any error which does not belong to other error codes.</p>
    #             </li>
    #          </ul>
    #
    # @!attribute code
    #   <p>The error code for an error that occurred when registering partition indexes for an existing table.</p>
    #
    #   Enum, one of: ["ENCRYPTED_PARTITION_ERROR", "INTERNAL_ERROR", "INVALID_PARTITION_TYPE_DATA_ERROR", "MISSING_PARTITION_VALUE_ERROR", "UNSUPPORTED_PARTITION_CHARACTER_ERROR"]
    #
    #   @return [String]
    #
    # @!attribute partitions
    #   <p>A list of a limited number of partitions in the response.</p>
    #
    #   @return [Array<PartitionValueList>]
    #
    BackfillError = ::Struct.new(
      :code,
      :partitions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for BackfillErrorCode
    #
    module BackfillErrorCode
      # No documentation available.
      #
      ENCRYPTED_PARTITION_ERROR = "ENCRYPTED_PARTITION_ERROR"

      # No documentation available.
      #
      INTERNAL_ERROR = "INTERNAL_ERROR"

      # No documentation available.
      #
      INVALID_PARTITION_TYPE_DATA_ERROR = "INVALID_PARTITION_TYPE_DATA_ERROR"

      # No documentation available.
      #
      MISSING_PARTITION_VALUE_ERROR = "MISSING_PARTITION_VALUE_ERROR"

      # No documentation available.
      #
      UNSUPPORTED_PARTITION_CHARACTER_ERROR = "UNSUPPORTED_PARTITION_CHARACTER_ERROR"
    end

    # <p>Specifies a target that uses a Glue Data Catalog table.</p>
    #
    # @!attribute name
    #   <p>The name of your data target.</p>
    #
    #   @return [String]
    #
    # @!attribute inputs
    #   <p>The nodes that are inputs to the data target.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute database
    #   <p>The database that contains the table you want to use as the target. This database must already exist in the Data Catalog.</p>
    #
    #   @return [String]
    #
    # @!attribute table
    #   <p>The table that defines the schema of your output data. This table must already exist in the Data Catalog.</p>
    #
    #   @return [String]
    #
    BasicCatalogTarget = ::Struct.new(
      :name,
      :inputs,
      :database,
      :table,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the catalog in which the partition is to be created. Currently, this should be
    #         the Amazon Web Services account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The name of the metadata database in which the partition is
    #         to be created.</p>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>The name of the metadata table in which the partition is to be created.</p>
    #
    #   @return [String]
    #
    # @!attribute partition_input_list
    #   <p>A list of <code>PartitionInput</code> structures that define
    #         the partitions to be created.</p>
    #
    #   @return [Array<PartitionInput>]
    #
    BatchCreatePartitionInput = ::Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :partition_input_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute errors
    #   <p>The errors encountered when trying to create the requested partitions.</p>
    #
    #   @return [Array<PartitionError>]
    #
    BatchCreatePartitionOutput = ::Struct.new(
      :errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog in which the connections reside. If none is provided, the Amazon Web Services
    #         account ID is used by default.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_name_list
    #   <p>A list of names of the connections to delete.</p>
    #
    #   @return [Array<String>]
    #
    BatchDeleteConnectionInput = ::Struct.new(
      :catalog_id,
      :connection_name_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute succeeded
    #   <p>A list of names of the connection definitions that were
    #          successfully deleted.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute errors
    #   <p>A map of the names of connections that were not successfully
    #          deleted to error details.</p>
    #
    #   @return [Hash<String, ErrorDetail>]
    #
    BatchDeleteConnectionOutput = ::Struct.new(
      :succeeded,
      :errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog where the partition to be deleted resides. If none is provided,
    #         the Amazon Web Services account ID is used by default.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The name of the catalog database in which the table in question
    #         resides.</p>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>The name of the table that contains the partitions to be deleted.</p>
    #
    #   @return [String]
    #
    # @!attribute partitions_to_delete
    #   <p>A list of <code>PartitionInput</code> structures that define
    #         the partitions to be deleted.</p>
    #
    #   @return [Array<PartitionValueList>]
    #
    BatchDeletePartitionInput = ::Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :partitions_to_delete,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute errors
    #   <p>The errors encountered when trying to delete the requested partitions.</p>
    #
    #   @return [Array<PartitionError>]
    #
    BatchDeletePartitionOutput = ::Struct.new(
      :errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog where the table resides. If none is provided, the Amazon Web Services account
    #         ID is used by default.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The name of the catalog database in which the tables to delete reside. For Hive
    #         compatibility, this name is entirely lowercase.</p>
    #
    #   @return [String]
    #
    # @!attribute tables_to_delete
    #   <p>A list of the table to delete.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute transaction_id
    #   <p>The transaction ID at which to delete the table contents.</p>
    #
    #   @return [String]
    #
    BatchDeleteTableInput = ::Struct.new(
      :catalog_id,
      :database_name,
      :tables_to_delete,
      :transaction_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute errors
    #   <p>A list of errors encountered in attempting to delete the specified tables.</p>
    #
    #   @return [Array<TableError>]
    #
    BatchDeleteTableOutput = ::Struct.new(
      :errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog where the tables reside. If none is provided, the Amazon Web Services account
    #         ID is used by default.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The database in the catalog in which the table resides. For Hive
    #         compatibility, this name is entirely lowercase.</p>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>The name of the table. For Hive compatibility,
    #         this name is entirely lowercase.</p>
    #
    #   @return [String]
    #
    # @!attribute version_ids
    #   <p>A list of the IDs of versions to be deleted. A <code>VersionId</code> is a string representation of an integer. Each version is incremented by 1.</p>
    #
    #   @return [Array<String>]
    #
    BatchDeleteTableVersionInput = ::Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :version_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute errors
    #   <p>A list of errors encountered while trying to delete
    #         the specified table versions.</p>
    #
    #   @return [Array<TableVersionError>]
    #
    BatchDeleteTableVersionOutput = ::Struct.new(
      :errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute names
    #   <p>A list of blueprint names.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute include_blueprint
    #   <p>Specifies whether or not to include the blueprint in the response.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute include_parameter_spec
    #   <p>Specifies whether or not to include the parameters, as a JSON string, for the blueprint in the response.</p>
    #
    #   @return [Boolean]
    #
    BatchGetBlueprintsInput = ::Struct.new(
      :names,
      :include_blueprint,
      :include_parameter_spec,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute blueprints
    #   <p>Returns a list of blueprint as a <code>Blueprints</code> object.</p>
    #
    #   @return [Array<Blueprint>]
    #
    # @!attribute missing_blueprints
    #   <p>Returns a list of <code>BlueprintNames</code> that were not found.</p>
    #
    #   @return [Array<String>]
    #
    BatchGetBlueprintsOutput = ::Struct.new(
      :blueprints,
      :missing_blueprints,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute crawler_names
    #   <p>A list of crawler names, which might be the names returned from the
    #           <code>ListCrawlers</code> operation.</p>
    #
    #   @return [Array<String>]
    #
    BatchGetCrawlersInput = ::Struct.new(
      :crawler_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute crawlers
    #   <p>A list of crawler definitions.</p>
    #
    #   @return [Array<Crawler>]
    #
    # @!attribute crawlers_not_found
    #   <p>A list of names of crawlers that were not found.</p>
    #
    #   @return [Array<String>]
    #
    BatchGetCrawlersOutput = ::Struct.new(
      :crawlers,
      :crawlers_not_found,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute names
    #   <p>A list of names of the custom patterns that you want to retrieve.</p>
    #
    #   @return [Array<String>]
    #
    BatchGetCustomEntityTypesInput = ::Struct.new(
      :names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute custom_entity_types
    #   <p>A list of <code>CustomEntityType</code> objects representing the custom patterns that have been created.</p>
    #
    #   @return [Array<CustomEntityType>]
    #
    # @!attribute custom_entity_types_not_found
    #   <p>A list of the names of custom patterns that were not found.</p>
    #
    #   @return [Array<String>]
    #
    BatchGetCustomEntityTypesOutput = ::Struct.new(
      :custom_entity_types,
      :custom_entity_types_not_found,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute dev_endpoint_names
    #   <p>The list of <code>DevEndpoint</code> names, which might be the names returned from the
    #           <code>ListDevEndpoint</code> operation.</p>
    #
    #   @return [Array<String>]
    #
    BatchGetDevEndpointsInput = ::Struct.new(
      :dev_endpoint_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute dev_endpoints
    #   <p>A list of <code>DevEndpoint</code> definitions.</p>
    #
    #   @return [Array<DevEndpoint>]
    #
    # @!attribute dev_endpoints_not_found
    #   <p>A list of <code>DevEndpoints</code> not found.</p>
    #
    #   @return [Array<String>]
    #
    BatchGetDevEndpointsOutput = ::Struct.new(
      :dev_endpoints,
      :dev_endpoints_not_found,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_names
    #   <p>A list of job names, which might be the names returned from the <code>ListJobs</code>
    #         operation.</p>
    #
    #   @return [Array<String>]
    #
    BatchGetJobsInput = ::Struct.new(
      :job_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute jobs
    #   <p>A list of job definitions.</p>
    #
    #   @return [Array<Job>]
    #
    # @!attribute jobs_not_found
    #   <p>A list of names of jobs not found.</p>
    #
    #   @return [Array<String>]
    #
    BatchGetJobsOutput = ::Struct.new(
      :jobs,
      :jobs_not_found,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog where the partitions in question reside.
    #         If none is supplied, the Amazon Web Services account ID is used by default.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The name of the catalog database where the partitions reside.</p>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>The name of the partitions' table.</p>
    #
    #   @return [String]
    #
    # @!attribute partitions_to_get
    #   <p>A list of partition values identifying the partitions to retrieve.</p>
    #
    #   @return [Array<PartitionValueList>]
    #
    BatchGetPartitionInput = ::Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :partitions_to_get,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute partitions
    #   <p>A list of the requested partitions.</p>
    #
    #   @return [Array<Partition>]
    #
    # @!attribute unprocessed_keys
    #   <p>A list of the partition values in the request for which partitions were not
    #         returned.</p>
    #
    #   @return [Array<PartitionValueList>]
    #
    BatchGetPartitionOutput = ::Struct.new(
      :partitions,
      :unprocessed_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute trigger_names
    #   <p>A list of trigger names, which may be the names returned from the <code>ListTriggers</code> operation.</p>
    #
    #   @return [Array<String>]
    #
    BatchGetTriggersInput = ::Struct.new(
      :trigger_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute triggers
    #   <p>A list of trigger definitions.</p>
    #
    #   @return [Array<Trigger>]
    #
    # @!attribute triggers_not_found
    #   <p>A list of names of triggers not found.</p>
    #
    #   @return [Array<String>]
    #
    BatchGetTriggersOutput = ::Struct.new(
      :triggers,
      :triggers_not_found,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute names
    #   <p>A list of workflow names, which may be the names returned from the <code>ListWorkflows</code> operation.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute include_graph
    #   <p>Specifies whether to include a graph when returning the workflow resource metadata.</p>
    #
    #   @return [Boolean]
    #
    BatchGetWorkflowsInput = ::Struct.new(
      :names,
      :include_graph,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workflows
    #   <p>A list of workflow resource metadata.</p>
    #
    #   @return [Array<Workflow>]
    #
    # @!attribute missing_workflows
    #   <p>A list of names of workflows not found.</p>
    #
    #   @return [Array<String>]
    #
    BatchGetWorkflowsOutput = ::Struct.new(
      :workflows,
      :missing_workflows,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Records an error that occurred when attempting to stop a
    #       specified job run.</p>
    #
    # @!attribute job_name
    #   <p>The name of the job definition that is used in the job run in question.</p>
    #
    #   @return [String]
    #
    # @!attribute job_run_id
    #   <p>The <code>JobRunId</code> of the job run in question.</p>
    #
    #   @return [String]
    #
    # @!attribute error_detail
    #   <p>Specifies details about the error that was encountered.</p>
    #
    #   @return [ErrorDetail]
    #
    BatchStopJobRunError = ::Struct.new(
      :job_name,
      :job_run_id,
      :error_detail,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_name
    #   <p>The name of the job definition for which to stop job runs.</p>
    #
    #   @return [String]
    #
    # @!attribute job_run_ids
    #   <p>A list of the <code>JobRunIds</code> that should be stopped for that job
    #         definition.</p>
    #
    #   @return [Array<String>]
    #
    BatchStopJobRunInput = ::Struct.new(
      :job_name,
      :job_run_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute successful_submissions
    #   <p>A list of the JobRuns that were successfully submitted for stopping.</p>
    #
    #   @return [Array<BatchStopJobRunSuccessfulSubmission>]
    #
    # @!attribute errors
    #   <p>A list of the errors that were encountered in trying to stop <code>JobRuns</code>,
    #         including the <code>JobRunId</code> for which each error was encountered and details about the
    #         error.</p>
    #
    #   @return [Array<BatchStopJobRunError>]
    #
    BatchStopJobRunOutput = ::Struct.new(
      :successful_submissions,
      :errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Records a successful request to stop a specified <code>JobRun</code>.</p>
    #
    # @!attribute job_name
    #   <p>The name of the job definition used in the job run that was stopped.</p>
    #
    #   @return [String]
    #
    # @!attribute job_run_id
    #   <p>The <code>JobRunId</code> of the job run that was stopped.</p>
    #
    #   @return [String]
    #
    BatchStopJobRunSuccessfulSubmission = ::Struct.new(
      :job_name,
      :job_run_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about a batch update partition error.</p>
    #
    # @!attribute partition_value_list
    #   <p>A list of values defining the partitions.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute error_detail
    #   <p>The details about the batch update partition error.</p>
    #
    #   @return [ErrorDetail]
    #
    BatchUpdatePartitionFailureEntry = ::Struct.new(
      :partition_value_list,
      :error_detail,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the catalog in which the partition is to be updated. Currently, this should be
    #         the Amazon Web Services account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The name of the metadata database in which the partition is
    #         to be updated.</p>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>The name of the metadata table in which the partition is to be updated.</p>
    #
    #   @return [String]
    #
    # @!attribute entries
    #   <p>A list of up to 100 <code>BatchUpdatePartitionRequestEntry</code> objects to update.</p>
    #
    #   @return [Array<BatchUpdatePartitionRequestEntry>]
    #
    BatchUpdatePartitionInput = ::Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :entries,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute errors
    #   <p>The errors encountered when trying to update the requested partitions. A list of <code>BatchUpdatePartitionFailureEntry</code> objects.</p>
    #
    #   @return [Array<BatchUpdatePartitionFailureEntry>]
    #
    BatchUpdatePartitionOutput = ::Struct.new(
      :errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure that contains the values and structure used to update a partition.</p>
    #
    # @!attribute partition_value_list
    #   <p>A list of values defining the partitions.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute partition_input
    #   <p>The structure used to update a partition.</p>
    #
    #   @return [PartitionInput]
    #
    BatchUpdatePartitionRequestEntry = ::Struct.new(
      :partition_value_list,
      :partition_input,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Defines column statistics supported for bit sequence data values.</p>
    #
    # @!attribute maximum_length
    #   <p>The size of the longest bit sequence in the column.</p>
    #
    #   @return [Integer]
    #
    # @!attribute average_length
    #   <p>The average bit sequence length in the column.</p>
    #
    #   @return [Float]
    #
    # @!attribute number_of_nulls
    #   <p>The number of null values in the column.</p>
    #
    #   @return [Integer]
    #
    BinaryColumnStatisticsData = ::Struct.new(
      :maximum_length,
      :average_length,
      :number_of_nulls,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.maximum_length ||= 0
        self.average_length ||= 0
        self.number_of_nulls ||= 0
      end

    end

    # <p>The details of a blueprint.</p>
    #
    # @!attribute name
    #   <p>The name of the blueprint.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the blueprint.</p>
    #
    #   @return [String]
    #
    # @!attribute created_on
    #   <p>The date and time the blueprint was registered.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_on
    #   <p>The date and time the blueprint was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute parameter_spec
    #   <p>A JSON string that indicates the list of parameter specifications for the blueprint.</p>
    #
    #   @return [String]
    #
    # @!attribute blueprint_location
    #   <p>Specifies the path in Amazon S3 where the blueprint is published.</p>
    #
    #   @return [String]
    #
    # @!attribute blueprint_service_location
    #   <p>Specifies a path in Amazon S3 where the blueprint is copied when you call <code>CreateBlueprint/UpdateBlueprint</code> to register the blueprint in Glue.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the blueprint registration.</p>
    #   	
    #   	        <ul>
    #               <li>
    #                  <p>Creating — The blueprint registration is in progress.</p>
    #               </li>
    #               <li>
    #                  <p>Active — The blueprint has been successfully registered.</p>
    #               </li>
    #               <li>
    #                  <p>Updating — An update to the blueprint registration is in progress.</p>
    #               </li>
    #               <li>
    #                  <p>Failed — The blueprint registration failed.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["CREATING", "ACTIVE", "UPDATING", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>An error message.</p>
    #
    #   @return [String]
    #
    # @!attribute last_active_definition
    #   <p>When there are multiple versions of a blueprint and the latest version has some errors, this attribute indicates the last successful blueprint definition that is available with the service.</p>
    #
    #   @return [LastActiveDefinition]
    #
    Blueprint = ::Struct.new(
      :name,
      :description,
      :created_on,
      :last_modified_on,
      :parameter_spec,
      :blueprint_location,
      :blueprint_service_location,
      :status,
      :error_message,
      :last_active_definition,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The details of a blueprint.</p>
    #
    # @!attribute blueprint_name
    #   <p>The name of the blueprint.</p>
    #
    #   @return [String]
    #
    # @!attribute run_id
    #   <p>The run ID for this blueprint.</p>
    #
    #   @return [String]
    #
    BlueprintDetails = ::Struct.new(
      :blueprint_name,
      :run_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The details of a blueprint run.</p>
    #
    # @!attribute blueprint_name
    #   <p>The name of the blueprint.</p>
    #
    #   @return [String]
    #
    # @!attribute run_id
    #   <p>The run ID for this blueprint run.</p>
    #
    #   @return [String]
    #
    # @!attribute workflow_name
    #   <p>The name of a workflow that is created as a result of a successful blueprint run. If a blueprint run has an error, there will not be a workflow created.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the blueprint run. Possible values are:</p>
    #   	
    #   	        <ul>
    #               <li>
    #                  <p>Running — The blueprint run is in progress.</p>
    #               </li>
    #               <li>
    #                  <p>Succeeded — The blueprint run completed successfully.</p>
    #               </li>
    #               <li>
    #                  <p>Failed — The blueprint run failed and rollback is complete.</p>
    #               </li>
    #               <li>
    #                  <p>Rolling Back — The blueprint run failed and rollback is in progress.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["RUNNING", "SUCCEEDED", "FAILED", "ROLLING_BACK"]
    #
    #   @return [String]
    #
    # @!attribute started_on
    #   <p>The date and time that the blueprint run started.</p>
    #
    #   @return [Time]
    #
    # @!attribute completed_on
    #   <p>The date and time that the blueprint run completed.</p>
    #
    #   @return [Time]
    #
    # @!attribute error_message
    #   <p>Indicates any errors that are seen while running the blueprint.</p>
    #
    #   @return [String]
    #
    # @!attribute rollback_error_message
    #   <p>If there are any errors while creating the entities of a workflow, we try to roll back the created entities until that point and delete them. This attribute indicates the errors seen while trying to delete the entities that are created.</p>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>The blueprint parameters as a string. You will have to provide a value for each key that is required from the parameter spec that is defined in the <code>Blueprint$ParameterSpec</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The role ARN. This role will be assumed by the Glue service and will be used to create the workflow and other entities of a workflow.</p>
    #
    #   @return [String]
    #
    BlueprintRun = ::Struct.new(
      :blueprint_name,
      :run_id,
      :workflow_name,
      :state,
      :started_on,
      :completed_on,
      :error_message,
      :rollback_error_message,
      :parameters,
      :role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for BlueprintRunState
    #
    module BlueprintRunState
      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      SUCCEEDED = "SUCCEEDED"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      ROLLING_BACK = "ROLLING_BACK"
    end

    # Includes enum constants for BlueprintStatus
    #
    module BlueprintStatus
      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      UPDATING = "UPDATING"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>Defines column statistics supported for Boolean data columns.</p>
    #
    # @!attribute number_of_trues
    #   <p>The number of true values in the column.</p>
    #
    #   @return [Integer]
    #
    # @!attribute number_of_falses
    #   <p>The number of false values in the column.</p>
    #
    #   @return [Integer]
    #
    # @!attribute number_of_nulls
    #   <p>The number of null values in the column.</p>
    #
    #   @return [Integer]
    #
    BooleanColumnStatisticsData = ::Struct.new(
      :number_of_trues,
      :number_of_falses,
      :number_of_nulls,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.number_of_trues ||= 0
        self.number_of_falses ||= 0
        self.number_of_nulls ||= 0
      end

    end

    # @!attribute transform_id
    #   <p>The unique identifier of the machine learning transform.</p>
    #
    #   @return [String]
    #
    # @!attribute task_run_id
    #   <p>A unique identifier for the task run.</p>
    #
    #   @return [String]
    #
    CancelMLTaskRunInput = ::Struct.new(
      :transform_id,
      :task_run_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute transform_id
    #   <p>The unique identifier of the machine learning transform.</p>
    #
    #   @return [String]
    #
    # @!attribute task_run_id
    #   <p>The unique identifier for the task run.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status for this run.</p>
    #
    #   Enum, one of: ["STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED", "TIMEOUT"]
    #
    #   @return [String]
    #
    CancelMLTaskRunOutput = ::Struct.new(
      :transform_id,
      :task_run_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute session_id
    #   <p>The Session ID of the statement to be cancelled.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The ID of the statement to be cancelled.</p>
    #
    #   @return [Integer]
    #
    # @!attribute request_origin
    #   <p>The origin of the request to cancel the statement.</p>
    #
    #   @return [String]
    #
    CancelStatementInput = ::Struct.new(
      :session_id,
      :id,
      :request_origin,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.id ||= 0
      end

    end

    CancelStatementOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CatalogEncryptionMode
    #
    module CatalogEncryptionMode
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      SSEKMS = "SSE-KMS"
    end

    # <p>Specifies a table definition in the Glue Data Catalog.</p>
    #
    # @!attribute database_name
    #   <p>The database in which the table metadata resides.</p>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>The name of the table in question.</p>
    #
    #   @return [String]
    #
    CatalogEntry = ::Struct.new(
      :database_name,
      :table_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure containing migration status information.</p>
    #
    # @!attribute import_completed
    #   <p>
    #               <code>True</code> if the migration has completed, or <code>False</code> otherwise.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute import_time
    #   <p>The time that the migration was started.</p>
    #
    #   @return [Time]
    #
    # @!attribute imported_by
    #   <p>The name of the person who initiated the migration.</p>
    #
    #   @return [String]
    #
    CatalogImportStatus = ::Struct.new(
      :import_completed,
      :import_time,
      :imported_by,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.import_completed ||= false
      end

    end

    # <p>Specifies an Apache Kafka data store in the Data Catalog.</p>
    #
    # @!attribute name
    #   <p>The name of the data store.</p>
    #
    #   @return [String]
    #
    # @!attribute window_size
    #   <p>The amount of time to spend processing each micro batch.</p>
    #
    #   @return [Integer]
    #
    # @!attribute detect_schema
    #   <p>Whether to automatically determine the schema from the incoming data.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute table
    #   <p>The name of the table in the database to read from.</p>
    #
    #   @return [String]
    #
    # @!attribute database
    #   <p>The name of the database to read from.</p>
    #
    #   @return [String]
    #
    # @!attribute streaming_options
    #   <p>Specifies the streaming options.</p>
    #
    #   @return [KafkaStreamingSourceOptions]
    #
    # @!attribute data_preview_options
    #   <p>Specifies options related to data preview for viewing a sample of your data.</p>
    #
    #   @return [StreamingDataPreviewOptions]
    #
    CatalogKafkaSource = ::Struct.new(
      :name,
      :window_size,
      :detect_schema,
      :table,
      :database,
      :streaming_options,
      :data_preview_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a Kinesis data source in the Glue Data Catalog.</p>
    #
    # @!attribute name
    #   <p>The name of the data source.</p>
    #
    #   @return [String]
    #
    # @!attribute window_size
    #   <p>The amount of time to spend processing each micro batch.</p>
    #
    #   @return [Integer]
    #
    # @!attribute detect_schema
    #   <p>Whether to automatically determine the schema from the incoming data.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute table
    #   <p>The name of the table in the database to read from.</p>
    #
    #   @return [String]
    #
    # @!attribute database
    #   <p>The name of the database to read from.</p>
    #
    #   @return [String]
    #
    # @!attribute streaming_options
    #   <p>Additional options for the Kinesis streaming data source.</p>
    #
    #   @return [KinesisStreamingSourceOptions]
    #
    # @!attribute data_preview_options
    #   <p>Additional options for data preview.</p>
    #
    #   @return [StreamingDataPreviewOptions]
    #
    CatalogKinesisSource = ::Struct.new(
      :name,
      :window_size,
      :detect_schema,
      :table,
      :database,
      :streaming_options,
      :data_preview_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A policy that specifies update behavior for the crawler.</p>
    #
    # @!attribute enable_update_catalog
    #   <p>Whether to use the specified update behavior when the crawler finds a changed schema.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute update_behavior
    #   <p>The update behavior when the crawler finds a changed schema.</p>
    #
    #   Enum, one of: ["UPDATE_IN_DATABASE", "LOG"]
    #
    #   @return [String]
    #
    CatalogSchemaChangePolicy = ::Struct.new(
      :enable_update_catalog,
      :update_behavior,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a data store in the Glue Data Catalog.</p>
    #
    # @!attribute name
    #   <p>The name of the data store.</p>
    #
    #   @return [String]
    #
    # @!attribute database
    #   <p>The name of the database to read from.</p>
    #
    #   @return [String]
    #
    # @!attribute table
    #   <p>The name of the table in the database to read from.</p>
    #
    #   @return [String]
    #
    CatalogSource = ::Struct.new(
      :name,
      :database,
      :table,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies an Glue Data Catalog target.</p>
    #
    # @!attribute database_name
    #   <p>The name of the database to be synchronized.</p>
    #
    #   @return [String]
    #
    # @!attribute tables
    #   <p>A list of the tables to be synchronized.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute connection_name
    #   <p>The name of the connection for an Amazon S3-backed Data Catalog table to be a target of the crawl when using a <code>Catalog</code> connection type paired with a <code>NETWORK</code> Connection type.</p>
    #
    #   @return [String]
    #
    CatalogTarget = ::Struct.new(
      :database_name,
      :tables,
      :connection_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute data_format
    #   <p>The data format of the schema definition. Currently <code>AVRO</code>, <code>JSON</code> and <code>PROTOBUF</code> are supported.</p>
    #
    #   Enum, one of: ["AVRO", "JSON", "PROTOBUF"]
    #
    #   @return [String]
    #
    # @!attribute schema_definition
    #   <p>The definition of the schema that has to be validated.</p>
    #
    #   @return [String]
    #
    CheckSchemaVersionValidityInput = ::Struct.new(
      :data_format,
      :schema_definition,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute valid
    #   <p>Return true, if the schema is valid and false otherwise.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute error
    #   <p>A validation failure error message.</p>
    #
    #   @return [String]
    #
    CheckSchemaVersionValidityOutput = ::Struct.new(
      :valid,
      :error,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.valid ||= false
      end

    end

    # <p>Classifiers are triggered during a crawl task. A classifier checks whether a given file is
    #       in a format it can handle. If it is, the classifier creates a schema in the form of a
    #         <code>StructType</code> object that matches that data format.</p>
    #          <p>You can use the standard classifiers that Glue provides, or you can write your own
    #       classifiers to best categorize your data sources and specify the appropriate schemas to use
    #       for them. A classifier can be a <code>grok</code> classifier, an <code>XML</code> classifier,
    #       a <code>JSON</code> classifier, or a custom <code>CSV</code> classifier, as specified in one
    #       of the fields in the <code>Classifier</code> object.</p>
    #
    # @!attribute grok_classifier
    #   <p>A classifier that uses <code>grok</code>.</p>
    #
    #   @return [GrokClassifier]
    #
    # @!attribute xml_classifier
    #   <p>A classifier for XML content.</p>
    #
    #   @return [XMLClassifier]
    #
    # @!attribute json_classifier
    #   <p>A classifier for JSON content.</p>
    #
    #   @return [JsonClassifier]
    #
    # @!attribute csv_classifier
    #   <p>A classifier for comma-separated values (CSV).</p>
    #
    #   @return [CsvClassifier]
    #
    Classifier = ::Struct.new(
      :grok_classifier,
      :xml_classifier,
      :json_classifier,
      :csv_classifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies how Amazon CloudWatch data should be encrypted.</p>
    #
    # @!attribute cloud_watch_encryption_mode
    #   <p>The encryption mode to use for CloudWatch data.</p>
    #
    #   Enum, one of: ["DISABLED", "SSE-KMS"]
    #
    #   @return [String]
    #
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key to be used to encrypt the data.</p>
    #
    #   @return [String]
    #
    CloudWatchEncryption = ::Struct.new(
      :cloud_watch_encryption_mode,
      :kms_key_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CloudWatchEncryptionMode
    #
    module CloudWatchEncryptionMode
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      SSEKMS = "SSE-KMS"
    end

    # <p>
    #             <code>CodeGenConfigurationNode</code> enumerates all valid Node types. One and only one of its member variables can be populated.</p>
    #
    # @!attribute athena_connector_source
    #   <p>Specifies a connector to an Amazon Athena data source.</p>
    #
    #   @return [AthenaConnectorSource]
    #
    # @!attribute jdbc_connector_source
    #   <p>Specifies a connector to a JDBC data source.</p>
    #
    #   @return [JDBCConnectorSource]
    #
    # @!attribute spark_connector_source
    #   <p>Specifies a connector to an Apache Spark data source.</p>
    #
    #   @return [SparkConnectorSource]
    #
    # @!attribute catalog_source
    #   <p>Specifies a data store in the Glue Data Catalog.</p>
    #
    #   @return [CatalogSource]
    #
    # @!attribute redshift_source
    #   <p>Specifies an Amazon Redshift data store.</p>
    #
    #   @return [RedshiftSource]
    #
    # @!attribute s3_catalog_source
    #   <p>Specifies an Amazon S3 data store in the Glue Data Catalog.</p>
    #
    #   @return [S3CatalogSource]
    #
    # @!attribute s3_csv_source
    #   <p>Specifies a command-separated value (CSV) data store stored in Amazon S3.</p>
    #
    #   @return [S3CsvSource]
    #
    # @!attribute s3_json_source
    #   <p>Specifies a JSON data store stored in Amazon S3.</p>
    #
    #   @return [S3JsonSource]
    #
    # @!attribute s3_parquet_source
    #   <p>Specifies an Apache Parquet data store stored in Amazon S3.</p>
    #
    #   @return [S3ParquetSource]
    #
    # @!attribute relational_catalog_source
    #   <p>Specifies a Relational database data source in the Glue Data Catalog.</p>
    #
    #   @return [RelationalCatalogSource]
    #
    # @!attribute dynamo_db_catalog_source
    #   <p>Specifies a DynamoDB data source in the Glue Data Catalog.</p>
    #
    #   @return [DynamoDBCatalogSource]
    #
    # @!attribute jdbc_connector_target
    #   <p>Specifies a data target that writes to Amazon S3 in Apache Parquet columnar storage.</p>
    #
    #   @return [JDBCConnectorTarget]
    #
    # @!attribute spark_connector_target
    #   <p>Specifies a target that uses an Apache Spark connector.</p>
    #
    #   @return [SparkConnectorTarget]
    #
    # @!attribute catalog_target
    #   <p>Specifies a target that uses a Glue Data Catalog table.</p>
    #
    #   @return [BasicCatalogTarget]
    #
    # @!attribute redshift_target
    #   <p>Specifies a target that uses Amazon Redshift.</p>
    #
    #   @return [RedshiftTarget]
    #
    # @!attribute s3_catalog_target
    #   <p>Specifies a data target that writes to Amazon S3 using the Glue Data Catalog.</p>
    #
    #   @return [S3CatalogTarget]
    #
    # @!attribute s3_glue_parquet_target
    #   <p>Specifies a data target that writes to Amazon S3 in Apache Parquet columnar storage.</p>
    #
    #   @return [S3GlueParquetTarget]
    #
    # @!attribute s3_direct_target
    #   <p>Specifies a data target that writes to Amazon S3.</p>
    #
    #   @return [S3DirectTarget]
    #
    # @!attribute apply_mapping
    #   <p>Specifies a transform that maps data property keys in the data source to data property keys in the data target. You can rename keys, modify the data types for keys, and choose which keys to drop from the dataset.</p>
    #
    #   @return [ApplyMapping]
    #
    # @!attribute select_fields
    #   <p>Specifies a transform that chooses the data property keys that you want to keep.</p>
    #
    #   @return [SelectFields]
    #
    # @!attribute drop_fields
    #   <p>Specifies a transform that chooses the data property keys that you want to drop.</p>
    #
    #   @return [DropFields]
    #
    # @!attribute rename_field
    #   <p>Specifies a transform that renames a single data property key.</p>
    #
    #   @return [RenameField]
    #
    # @!attribute spigot
    #   <p>Specifies a transform that writes samples of the data to an Amazon S3 bucket.</p>
    #
    #   @return [Spigot]
    #
    # @!attribute join
    #   <p>Specifies a transform that joins two datasets into one dataset using a comparison phrase on the specified data property keys. You can use inner, outer, left, right, left semi, and left anti joins.</p>
    #
    #   @return [Join]
    #
    # @!attribute split_fields
    #   <p>Specifies a transform that splits data property keys into two <code>DynamicFrames</code>. The output is a collection of <code>DynamicFrames</code>: one with selected data property keys, and one with the remaining data property keys.</p>
    #
    #   @return [SplitFields]
    #
    # @!attribute select_from_collection
    #   <p>Specifies a transform that chooses one <code>DynamicFrame</code> from a collection of <code>DynamicFrames</code>. The output is the selected <code>DynamicFrame</code>
    #            </p>
    #
    #   @return [SelectFromCollection]
    #
    # @!attribute fill_missing_values
    #   <p>Specifies a transform that locates records in the dataset that have missing values and adds a new field with a value determined by imputation. The input data set is used to train the machine learning model that determines what the missing value should be.</p>
    #
    #   @return [FillMissingValues]
    #
    # @!attribute filter
    #   <p>Specifies a transform that splits a dataset into two, based on a filter condition.</p>
    #
    #   @return [Filter]
    #
    # @!attribute custom_code
    #   <p>Specifies a transform that uses custom code you provide to perform the data transformation. The output is a collection of DynamicFrames.</p>
    #
    #   @return [CustomCode]
    #
    # @!attribute spark_sql
    #   <p>Specifies a transform where you enter a SQL query using Spark SQL syntax to transform the data. The output is a single <code>DynamicFrame</code>.</p>
    #
    #   @return [SparkSQL]
    #
    # @!attribute direct_kinesis_source
    #   <p>Specifies a direct Amazon Kinesis data source.</p>
    #
    #   @return [DirectKinesisSource]
    #
    # @!attribute direct_kafka_source
    #   <p>Specifies an Apache Kafka data store.</p>
    #
    #   @return [DirectKafkaSource]
    #
    # @!attribute catalog_kinesis_source
    #   <p>Specifies a Kinesis data source in the Glue Data Catalog.</p>
    #
    #   @return [CatalogKinesisSource]
    #
    # @!attribute catalog_kafka_source
    #   <p>Specifies an Apache Kafka data store in the Data Catalog.</p>
    #
    #   @return [CatalogKafkaSource]
    #
    # @!attribute drop_null_fields
    #   <p>Specifies a transform that removes columns from the dataset if all values in the column are 'null'. By default, Glue Studio will recognize null objects, but some values such as empty strings, strings that are "null", -1 integers or other placeholders such as zeros, are not automatically recognized as nulls.</p>
    #
    #   @return [DropNullFields]
    #
    # @!attribute merge
    #   <p>Specifies a transform that merges a <code>DynamicFrame</code> with a staging <code>DynamicFrame</code> based on the specified primary keys to identify records. Duplicate records (records with the same primary keys) are not de-duplicated. </p>
    #
    #   @return [Merge]
    #
    # @!attribute union
    #   <p>Specifies a transform that combines the rows from two or more datasets into a single result.</p>
    #
    #   @return [Union]
    #
    # @!attribute pii_detection
    #   <p>Specifies a transform that identifies, removes or masks PII data.</p>
    #
    #   @return [PIIDetection]
    #
    # @!attribute aggregate
    #   <p>Specifies a transform that groups rows by chosen fields and computes the aggregated value by specified function.</p>
    #
    #   @return [Aggregate]
    #
    # @!attribute drop_duplicates
    #   <p>Specifies a transform that removes rows of repeating data from a data set.</p>
    #
    #   @return [DropDuplicates]
    #
    # @!attribute governed_catalog_target
    #   <p>Specifies a data target that writes to a goverened catalog.</p>
    #
    #   @return [GovernedCatalogTarget]
    #
    # @!attribute governed_catalog_source
    #   <p>Specifies a data source in a goverened Data Catalog.</p>
    #
    #   @return [GovernedCatalogSource]
    #
    # @!attribute microsoft_sql_server_catalog_source
    #   <p>Specifies a Microsoft SQL server data source in the Glue Data Catalog.</p>
    #
    #   @return [MicrosoftSQLServerCatalogSource]
    #
    # @!attribute my_sql_catalog_source
    #   <p>Specifies a MySQL data source in the Glue Data Catalog.</p>
    #
    #   @return [MySQLCatalogSource]
    #
    # @!attribute oracle_sql_catalog_source
    #   <p>Specifies an Oracle data source in the Glue Data Catalog.</p>
    #
    #   @return [OracleSQLCatalogSource]
    #
    # @!attribute postgre_sql_catalog_source
    #   <p>Specifies a PostgresSQL data source in the Glue Data Catalog.</p>
    #
    #   @return [PostgreSQLCatalogSource]
    #
    # @!attribute microsoft_sql_server_catalog_target
    #   <p>Specifies a target that uses Microsoft SQL.</p>
    #
    #   @return [MicrosoftSQLServerCatalogTarget]
    #
    # @!attribute my_sql_catalog_target
    #   <p>Specifies a target that uses MySQL.</p>
    #
    #   @return [MySQLCatalogTarget]
    #
    # @!attribute oracle_sql_catalog_target
    #   <p>Specifies a target that uses Oracle SQL.</p>
    #
    #   @return [OracleSQLCatalogTarget]
    #
    # @!attribute postgre_sql_catalog_target
    #   <p>Specifies a target that uses Postgres SQL.</p>
    #
    #   @return [PostgreSQLCatalogTarget]
    #
    CodeGenConfigurationNode = ::Struct.new(
      :athena_connector_source,
      :jdbc_connector_source,
      :spark_connector_source,
      :catalog_source,
      :redshift_source,
      :s3_catalog_source,
      :s3_csv_source,
      :s3_json_source,
      :s3_parquet_source,
      :relational_catalog_source,
      :dynamo_db_catalog_source,
      :jdbc_connector_target,
      :spark_connector_target,
      :catalog_target,
      :redshift_target,
      :s3_catalog_target,
      :s3_glue_parquet_target,
      :s3_direct_target,
      :apply_mapping,
      :select_fields,
      :drop_fields,
      :rename_field,
      :spigot,
      :join,
      :split_fields,
      :select_from_collection,
      :fill_missing_values,
      :filter,
      :custom_code,
      :spark_sql,
      :direct_kinesis_source,
      :direct_kafka_source,
      :catalog_kinesis_source,
      :catalog_kafka_source,
      :drop_null_fields,
      :merge,
      :union,
      :pii_detection,
      :aggregate,
      :drop_duplicates,
      :governed_catalog_target,
      :governed_catalog_source,
      :microsoft_sql_server_catalog_source,
      :my_sql_catalog_source,
      :oracle_sql_catalog_source,
      :postgre_sql_catalog_source,
      :microsoft_sql_server_catalog_target,
      :my_sql_catalog_target,
      :oracle_sql_catalog_target,
      :postgre_sql_catalog_target,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a directional edge in a directed acyclic graph (DAG).</p>
    #
    # @!attribute source
    #   <p>The ID of the node at which the edge starts.</p>
    #
    #   @return [String]
    #
    # @!attribute target
    #   <p>The ID of the node at which the edge ends.</p>
    #
    #   @return [String]
    #
    # @!attribute target_parameter
    #   <p>The target of the edge.</p>
    #
    #   @return [String]
    #
    CodeGenEdge = ::Struct.new(
      :source,
      :target,
      :target_parameter,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a node in a directed acyclic graph (DAG)</p>
    #
    # @!attribute id
    #   <p>A node identifier that is unique within the node's graph.</p>
    #
    #   @return [String]
    #
    # @!attribute node_type
    #   <p>The type of node that this is.</p>
    #
    #   @return [String]
    #
    # @!attribute args
    #   <p>Properties of the node, in the form of name-value pairs.</p>
    #
    #   @return [Array<CodeGenNodeArg>]
    #
    # @!attribute line_number
    #   <p>The line number of the node.</p>
    #
    #   @return [Integer]
    #
    CodeGenNode = ::Struct.new(
      :id,
      :node_type,
      :args,
      :line_number,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.line_number ||= 0
      end

    end

    # <p>An argument or property of a node.</p>
    #
    # @!attribute name
    #   <p>The name of the argument or property.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the argument or property.</p>
    #
    #   @return [String]
    #
    # @!attribute param
    #   <p>True if the value is used as a parameter.</p>
    #
    #   @return [Boolean]
    #
    CodeGenNodeArg = ::Struct.new(
      :name,
      :value,
      :param,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.param ||= false
      end

    end

    # <p>A column in a <code>Table</code>.</p>
    #
    # @!attribute name
    #   <p>The name of the <code>Column</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The data type of the <code>Column</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute comment
    #   <p>A free-form text comment.</p>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>These key-value pairs define properties associated with the column.</p>
    #
    #   @return [Hash<String, String>]
    #
    Column = ::Struct.new(
      :name,
      :type,
      :comment,
      :parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Encapsulates a column name that failed and the reason for failure.</p>
    #
    # @!attribute column_name
    #   <p>The name of the column that failed.</p>
    #
    #   @return [String]
    #
    # @!attribute error
    #   <p>An error message with the reason for the failure of an operation.</p>
    #
    #   @return [ErrorDetail]
    #
    ColumnError = ::Struct.new(
      :column_name,
      :error,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure containing the column name and column importance score for a column. </p>
    # 	
    # 	        <p>Column importance helps you understand how columns contribute to your model, by identifying which columns in your records are more important than others.</p>
    #
    # @!attribute column_name
    #   <p>The name of a column.</p>
    #
    #   @return [String]
    #
    # @!attribute importance
    #   <p>The column importance score for the column, as a decimal.</p>
    #
    #   @return [Float]
    #
    ColumnImportance = ::Struct.new(
      :column_name,
      :importance,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute column_name
    #
    #   @return [String]
    #
    # @!attribute row_filter_expression
    #
    #   @return [String]
    #
    ColumnRowFilter = ::Struct.new(
      :column_name,
      :row_filter_expression,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the generated column-level statistics for a table or partition.</p>
    #
    # @!attribute column_name
    #   <p>Name of column which statistics belong to.</p>
    #
    #   @return [String]
    #
    # @!attribute column_type
    #   <p>The data type of the column.</p>
    #
    #   @return [String]
    #
    # @!attribute analyzed_time
    #   <p>The timestamp of when column statistics were generated.</p>
    #
    #   @return [Time]
    #
    # @!attribute statistics_data
    #   <p>A <code>ColumnStatisticData</code> object that contains the statistics data values.</p>
    #
    #   @return [ColumnStatisticsData]
    #
    ColumnStatistics = ::Struct.new(
      :column_name,
      :column_type,
      :analyzed_time,
      :statistics_data,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the individual types of column statistics data. Only one data object should be set and indicated by the <code>Type</code> attribute.</p>
    #
    # @!attribute type
    #   <p>The type of column statistics data.</p>
    #
    #   Enum, one of: ["BOOLEAN", "DATE", "DECIMAL", "DOUBLE", "LONG", "STRING", "BINARY"]
    #
    #   @return [String]
    #
    # @!attribute boolean_column_statistics_data
    #   <p>Boolean column statistics data.</p>
    #
    #   @return [BooleanColumnStatisticsData]
    #
    # @!attribute date_column_statistics_data
    #   <p>Date column statistics data.</p>
    #
    #   @return [DateColumnStatisticsData]
    #
    # @!attribute decimal_column_statistics_data
    #   <p>Decimal column statistics data.</p>
    #
    #   @return [DecimalColumnStatisticsData]
    #
    # @!attribute double_column_statistics_data
    #   <p>Double column statistics data.</p>
    #
    #   @return [DoubleColumnStatisticsData]
    #
    # @!attribute long_column_statistics_data
    #   <p>Long column statistics data.</p>
    #
    #   @return [LongColumnStatisticsData]
    #
    # @!attribute string_column_statistics_data
    #   <p>String column statistics data.</p>
    #
    #   @return [StringColumnStatisticsData]
    #
    # @!attribute binary_column_statistics_data
    #   <p>Binary column statistics data.</p>
    #
    #   @return [BinaryColumnStatisticsData]
    #
    ColumnStatisticsData = ::Struct.new(
      :type,
      :boolean_column_statistics_data,
      :date_column_statistics_data,
      :decimal_column_statistics_data,
      :double_column_statistics_data,
      :long_column_statistics_data,
      :string_column_statistics_data,
      :binary_column_statistics_data,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Encapsulates a <code>ColumnStatistics</code> object that failed and the reason for failure.</p>
    #
    # @!attribute column_statistics
    #   <p>The <code>ColumnStatistics</code> of the column.</p>
    #
    #   @return [ColumnStatistics]
    #
    # @!attribute error
    #   <p>An error message with the reason for the failure of an operation.</p>
    #
    #   @return [ErrorDetail]
    #
    ColumnStatisticsError = ::Struct.new(
      :column_statistics,
      :error,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ColumnStatisticsType
    #
    module ColumnStatisticsType
      # No documentation available.
      #
      BOOLEAN = "BOOLEAN"

      # No documentation available.
      #
      DATE = "DATE"

      # No documentation available.
      #
      DECIMAL = "DECIMAL"

      # No documentation available.
      #
      DOUBLE = "DOUBLE"

      # No documentation available.
      #
      LONG = "LONG"

      # No documentation available.
      #
      STRING = "STRING"

      # No documentation available.
      #
      BINARY = "BINARY"
    end

    # Includes enum constants for Comparator
    #
    module Comparator
      # No documentation available.
      #
      EQUALS = "EQUALS"

      # No documentation available.
      #
      GREATER_THAN = "GREATER_THAN"

      # No documentation available.
      #
      LESS_THAN = "LESS_THAN"

      # No documentation available.
      #
      GREATER_THAN_EQUALS = "GREATER_THAN_EQUALS"

      # No documentation available.
      #
      LESS_THAN_EQUALS = "LESS_THAN_EQUALS"
    end

    # Includes enum constants for Compatibility
    #
    module Compatibility
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      BACKWARD = "BACKWARD"

      # No documentation available.
      #
      BACKWARD_ALL = "BACKWARD_ALL"

      # No documentation available.
      #
      FORWARD = "FORWARD"

      # No documentation available.
      #
      FORWARD_ALL = "FORWARD_ALL"

      # No documentation available.
      #
      FULL = "FULL"

      # No documentation available.
      #
      FULL_ALL = "FULL_ALL"
    end

    # Includes enum constants for CompressionType
    #
    module CompressionType
      # No documentation available.
      #
      GZIP = "gzip"

      # No documentation available.
      #
      BZIP2 = "bzip2"
    end

    # <p>Two processes are trying to modify a resource simultaneously.</p>
    #
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #
    #   @return [String]
    #
    ConcurrentModificationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Too many jobs are being run concurrently.</p>
    #
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #
    #   @return [String]
    #
    ConcurrentRunsExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Defines a condition under which a trigger fires.</p>
    #
    # @!attribute logical_operator
    #   <p>A logical operator.</p>
    #
    #   Enum, one of: ["EQUALS"]
    #
    #   @return [String]
    #
    # @!attribute job_name
    #   <p>The name of the job whose <code>JobRuns</code> this condition applies to, and on which
    #         this trigger waits.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The condition state. Currently, the only job states that a trigger can listen for are <code>SUCCEEDED</code>, <code>STOPPED</code>, <code>FAILED</code>, and <code>TIMEOUT</code>. The only crawler states that a trigger can listen for are <code>SUCCEEDED</code>, <code>FAILED</code>, and <code>CANCELLED</code>.</p>
    #
    #   Enum, one of: ["STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED", "TIMEOUT"]
    #
    #   @return [String]
    #
    # @!attribute crawler_name
    #   <p>The name of the crawler to which this condition applies.</p>
    #
    #   @return [String]
    #
    # @!attribute crawl_state
    #   <p>The state of the crawler to which this condition applies.</p>
    #
    #   Enum, one of: ["RUNNING", "CANCELLING", "CANCELLED", "SUCCEEDED", "FAILED"]
    #
    #   @return [String]
    #
    Condition = ::Struct.new(
      :logical_operator,
      :job_name,
      :state,
      :crawler_name,
      :crawl_state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A specified condition was not satisfied.</p>
    #
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #
    #   @return [String]
    #
    ConditionCheckFailureException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The <code>CreatePartitions</code> API was called on a table that has indexes enabled.	</p>
    #
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #
    #   @return [String]
    #
    ConflictException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The confusion matrix shows you what your transform is predicting accurately and what types of errors it is making.</p>
    # 	
    # 	        <p>For more information, see <a href="https://en.wikipedia.org/wiki/Confusion_matrix">Confusion matrix</a> in Wikipedia.</p>
    #
    # @!attribute num_true_positives
    #   <p>The number of matches in the data that the transform correctly found, in the confusion matrix for your transform.</p>
    #
    #   @return [Integer]
    #
    # @!attribute num_false_positives
    #   <p>The number of nonmatches in the data that the transform incorrectly classified as a match,
    #         in the confusion matrix for your transform.</p>
    #
    #   @return [Integer]
    #
    # @!attribute num_true_negatives
    #   <p>The number of nonmatches in the data that the transform correctly rejected, in the
    #         confusion matrix for your transform.</p>
    #
    #   @return [Integer]
    #
    # @!attribute num_false_negatives
    #   <p>The number of matches in the data that the transform didn't find, in the confusion matrix for your transform.</p>
    #
    #   @return [Integer]
    #
    ConfusionMatrix = ::Struct.new(
      :num_true_positives,
      :num_false_positives,
      :num_true_negatives,
      :num_false_negatives,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Defines a connection to a data source.</p>
    #
    # @!attribute name
    #   <p>The name of the connection definition.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_type
    #   <p>The type of the connection. Currently, SFTP is not supported.</p>
    #
    #   Enum, one of: ["JDBC", "SFTP", "MONGODB", "KAFKA", "NETWORK", "MARKETPLACE", "CUSTOM"]
    #
    #   @return [String]
    #
    # @!attribute match_criteria
    #   <p>A list of criteria that can be used in selecting this connection.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute connection_properties
    #   <p>These key-value pairs define parameters for the connection:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>HOST</code> - The host URI: either the
    #           fully qualified domain name (FQDN) or the IPv4 address of
    #           the database host.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PORT</code> - The port number, between
    #           1024 and 65535, of the port on which the database host is
    #           listening for database connections.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>USER_NAME</code> -  The name under which
    #           to log in to the database. The value string for <code>USER_NAME</code> is "<code>USERNAME</code>".</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PASSWORD</code> - A password,
    #           if one is used, for the user name.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ENCRYPTED_PASSWORD</code> - When you enable connection password protection by setting <code>ConnectionPasswordEncryption</code> in the Data Catalog encryption settings, this field stores the encrypted password.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>JDBC_DRIVER_JAR_URI</code> - The Amazon Simple Storage Service (Amazon S3) path of the
    #             JAR file that contains the JDBC driver to use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>JDBC_DRIVER_CLASS_NAME</code> - The class name of the JDBC driver to use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>JDBC_ENGINE</code> - The name of the JDBC engine to use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>JDBC_ENGINE_VERSION</code> - The version of the JDBC engine to use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CONFIG_FILES</code> - (Reserved for future use.)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INSTANCE_ID</code> - The instance ID to use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>JDBC_CONNECTION_URL</code> - The URL for connecting to a JDBC data source.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>JDBC_ENFORCE_SSL</code> - A Boolean string (true, false) specifying whether Secure
    #             Sockets Layer (SSL) with hostname matching is enforced for the JDBC connection on the
    #             client. The default is false.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CUSTOM_JDBC_CERT</code> - An Amazon S3 location specifying the customer's root certificate. Glue uses this root certificate to validate the customer’s certificate when connecting to the customer database. Glue only handles X.509 certificates. The certificate provided must be DER-encoded and supplied in Base64 encoding PEM format.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SKIP_CUSTOM_JDBC_CERT_VALIDATION</code> - By default, this is <code>false</code>. Glue validates the Signature algorithm and Subject Public Key Algorithm for the customer certificate. The only permitted algorithms for the Signature algorithm are SHA256withRSA, SHA384withRSA or SHA512withRSA. For the Subject Public Key Algorithm, the key length must be at least 2048. You can set the value of this property to <code>true</code> to skip Glue’s validation of the customer certificate.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CUSTOM_JDBC_CERT_STRING</code> - A custom JDBC certificate string which is used for domain match or distinguished name match to prevent a man-in-the-middle attack. In Oracle database, this is used as the <code>SSL_SERVER_CERT_DN</code>; in Microsoft SQL Server, this is used as the <code>hostNameInCertificate</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CONNECTION_URL</code> - The URL for connecting to a general (non-JDBC) data source.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KAFKA_BOOTSTRAP_SERVERS</code> - A comma-separated list of host and port pairs that are the addresses of the Apache Kafka brokers in a Kafka cluster to which a Kafka client will connect to and bootstrap itself.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KAFKA_SSL_ENABLED</code> - Whether to enable or disable SSL on an Apache Kafka connection. Default value is "true".</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KAFKA_CUSTOM_CERT</code> - The Amazon S3 URL for the private CA cert file (.pem format). The default is an empty string.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KAFKA_SKIP_CUSTOM_CERT_VALIDATION</code> - Whether to skip the validation of the CA cert file or not. Glue validates for three algorithms: SHA256withRSA, SHA384withRSA and SHA512withRSA. Default value is "false".</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SECRET_ID</code> - The secret ID used for the secret manager of credentials.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CONNECTOR_URL</code> - The connector URL for a MARKETPLACE or CUSTOM connection.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CONNECTOR_TYPE</code> - The connector type for a MARKETPLACE or CUSTOM connection.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CONNECTOR_CLASS_NAME</code> - The connector class name for a MARKETPLACE or CUSTOM connection.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KAFKA_CLIENT_KEYSTORE</code> - The Amazon S3 location of the client keystore file for Kafka client side authentication (Optional).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KAFKA_CLIENT_KEYSTORE_PASSWORD</code> - The password to access the provided keystore (Optional).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KAFKA_CLIENT_KEY_PASSWORD</code> - A keystore can consist of multiple keys, so this is the password to access the client key to be used with the Kafka server side key (Optional).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ENCRYPTED_KAFKA_CLIENT_KEYSTORE_PASSWORD</code> - The encrypted version of the Kafka client keystore password (if the user has the Glue encrypt passwords setting selected).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ENCRYPTED_KAFKA_CLIENT_KEY_PASSWORD</code> - The encrypted version of the Kafka client key password (if the user has the Glue encrypt passwords setting selected).</p>
    #               </li>
    #            </ul>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute physical_connection_requirements
    #   <p>A map of physical connection requirements, such as virtual private cloud (VPC) and
    #           <code>SecurityGroup</code>, that are needed to make this connection successfully.</p>
    #
    #   @return [PhysicalConnectionRequirements]
    #
    # @!attribute creation_time
    #   <p>The time that this connection definition was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_time
    #   <p>The last time that this connection definition was updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_by
    #   <p>The user, group, or role that last updated this connection definition.</p>
    #
    #   @return [String]
    #
    Connection = ::Struct.new(
      :name,
      :description,
      :connection_type,
      :match_criteria,
      :connection_properties,
      :physical_connection_requirements,
      :creation_time,
      :last_updated_time,
      :last_updated_by,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure that is used to specify a connection to create or update.</p>
    #
    # @!attribute name
    #   <p>The name of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_type
    #   <p>The type of the connection. Currently, these types are supported:</p>
    #   	        <ul>
    #               <li>
    #                  <p>
    #                     <code>JDBC</code> - Designates a connection to a database through Java Database Connectivity (JDBC).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KAFKA</code> - Designates a connection to an Apache Kafka streaming platform.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MONGODB</code> - Designates a connection to a MongoDB document database.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NETWORK</code> - Designates a network connection to a data source within an Amazon Virtual Private Cloud environment (Amazon VPC).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MARKETPLACE</code> - Uses configuration settings contained in a connector purchased from Amazon Web Services Marketplace to read from and write to data stores that are not natively supported by Glue.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CUSTOM</code> - Uses configuration settings contained in a custom connector to read from and write to data stores that are not natively supported by Glue.</p>
    #               </li>
    #            </ul>
    #            <p>SFTP is not supported.</p>
    #
    #   Enum, one of: ["JDBC", "SFTP", "MONGODB", "KAFKA", "NETWORK", "MARKETPLACE", "CUSTOM"]
    #
    #   @return [String]
    #
    # @!attribute match_criteria
    #   <p>A list of criteria that can be used in selecting this connection.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute connection_properties
    #   <p>These key-value pairs define parameters for the connection.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute physical_connection_requirements
    #   <p>A map of physical connection requirements, such as virtual private cloud (VPC) and
    #           <code>SecurityGroup</code>, that are needed to successfully make this connection.</p>
    #
    #   @return [PhysicalConnectionRequirements]
    #
    ConnectionInput = ::Struct.new(
      :name,
      :description,
      :connection_type,
      :match_criteria,
      :connection_properties,
      :physical_connection_requirements,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The data structure used by the Data Catalog to encrypt the password as part of
    #         <code>CreateConnection</code> or <code>UpdateConnection</code> and store it in the
    #         <code>ENCRYPTED_PASSWORD</code> field in the connection properties. You can enable catalog
    #       encryption or only password encryption.</p>
    # 	
    # 	        <p>When a <code>CreationConnection</code> request arrives containing a password, the Data
    #       Catalog first encrypts the password using your KMS key. It then encrypts the whole
    #       connection object again if catalog encryption is also enabled.</p>
    #
    #          <p>This encryption requires that you set KMS key permissions to enable or restrict access
    #       on the password key according to your security requirements. For example, you might want only
    #       administrators to have decrypt permission on the password key.</p>
    #
    # @!attribute return_connection_password_encrypted
    #   <p>When the <code>ReturnConnectionPasswordEncrypted</code> flag is set to "true", passwords remain encrypted in the responses of <code>GetConnection</code> and <code>GetConnections</code>. This encryption takes effect independently from catalog encryption. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute aws_kms_key_id
    #   <p>An KMS key that is used to encrypt the connection password. </p>
    #   	
    #            <p>If connection password protection is enabled, the caller of <code>CreateConnection</code>
    #         and <code>UpdateConnection</code> needs at least <code>kms:Encrypt</code> permission on the
    #         specified KMS key, to encrypt passwords before storing them in the Data Catalog. </p>
    #
    #   	        <p>You can set the decrypt permission to enable or restrict access on the password key according to your security requirements.</p>
    #
    #   @return [String]
    #
    ConnectionPasswordEncryption = ::Struct.new(
      :return_connection_password_encrypted,
      :aws_kms_key_id,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.return_connection_password_encrypted ||= false
      end

    end

    # Includes enum constants for ConnectionPropertyKey
    #
    module ConnectionPropertyKey
      # No documentation available.
      #
      HOST = "HOST"

      # No documentation available.
      #
      PORT = "PORT"

      # No documentation available.
      #
      USER_NAME = "USERNAME"

      # No documentation available.
      #
      PASSWORD = "PASSWORD"

      # No documentation available.
      #
      ENCRYPTED_PASSWORD = "ENCRYPTED_PASSWORD"

      # No documentation available.
      #
      JDBC_DRIVER_JAR_URI = "JDBC_DRIVER_JAR_URI"

      # No documentation available.
      #
      JDBC_DRIVER_CLASS_NAME = "JDBC_DRIVER_CLASS_NAME"

      # No documentation available.
      #
      JDBC_ENGINE = "JDBC_ENGINE"

      # No documentation available.
      #
      JDBC_ENGINE_VERSION = "JDBC_ENGINE_VERSION"

      # No documentation available.
      #
      CONFIG_FILES = "CONFIG_FILES"

      # No documentation available.
      #
      INSTANCE_ID = "INSTANCE_ID"

      # No documentation available.
      #
      JDBC_CONNECTION_URL = "JDBC_CONNECTION_URL"

      # No documentation available.
      #
      JDBC_ENFORCE_SSL = "JDBC_ENFORCE_SSL"

      # No documentation available.
      #
      CUSTOM_JDBC_CERT = "CUSTOM_JDBC_CERT"

      # No documentation available.
      #
      SKIP_CUSTOM_JDBC_CERT_VALIDATION = "SKIP_CUSTOM_JDBC_CERT_VALIDATION"

      # No documentation available.
      #
      CUSTOM_JDBC_CERT_STRING = "CUSTOM_JDBC_CERT_STRING"

      # No documentation available.
      #
      CONNECTION_URL = "CONNECTION_URL"

      # No documentation available.
      #
      KAFKA_BOOTSTRAP_SERVERS = "KAFKA_BOOTSTRAP_SERVERS"

      # No documentation available.
      #
      KAFKA_SSL_ENABLED = "KAFKA_SSL_ENABLED"

      # No documentation available.
      #
      KAFKA_CUSTOM_CERT = "KAFKA_CUSTOM_CERT"

      # No documentation available.
      #
      KAFKA_SKIP_CUSTOM_CERT_VALIDATION = "KAFKA_SKIP_CUSTOM_CERT_VALIDATION"

      # No documentation available.
      #
      KAFKA_CLIENT_KEYSTORE = "KAFKA_CLIENT_KEYSTORE"

      # No documentation available.
      #
      KAFKA_CLIENT_KEYSTORE_PASSWORD = "KAFKA_CLIENT_KEYSTORE_PASSWORD"

      # No documentation available.
      #
      KAFKA_CLIENT_KEY_PASSWORD = "KAFKA_CLIENT_KEY_PASSWORD"

      # No documentation available.
      #
      ENCRYPTED_KAFKA_CLIENT_KEYSTORE_PASSWORD = "ENCRYPTED_KAFKA_CLIENT_KEYSTORE_PASSWORD"

      # No documentation available.
      #
      ENCRYPTED_KAFKA_CLIENT_KEY_PASSWORD = "ENCRYPTED_KAFKA_CLIENT_KEY_PASSWORD"

      # No documentation available.
      #
      SECRET_ID = "SECRET_ID"

      # No documentation available.
      #
      CONNECTOR_URL = "CONNECTOR_URL"

      # No documentation available.
      #
      CONNECTOR_TYPE = "CONNECTOR_TYPE"

      # No documentation available.
      #
      CONNECTOR_CLASS_NAME = "CONNECTOR_CLASS_NAME"
    end

    # Includes enum constants for ConnectionType
    #
    module ConnectionType
      # No documentation available.
      #
      JDBC = "JDBC"

      # No documentation available.
      #
      SFTP = "SFTP"

      # No documentation available.
      #
      MONGODB = "MONGODB"

      # No documentation available.
      #
      KAFKA = "KAFKA"

      # No documentation available.
      #
      NETWORK = "NETWORK"

      # No documentation available.
      #
      MARKETPLACE = "MARKETPLACE"

      # No documentation available.
      #
      CUSTOM = "CUSTOM"
    end

    # <p>Specifies the connections used by a job.</p>
    #
    # @!attribute connections
    #   <p>A list of connections used by the job.</p>
    #
    #   @return [Array<String>]
    #
    ConnectionsList = ::Struct.new(
      :connections,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The details of a crawl in the workflow.</p>
    #
    # @!attribute state
    #   <p>The state of the crawler.</p>
    #
    #   Enum, one of: ["RUNNING", "CANCELLING", "CANCELLED", "SUCCEEDED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute started_on
    #   <p>The date and time on which the crawl started.</p>
    #
    #   @return [Time]
    #
    # @!attribute completed_on
    #   <p>The date and time on which the crawl completed.</p>
    #
    #   @return [Time]
    #
    # @!attribute error_message
    #   <p>The error message associated with the crawl.</p>
    #
    #   @return [String]
    #
    # @!attribute log_group
    #   <p>The log group associated with the crawl.</p>
    #
    #   @return [String]
    #
    # @!attribute log_stream
    #   <p>The log stream associated with the crawl.</p>
    #
    #   @return [String]
    #
    Crawl = ::Struct.new(
      :state,
      :started_on,
      :completed_on,
      :error_message,
      :log_group,
      :log_stream,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CrawlState
    #
    module CrawlState
      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      CANCELLING = "CANCELLING"

      # No documentation available.
      #
      CANCELLED = "CANCELLED"

      # No documentation available.
      #
      SUCCEEDED = "SUCCEEDED"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>Specifies a crawler program that examines a data source and uses classifiers to try to
    #       determine its schema. If successful, the crawler records metadata concerning the data source
    #       in the Glue Data Catalog.</p>
    #
    # @!attribute name
    #   <p>The name of the crawler.</p>
    #
    #   @return [String]
    #
    # @!attribute role
    #   <p>The Amazon Resource Name (ARN) of an IAM role that's used to access customer resources,
    #         such as Amazon Simple Storage Service (Amazon S3) data.</p>
    #
    #   @return [String]
    #
    # @!attribute targets
    #   <p>A collection of targets to crawl.</p>
    #
    #   @return [CrawlerTargets]
    #
    # @!attribute database_name
    #   <p>The name of the database in which the crawler's output is stored.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the crawler.</p>
    #
    #   @return [String]
    #
    # @!attribute classifiers
    #   <p>A list of UTF-8 strings that specify the custom classifiers that are associated
    #        with the crawler.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute recrawl_policy
    #   <p>A policy that specifies whether to crawl the entire dataset again, or to crawl only folders that were added since the last crawler run.</p>
    #
    #   @return [RecrawlPolicy]
    #
    # @!attribute schema_change_policy
    #   <p>The policy that specifies update and delete behaviors for the crawler.</p>
    #
    #   @return [SchemaChangePolicy]
    #
    # @!attribute lineage_configuration
    #   <p>A configuration that specifies whether data lineage is enabled for the crawler.</p>
    #
    #   @return [LineageConfiguration]
    #
    # @!attribute state
    #   <p>Indicates whether the crawler is running, or whether a run is pending.</p>
    #
    #   Enum, one of: ["READY", "RUNNING", "STOPPING"]
    #
    #   @return [String]
    #
    # @!attribute table_prefix
    #   <p>The prefix added to the names of tables that are created.</p>
    #
    #   @return [String]
    #
    # @!attribute schedule
    #   <p>For scheduled crawlers, the schedule when the crawler runs.</p>
    #
    #   @return [Schedule]
    #
    # @!attribute crawl_elapsed_time
    #   <p>If the crawler is running, contains the total time elapsed since the last crawl
    #         began.</p>
    #
    #   @return [Integer]
    #
    # @!attribute creation_time
    #   <p>The time that the crawler was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated
    #   <p>The time that the crawler was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_crawl
    #   <p>The status of the last crawl, and potentially error information if
    #         an error occurred.</p>
    #
    #   @return [LastCrawlInfo]
    #
    # @!attribute version
    #   <p>The version of the crawler.</p>
    #
    #   @return [Integer]
    #
    # @!attribute configuration
    #   <p>Crawler configuration information. This versioned JSON string allows users to specify
    #         aspects of a crawler's behavior. For more information, see <a href="https://docs.aws.amazon.com/glue/latest/dg/define-crawler.html crawler-data-stores-exclude">Include and Exclude
    #           Patterns</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute crawler_security_configuration
    #   <p>The name of the <code>SecurityConfiguration</code> structure to be used by this
    #         crawler.</p>
    #
    #   @return [String]
    #
    # @!attribute lake_formation_configuration
    #   <p>Specifies whether the crawler should use AWS Lake Formation credentials for the crawler instead of the IAM role credentials.</p>
    #
    #   @return [LakeFormationConfiguration]
    #
    Crawler = ::Struct.new(
      :name,
      :role,
      :targets,
      :database_name,
      :description,
      :classifiers,
      :recrawl_policy,
      :schema_change_policy,
      :lineage_configuration,
      :state,
      :table_prefix,
      :schedule,
      :crawl_elapsed_time,
      :creation_time,
      :last_updated,
      :last_crawl,
      :version,
      :configuration,
      :crawler_security_configuration,
      :lake_formation_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.crawl_elapsed_time ||= 0
        self.version ||= 0
      end

    end

    # Includes enum constants for CrawlerLineageSettings
    #
    module CrawlerLineageSettings
      # No documentation available.
      #
      ENABLE = "ENABLE"

      # No documentation available.
      #
      DISABLE = "DISABLE"
    end

    # <p>Metrics for a specified crawler.</p>
    #
    # @!attribute crawler_name
    #   <p>The name of the crawler.</p>
    #
    #   @return [String]
    #
    # @!attribute time_left_seconds
    #   <p>The estimated time left to complete a running crawl.</p>
    #
    #   @return [Float]
    #
    # @!attribute still_estimating
    #   <p>True if the crawler is still estimating how long it will take to complete this run.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute last_runtime_seconds
    #   <p>The duration of the crawler's most recent run, in seconds.</p>
    #
    #   @return [Float]
    #
    # @!attribute median_runtime_seconds
    #   <p>The median duration of this crawler's runs, in seconds.</p>
    #
    #   @return [Float]
    #
    # @!attribute tables_created
    #   <p>The number of tables created by this crawler.</p>
    #
    #   @return [Integer]
    #
    # @!attribute tables_updated
    #   <p>The number of tables updated by this crawler.</p>
    #
    #   @return [Integer]
    #
    # @!attribute tables_deleted
    #   <p>The number of tables deleted by this crawler.</p>
    #
    #   @return [Integer]
    #
    CrawlerMetrics = ::Struct.new(
      :crawler_name,
      :time_left_seconds,
      :still_estimating,
      :last_runtime_seconds,
      :median_runtime_seconds,
      :tables_created,
      :tables_updated,
      :tables_deleted,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.time_left_seconds ||= 0
        self.still_estimating ||= false
        self.last_runtime_seconds ||= 0
        self.median_runtime_seconds ||= 0
        self.tables_created ||= 0
        self.tables_updated ||= 0
        self.tables_deleted ||= 0
      end

    end

    # <p>The details of a Crawler node present in the workflow.</p>
    #
    # @!attribute crawls
    #   <p>A list of crawls represented by the crawl node.</p>
    #
    #   @return [Array<Crawl>]
    #
    CrawlerNodeDetails = ::Struct.new(
      :crawls,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified crawler is not running.</p>
    #
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #
    #   @return [String]
    #
    CrawlerNotRunningException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The operation cannot be performed because the crawler is already running.</p>
    #
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #
    #   @return [String]
    #
    CrawlerRunningException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CrawlerState
    #
    module CrawlerState
      # No documentation available.
      #
      READY = "READY"

      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      STOPPING = "STOPPING"
    end

    # <p>The specified crawler is stopping.</p>
    #
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #
    #   @return [String]
    #
    CrawlerStoppingException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies data stores to crawl.</p>
    #
    # @!attribute s3_targets
    #   <p>Specifies Amazon Simple Storage Service (Amazon S3) targets.</p>
    #
    #   @return [Array<S3Target>]
    #
    # @!attribute jdbc_targets
    #   <p>Specifies JDBC targets.</p>
    #
    #   @return [Array<JdbcTarget>]
    #
    # @!attribute mongo_db_targets
    #   <p>Specifies Amazon DocumentDB or MongoDB targets.</p>
    #
    #   @return [Array<MongoDBTarget>]
    #
    # @!attribute dynamo_db_targets
    #   <p>Specifies Amazon DynamoDB targets.</p>
    #
    #   @return [Array<DynamoDBTarget>]
    #
    # @!attribute catalog_targets
    #   <p>Specifies Glue Data Catalog targets.</p>
    #
    #   @return [Array<CatalogTarget>]
    #
    # @!attribute delta_targets
    #   <p>Specifies Delta data store targets.</p>
    #
    #   @return [Array<DeltaTarget>]
    #
    CrawlerTargets = ::Struct.new(
      :s3_targets,
      :jdbc_targets,
      :mongo_db_targets,
      :dynamo_db_targets,
      :catalog_targets,
      :delta_targets,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the blueprint.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the blueprint.</p>
    #
    #   @return [String]
    #
    # @!attribute blueprint_location
    #   <p>Specifies a path in Amazon S3 where the blueprint is published.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to be applied to this blueprint.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateBlueprintInput = ::Struct.new(
      :name,
      :description,
      :blueprint_location,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>Returns the name of the blueprint that was registered.</p>
    #
    #   @return [String]
    #
    CreateBlueprintOutput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute grok_classifier
    #   <p>A <code>GrokClassifier</code> object specifying the classifier
    #         to create.</p>
    #
    #   @return [CreateGrokClassifierRequest]
    #
    # @!attribute xml_classifier
    #   <p>An <code>XMLClassifier</code> object specifying the classifier
    #         to create.</p>
    #
    #   @return [CreateXMLClassifierRequest]
    #
    # @!attribute json_classifier
    #   <p>A <code>JsonClassifier</code> object specifying the classifier
    #         to create.</p>
    #
    #   @return [CreateJsonClassifierRequest]
    #
    # @!attribute csv_classifier
    #   <p>A <code>CsvClassifier</code> object specifying the classifier
    #         to create.</p>
    #
    #   @return [CreateCsvClassifierRequest]
    #
    CreateClassifierInput = ::Struct.new(
      :grok_classifier,
      :xml_classifier,
      :json_classifier,
      :csv_classifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CreateClassifierOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog in which to create the connection. If none is provided, the Amazon Web Services
    #         account ID is used by default.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_input
    #   <p>A <code>ConnectionInput</code> object defining the connection
    #         to create.</p>
    #
    #   @return [ConnectionInput]
    #
    # @!attribute tags
    #   <p>The tags you assign to the connection.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateConnectionInput = ::Struct.new(
      :catalog_id,
      :connection_input,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CreateConnectionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>Name of the new crawler.</p>
    #
    #   @return [String]
    #
    # @!attribute role
    #   <p>The IAM role or Amazon Resource Name (ARN) of an IAM role used by the new crawler to
    #         access customer resources.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The Glue database where results are written, such as:
    #           <code>arn:aws:daylight:us-east-1::database/sometable/*</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the new crawler.</p>
    #
    #   @return [String]
    #
    # @!attribute targets
    #   <p>A list of collection of targets to crawl.</p>
    #
    #   @return [CrawlerTargets]
    #
    # @!attribute schedule
    #   <p>A <code>cron</code> expression used to specify the schedule (see <a href="https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html">Time-Based Schedules for Jobs and Crawlers</a>. For example, to run
    #         something every day at 12:15 UTC, you would specify:
    #         <code>cron(15 12 * * ? *)</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute classifiers
    #   <p>A list of custom classifiers that the user has registered. By default, all built-in
    #         classifiers are included in a crawl, but these custom classifiers always override the default
    #         classifiers for a given classification.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute table_prefix
    #   <p>The table prefix used for catalog tables that are created.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_change_policy
    #   <p>The policy for the crawler's update and deletion behavior.</p>
    #
    #   @return [SchemaChangePolicy]
    #
    # @!attribute recrawl_policy
    #   <p>A policy that specifies whether to crawl the entire dataset again, or to crawl only folders that were added since the last crawler run.</p>
    #
    #   @return [RecrawlPolicy]
    #
    # @!attribute lineage_configuration
    #   <p>Specifies data lineage configuration settings for the crawler.</p>
    #
    #   @return [LineageConfiguration]
    #
    # @!attribute lake_formation_configuration
    #   <p>Specifies AWS Lake Formation configuration settings for the crawler.</p>
    #
    #   @return [LakeFormationConfiguration]
    #
    # @!attribute configuration
    #   <p>Crawler configuration information. This versioned JSON
    #         string allows users to specify aspects of a crawler's behavior.
    #         For more information, see <a href="https://docs.aws.amazon.com/glue/latest/dg/crawler-configuration.html">Configuring a Crawler</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute crawler_security_configuration
    #   <p>The name of the <code>SecurityConfiguration</code> structure to be used by this
    #         crawler.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to use with this crawler request. You may use tags to limit access to the
    #               crawler. For more information about tags in Glue, see <a href="https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html">Amazon Web Services Tags in Glue</a> in the developer
    #               guide.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateCrawlerInput = ::Struct.new(
      :name,
      :role,
      :database_name,
      :description,
      :targets,
      :schedule,
      :classifiers,
      :table_prefix,
      :schema_change_policy,
      :recrawl_policy,
      :lineage_configuration,
      :lake_formation_configuration,
      :configuration,
      :crawler_security_configuration,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CreateCrawlerOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a custom CSV classifier for <code>CreateClassifier</code> to create.</p>
    #
    # @!attribute name
    #   <p>The name of the classifier.</p>
    #
    #   @return [String]
    #
    # @!attribute delimiter
    #   <p>A custom symbol to denote what separates each column entry in the row.</p>
    #
    #   @return [String]
    #
    # @!attribute quote_symbol
    #   <p>A custom symbol to denote what combines content into a single column value. Must be different from the column delimiter.</p>
    #
    #   @return [String]
    #
    # @!attribute contains_header
    #   <p>Indicates whether the CSV file contains a header.</p>
    #
    #   Enum, one of: ["UNKNOWN", "PRESENT", "ABSENT"]
    #
    #   @return [String]
    #
    # @!attribute header
    #   <p>A list of strings representing column names.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute disable_value_trimming
    #   <p>Specifies not to trim values before identifying the type of column values. The default value is true.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute allow_single_column
    #   <p>Enables the processing of files that contain only one column.</p>
    #
    #   @return [Boolean]
    #
    CreateCsvClassifierRequest = ::Struct.new(
      :name,
      :delimiter,
      :quote_symbol,
      :contains_header,
      :header,
      :disable_value_trimming,
      :allow_single_column,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>A name for the custom pattern that allows it to be retrieved or deleted later. This name must be unique per Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute regex_string
    #   <p>A regular expression string that is used for detecting sensitive data in a custom pattern.</p>
    #
    #   @return [String]
    #
    # @!attribute context_words
    #   <p>A list of context words. If none of these context words are found within the vicinity of the regular expression the data will not be detected as sensitive data.</p>
    #   	
    #   	        <p>If no context words are passed only a regular expression is checked.</p>
    #
    #   @return [Array<String>]
    #
    CreateCustomEntityTypeInput = ::Struct.new(
      :name,
      :regex_string,
      :context_words,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the custom pattern you created.</p>
    #
    #   @return [String]
    #
    CreateCustomEntityTypeOutput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog in which to create the database. If none is provided, the Amazon Web Services
    #         account ID is used by default.</p>
    #
    #   @return [String]
    #
    # @!attribute database_input
    #   <p>The metadata for the database.</p>
    #
    #   @return [DatabaseInput]
    #
    CreateDatabaseInput = ::Struct.new(
      :catalog_id,
      :database_input,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CreateDatabaseOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute endpoint_name
    #   <p>The name to be assigned to the new <code>DevEndpoint</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The IAM role for the <code>DevEndpoint</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute security_group_ids
    #   <p>Security group IDs for the security groups to be used by the new
    #         <code>DevEndpoint</code>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute subnet_id
    #   <p>The subnet ID for the new <code>DevEndpoint</code> to use.</p>
    #
    #   @return [String]
    #
    # @!attribute public_key
    #   <p>The public key to be used by this <code>DevEndpoint</code> for authentication. This
    #         attribute is provided for backward compatibility because the recommended attribute to use is
    #         public keys.</p>
    #
    #   @return [String]
    #
    # @!attribute public_keys
    #   <p>A list of public keys to be used by the development endpoints for authentication. The use
    #         of this attribute is preferred over a single public key because the public keys allow you to
    #         have a different private key per client.</p>
    #
    #            <note>
    #               <p>If you previously created an endpoint with a public key, you must remove that key to be able
    #           to set a list of public keys. Call the <code>UpdateDevEndpoint</code> API with the public
    #           key content in the <code>deletePublicKeys</code> attribute, and the list of new keys in the
    #             <code>addPublicKeys</code> attribute.</p>
    #            </note>
    #
    #   @return [Array<String>]
    #
    # @!attribute number_of_nodes
    #   <p>The number of Glue Data Processing Units (DPUs) to allocate to this
    #           <code>DevEndpoint</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute worker_type
    #   <p>The type of predefined worker that is allocated to the development endpoint. Accepts a value of Standard, G.1X, or G.2X.</p>
    #   	        <ul>
    #               <li>
    #                  <p>For the <code>Standard</code> worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.</p>
    #               </li>
    #               <li>
    #                  <p>For the <code>G.1X</code> worker type, each worker maps to 1 DPU (4 vCPU, 16 GB of memory, 64 GB disk), and provides 1 executor per worker. We recommend this worker type for memory-intensive jobs.</p>
    #               </li>
    #               <li>
    #                  <p>For the <code>G.2X</code> worker type, each worker maps to 2 DPU (8 vCPU, 32 GB of memory, 128 GB disk), and provides 1 executor per worker. We recommend this worker type for memory-intensive jobs.</p>
    #               </li>
    #            </ul>
    #   	        <p>Known issue: when a development endpoint is created with the <code>G.2X</code>
    #               <code>WorkerType</code> configuration, the Spark drivers for the development endpoint will run on 4 vCPU, 16 GB of memory, and a 64 GB disk. </p>
    #
    #   Enum, one of: ["Standard", "G.1X", "G.2X"]
    #
    #   @return [String]
    #
    # @!attribute glue_version
    #   <p>Glue version determines the versions of Apache Spark and Python that Glue supports. The Python version indicates the version supported for running your ETL scripts on development endpoints. </p>
    #
    #            <p>For more information about the available Glue versions and corresponding Spark and Python versions, see <a href="https://docs.aws.amazon.com/glue/latest/dg/add-job.html">Glue version</a> in the developer guide.</p>
    #   	
    #   	        <p>Development endpoints that are created without specifying a Glue version default to Glue 0.9.</p>
    #   	
    #   	        <p>You can specify a version of Python support for development endpoints by using the <code>Arguments</code> parameter in the <code>CreateDevEndpoint</code> or <code>UpdateDevEndpoint</code> APIs. If no arguments are provided, the version defaults to Python 2.</p>
    #
    #   @return [String]
    #
    # @!attribute number_of_workers
    #   <p>The number of workers of a defined <code>workerType</code> that are allocated to the development endpoint.</p>
    #   	
    #   	        <p>The maximum number of workers you can define are 299 for <code>G.1X</code>, and 149 for <code>G.2X</code>. </p>
    #
    #   @return [Integer]
    #
    # @!attribute extra_python_libs_s3_path
    #   <p>The paths to one or more Python libraries in an Amazon S3 bucket that should be loaded in
    #         your <code>DevEndpoint</code>. Multiple values must be complete paths separated by a
    #         comma.</p>
    #            <note>
    #               <p>You can only use pure Python libraries with a <code>DevEndpoint</code>. Libraries that rely on
    #           C extensions, such as the <a href="http://pandas.pydata.org/">pandas</a> Python data
    #           analysis library, are not yet supported.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute extra_jars_s3_path
    #   <p>The path to one or more Java <code>.jar</code> files in an S3 bucket that should be loaded
    #         in your <code>DevEndpoint</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute security_configuration
    #   <p>The name of the <code>SecurityConfiguration</code> structure to be used with this
    #           <code>DevEndpoint</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to use with this DevEndpoint. You may use tags to limit access to the DevEndpoint. For more information about tags in Glue, see <a href="https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html">Amazon Web Services Tags in Glue</a> in the developer guide.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute arguments
    #   <p>A map of arguments used to configure the <code>DevEndpoint</code>.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateDevEndpointInput = ::Struct.new(
      :endpoint_name,
      :role_arn,
      :security_group_ids,
      :subnet_id,
      :public_key,
      :public_keys,
      :number_of_nodes,
      :worker_type,
      :glue_version,
      :number_of_workers,
      :extra_python_libs_s3_path,
      :extra_jars_s3_path,
      :security_configuration,
      :tags,
      :arguments,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.number_of_nodes ||= 0
      end

    end

    # @!attribute endpoint_name
    #   <p>The name assigned to the new <code>DevEndpoint</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the new <code>DevEndpoint</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute security_group_ids
    #   <p>The security groups assigned to the new <code>DevEndpoint</code>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute subnet_id
    #   <p>The subnet ID assigned to the new <code>DevEndpoint</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the role assigned to the new
    #         <code>DevEndpoint</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute yarn_endpoint_address
    #   <p>The address of the YARN endpoint used by this <code>DevEndpoint</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute zeppelin_remote_spark_interpreter_port
    #   <p>The Apache Zeppelin port for the remote Apache Spark interpreter.</p>
    #
    #   @return [Integer]
    #
    # @!attribute number_of_nodes
    #   <p>The number of Glue Data Processing Units (DPUs) allocated to this DevEndpoint.</p>
    #
    #   @return [Integer]
    #
    # @!attribute worker_type
    #   <p>The type of predefined worker that is allocated to the development endpoint. May be a value of Standard, G.1X, or G.2X.</p>
    #
    #   Enum, one of: ["Standard", "G.1X", "G.2X"]
    #
    #   @return [String]
    #
    # @!attribute glue_version
    #   <p>Glue version determines the versions of Apache Spark and Python that Glue supports. The Python version indicates the version supported for running your ETL scripts on development endpoints. </p>
    #
    #            <p>For more information about the available Glue versions and corresponding Spark and Python versions, see <a href="https://docs.aws.amazon.com/glue/latest/dg/add-job.html">Glue version</a> in the developer guide.</p>
    #
    #   @return [String]
    #
    # @!attribute number_of_workers
    #   <p>The number of workers of a defined <code>workerType</code> that are allocated to the development endpoint.</p>
    #
    #   @return [Integer]
    #
    # @!attribute availability_zone
    #   <p>The AWS Availability Zone where this <code>DevEndpoint</code> is located.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>The ID of the virtual private cloud (VPC) used by this <code>DevEndpoint</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute extra_python_libs_s3_path
    #   <p>The paths to one or more Python libraries in an S3 bucket that will be loaded in your
    #           <code>DevEndpoint</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute extra_jars_s3_path
    #   <p>Path to one or more Java <code>.jar</code> files in an S3 bucket that will be loaded in
    #         your <code>DevEndpoint</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute failure_reason
    #   <p>The reason for a current failure in this <code>DevEndpoint</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute security_configuration
    #   <p>The name of the <code>SecurityConfiguration</code> structure being used with this
    #           <code>DevEndpoint</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute created_timestamp
    #   <p>The point in time at which this <code>DevEndpoint</code> was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute arguments
    #   <p>The map of arguments used to configure this <code>DevEndpoint</code>.</p>
    #   	
    #   	        <p>Valid arguments are:</p>
    #   	        <ul>
    #               <li>
    #                  <p>
    #                     <code>"--enable-glue-datacatalog": ""</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   	
    #            <p>You can specify a version of Python support for development endpoints by using the <code>Arguments</code> parameter in the <code>CreateDevEndpoint</code> or <code>UpdateDevEndpoint</code> APIs. If no arguments are provided, the version defaults to Python 2.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateDevEndpointOutput = ::Struct.new(
      :endpoint_name,
      :status,
      :security_group_ids,
      :subnet_id,
      :role_arn,
      :yarn_endpoint_address,
      :zeppelin_remote_spark_interpreter_port,
      :number_of_nodes,
      :worker_type,
      :glue_version,
      :number_of_workers,
      :availability_zone,
      :vpc_id,
      :extra_python_libs_s3_path,
      :extra_jars_s3_path,
      :failure_reason,
      :security_configuration,
      :created_timestamp,
      :arguments,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.zeppelin_remote_spark_interpreter_port ||= 0
        self.number_of_nodes ||= 0
      end

    end

    # <p>Specifies a <code>grok</code> classifier for <code>CreateClassifier</code>
    #       to create.</p>
    #
    # @!attribute classification
    #   <p>An identifier of the data format that the classifier matches,
    #         such as Twitter, JSON, Omniture logs, Amazon CloudWatch Logs, and so on.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the new classifier.</p>
    #
    #   @return [String]
    #
    # @!attribute grok_pattern
    #   <p>The grok pattern used by this classifier.</p>
    #
    #   @return [String]
    #
    # @!attribute custom_patterns
    #   <p>Optional custom grok patterns used by this classifier.</p>
    #
    #   @return [String]
    #
    CreateGrokClassifierRequest = ::Struct.new(
      :classification,
      :name,
      :grok_pattern,
      :custom_patterns,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name you assign to this job definition. It must be unique in your account.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>Description of the job being defined.</p>
    #
    #   @return [String]
    #
    # @!attribute log_uri
    #   <p>This field is reserved for future use.</p>
    #
    #   @return [String]
    #
    # @!attribute role
    #   <p>The name or Amazon Resource Name (ARN) of the IAM role associated with this job.</p>
    #
    #   @return [String]
    #
    # @!attribute execution_property
    #   <p>An <code>ExecutionProperty</code> specifying the maximum number of concurrent runs allowed
    #         for this job.</p>
    #
    #   @return [ExecutionProperty]
    #
    # @!attribute command
    #   <p>The <code>JobCommand</code> that runs this job.</p>
    #
    #   @return [JobCommand]
    #
    # @!attribute default_arguments
    #   <p>The default arguments for this job.</p>
    #            <p>You can specify arguments here that your own job-execution script
    #         consumes, as well as arguments that Glue itself consumes.</p>
    #            <p>For information about how to specify and consume your own Job arguments, see the <a href="https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html">Calling Glue APIs in Python</a> topic in the developer guide.</p>
    #            <p>For information about the key-value pairs that Glue consumes to set up your job, see the <a href="https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html">Special Parameters Used by Glue</a> topic in the developer guide.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute non_overridable_arguments
    #   <p>Non-overridable arguments for this job, specified as name-value pairs.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute connections
    #   <p>The connections used for this job.</p>
    #
    #   @return [ConnectionsList]
    #
    # @!attribute max_retries
    #   <p>The maximum number of times to retry this job if it fails.</p>
    #
    #   @return [Integer]
    #
    # @!attribute allocated_capacity
    #   <p>This parameter is deprecated. Use <code>MaxCapacity</code> instead.</p>
    #   	
    #            <p>The number of Glue data processing units (DPUs) to allocate to this Job. You can
    #         allocate from 2 to 100 DPUs; the default is 10. A DPU is a relative measure of processing
    #         power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information,
    #         see the <a href="https://aws.amazon.com/glue/pricing/">Glue pricing
    #         page</a>.</p>
    #
    #   @deprecated
    #     This property is deprecated, use MaxCapacity instead.
    #
    #   @return [Integer]
    #
    # @!attribute timeout
    #   <p>The job timeout in minutes.  This is the maximum time that a job run
    #         can consume resources before it is terminated and enters <code>TIMEOUT</code>
    #         status. The default is 2,880 minutes (48 hours).</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_capacity
    #   <p>For Glue version 1.0 or earlier jobs, using the standard worker type, the number of Glue data processing units (DPUs) that can be allocated when this job runs. A DPU is a relative measure
    #          of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory.
    #          For more information, see the <a href="https://aws.amazon.com/glue/pricing/">Glue
    #            pricing page</a>.</p>
    #   		
    #   	        <p>Do not set <code>Max Capacity</code> if using <code>WorkerType</code> and <code>NumberOfWorkers</code>.</p>
    #
    #            <p>The value that can be allocated for <code>MaxCapacity</code> depends on whether you are
    #         running a Python shell job or an Apache Spark ETL job:</p>
    #            <ul>
    #               <li>
    #                  <p>When you specify a Python shell job (<code>JobCommand.Name</code>="pythonshell"), you can
    #             allocate either 0.0625 or 1 DPU. The default is 0.0625 DPU.</p>
    #               </li>
    #               <li>
    #                  <p>When you specify an Apache Spark ETL job (<code>JobCommand.Name</code>="glueetl") or Apache
    #            Spark streaming ETL job (<code>JobCommand.Name</code>="gluestreaming"), you can allocate from 2 to 100 DPUs.
    #            The default is 10 DPUs. This job type cannot have a fractional DPU allocation.</p>
    #               </li>
    #            </ul>
    #            <p>For Glue version 2.0 jobs, you cannot instead specify a <code>Maximum capacity</code>. Instead, you should specify a <code>Worker type</code> and the <code>Number of workers</code>.</p>
    #
    #   @return [Float]
    #
    # @!attribute security_configuration
    #   <p>The name of the <code>SecurityConfiguration</code> structure to be used with this
    #         job.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to use with this job. You may use tags to limit access to the job. For more information about tags in Glue, see <a href="https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html">Amazon Web Services Tags in Glue</a> in the developer guide.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute notification_property
    #   <p>Specifies configuration properties of a job notification.</p>
    #
    #   @return [NotificationProperty]
    #
    # @!attribute glue_version
    #   <p>Glue version determines the versions of Apache Spark and Python that Glue supports. The Python version indicates the version supported for jobs of type Spark. </p>
    #
    #            <p>For more information about the available Glue versions and corresponding Spark and Python versions, see <a href="https://docs.aws.amazon.com/glue/latest/dg/add-job.html">Glue version</a> in the developer guide.</p>
    #   	
    #   	        <p>Jobs that are created without specifying a Glue version default to Glue 0.9.</p>
    #
    #   @return [String]
    #
    # @!attribute number_of_workers
    #   <p>The number of workers of a defined <code>workerType</code> that are allocated when a job runs.</p>
    #   	
    #   	        <p>The maximum number of workers you can define are 299 for <code>G.1X</code>, and 149 for <code>G.2X</code>. </p>
    #
    #   @return [Integer]
    #
    # @!attribute worker_type
    #   <p>The type of predefined worker that is allocated when a job runs. Accepts a value of Standard, G.1X, or G.2X.</p>
    #   	        <ul>
    #               <li>
    #                  <p>For the <code>Standard</code> worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.</p>
    #               </li>
    #               <li>
    #                  <p>For the <code>G.1X</code> worker type, each worker maps to 1 DPU (4 vCPU, 16 GB of memory, 64 GB disk), and provides 1 executor per worker. We recommend this worker type for memory-intensive jobs.</p>
    #               </li>
    #               <li>
    #                  <p>For the <code>G.2X</code> worker type, each worker maps to 2 DPU (8 vCPU, 32 GB of memory, 128 GB disk), and provides 1 executor per worker. We recommend this worker type for memory-intensive jobs.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["Standard", "G.1X", "G.2X"]
    #
    #   @return [String]
    #
    # @!attribute code_gen_configuration_nodes
    #   <p>The representation of a directed acyclic graph on which both the Glue Studio visual component and Glue Studio code generation is based.</p>
    #
    #   @return [Hash<String, CodeGenConfigurationNode>]
    #
    CreateJobInput = ::Struct.new(
      :name,
      :description,
      :log_uri,
      :role,
      :execution_property,
      :command,
      :default_arguments,
      :non_overridable_arguments,
      :connections,
      :max_retries,
      :allocated_capacity,
      :timeout,
      :max_capacity,
      :security_configuration,
      :tags,
      :notification_property,
      :glue_version,
      :number_of_workers,
      :worker_type,
      :code_gen_configuration_nodes,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_retries ||= 0
        self.allocated_capacity ||= 0
      end

      def to_s
        "#<struct AWS::SDK::Glue::Types::CreateJobInput "\
          "name=#{name || 'nil'}, "\
          "description=#{description || 'nil'}, "\
          "log_uri=#{log_uri || 'nil'}, "\
          "role=#{role || 'nil'}, "\
          "execution_property=#{execution_property || 'nil'}, "\
          "command=#{command || 'nil'}, "\
          "default_arguments=#{default_arguments || 'nil'}, "\
          "non_overridable_arguments=#{non_overridable_arguments || 'nil'}, "\
          "connections=#{connections || 'nil'}, "\
          "max_retries=#{max_retries || 'nil'}, "\
          "allocated_capacity=#{allocated_capacity || 'nil'}, "\
          "timeout=#{timeout || 'nil'}, "\
          "max_capacity=#{max_capacity || 'nil'}, "\
          "security_configuration=#{security_configuration || 'nil'}, "\
          "tags=#{tags || 'nil'}, "\
          "notification_property=#{notification_property || 'nil'}, "\
          "glue_version=#{glue_version || 'nil'}, "\
          "number_of_workers=#{number_of_workers || 'nil'}, "\
          "worker_type=#{worker_type || 'nil'}, "\
          "code_gen_configuration_nodes=\"[SENSITIVE]\">"
      end
    end

    # @!attribute name
    #   <p>The unique name that was provided for this job definition.</p>
    #
    #   @return [String]
    #
    CreateJobOutput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a JSON classifier for <code>CreateClassifier</code> to create.</p>
    #
    # @!attribute name
    #   <p>The name of the classifier.</p>
    #
    #   @return [String]
    #
    # @!attribute json_path
    #   <p>A <code>JsonPath</code> string defining the JSON data for the classifier to classify.
    #         Glue supports a subset of JsonPath, as described in <a href="https://docs.aws.amazon.com/glue/latest/dg/custom-classifier.html custom-classifier-json">Writing JsonPath Custom Classifiers</a>.</p>
    #
    #   @return [String]
    #
    CreateJsonClassifierRequest = ::Struct.new(
      :name,
      :json_path,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The unique name that you give the transform when you create it.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the machine learning transform that is being defined. The default is an
    #         empty string.</p>
    #
    #   @return [String]
    #
    # @!attribute input_record_tables
    #   <p>A list of Glue table definitions used by the transform.</p>
    #
    #   @return [Array<GlueTable>]
    #
    # @!attribute parameters
    #   <p>The algorithmic parameters that are specific to the transform type used. Conditionally
    #         dependent on the transform type.</p>
    #
    #   @return [TransformParameters]
    #
    # @!attribute role
    #   <p>The name or Amazon Resource Name (ARN) of the IAM role with the required permissions. The required permissions include both Glue service role permissions to Glue resources, and Amazon S3 permissions required by the transform. </p>
    #
    #   		       <ul>
    #               <li>
    #                  <p>This role needs Glue service role permissions to allow access to resources in Glue. See <a href="https://docs.aws.amazon.com/glue/latest/dg/attach-policy-iam-user.html">Attach a Policy to IAM Users That Access Glue</a>.</p>
    #               </li>
    #               <li>
    #                  <p>This role needs permission to your Amazon Simple Storage Service (Amazon S3) sources, targets, temporary directory, scripts, and any libraries used by the task run for this transform.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute glue_version
    #   <p>This value determines which version of Glue this machine learning transform is compatible with. Glue 1.0 is recommended for most customers. If the value is not set, the Glue compatibility defaults to Glue 0.9.  For more information, see <a href="https://docs.aws.amazon.com/glue/latest/dg/release-notes.html release-notes-versions">Glue Versions</a> in the developer guide.</p>
    #
    #   @return [String]
    #
    # @!attribute max_capacity
    #   <p>The number of Glue data processing units (DPUs) that are allocated to task runs for this transform. You can allocate from 2 to 100 DPUs; the default is 10. A DPU is a relative measure of
    #         processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more
    #         information, see the <a href="https://aws.amazon.com/glue/pricing/">Glue pricing
    #           page</a>. </p>
    #   		
    #   			      <p>
    #               <code>MaxCapacity</code> is a mutually exclusive option with <code>NumberOfWorkers</code> and <code>WorkerType</code>.</p>
    #           <ul>
    #               <li>
    #                  <p>If either <code>NumberOfWorkers</code> or <code>WorkerType</code> is set, then <code>MaxCapacity</code> cannot be set.</p>
    #               </li>
    #               <li>
    #                  <p>If <code>MaxCapacity</code> is set then neither <code>NumberOfWorkers</code> or <code>WorkerType</code> can be set.</p>
    #               </li>
    #               <li>
    #                  <p>If <code>WorkerType</code> is set, then <code>NumberOfWorkers</code> is required (and vice versa).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MaxCapacity</code> and <code>NumberOfWorkers</code> must both be at least 1.</p>
    #               </li>
    #            </ul>
    #   		
    #   	        <p>When the <code>WorkerType</code> field is set to a value other than <code>Standard</code>, the <code>MaxCapacity</code> field is set automatically and becomes read-only.</p>	
    #
    #   		
    #            <p>When the <code>WorkerType</code> field is set to a value other than <code>Standard</code>, the <code>MaxCapacity</code> field is set automatically and becomes read-only.</p>
    #
    #   @return [Float]
    #
    # @!attribute worker_type
    #   <p>The type of predefined worker that is allocated when this task runs. Accepts a value of Standard, G.1X, or G.2X.</p>
    #   	        <ul>
    #               <li>
    #                  <p>For the <code>Standard</code> worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.</p>
    #               </li>
    #               <li>
    #                  <p>For the <code>G.1X</code> worker type, each worker provides 4 vCPU, 16 GB of memory and a 64GB disk, and 1 executor per worker.</p>
    #               </li>
    #               <li>
    #                  <p>For the <code>G.2X</code> worker type, each worker provides 8 vCPU, 32 GB of memory and a 128GB disk, and 1 executor per worker.</p>
    #               </li>
    #            </ul>
    #   	
    #   	        <p>
    #               <code>MaxCapacity</code> is a mutually exclusive option with <code>NumberOfWorkers</code> and <code>WorkerType</code>.</p>
    #           <ul>
    #               <li>
    #                  <p>If either <code>NumberOfWorkers</code> or <code>WorkerType</code> is set, then <code>MaxCapacity</code> cannot be set.</p>
    #               </li>
    #               <li>
    #                  <p>If <code>MaxCapacity</code> is set then neither <code>NumberOfWorkers</code> or <code>WorkerType</code> can be set.</p>
    #               </li>
    #               <li>
    #                  <p>If <code>WorkerType</code> is set, then <code>NumberOfWorkers</code> is required (and vice versa).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MaxCapacity</code> and <code>NumberOfWorkers</code> must both be at least 1.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["Standard", "G.1X", "G.2X"]
    #
    #   @return [String]
    #
    # @!attribute number_of_workers
    #   <p>The number of workers of a defined <code>workerType</code> that are allocated when this task runs.</p>
    #   	
    #   		       <p>If <code>WorkerType</code> is set, then <code>NumberOfWorkers</code> is required (and vice versa).</p>
    #
    #   @return [Integer]
    #
    # @!attribute timeout
    #   <p>The timeout of the task run for this transform in minutes. This is the maximum time that a task run for this transform can consume resources before it is terminated and enters <code>TIMEOUT</code> status. The default is 2,880 minutes (48 hours).</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_retries
    #   <p>The maximum number of times to retry a task for this transform after a task run fails.</p>
    #
    #   @return [Integer]
    #
    # @!attribute tags
    #   <p>The tags to use with this machine learning transform. You may use tags to limit access to the machine learning transform. For more information about tags in Glue, see <a href="https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html">Amazon Web Services Tags in Glue</a> in the developer guide.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute transform_encryption
    #   <p>The encryption-at-rest settings of the transform that apply to accessing user data. Machine learning transforms can access user data encrypted in Amazon S3 using KMS.</p>
    #
    #   @return [TransformEncryption]
    #
    CreateMLTransformInput = ::Struct.new(
      :name,
      :description,
      :input_record_tables,
      :parameters,
      :role,
      :glue_version,
      :max_capacity,
      :worker_type,
      :number_of_workers,
      :timeout,
      :max_retries,
      :tags,
      :transform_encryption,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute transform_id
    #   <p>A unique identifier that is generated for the transform.</p>
    #
    #   @return [String]
    #
    CreateMLTransformOutput = ::Struct.new(
      :transform_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The catalog ID where the table resides.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>Specifies the name of a database in which you want to create a partition index.</p>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>Specifies the name of a table in which you want to create a partition index.</p>
    #
    #   @return [String]
    #
    # @!attribute partition_index
    #   <p>Specifies a <code>PartitionIndex</code> structure to create a partition index in an existing table.</p>
    #
    #   @return [PartitionIndex]
    #
    CreatePartitionIndexInput = ::Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :partition_index,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CreatePartitionIndexOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The Amazon Web Services account ID of the catalog in which the partition is to be created.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The name of the metadata database in which the partition is
    #         to be created.</p>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>The name of the metadata table in which the partition is to be created.</p>
    #
    #   @return [String]
    #
    # @!attribute partition_input
    #   <p>A <code>PartitionInput</code> structure defining the partition
    #         to be created.</p>
    #
    #   @return [PartitionInput]
    #
    CreatePartitionInput = ::Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :partition_input,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CreatePartitionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registry_name
    #   <p>Name of the registry to be created of max length of 255, and may only contain letters, numbers, hyphen, underscore, dollar sign, or hash mark.  No whitespace.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the registry. If description is not provided, there will not be any default value for this.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Amazon Web Services tags that contain a key value pair and may be searched by console, command line, or API.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateRegistryInput = ::Struct.new(
      :registry_name,
      :description,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registry_arn
    #   <p>The Amazon Resource Name (ARN) of the newly created registry.</p>
    #
    #   @return [String]
    #
    # @!attribute registry_name
    #   <p>The name of the registry.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the registry.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags for the registry.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateRegistryOutput = ::Struct.new(
      :registry_arn,
      :registry_name,
      :description,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registry_id
    #   <p> This is a wrapper shape to contain the registry identity fields. If this is not provided, the default registry will be used. The ARN format for the same will be: <code>arn:aws:glue:us-east-2:<customer id>:registry/default-registry:random-5-letter-id</code>.</p>
    #
    #   @return [RegistryId]
    #
    # @!attribute schema_name
    #   <p>Name of the schema to be created of max length of 255, and may only contain letters, numbers, hyphen, underscore, dollar sign, or hash mark. No whitespace.</p>
    #
    #   @return [String]
    #
    # @!attribute data_format
    #   <p>The data format of the schema definition. Currently <code>AVRO</code>, <code>JSON</code> and <code>PROTOBUF</code> are supported.</p>
    #
    #   Enum, one of: ["AVRO", "JSON", "PROTOBUF"]
    #
    #   @return [String]
    #
    # @!attribute compatibility
    #   <p>The compatibility mode of the schema. The possible values are:</p>
    #   	
    #            <ul>
    #               <li>
    #                  <p>
    #                     <i>NONE</i>: No compatibility mode applies. You can use this choice in development scenarios or if you do not know the compatibility mode that you want to apply to schemas. Any new version added will be accepted without undergoing a compatibility check.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>DISABLED</i>: This compatibility choice prevents versioning for a particular schema. You can use this choice to prevent future versioning of a schema.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>BACKWARD</i>: This compatibility choice is recommended as it allows data receivers to read both the current and one previous schema version. This means that for instance, a new schema version cannot drop data fields or change the type of these fields, so they can't be read by readers using the previous version.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>BACKWARD_ALL</i>: This compatibility choice allows data receivers to read both the current and all previous schema versions. You can use this choice when you need to delete fields or add optional fields, and check compatibility against all previous schema versions. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>FORWARD</i>: This compatibility choice allows data receivers to read both the current and one next schema version, but not necessarily later versions. You can use this choice when you need to add fields or delete optional fields, but only check compatibility against the last schema version.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>FORWARD_ALL</i>: This compatibility choice allows data receivers to read written by producers of any new registered schema. You can use this choice when you need to add fields or delete optional fields, and check compatibility against all previous schema versions.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>FULL</i>: This compatibility choice allows data receivers to read data written by producers using the previous or next version of the schema, but not necessarily earlier or later versions. You can use this choice when you need to add or remove optional fields, but only check compatibility against the last schema version.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>FULL_ALL</i>: This compatibility choice allows data receivers to read data written by producers using all previous schema versions. You can use this choice when you need to add or remove optional fields, and check compatibility against all previous schema versions.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["NONE", "DISABLED", "BACKWARD", "BACKWARD_ALL", "FORWARD", "FORWARD_ALL", "FULL", "FULL_ALL"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>An optional description of the schema. If description is not provided, there will not be any automatic default value for this.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Amazon Web Services tags that contain a key value pair and may be searched by console, command line, or API. If specified, follows the Amazon Web Services tags-on-create pattern.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute schema_definition
    #   <p>The schema definition using the <code>DataFormat</code> setting for <code>SchemaName</code>.</p>
    #
    #   @return [String]
    #
    CreateSchemaInput = ::Struct.new(
      :registry_id,
      :schema_name,
      :data_format,
      :compatibility,
      :description,
      :tags,
      :schema_definition,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registry_name
    #   <p>The name of the registry.</p>
    #
    #   @return [String]
    #
    # @!attribute registry_arn
    #   <p>The Amazon Resource Name (ARN) of the registry.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_name
    #   <p>The name of the schema.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_arn
    #   <p>The Amazon Resource Name (ARN) of the schema.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the schema if specified when created.</p>
    #
    #   @return [String]
    #
    # @!attribute data_format
    #   <p>The data format of the schema definition. Currently <code>AVRO</code>, <code>JSON</code> and <code>PROTOBUF</code> are supported.</p>
    #
    #   Enum, one of: ["AVRO", "JSON", "PROTOBUF"]
    #
    #   @return [String]
    #
    # @!attribute compatibility
    #   <p>The schema compatibility mode.</p>
    #
    #   Enum, one of: ["NONE", "DISABLED", "BACKWARD", "BACKWARD_ALL", "FORWARD", "FORWARD_ALL", "FULL", "FULL_ALL"]
    #
    #   @return [String]
    #
    # @!attribute schema_checkpoint
    #   <p>The version number of the checkpoint (the last time the compatibility mode was changed).</p>
    #
    #   @return [Integer]
    #
    # @!attribute latest_schema_version
    #   <p>The latest version of the schema associated with the returned schema definition.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_schema_version
    #   <p>The next version of the schema associated with the returned schema definition.</p>
    #
    #   @return [Integer]
    #
    # @!attribute schema_status
    #   <p>The status of the schema. </p>
    #
    #   Enum, one of: ["AVAILABLE", "PENDING", "DELETING"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags for the schema.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute schema_version_id
    #   <p>The unique identifier of the first schema version.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_version_status
    #   <p>The status of the first schema version created.</p>
    #
    #   Enum, one of: ["AVAILABLE", "PENDING", "FAILURE", "DELETING"]
    #
    #   @return [String]
    #
    CreateSchemaOutput = ::Struct.new(
      :registry_name,
      :registry_arn,
      :schema_name,
      :schema_arn,
      :description,
      :data_format,
      :compatibility,
      :schema_checkpoint,
      :latest_schema_version,
      :next_schema_version,
      :schema_status,
      :tags,
      :schema_version_id,
      :schema_version_status,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.schema_checkpoint ||= 0
        self.latest_schema_version ||= 0
        self.next_schema_version ||= 0
      end

    end

    # @!attribute dag_nodes
    #   <p>A list of the nodes in the DAG.</p>
    #
    #   @return [Array<CodeGenNode>]
    #
    # @!attribute dag_edges
    #   <p>A list of the edges in the DAG.</p>
    #
    #   @return [Array<CodeGenEdge>]
    #
    # @!attribute language
    #   <p>The programming language of the resulting code from the DAG.</p>
    #
    #   Enum, one of: ["PYTHON", "SCALA"]
    #
    #   @return [String]
    #
    CreateScriptInput = ::Struct.new(
      :dag_nodes,
      :dag_edges,
      :language,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute python_script
    #   <p>The Python script generated from the DAG.</p>
    #
    #   @return [String]
    #
    # @!attribute scala_code
    #   <p>The Scala code generated from the DAG.</p>
    #
    #   @return [String]
    #
    CreateScriptOutput = ::Struct.new(
      :python_script,
      :scala_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name for the new security configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute encryption_configuration
    #   <p>The encryption configuration for the new security configuration.</p>
    #
    #   @return [EncryptionConfiguration]
    #
    CreateSecurityConfigurationInput = ::Struct.new(
      :name,
      :encryption_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name assigned to the new security configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute created_timestamp
    #   <p>The time at which the new security configuration was created.</p>
    #
    #   @return [Time]
    #
    CreateSecurityConfigurationOutput = ::Struct.new(
      :name,
      :created_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Request to create a new session.</p>
    #
    # @!attribute id
    #   <p>The ID of the session request. </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the session. </p>
    #
    #   @return [String]
    #
    # @!attribute role
    #   <p>The IAM Role ARN </p>
    #
    #   @return [String]
    #
    # @!attribute command
    #   <p>The <code>SessionCommand</code> that runs the job. </p>
    #
    #   @return [SessionCommand]
    #
    # @!attribute timeout
    #   <p>The number of seconds before request times out. </p>
    #
    #   @return [Integer]
    #
    # @!attribute idle_timeout
    #   <p>The number of seconds when idle before request times out. </p>
    #
    #   @return [Integer]
    #
    # @!attribute default_arguments
    #   <p>A map array of key-value pairs. Max is 75 pairs. </p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute connections
    #   <p>The number of connections to use for the session. </p>
    #
    #   @return [ConnectionsList]
    #
    # @!attribute max_capacity
    #   <p>The number of AWS Glue data processing units (DPUs) that can be allocated when the job runs.
    #         A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB memory. </p>
    #
    #   @return [Float]
    #
    # @!attribute number_of_workers
    #   <p>The number of workers to use for the session. </p>
    #
    #   @return [Integer]
    #
    # @!attribute worker_type
    #   <p>The Worker Type. Can be one of G.1X, G.2X, Standard </p>
    #
    #   Enum, one of: ["Standard", "G.1X", "G.2X"]
    #
    #   @return [String]
    #
    # @!attribute security_configuration
    #   <p>The name of the SecurityConfiguration structure to be used with the session </p>
    #
    #   @return [String]
    #
    # @!attribute glue_version
    #   <p>The Glue version determines the versions of Apache Spark and Python that AWS Glue supports.
    #         The GlueVersion must be greater than 2.0. </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The map of key value pairs (tags) belonging to the session.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute request_origin
    #   <p>The origin of the request. </p>
    #
    #   @return [String]
    #
    CreateSessionInput = ::Struct.new(
      :id,
      :description,
      :role,
      :command,
      :timeout,
      :idle_timeout,
      :default_arguments,
      :connections,
      :max_capacity,
      :number_of_workers,
      :worker_type,
      :security_configuration,
      :glue_version,
      :tags,
      :request_origin,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute session
    #   <p>Returns the session object in the response.</p>
    #
    #   @return [Session]
    #
    CreateSessionOutput = ::Struct.new(
      :session,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog in which to create the <code>Table</code>.
    #         If none is supplied, the Amazon Web Services account ID is used by default.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The catalog database in which to create the new table. For Hive
    #         compatibility, this name is entirely lowercase.</p>
    #
    #   @return [String]
    #
    # @!attribute table_input
    #   <p>The <code>TableInput</code> object that defines the metadata table
    #         to create in the catalog.</p>
    #
    #   @return [TableInput]
    #
    # @!attribute partition_indexes
    #   <p>A list of partition indexes, <code>PartitionIndex</code> structures, to create in the table.</p>
    #
    #   @return [Array<PartitionIndex>]
    #
    # @!attribute transaction_id
    #   <p>The ID of the transaction.</p>
    #
    #   @return [String]
    #
    CreateTableInput = ::Struct.new(
      :catalog_id,
      :database_name,
      :table_input,
      :partition_indexes,
      :transaction_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CreateTableOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the trigger.</p>
    #
    #   @return [String]
    #
    # @!attribute workflow_name
    #   <p>The name of the workflow associated with the trigger.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of the new trigger.</p>
    #
    #   Enum, one of: ["SCHEDULED", "CONDITIONAL", "ON_DEMAND", "EVENT"]
    #
    #   @return [String]
    #
    # @!attribute schedule
    #   <p>A <code>cron</code> expression used to specify the schedule (see <a href="https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html">Time-Based Schedules for Jobs and Crawlers</a>. For example, to run
    #         something every day at 12:15 UTC, you would specify:
    #         <code>cron(15 12 * * ? *)</code>.</p>
    #            <p>This field is required when the trigger type is SCHEDULED.</p>
    #
    #   @return [String]
    #
    # @!attribute predicate
    #   <p>A predicate to specify when the new trigger should fire.</p>
    #            <p>This field is required when the trigger type is <code>CONDITIONAL</code>.</p>
    #
    #   @return [Predicate]
    #
    # @!attribute actions
    #   <p>The actions initiated by this trigger when it fires.</p>
    #
    #   @return [Array<Action>]
    #
    # @!attribute description
    #   <p>A description of the new trigger.</p>
    #
    #   @return [String]
    #
    # @!attribute start_on_creation
    #   <p>Set to <code>true</code> to start <code>SCHEDULED</code> and <code>CONDITIONAL</code>
    #         triggers when created. True is not supported for <code>ON_DEMAND</code> triggers.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute tags
    #   <p>The tags to use with this trigger. You may use tags to limit access to the trigger.
    #         For more information about tags in Glue, see
    #         <a href="https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html">Amazon Web Services Tags in Glue</a> in the developer guide. </p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute event_batching_condition
    #   <p>Batch condition that must be met (specified number of events received or batch time window expired)
    #         before EventBridge event trigger fires.</p>
    #
    #   @return [EventBatchingCondition]
    #
    CreateTriggerInput = ::Struct.new(
      :name,
      :workflow_name,
      :type,
      :schedule,
      :predicate,
      :actions,
      :description,
      :start_on_creation,
      :tags,
      :event_batching_condition,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.start_on_creation ||= false
      end

    end

    # @!attribute name
    #   <p>The name of the trigger.</p>
    #
    #   @return [String]
    #
    CreateTriggerOutput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog in which to create the function. If none is provided, the Amazon Web Services
    #         account ID is used by default.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The name of the catalog database in which to create the function.</p>
    #
    #   @return [String]
    #
    # @!attribute function_input
    #   <p>A <code>FunctionInput</code> object that defines the function
    #         to create in the Data Catalog.</p>
    #
    #   @return [UserDefinedFunctionInput]
    #
    CreateUserDefinedFunctionInput = ::Struct.new(
      :catalog_id,
      :database_name,
      :function_input,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CreateUserDefinedFunctionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name to be assigned to the workflow. It should be unique within your account.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the workflow.</p>
    #
    #   @return [String]
    #
    # @!attribute default_run_properties
    #   <p>A collection of properties to be used as part of each execution of the workflow.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute tags
    #   <p>The tags to be used with this workflow.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute max_concurrent_runs
    #   <p>You can use this parameter to prevent unwanted multiple updates to data, to control costs, or in some cases, to prevent exceeding the maximum number of concurrent runs of any of the component jobs. If you leave this parameter blank, there is no limit to the number of concurrent workflow runs.</p>
    #
    #   @return [Integer]
    #
    CreateWorkflowInput = ::Struct.new(
      :name,
      :description,
      :default_run_properties,
      :tags,
      :max_concurrent_runs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the workflow which was provided as part of the request.</p>
    #
    #   @return [String]
    #
    CreateWorkflowOutput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies an XML classifier for <code>CreateClassifier</code> to create.</p>
    #
    # @!attribute classification
    #   <p>An identifier of the data format that the classifier matches.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the classifier.</p>
    #
    #   @return [String]
    #
    # @!attribute row_tag
    #   <p>The XML tag designating the element that contains each record in an XML document being
    #         parsed. This can't identify a self-closing element (closed by <code>/></code>). An empty
    #         row element that contains only attributes can be parsed as long as it ends with a closing tag
    #         (for example, <code><row item_a="A" item_b="B"></row></code> is okay, but
    #           <code><row item_a="A" item_b="B" /></code> is not).</p>
    #
    #   @return [String]
    #
    CreateXMLClassifierRequest = ::Struct.new(
      :classification,
      :name,
      :row_tag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A classifier for custom <code>CSV</code> content.</p>
    #
    # @!attribute name
    #   <p>The name of the classifier.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The time that this classifier was registered.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated
    #   <p>The time that this classifier was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute version
    #   <p>The version of this classifier.</p>
    #
    #   @return [Integer]
    #
    # @!attribute delimiter
    #   <p>A custom symbol to denote what separates each column entry in the row.</p>
    #
    #   @return [String]
    #
    # @!attribute quote_symbol
    #   <p>A custom symbol to denote what combines content into a single column value. It must be
    #         different from the column delimiter.</p>
    #
    #   @return [String]
    #
    # @!attribute contains_header
    #   <p>Indicates whether the CSV file contains a header.</p>
    #
    #   Enum, one of: ["UNKNOWN", "PRESENT", "ABSENT"]
    #
    #   @return [String]
    #
    # @!attribute header
    #   <p>A list of strings representing column names.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute disable_value_trimming
    #   <p>Specifies not to trim values before identifying the type of column values. The default
    #         value is <code>true</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute allow_single_column
    #   <p>Enables the processing of files that contain only one column.</p>
    #
    #   @return [Boolean]
    #
    CsvClassifier = ::Struct.new(
      :name,
      :creation_time,
      :last_updated,
      :version,
      :delimiter,
      :quote_symbol,
      :contains_header,
      :header,
      :disable_value_trimming,
      :allow_single_column,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.version ||= 0
      end

    end

    # Includes enum constants for CsvHeaderOption
    #
    module CsvHeaderOption
      # No documentation available.
      #
      UNKNOWN = "UNKNOWN"

      # No documentation available.
      #
      PRESENT = "PRESENT"

      # No documentation available.
      #
      ABSENT = "ABSENT"
    end

    # <p>Specifies a transform that uses custom code you provide to perform the data transformation. The output is a collection of DynamicFrames.</p>
    #
    # @!attribute name
    #   <p>The name of the transform node.</p>
    #
    #   @return [String]
    #
    # @!attribute inputs
    #   <p>The data inputs identified by their node names.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute code
    #   <p>The custom code that is used to perform the data transformation.</p>
    #
    #   @return [String]
    #
    # @!attribute class_name
    #   <p>The name defined for the custom code node class.</p>
    #
    #   @return [String]
    #
    # @!attribute output_schemas
    #   <p>Specifies the data schema for the custom code transform.</p>
    #
    #   @return [Array<GlueSchema>]
    #
    CustomCode = ::Struct.new(
      :name,
      :inputs,
      :code,
      :class_name,
      :output_schemas,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object representing a custom pattern for detecting sensitive data across the columns and rows of your structured data.</p>
    #
    # @!attribute name
    #   <p>A name for the custom pattern that allows it to be retrieved or deleted later. This name must be unique per Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute regex_string
    #   <p>A regular expression string that is used for detecting sensitive data in a custom pattern.</p>
    #
    #   @return [String]
    #
    # @!attribute context_words
    #   <p>A list of context words. If none of these context words are found within the vicinity of the regular expression the data will not be detected as sensitive data.</p>
    #   	
    #   	        <p>If no context words are passed only a regular expression is checked.</p>
    #
    #   @return [Array<String>]
    #
    CustomEntityType = ::Struct.new(
      :name,
      :regex_string,
      :context_words,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains configuration information for maintaining Data Catalog security.</p>
    #
    # @!attribute encryption_at_rest
    #   <p>Specifies the encryption-at-rest configuration for the Data Catalog.</p>
    #
    #   @return [EncryptionAtRest]
    #
    # @!attribute connection_password_encryption
    #   <p>When connection password protection is enabled, the Data Catalog uses a customer-provided
    #         key to encrypt the password as part of <code>CreateConnection</code> or
    #           <code>UpdateConnection</code> and store it in the <code>ENCRYPTED_PASSWORD</code> field in
    #         the connection properties. You can enable catalog encryption or only password
    #         encryption.</p>
    #
    #   @return [ConnectionPasswordEncryption]
    #
    DataCatalogEncryptionSettings = ::Struct.new(
      :encryption_at_rest,
      :connection_password_encryption,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DataFormat
    #
    module DataFormat
      # No documentation available.
      #
      AVRO = "AVRO"

      # No documentation available.
      #
      JSON = "JSON"

      # No documentation available.
      #
      PROTOBUF = "PROTOBUF"
    end

    # <p>The Lake Formation principal.</p>
    #
    # @!attribute data_lake_principal_identifier
    #   <p>An identifier for the Lake Formation principal.</p>
    #
    #   @return [String]
    #
    DataLakePrincipal = ::Struct.new(
      :data_lake_principal_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The <code>Database</code> object represents a logical grouping of tables that might reside
    #       in a Hive metastore or an RDBMS.</p>
    #
    # @!attribute name
    #   <p>The name of the database. For Hive compatibility, this is folded to lowercase when it is
    #         stored.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the database.</p>
    #
    #   @return [String]
    #
    # @!attribute location_uri
    #   <p>The location of the database (for example, an HDFS path).</p>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>These key-value pairs define parameters and properties
    #         of the database.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute create_time
    #   <p>The time at which the metadata database was created in the catalog.</p>
    #
    #   @return [Time]
    #
    # @!attribute create_table_default_permissions
    #   <p>Creates a set of default permissions on the table for principals. </p>
    #
    #   @return [Array<PrincipalPermissions>]
    #
    # @!attribute target_database
    #   <p>A <code>DatabaseIdentifier</code> structure that describes a target database for resource linking.</p>
    #
    #   @return [DatabaseIdentifier]
    #
    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog in which the database resides.</p>
    #
    #   @return [String]
    #
    Database = ::Struct.new(
      :name,
      :description,
      :location_uri,
      :parameters,
      :create_time,
      :create_table_default_permissions,
      :target_database,
      :catalog_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure that describes a target database for resource linking.</p>
    #
    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog in which the database resides.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The name of the catalog database.</p>
    #
    #   @return [String]
    #
    DatabaseIdentifier = ::Struct.new(
      :catalog_id,
      :database_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The structure used to create or update a database.</p>
    #
    # @!attribute name
    #   <p>The name of the database. For Hive compatibility, this is folded to lowercase when it is
    #         stored.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the database.</p>
    #
    #   @return [String]
    #
    # @!attribute location_uri
    #   <p>The location of the database (for example, an HDFS path). </p>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>These key-value pairs define parameters and properties
    #         of the database.</p>
    #            <p>These key-value pairs define parameters and properties of the database.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute create_table_default_permissions
    #   <p>Creates a set of default permissions on the table for principals. </p>
    #
    #   @return [Array<PrincipalPermissions>]
    #
    # @!attribute target_database
    #   <p>A <code>DatabaseIdentifier</code> structure that describes a target database for resource linking.</p>
    #
    #   @return [DatabaseIdentifier]
    #
    DatabaseInput = ::Struct.new(
      :name,
      :description,
      :location_uri,
      :parameters,
      :create_table_default_permissions,
      :target_database,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure representing the datatype of the value.</p>
    #
    # @!attribute id
    #   <p>The datatype of the value.</p>
    #
    #   @return [String]
    #
    # @!attribute label
    #   <p>A label assigned to the datatype.</p>
    #
    #   @return [String]
    #
    Datatype = ::Struct.new(
      :id,
      :label,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Defines column statistics supported for timestamp data columns.</p>
    #
    # @!attribute minimum_value
    #   <p>The lowest value in the column.</p>
    #
    #   @return [Time]
    #
    # @!attribute maximum_value
    #   <p>The highest value in the column.</p>
    #
    #   @return [Time]
    #
    # @!attribute number_of_nulls
    #   <p>The number of null values in the column.</p>
    #
    #   @return [Integer]
    #
    # @!attribute number_of_distinct_values
    #   <p>The number of distinct values in a column.</p>
    #
    #   @return [Integer]
    #
    DateColumnStatisticsData = ::Struct.new(
      :minimum_value,
      :maximum_value,
      :number_of_nulls,
      :number_of_distinct_values,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.number_of_nulls ||= 0
        self.number_of_distinct_values ||= 0
      end

    end

    # <p>Defines column statistics supported for fixed-point number data columns.</p>
    #
    # @!attribute minimum_value
    #   <p>The lowest value in the column.</p>
    #
    #   @return [DecimalNumber]
    #
    # @!attribute maximum_value
    #   <p>The highest value in the column.</p>
    #
    #   @return [DecimalNumber]
    #
    # @!attribute number_of_nulls
    #   <p>The number of null values in the column.</p>
    #
    #   @return [Integer]
    #
    # @!attribute number_of_distinct_values
    #   <p>The number of distinct values in a column.</p>
    #
    #   @return [Integer]
    #
    DecimalColumnStatisticsData = ::Struct.new(
      :minimum_value,
      :maximum_value,
      :number_of_nulls,
      :number_of_distinct_values,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.number_of_nulls ||= 0
        self.number_of_distinct_values ||= 0
      end

    end

    # <p>Contains a numeric value in decimal format.</p>
    #
    # @!attribute unscaled_value
    #   <p>The unscaled numeric value.</p>
    #
    #   @return [String]
    #
    # @!attribute scale
    #   <p>The scale that determines where the decimal point falls in the
    #         unscaled value.</p>
    #
    #   @return [Integer]
    #
    DecimalNumber = ::Struct.new(
      :unscaled_value,
      :scale,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.scale ||= 0
      end

    end

    # Includes enum constants for DeleteBehavior
    #
    module DeleteBehavior
      # No documentation available.
      #
      LOG = "LOG"

      # No documentation available.
      #
      DELETE_FROM_DATABASE = "DELETE_FROM_DATABASE"

      # No documentation available.
      #
      DEPRECATE_IN_DATABASE = "DEPRECATE_IN_DATABASE"
    end

    # @!attribute name
    #   <p>The name of the blueprint to delete.</p>
    #
    #   @return [String]
    #
    DeleteBlueprintInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>Returns the name of the blueprint that was deleted.</p>
    #
    #   @return [String]
    #
    DeleteBlueprintOutput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>Name of the classifier to remove.</p>
    #
    #   @return [String]
    #
    DeleteClassifierInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteClassifierOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog where the partitions in question reside.
    #         If none is supplied, the Amazon Web Services account ID is used by default.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The name of the catalog database where the partitions reside.</p>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>The name of the partitions' table.</p>
    #
    #   @return [String]
    #
    # @!attribute partition_values
    #   <p>A list of partition values identifying the partition.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute column_name
    #   <p>Name of the column.</p>
    #
    #   @return [String]
    #
    DeleteColumnStatisticsForPartitionInput = ::Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :partition_values,
      :column_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteColumnStatisticsForPartitionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog where the partitions in question reside.
    #         If none is supplied, the Amazon Web Services account ID is used by default.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The name of the catalog database where the partitions reside.</p>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>The name of the partitions' table.</p>
    #
    #   @return [String]
    #
    # @!attribute column_name
    #   <p>The name of the column.</p>
    #
    #   @return [String]
    #
    DeleteColumnStatisticsForTableInput = ::Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :column_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteColumnStatisticsForTableOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog in which the connection resides. If none is provided, the Amazon Web Services
    #         account ID is used by default.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_name
    #   <p>The name of the connection to delete.</p>
    #
    #   @return [String]
    #
    DeleteConnectionInput = ::Struct.new(
      :catalog_id,
      :connection_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteConnectionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the crawler to remove.</p>
    #
    #   @return [String]
    #
    DeleteCrawlerInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteCrawlerOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the custom pattern that you want to delete.</p>
    #
    #   @return [String]
    #
    DeleteCustomEntityTypeInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the custom pattern you deleted.</p>
    #
    #   @return [String]
    #
    DeleteCustomEntityTypeOutput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog in which the database resides. If none is provided, the Amazon Web Services
    #         account ID is used by default.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the database to delete. For Hive compatibility, this must be all
    #         lowercase.</p>
    #
    #   @return [String]
    #
    DeleteDatabaseInput = ::Struct.new(
      :catalog_id,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteDatabaseOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute endpoint_name
    #   <p>The name of the <code>DevEndpoint</code>.</p>
    #
    #   @return [String]
    #
    DeleteDevEndpointInput = ::Struct.new(
      :endpoint_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteDevEndpointOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_name
    #   <p>The name of the job definition to delete.</p>
    #
    #   @return [String]
    #
    DeleteJobInput = ::Struct.new(
      :job_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_name
    #   <p>The name of the job definition that was deleted.</p>
    #
    #   @return [String]
    #
    DeleteJobOutput = ::Struct.new(
      :job_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute transform_id
    #   <p>The unique identifier of the transform to delete.</p>
    #
    #   @return [String]
    #
    DeleteMLTransformInput = ::Struct.new(
      :transform_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute transform_id
    #   <p>The unique identifier of the transform that was deleted.</p>
    #
    #   @return [String]
    #
    DeleteMLTransformOutput = ::Struct.new(
      :transform_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The catalog ID where the table resides.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>Specifies the name of a database from which you want to delete a partition index.</p>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>Specifies the name of a table from which you want to delete a partition index.</p>
    #
    #   @return [String]
    #
    # @!attribute index_name
    #   <p>The name of the partition index to be deleted.</p>
    #
    #   @return [String]
    #
    DeletePartitionIndexInput = ::Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :index_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeletePartitionIndexOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog where the partition to be deleted resides. If none is provided,
    #         the Amazon Web Services account ID is used by default.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The name of the catalog database in which the table in question
    #         resides.</p>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>The name of the table that contains the partition to be deleted.</p>
    #
    #   @return [String]
    #
    # @!attribute partition_values
    #   <p>The values that define the partition.</p>
    #
    #   @return [Array<String>]
    #
    DeletePartitionInput = ::Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :partition_values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeletePartitionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registry_id
    #   <p>This is a wrapper structure that may contain the registry name and Amazon Resource Name (ARN).</p>
    #
    #   @return [RegistryId]
    #
    DeleteRegistryInput = ::Struct.new(
      :registry_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registry_name
    #   <p>The name of the registry being deleted.</p>
    #
    #   @return [String]
    #
    # @!attribute registry_arn
    #   <p>The Amazon Resource Name (ARN) of the registry being deleted.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the registry. A successful operation will return the <code>Deleting</code> status.</p>
    #
    #   Enum, one of: ["AVAILABLE", "DELETING"]
    #
    #   @return [String]
    #
    DeleteRegistryOutput = ::Struct.new(
      :registry_name,
      :registry_arn,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy_hash_condition
    #   <p>The hash value returned when this policy was set.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_arn
    #   <p>The ARN of the Glue resource for the resource policy to be deleted.</p>
    #
    #   @return [String]
    #
    DeleteResourcePolicyInput = ::Struct.new(
      :policy_hash_condition,
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteResourcePolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute schema_id
    #   <p>This is a wrapper structure that may contain the schema name and Amazon Resource Name (ARN).</p>
    #
    #   @return [SchemaId]
    #
    DeleteSchemaInput = ::Struct.new(
      :schema_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute schema_arn
    #   <p>The Amazon Resource Name (ARN) of the schema being deleted.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_name
    #   <p>The name of the schema being deleted.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the schema.</p>
    #
    #   Enum, one of: ["AVAILABLE", "PENDING", "DELETING"]
    #
    #   @return [String]
    #
    DeleteSchemaOutput = ::Struct.new(
      :schema_arn,
      :schema_name,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute schema_id
    #   <p>This is a wrapper structure that may contain the schema name and Amazon Resource Name (ARN).</p>
    #
    #   @return [SchemaId]
    #
    # @!attribute versions
    #   <p>A version range may be supplied which may be of the format:</p>
    #   	        <ul>
    #               <li>
    #                  <p>a single version number, 5</p>
    #               </li>
    #               <li>
    #                  <p>a range, 5-8 : deletes versions 5, 6, 7, 8</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    DeleteSchemaVersionsInput = ::Struct.new(
      :schema_id,
      :versions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute schema_version_errors
    #   <p>A list of <code>SchemaVersionErrorItem</code> objects, each containing an error and schema version.</p>
    #
    #   @return [Array<SchemaVersionErrorItem>]
    #
    DeleteSchemaVersionsOutput = ::Struct.new(
      :schema_version_errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the security configuration to delete.</p>
    #
    #   @return [String]
    #
    DeleteSecurityConfigurationInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteSecurityConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the session to be deleted.</p>
    #
    #   @return [String]
    #
    # @!attribute request_origin
    #   <p>The name of the origin of the delete session request.</p>
    #
    #   @return [String]
    #
    DeleteSessionInput = ::Struct.new(
      :id,
      :request_origin,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>Returns the ID of the deleted session.</p>
    #
    #   @return [String]
    #
    DeleteSessionOutput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog where the table resides. If none is provided, the Amazon Web Services account
    #         ID is used by default.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The name of the catalog database in which the table resides. For Hive
    #         compatibility, this name is entirely lowercase.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the table to be deleted. For Hive
    #         compatibility, this name is entirely lowercase.</p>
    #
    #   @return [String]
    #
    # @!attribute transaction_id
    #   <p>The transaction ID at which to delete the table contents.</p>
    #
    #   @return [String]
    #
    DeleteTableInput = ::Struct.new(
      :catalog_id,
      :database_name,
      :name,
      :transaction_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteTableOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog where the tables reside. If none is provided, the Amazon Web Services account
    #         ID is used by default.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The database in the catalog in which the table resides. For Hive
    #         compatibility, this name is entirely lowercase.</p>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>The name of the table. For Hive compatibility,
    #         this name is entirely lowercase.</p>
    #
    #   @return [String]
    #
    # @!attribute version_id
    #   <p>The ID of the table version to be deleted. A <code>VersionID</code> is a string representation of an integer. Each version is incremented by 1.</p>
    #
    #   @return [String]
    #
    DeleteTableVersionInput = ::Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :version_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteTableVersionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the trigger to delete.</p>
    #
    #   @return [String]
    #
    DeleteTriggerInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the trigger that was deleted.</p>
    #
    #   @return [String]
    #
    DeleteTriggerOutput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog where the function to be deleted is
    #         located. If none is supplied, the Amazon Web Services account ID is used by default.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The name of the catalog database where the function is located.</p>
    #
    #   @return [String]
    #
    # @!attribute function_name
    #   <p>The name of the function definition to be deleted.</p>
    #
    #   @return [String]
    #
    DeleteUserDefinedFunctionInput = ::Struct.new(
      :catalog_id,
      :database_name,
      :function_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteUserDefinedFunctionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>Name of the workflow to be deleted.</p>
    #
    #   @return [String]
    #
    DeleteWorkflowInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>Name of the workflow specified in input.</p>
    #
    #   @return [String]
    #
    DeleteWorkflowOutput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a Delta data store to crawl one or more Delta tables.</p>
    #
    # @!attribute delta_tables
    #   <p>A list of the Amazon S3 paths to the Delta tables.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute connection_name
    #   <p>The name of the connection to use to connect to the Delta table target.</p>
    #
    #   @return [String]
    #
    # @!attribute write_manifest
    #   <p>Specifies whether to write the manifest files to the Delta table path.</p>
    #
    #   @return [Boolean]
    #
    DeltaTarget = ::Struct.new(
      :delta_tables,
      :connection_name,
      :write_manifest,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A development endpoint where a developer can remotely debug extract, transform, and load
    #       (ETL) scripts.</p>
    #
    # @!attribute endpoint_name
    #   <p>The name of the <code>DevEndpoint</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role used in this
    #         <code>DevEndpoint</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute security_group_ids
    #   <p>A list of security group identifiers used in this <code>DevEndpoint</code>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute subnet_id
    #   <p>The subnet ID for this <code>DevEndpoint</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute yarn_endpoint_address
    #   <p>The YARN endpoint address used by this <code>DevEndpoint</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute private_address
    #   <p>A private IP address to access the <code>DevEndpoint</code> within a VPC if the
    #           <code>DevEndpoint</code> is created within one. The <code>PrivateAddress</code> field is
    #         present only when you create the <code>DevEndpoint</code> within your VPC.</p>
    #
    #   @return [String]
    #
    # @!attribute zeppelin_remote_spark_interpreter_port
    #   <p>The Apache Zeppelin port for the remote Apache Spark interpreter.</p>
    #
    #   @return [Integer]
    #
    # @!attribute public_address
    #   <p>The public IP address used by this <code>DevEndpoint</code>. The
    #           <code>PublicAddress</code> field is present only when you create a non-virtual private cloud
    #         (VPC) <code>DevEndpoint</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of this <code>DevEndpoint</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute worker_type
    #   <p>The type of predefined worker that is allocated to the development endpoint. Accepts a value of Standard, G.1X, or G.2X.</p>
    #   	        <ul>
    #               <li>
    #                  <p>For the <code>Standard</code> worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.</p>
    #               </li>
    #               <li>
    #                  <p>For the <code>G.1X</code> worker type, each worker maps to 1 DPU (4 vCPU, 16 GB of memory, 64 GB disk), and provides 1 executor per worker. We recommend this worker type for memory-intensive jobs.</p>
    #               </li>
    #               <li>
    #                  <p>For the <code>G.2X</code> worker type, each worker maps to 2 DPU (8 vCPU, 32 GB of memory, 128 GB disk), and provides 1 executor per worker. We recommend this worker type for memory-intensive jobs.</p>
    #               </li>
    #            </ul>
    #   	
    #   	        <p>Known issue: when a development endpoint is created with the <code>G.2X</code>
    #               <code>WorkerType</code> configuration, the Spark drivers for the development endpoint will run on 4 vCPU, 16 GB of memory, and a 64 GB disk. </p>
    #
    #   Enum, one of: ["Standard", "G.1X", "G.2X"]
    #
    #   @return [String]
    #
    # @!attribute glue_version
    #   <p>Glue version determines the versions of Apache Spark and Python that Glue supports. The Python version indicates the version supported for running your ETL scripts on development endpoints. </p>
    #
    #            <p>For more information about the available Glue versions and corresponding Spark and Python versions, see <a href="https://docs.aws.amazon.com/glue/latest/dg/add-job.html">Glue version</a> in the developer guide.</p>
    #   	
    #   	        <p>Development endpoints that are created without specifying a Glue version default to Glue 0.9.</p>
    #   	
    #   	        <p>You can specify a version of Python support for development endpoints by using the <code>Arguments</code> parameter in the <code>CreateDevEndpoint</code> or <code>UpdateDevEndpoint</code> APIs. If no arguments are provided, the version defaults to Python 2.</p>
    #
    #   @return [String]
    #
    # @!attribute number_of_workers
    #   <p>The number of workers of a defined <code>workerType</code> that are allocated to the development endpoint.</p>
    #   	
    #   		       <p>The maximum number of workers you can define are 299 for <code>G.1X</code>, and 149 for <code>G.2X</code>. </p>
    #
    #   @return [Integer]
    #
    # @!attribute number_of_nodes
    #   <p>The number of Glue Data Processing Units (DPUs) allocated to this
    #           <code>DevEndpoint</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute availability_zone
    #   <p>The AWS Availability Zone where this <code>DevEndpoint</code> is located.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>The ID of the virtual private cloud (VPC) used by this <code>DevEndpoint</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute extra_python_libs_s3_path
    #   <p>The paths to one or more Python libraries in an Amazon S3 bucket that should be loaded in
    #         your <code>DevEndpoint</code>. Multiple values must be complete paths separated by a
    #         comma.</p>
    #
    #            <note>
    #               <p>You can only use pure Python libraries with a <code>DevEndpoint</code>. Libraries that rely on
    #           C extensions, such as the <a href="http://pandas.pydata.org/">pandas</a> Python data
    #           analysis library, are not currently supported.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute extra_jars_s3_path
    #   <p>The path to one or more Java <code>.jar</code> files in an S3 bucket that should be loaded
    #         in your <code>DevEndpoint</code>.</p>
    #            <note>
    #               <p>You can only use pure Java/Scala libraries with a <code>DevEndpoint</code>.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute failure_reason
    #   <p>The reason for a current failure in this <code>DevEndpoint</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute last_update_status
    #   <p>The status of the last update.</p>
    #
    #   @return [String]
    #
    # @!attribute created_timestamp
    #   <p>The point in time at which this DevEndpoint was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_timestamp
    #   <p>The point in time at which this <code>DevEndpoint</code> was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute public_key
    #   <p>The public key to be used by this <code>DevEndpoint</code> for authentication. This
    #         attribute is provided for backward compatibility because the recommended attribute to use is
    #         public keys.</p>
    #
    #   @return [String]
    #
    # @!attribute public_keys
    #   <p>A list of public keys to be used by the <code>DevEndpoints</code> for authentication.
    #         Using this attribute is preferred over a single public key because the public keys allow you
    #         to have a different private key per client.</p>
    #            <note>
    #               <p>If you previously created an endpoint with a public key, you must remove that key to be
    #           able to set a list of public keys. Call the <code>UpdateDevEndpoint</code> API operation
    #           with the public key content in the <code>deletePublicKeys</code> attribute, and the list of
    #           new keys in the <code>addPublicKeys</code> attribute.</p>
    #            </note>
    #
    #   @return [Array<String>]
    #
    # @!attribute security_configuration
    #   <p>The name of the <code>SecurityConfiguration</code> structure to be used with this
    #           <code>DevEndpoint</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute arguments
    #   <p>A map of arguments used to configure the <code>DevEndpoint</code>.</p>
    #            <p>Valid arguments are:</p>
    #   	        <ul>
    #               <li>
    #                  <p>
    #                     <code>"--enable-glue-datacatalog": ""</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   	
    #            <p>You can specify a version of Python support for development endpoints by using the <code>Arguments</code> parameter in the <code>CreateDevEndpoint</code> or <code>UpdateDevEndpoint</code> APIs. If no arguments are provided, the version defaults to Python 2.</p>
    #
    #   @return [Hash<String, String>]
    #
    DevEndpoint = ::Struct.new(
      :endpoint_name,
      :role_arn,
      :security_group_ids,
      :subnet_id,
      :yarn_endpoint_address,
      :private_address,
      :zeppelin_remote_spark_interpreter_port,
      :public_address,
      :status,
      :worker_type,
      :glue_version,
      :number_of_workers,
      :number_of_nodes,
      :availability_zone,
      :vpc_id,
      :extra_python_libs_s3_path,
      :extra_jars_s3_path,
      :failure_reason,
      :last_update_status,
      :created_timestamp,
      :last_modified_timestamp,
      :public_key,
      :public_keys,
      :security_configuration,
      :arguments,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.zeppelin_remote_spark_interpreter_port ||= 0
        self.number_of_nodes ||= 0
      end

    end

    # <p>Custom libraries to be loaded into a development endpoint.</p>
    #
    # @!attribute extra_python_libs_s3_path
    #   <p>The paths to one or more Python libraries in an Amazon Simple Storage Service (Amazon S3)
    #         bucket that should be loaded in your <code>DevEndpoint</code>. Multiple values must be
    #         complete paths separated by a comma.</p>
    #            <note>
    #               <p>You can only use pure Python libraries with a <code>DevEndpoint</code>. Libraries that rely on
    #           C extensions, such as the <a href="http://pandas.pydata.org/">pandas</a> Python data
    #           analysis library, are not currently supported.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute extra_jars_s3_path
    #   <p>The path to one or more Java <code>.jar</code> files in an S3 bucket that should be loaded
    #         in your <code>DevEndpoint</code>.</p>
    #            <note>
    #               <p>You can only use pure Java/Scala libraries with a <code>DevEndpoint</code>.</p>
    #            </note>
    #
    #   @return [String]
    #
    DevEndpointCustomLibraries = ::Struct.new(
      :extra_python_libs_s3_path,
      :extra_jars_s3_path,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies an Apache Kafka data store.</p>
    #
    # @!attribute name
    #   <p>The name of the data store.</p>
    #
    #   @return [String]
    #
    # @!attribute streaming_options
    #   <p>Specifies the streaming options.</p>
    #
    #   @return [KafkaStreamingSourceOptions]
    #
    # @!attribute window_size
    #   <p>The amount of time to spend processing each micro batch.</p>
    #
    #   @return [Integer]
    #
    # @!attribute detect_schema
    #   <p>Whether to automatically determine the schema from the incoming data.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute data_preview_options
    #   <p>Specifies options related to data preview for viewing a sample of your data.</p>
    #
    #   @return [StreamingDataPreviewOptions]
    #
    DirectKafkaSource = ::Struct.new(
      :name,
      :streaming_options,
      :window_size,
      :detect_schema,
      :data_preview_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a direct Amazon Kinesis data source.</p>
    #
    # @!attribute name
    #   <p>The name of the data source.</p>
    #
    #   @return [String]
    #
    # @!attribute window_size
    #   <p>The amount of time to spend processing each micro batch.</p>
    #
    #   @return [Integer]
    #
    # @!attribute detect_schema
    #   <p>Whether to automatically determine the schema from the incoming data.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute streaming_options
    #   <p>Additional options for the Kinesis streaming data source.</p>
    #
    #   @return [KinesisStreamingSourceOptions]
    #
    # @!attribute data_preview_options
    #   <p>Additional options for data preview.</p>
    #
    #   @return [StreamingDataPreviewOptions]
    #
    DirectKinesisSource = ::Struct.new(
      :name,
      :window_size,
      :detect_schema,
      :streaming_options,
      :data_preview_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A policy that specifies update behavior for the crawler.</p>
    #
    # @!attribute enable_update_catalog
    #   <p>Whether to use the specified update behavior when the crawler finds a changed schema.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute update_behavior
    #   <p>The update behavior when the crawler finds a changed schema.</p>
    #
    #   Enum, one of: ["UPDATE_IN_DATABASE", "LOG"]
    #
    #   @return [String]
    #
    # @!attribute table
    #   <p>Specifies the table in the database that the schema change policy applies to.</p>
    #
    #   @return [String]
    #
    # @!attribute database
    #   <p>Specifies the database that the schema change policy applies to.</p>
    #
    #   @return [String]
    #
    DirectSchemaChangePolicy = ::Struct.new(
      :enable_update_catalog,
      :update_behavior,
      :table,
      :database,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Defines column statistics supported for floating-point number data columns.</p>
    #
    # @!attribute minimum_value
    #   <p>The lowest value in the column.</p>
    #
    #   @return [Float]
    #
    # @!attribute maximum_value
    #   <p>The highest value in the column.</p>
    #
    #   @return [Float]
    #
    # @!attribute number_of_nulls
    #   <p>The number of null values in the column.</p>
    #
    #   @return [Integer]
    #
    # @!attribute number_of_distinct_values
    #   <p>The number of distinct values in a column.</p>
    #
    #   @return [Integer]
    #
    DoubleColumnStatisticsData = ::Struct.new(
      :minimum_value,
      :maximum_value,
      :number_of_nulls,
      :number_of_distinct_values,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.minimum_value ||= 0
        self.maximum_value ||= 0
        self.number_of_nulls ||= 0
        self.number_of_distinct_values ||= 0
      end

    end

    # <p>Specifies a transform that removes rows of repeating data from a data set. </p>
    #
    # @!attribute name
    #   <p>The name of the transform node.</p>
    #
    #   @return [String]
    #
    # @!attribute inputs
    #   <p>The data inputs identified by their node names.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute columns
    #   <p>The name of the columns to be merged or removed if repeating.</p>
    #
    #   @return [Array<Array<String>>]
    #
    DropDuplicates = ::Struct.new(
      :name,
      :inputs,
      :columns,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a transform that chooses the data property keys that you want to drop.</p>
    #
    # @!attribute name
    #   <p>The name of the transform node.</p>
    #
    #   @return [String]
    #
    # @!attribute inputs
    #   <p>The data inputs identified by their node names.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute paths
    #   <p>A JSON path to a variable in the data structure.</p>
    #
    #   @return [Array<Array<String>>]
    #
    DropFields = ::Struct.new(
      :name,
      :inputs,
      :paths,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a transform that removes columns from the dataset if all values in the column are 'null'. By default, Glue Studio will recognize null objects, but some values such as empty strings, strings that are "null", -1 integers or other placeholders such as zeros, are not automatically recognized as nulls.</p>
    #
    # @!attribute name
    #   <p>The name of the transform node.</p>
    #
    #   @return [String]
    #
    # @!attribute inputs
    #   <p>The data inputs identified by their node names.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute null_check_box_list
    #   <p>A structure that represents whether certain values are recognized as null values for removal.</p>
    #
    #   @return [NullCheckBoxList]
    #
    # @!attribute null_text_list
    #   <p>A structure that specifies a list of NullValueField structures that represent a custom null value such as zero or other value being used as a null placeholder unique to the dataset.</p>
    #
    #            <p>The <code>DropNullFields</code> transform removes custom null values only if both the value of the null placeholder and the datatype match the data.</p>
    #
    #   @return [Array<NullValueField>]
    #
    DropNullFields = ::Struct.new(
      :name,
      :inputs,
      :null_check_box_list,
      :null_text_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a DynamoDB data source in the Glue Data Catalog.</p>
    #
    # @!attribute name
    #   <p>The name of the data source.</p>
    #
    #   @return [String]
    #
    # @!attribute database
    #   <p>The name of the database to read from.</p>
    #
    #   @return [String]
    #
    # @!attribute table
    #   <p>The name of the table in the database to read from.</p>
    #
    #   @return [String]
    #
    DynamoDBCatalogSource = ::Struct.new(
      :name,
      :database,
      :table,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies an Amazon DynamoDB table to crawl.</p>
    #
    # @!attribute path
    #   <p>The name of the DynamoDB table to crawl.</p>
    #
    #   @return [String]
    #
    # @!attribute scan_all
    #   <p>Indicates whether to scan all the records, or to sample rows from the table. Scanning all the records can take a long time when the table is not a high throughput table.</p>
    #   	
    #   	        <p>A value of <code>true</code> means to scan all records, while a value of <code>false</code> means to sample the records. If no value is specified, the value defaults to <code>true</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute scan_rate
    #   <p>The percentage of the configured read capacity units to use by the Glue crawler. Read capacity units is a term defined by DynamoDB, and is a numeric value that acts as rate limiter for the number of reads that can be performed on that table per second.</p>
    #   	
    #   	        <p>The valid values are null or a value between 0.1 to 1.5. A null value is used when user does not provide a value, and defaults to 0.5 of the configured Read Capacity Unit (for provisioned tables), or 0.25 of the max configured Read Capacity Unit (for tables using on-demand mode).</p>
    #
    #   @return [Float]
    #
    DynamoDBTarget = ::Struct.new(
      :path,
      :scan_all,
      :scan_rate,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An edge represents a directed connection between two components
    #       on a workflow graph.</p>
    #
    # @!attribute source_id
    #   <p>The unique of the node within the workflow where the edge starts.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_id
    #   <p>The unique of the node within the workflow where the edge ends.</p>
    #
    #   @return [String]
    #
    Edge = ::Struct.new(
      :source_id,
      :destination_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EnableHybridValues
    #
    module EnableHybridValues
      # No documentation available.
      #
      TRUE = "TRUE"

      # No documentation available.
      #
      FALSE = "FALSE"
    end

    # <p>Specifies the encryption-at-rest configuration for the Data Catalog.</p>
    #
    # @!attribute catalog_encryption_mode
    #   <p>The encryption-at-rest mode for encrypting Data Catalog data.</p>
    #
    #   Enum, one of: ["DISABLED", "SSE-KMS"]
    #
    #   @return [String]
    #
    # @!attribute sse_aws_kms_key_id
    #   <p>The ID of the KMS key to use for encryption at rest.</p>
    #
    #   @return [String]
    #
    EncryptionAtRest = ::Struct.new(
      :catalog_encryption_mode,
      :sse_aws_kms_key_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies an encryption configuration.</p>
    #
    # @!attribute s3_encryption
    #   <p>The encryption configuration for Amazon Simple Storage Service (Amazon S3) data.</p>
    #
    #   @return [Array<S3Encryption>]
    #
    # @!attribute cloud_watch_encryption
    #   <p>The encryption configuration for Amazon CloudWatch.</p>
    #
    #   @return [CloudWatchEncryption]
    #
    # @!attribute job_bookmarks_encryption
    #   <p>The encryption configuration for job bookmarks.</p>
    #
    #   @return [JobBookmarksEncryption]
    #
    EncryptionConfiguration = ::Struct.new(
      :s3_encryption,
      :cloud_watch_encryption,
      :job_bookmarks_encryption,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A specified entity does not exist</p>
    #
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #
    #   @return [String]
    #
    EntityNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains details about an error.</p>
    #
    # @!attribute error_code
    #   <p>The code associated with this error.</p>
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>A message describing the error.</p>
    #
    #   @return [String]
    #
    ErrorDetail = ::Struct.new(
      :error_code,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object containing error details.</p>
    #
    # @!attribute error_code
    #   <p>The error code for an error.</p>
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>The error message for an error.</p>
    #
    #   @return [String]
    #
    ErrorDetails = ::Struct.new(
      :error_code,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Evaluation metrics provide an estimate of the quality of your machine learning transform.</p>
    #
    # @!attribute transform_type
    #   <p>The type of machine learning transform.</p>
    #
    #   Enum, one of: ["FIND_MATCHES"]
    #
    #   @return [String]
    #
    # @!attribute find_matches_metrics
    #   <p>The evaluation metrics for the find matches algorithm.</p>
    #
    #   @return [FindMatchesMetrics]
    #
    EvaluationMetrics = ::Struct.new(
      :transform_type,
      :find_matches_metrics,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Batch condition that must be met (specified number of events received or batch time window expired)
    #       before EventBridge event trigger fires.</p>
    #
    # @!attribute batch_size
    #   <p>Number of events that must be received from Amazon EventBridge before EventBridge event trigger fires.</p>
    #
    #   @return [Integer]
    #
    # @!attribute batch_window
    #   <p>Window of time in seconds after which EventBridge event trigger fires. Window starts when first event is received.</p>
    #
    #   @return [Integer]
    #
    EventBatchingCondition = ::Struct.new(
      :batch_size,
      :batch_window,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.batch_size ||= 0
      end

    end

    # <p>An execution property of a job.</p>
    #
    # @!attribute max_concurrent_runs
    #   <p>The maximum number of concurrent runs allowed for the job.
    #         The default is 1. An error is returned when this threshold is reached.
    #         The maximum value you can specify is controlled by a service limit.</p>
    #
    #   @return [Integer]
    #
    ExecutionProperty = ::Struct.new(
      :max_concurrent_runs,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_concurrent_runs ||= 0
      end

    end

    # Includes enum constants for ExistCondition
    #
    module ExistCondition
      # No documentation available.
      #
      MUST_EXIST = "MUST_EXIST"

      # No documentation available.
      #
      NOT_EXIST = "NOT_EXIST"

      # No documentation available.
      #
      NONE = "NONE"
    end

    # <p>Specifies configuration properties for an exporting labels task run.</p>
    #
    # @!attribute output_s3_path
    #   <p>The Amazon Simple Storage Service (Amazon S3) path where you will export the
    #         labels.</p>
    #
    #   @return [String]
    #
    ExportLabelsTaskRunProperties = ::Struct.new(
      :output_s3_path,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a transform that locates records in the dataset that have missing values and adds a new field with a value determined by imputation. The input data set is used to train the machine learning model that determines what the missing value should be.</p>
    #
    # @!attribute name
    #   <p>The name of the transform node.</p>
    #
    #   @return [String]
    #
    # @!attribute inputs
    #   <p>The data inputs identified by their node names.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute imputed_path
    #   <p>A JSON path to a variable in the data structure for the dataset that is imputed.</p>
    #
    #   @return [String]
    #
    # @!attribute filled_path
    #   <p>A JSON path to a variable in the data structure for the dataset that is filled.</p>
    #
    #   @return [String]
    #
    FillMissingValues = ::Struct.new(
      :name,
      :inputs,
      :imputed_path,
      :filled_path,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a transform that splits a dataset into two, based on a filter condition.</p>
    #
    # @!attribute name
    #   <p>The name of the transform node.</p>
    #
    #   @return [String]
    #
    # @!attribute inputs
    #   <p>The data inputs identified by their node names.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute logical_operator
    #   <p>The operator used to filter rows by comparing the key value to a specified value.</p>
    #
    #   Enum, one of: ["AND", "OR"]
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>Specifies a filter expression.</p>
    #
    #   @return [Array<FilterExpression>]
    #
    Filter = ::Struct.new(
      :name,
      :inputs,
      :logical_operator,
      :filters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a filter expression.</p>
    #
    # @!attribute operation
    #   <p>The type of operation to perform in the expression.</p>
    #
    #   Enum, one of: ["EQ", "LT", "GT", "LTE", "GTE", "REGEX", "ISNULL"]
    #
    #   @return [String]
    #
    # @!attribute negated
    #   <p>Whether the expression is to be negated.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute values
    #   <p>A list of filter values.</p>
    #
    #   @return [Array<FilterValue>]
    #
    FilterExpression = ::Struct.new(
      :operation,
      :negated,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FilterLogicalOperator
    #
    module FilterLogicalOperator
      # No documentation available.
      #
      AND = "AND"

      # No documentation available.
      #
      OR = "OR"
    end

    # Includes enum constants for FilterOperation
    #
    module FilterOperation
      # No documentation available.
      #
      EQ = "EQ"

      # No documentation available.
      #
      LT = "LT"

      # No documentation available.
      #
      GT = "GT"

      # No documentation available.
      #
      LTE = "LTE"

      # No documentation available.
      #
      GTE = "GTE"

      # No documentation available.
      #
      REGEX = "REGEX"

      # No documentation available.
      #
      ISNULL = "ISNULL"
    end

    # <p>Represents a single entry in the list of values for a <code>FilterExpression</code>. </p>
    #
    # @!attribute type
    #   <p>The type of filter value.</p>
    #
    #   Enum, one of: ["COLUMNEXTRACTED", "CONSTANT"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value to be associated.</p>
    #
    #   @return [Array<String>]
    #
    FilterValue = ::Struct.new(
      :type,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FilterValueType
    #
    module FilterValueType
      # No documentation available.
      #
      COLUMNEXTRACTED = "COLUMNEXTRACTED"

      # No documentation available.
      #
      CONSTANT = "CONSTANT"
    end

    # <p>The evaluation metrics for the find matches algorithm. The quality of your machine
    #       learning transform is measured by getting your transform to predict some matches and comparing
    #       the results to known matches from the same dataset. The quality metrics are based on a subset
    #       of your data, so they are not precise.</p>
    #
    # @!attribute area_under_pr_curve
    #   <p>The area under the precision/recall curve (AUPRC) is a single number measuring the overall
    #         quality of the transform, that is independent of the choice made for precision vs. recall.
    #         Higher values indicate that you have a more attractive precision vs. recall tradeoff.</p>
    #   	        <p>For more information, see <a href="https://en.wikipedia.org/wiki/Precision_and_recall">Precision and recall</a> in Wikipedia.</p>
    #
    #   @return [Float]
    #
    # @!attribute precision
    #   <p>The precision metric indicates when often your transform is correct when it predicts a match. Specifically, it measures how well the transform finds true positives from the total true positives possible.</p>
    #            <p>For more information, see <a href="https://en.wikipedia.org/wiki/Precision_and_recall">Precision and recall</a> in Wikipedia.</p>
    #
    #   @return [Float]
    #
    # @!attribute recall
    #   <p>The recall metric indicates that for an actual match, how often your transform predicts
    #         the match. Specifically, it measures how well the transform finds true positives from the
    #         total records in the source data.</p>
    #            <p>For more information, see <a href="https://en.wikipedia.org/wiki/Precision_and_recall">Precision and recall</a> in Wikipedia.</p>
    #
    #   @return [Float]
    #
    # @!attribute f1
    #   <p>The maximum F1 metric indicates the transform's accuracy between 0 and 1, where 1 is the best accuracy.</p>
    #            <p>For more information, see <a href="https://en.wikipedia.org/wiki/F1_score">F1 score</a> in Wikipedia.</p>
    #
    #   @return [Float]
    #
    # @!attribute confusion_matrix
    #   <p>The confusion matrix shows you what your transform is predicting accurately and what types of errors it is making.</p>
    #   	        <p>For more information, see <a href="https://en.wikipedia.org/wiki/Confusion_matrix">Confusion matrix</a> in Wikipedia.</p>
    #
    #   @return [ConfusionMatrix]
    #
    # @!attribute column_importances
    #   <p>A list of <code>ColumnImportance</code> structures containing column importance metrics, sorted in order of descending importance.</p>
    #
    #   @return [Array<ColumnImportance>]
    #
    FindMatchesMetrics = ::Struct.new(
      :area_under_pr_curve,
      :precision,
      :recall,
      :f1,
      :confusion_matrix,
      :column_importances,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The parameters to configure the find matches transform.</p>
    #
    # @!attribute primary_key_column_name
    #   <p>The name of a column that uniquely identifies rows in the source table. Used to help identify matching records.</p>
    #
    #   @return [String]
    #
    # @!attribute precision_recall_tradeoff
    #   <p>The value selected when tuning your transform for a balance between precision and recall.
    #         A value of 0.5 means no preference; a value of 1.0 means a bias purely for precision, and a
    #         value of 0.0 means a bias for recall. Because this is a tradeoff, choosing values close to 1.0
    #         means very low recall, and choosing values close to 0.0 results in very low precision.</p>
    #   	
    #   	        <p>The precision metric indicates how often your model is correct when it predicts a match. </p>
    #   	
    #   	        <p>The recall metric indicates that for an actual match, how often your model predicts the
    #         match.</p>
    #
    #   @return [Float]
    #
    # @!attribute accuracy_cost_tradeoff
    #   <p>The value that is selected when tuning your transform for a balance between accuracy and
    #         cost. A value of 0.5 means that the system balances accuracy and cost concerns. A value of 1.0
    #         means a bias purely for accuracy, which typically results in a higher cost, sometimes
    #         substantially higher. A value of 0.0 means a bias purely for cost, which results in a less
    #         accurate <code>FindMatches</code> transform, sometimes with unacceptable accuracy.</p>
    #   	
    #   	        <p>Accuracy measures how well the transform finds true positives and true negatives. Increasing accuracy requires more machine resources and cost. But it also results in increased recall. </p>
    #   	
    #   	        <p>Cost measures how many compute resources, and thus money, are consumed to run the
    #         transform.</p>
    #
    #   @return [Float]
    #
    # @!attribute enforce_provided_labels
    #   <p>The value to switch on or off to force the output to match the provided labels from users. If the value is <code>True</code>, the <code>find matches</code> transform forces the output to match the provided labels. The results override the normal conflation results. If the value is <code>False</code>, the <code>find matches</code> transform does not ensure all the labels provided are respected, and the results rely on the trained model.</p>
    #            <p>Note that setting this value to true may increase the conflation execution time.</p>
    #
    #   @return [Boolean]
    #
    FindMatchesParameters = ::Struct.new(
      :primary_key_column_name,
      :precision_recall_tradeoff,
      :accuracy_cost_tradeoff,
      :enforce_provided_labels,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies configuration properties for a Find Matches task run.</p>
    #
    # @!attribute job_id
    #   <p>The job ID for the Find Matches task run.</p>
    #
    #   @return [String]
    #
    # @!attribute job_name
    #   <p>The name assigned to the job for the Find Matches task run.</p>
    #
    #   @return [String]
    #
    # @!attribute job_run_id
    #   <p>The job run ID for the Find Matches task run.</p>
    #
    #   @return [String]
    #
    FindMatchesTaskRunProperties = ::Struct.new(
      :job_id,
      :job_name,
      :job_run_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the blueprint.</p>
    #
    #   @return [String]
    #
    # @!attribute include_blueprint
    #   <p>Specifies whether or not to include the blueprint in the response.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute include_parameter_spec
    #   <p>Specifies whether or not to include the parameter specification.</p>
    #
    #   @return [Boolean]
    #
    GetBlueprintInput = ::Struct.new(
      :name,
      :include_blueprint,
      :include_parameter_spec,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute blueprint
    #   <p>Returns a <code>Blueprint</code> object.</p>
    #
    #   @return [Blueprint]
    #
    GetBlueprintOutput = ::Struct.new(
      :blueprint,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute blueprint_name
    #   <p>The name of the blueprint.</p>
    #
    #   @return [String]
    #
    # @!attribute run_id
    #   <p>The run ID for the blueprint run you want to retrieve.</p>
    #
    #   @return [String]
    #
    GetBlueprintRunInput = ::Struct.new(
      :blueprint_name,
      :run_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute blueprint_run
    #   <p>Returns a <code>BlueprintRun</code> object.</p>
    #
    #   @return [BlueprintRun]
    #
    GetBlueprintRunOutput = ::Struct.new(
      :blueprint_run,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute blueprint_name
    #   <p>The name of the blueprint.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A continuation token, if this is a continuation request.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum size of a list to return.</p>
    #
    #   @return [Integer]
    #
    GetBlueprintRunsInput = ::Struct.new(
      :blueprint_name,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute blueprint_runs
    #   <p>Returns a list of <code>BlueprintRun</code> objects.</p>
    #
    #   @return [Array<BlueprintRun>]
    #
    # @!attribute next_token
    #   <p>A continuation token, if not all blueprint runs have been returned.</p>
    #
    #   @return [String]
    #
    GetBlueprintRunsOutput = ::Struct.new(
      :blueprint_runs,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the catalog to migrate. Currently, this should be the Amazon Web Services account ID.</p>
    #
    #   @return [String]
    #
    GetCatalogImportStatusInput = ::Struct.new(
      :catalog_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute import_status
    #   <p>The status of the specified catalog migration.</p>
    #
    #   @return [CatalogImportStatus]
    #
    GetCatalogImportStatusOutput = ::Struct.new(
      :import_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>Name of the classifier to retrieve.</p>
    #
    #   @return [String]
    #
    GetClassifierInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute classifier
    #   <p>The requested classifier.</p>
    #
    #   @return [Classifier]
    #
    GetClassifierOutput = ::Struct.new(
      :classifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The size of the list to return (optional).</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>An optional continuation token.</p>
    #
    #   @return [String]
    #
    GetClassifiersInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute classifiers
    #   <p>The requested list of classifier
    #         objects.</p>
    #
    #   @return [Array<Classifier>]
    #
    # @!attribute next_token
    #   <p>A continuation token.</p>
    #
    #   @return [String]
    #
    GetClassifiersOutput = ::Struct.new(
      :classifiers,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog where the partitions in question reside.
    #         If none is supplied, the Amazon Web Services account ID is used by default.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The name of the catalog database where the partitions reside.</p>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>The name of the partitions' table.</p>
    #
    #   @return [String]
    #
    # @!attribute partition_values
    #   <p>A list of partition values identifying the partition.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute column_names
    #   <p>A list of the column names.</p>
    #
    #   @return [Array<String>]
    #
    GetColumnStatisticsForPartitionInput = ::Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :partition_values,
      :column_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute column_statistics_list
    #   <p>List of ColumnStatistics that failed to be retrieved.</p>
    #
    #   @return [Array<ColumnStatistics>]
    #
    # @!attribute errors
    #   <p>Error occurred during retrieving column statistics data.</p>
    #
    #   @return [Array<ColumnError>]
    #
    GetColumnStatisticsForPartitionOutput = ::Struct.new(
      :column_statistics_list,
      :errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog where the partitions in question reside.
    #         If none is supplied, the Amazon Web Services account ID is used by default.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The name of the catalog database where the partitions reside.</p>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>The name of the partitions' table.</p>
    #
    #   @return [String]
    #
    # @!attribute column_names
    #   <p>A list of the column names.</p>
    #
    #   @return [Array<String>]
    #
    GetColumnStatisticsForTableInput = ::Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :column_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute column_statistics_list
    #   <p>List of ColumnStatistics that failed to be retrieved.</p>
    #
    #   @return [Array<ColumnStatistics>]
    #
    # @!attribute errors
    #   <p>List of ColumnStatistics that failed to be retrieved.</p>
    #
    #   @return [Array<ColumnError>]
    #
    GetColumnStatisticsForTableOutput = ::Struct.new(
      :column_statistics_list,
      :errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog in which the connection resides. If none is provided, the Amazon Web Services
    #         account ID is used by default.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the connection definition to retrieve.</p>
    #
    #   @return [String]
    #
    # @!attribute hide_password
    #   <p>Allows you to retrieve the connection metadata without returning the password. For
    #         instance, the AWS Glue console uses this flag to retrieve the connection, and does not display
    #         the password. Set this parameter when the caller might not have permission to use the KMS
    #         key to decrypt the password, but it does have permission to access the rest of the connection
    #         properties.</p>
    #
    #   @return [Boolean]
    #
    GetConnectionInput = ::Struct.new(
      :catalog_id,
      :name,
      :hide_password,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.hide_password ||= false
      end

    end

    # @!attribute connection
    #   <p>The requested connection definition.</p>
    #
    #   @return [Connection]
    #
    GetConnectionOutput = ::Struct.new(
      :connection,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Filters the connection definitions that are returned by the <code>GetConnections</code>
    #       API operation.</p>
    #
    # @!attribute match_criteria
    #   <p>A criteria string that must match the criteria recorded in the
    #          connection definition for that connection definition to be returned.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute connection_type
    #   <p>The type of connections to return. Currently, SFTP is not supported.</p>
    #
    #   Enum, one of: ["JDBC", "SFTP", "MONGODB", "KAFKA", "NETWORK", "MARKETPLACE", "CUSTOM"]
    #
    #   @return [String]
    #
    GetConnectionsFilter = ::Struct.new(
      :match_criteria,
      :connection_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog in which the connections reside. If none is provided, the Amazon Web Services
    #         account ID is used by default.</p>
    #
    #   @return [String]
    #
    # @!attribute filter
    #   <p>A filter that controls which connections are returned.</p>
    #
    #   @return [GetConnectionsFilter]
    #
    # @!attribute hide_password
    #   <p>Allows you to retrieve the connection metadata without returning the password. For
    #         instance, the AWS Glue console uses this flag to retrieve the connection, and does not display
    #         the password. Set this parameter when the caller might not have permission to use the KMS
    #         key to decrypt the password, but it does have permission to access the rest of the connection
    #         properties.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute next_token
    #   <p>A continuation token, if this is a continuation call.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of connections to return in one response.</p>
    #
    #   @return [Integer]
    #
    GetConnectionsInput = ::Struct.new(
      :catalog_id,
      :filter,
      :hide_password,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.hide_password ||= false
      end

    end

    # @!attribute connection_list
    #   <p>A list of requested connection definitions.</p>
    #
    #   @return [Array<Connection>]
    #
    # @!attribute next_token
    #   <p>A continuation token, if the list of connections returned does not
    #         include the last of the filtered connections.</p>
    #
    #   @return [String]
    #
    GetConnectionsOutput = ::Struct.new(
      :connection_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the crawler to retrieve metadata for.</p>
    #
    #   @return [String]
    #
    GetCrawlerInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute crawler_name_list
    #   <p>A list of the names of crawlers about which to retrieve metrics.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute max_results
    #   <p>The maximum size of a list to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A continuation token, if this is a continuation call.</p>
    #
    #   @return [String]
    #
    GetCrawlerMetricsInput = ::Struct.new(
      :crawler_name_list,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute crawler_metrics_list
    #   <p>A list of metrics for the specified crawler.</p>
    #
    #   @return [Array<CrawlerMetrics>]
    #
    # @!attribute next_token
    #   <p>A continuation token, if the returned list does not contain the
    #         last metric available.</p>
    #
    #   @return [String]
    #
    GetCrawlerMetricsOutput = ::Struct.new(
      :crawler_metrics_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute crawler
    #   <p>The metadata for the specified crawler.</p>
    #
    #   @return [Crawler]
    #
    GetCrawlerOutput = ::Struct.new(
      :crawler,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The number of crawlers to return on each call.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A continuation token, if this is a continuation request.</p>
    #
    #   @return [String]
    #
    GetCrawlersInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute crawlers
    #   <p>A list of crawler metadata.</p>
    #
    #   @return [Array<Crawler>]
    #
    # @!attribute next_token
    #   <p>A continuation token, if the returned list has not reached the end
    #         of those defined in this customer account.</p>
    #
    #   @return [String]
    #
    GetCrawlersOutput = ::Struct.new(
      :crawlers,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the custom pattern that you want to retrieve.</p>
    #
    #   @return [String]
    #
    GetCustomEntityTypeInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the custom pattern that you retrieved.</p>
    #
    #   @return [String]
    #
    # @!attribute regex_string
    #   <p>A regular expression string that is used for detecting sensitive data in a custom pattern.</p>
    #
    #   @return [String]
    #
    # @!attribute context_words
    #   <p>A list of context words if specified when you created the custom pattern. If none of these context words are found within the vicinity of the regular expression the data will not be detected as sensitive data.</p>
    #
    #   @return [Array<String>]
    #
    GetCustomEntityTypeOutput = ::Struct.new(
      :name,
      :regex_string,
      :context_words,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog to retrieve the security configuration for. If none is
    #         provided, the Amazon Web Services account ID is used by default.</p>
    #
    #   @return [String]
    #
    GetDataCatalogEncryptionSettingsInput = ::Struct.new(
      :catalog_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute data_catalog_encryption_settings
    #   <p>The requested security configuration.</p>
    #
    #   @return [DataCatalogEncryptionSettings]
    #
    GetDataCatalogEncryptionSettingsOutput = ::Struct.new(
      :data_catalog_encryption_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog in which the database resides. If none is provided, the Amazon Web Services
    #         account ID is used by default.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the database to retrieve. For Hive compatibility, this
    #         should be all lowercase.</p>
    #
    #   @return [String]
    #
    GetDatabaseInput = ::Struct.new(
      :catalog_id,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute database
    #   <p>The definition of the specified database in the Data Catalog.</p>
    #
    #   @return [Database]
    #
    GetDatabaseOutput = ::Struct.new(
      :database,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog from which to retrieve <code>Databases</code>. If none is
    #         provided, the Amazon Web Services account ID is used by default.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A continuation token, if this is a continuation call.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of databases to return in one response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute resource_share_type
    #   <p>Allows you to specify that you want to list the databases shared with your account. The allowable values are <code>FOREIGN</code> or <code>ALL</code>. </p>
    #   	
    #   	        <ul>
    #               <li>
    #                  <p>If set to <code>FOREIGN</code>, will list the databases shared with your account. </p>
    #               </li>
    #               <li>
    #                  <p>If set to <code>ALL</code>, will list the databases shared with your account, as well as the databases in yor local account. </p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["FOREIGN", "ALL"]
    #
    #   @return [String]
    #
    GetDatabasesInput = ::Struct.new(
      :catalog_id,
      :next_token,
      :max_results,
      :resource_share_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute database_list
    #   <p>A list of <code>Database</code> objects from the specified catalog.</p>
    #
    #   @return [Array<Database>]
    #
    # @!attribute next_token
    #   <p>A continuation token for paginating the returned list of tokens,
    #         returned if the current segment of the list is not the last.</p>
    #
    #   @return [String]
    #
    GetDatabasesOutput = ::Struct.new(
      :database_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute python_script
    #   <p>The Python script to transform.</p>
    #
    #   @return [String]
    #
    GetDataflowGraphInput = ::Struct.new(
      :python_script,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute dag_nodes
    #   <p>A list of the nodes in the resulting DAG.</p>
    #
    #   @return [Array<CodeGenNode>]
    #
    # @!attribute dag_edges
    #   <p>A list of the edges in the resulting DAG.</p>
    #
    #   @return [Array<CodeGenEdge>]
    #
    GetDataflowGraphOutput = ::Struct.new(
      :dag_nodes,
      :dag_edges,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute endpoint_name
    #   <p>Name of the <code>DevEndpoint</code> to retrieve information for.</p>
    #
    #   @return [String]
    #
    GetDevEndpointInput = ::Struct.new(
      :endpoint_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute dev_endpoint
    #   <p>A <code>DevEndpoint</code> definition.</p>
    #
    #   @return [DevEndpoint]
    #
    GetDevEndpointOutput = ::Struct.new(
      :dev_endpoint,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum size of information to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A continuation token, if this is a continuation call.</p>
    #
    #   @return [String]
    #
    GetDevEndpointsInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute dev_endpoints
    #   <p>A list of <code>DevEndpoint</code> definitions.</p>
    #
    #   @return [Array<DevEndpoint>]
    #
    # @!attribute next_token
    #   <p>A continuation token, if not all <code>DevEndpoint</code> definitions have yet been
    #         returned.</p>
    #
    #   @return [String]
    #
    GetDevEndpointsOutput = ::Struct.new(
      :dev_endpoints,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_name
    #   <p>The name of the job in question.</p>
    #
    #   @return [String]
    #
    # @!attribute run_id
    #   <p>The unique run identifier associated with this job run.</p>
    #
    #   @return [String]
    #
    GetJobBookmarkInput = ::Struct.new(
      :job_name,
      :run_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_bookmark_entry
    #   <p>A structure that defines a point that a job can resume processing.</p>
    #
    #   @return [JobBookmarkEntry]
    #
    GetJobBookmarkOutput = ::Struct.new(
      :job_bookmark_entry,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_name
    #   <p>The name of the job definition to retrieve.</p>
    #
    #   @return [String]
    #
    GetJobInput = ::Struct.new(
      :job_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job
    #   <p>The requested job definition.</p>
    #
    #   @return [Job]
    #
    GetJobOutput = ::Struct.new(
      :job,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_name
    #   <p>Name of the job definition being run.</p>
    #
    #   @return [String]
    #
    # @!attribute run_id
    #   <p>The ID of the job run.</p>
    #
    #   @return [String]
    #
    # @!attribute predecessors_included
    #   <p>True if a list of predecessor runs should be returned.</p>
    #
    #   @return [Boolean]
    #
    GetJobRunInput = ::Struct.new(
      :job_name,
      :run_id,
      :predecessors_included,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.predecessors_included ||= false
      end

    end

    # @!attribute job_run
    #   <p>The requested job-run metadata.</p>
    #
    #   @return [JobRun]
    #
    GetJobRunOutput = ::Struct.new(
      :job_run,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_name
    #   <p>The name of the job definition for which to retrieve all job runs.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A continuation token, if this is a continuation call.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum size of the response.</p>
    #
    #   @return [Integer]
    #
    GetJobRunsInput = ::Struct.new(
      :job_name,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_runs
    #   <p>A list of job-run metadata objects.</p>
    #
    #   @return [Array<JobRun>]
    #
    # @!attribute next_token
    #   <p>A continuation token, if not all requested job runs have been returned.</p>
    #
    #   @return [String]
    #
    GetJobRunsOutput = ::Struct.new(
      :job_runs,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A continuation token, if this is a continuation call.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum size of the response.</p>
    #
    #   @return [Integer]
    #
    GetJobsInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute jobs
    #   <p>A list of job definitions.</p>
    #
    #   @return [Array<Job>]
    #
    # @!attribute next_token
    #   <p>A continuation token, if not all job definitions have yet been returned.</p>
    #
    #   @return [String]
    #
    GetJobsOutput = ::Struct.new(
      :jobs,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute transform_id
    #   <p>The unique identifier of the machine learning transform.</p>
    #
    #   @return [String]
    #
    # @!attribute task_run_id
    #   <p>The unique identifier of the task run.</p>
    #
    #   @return [String]
    #
    GetMLTaskRunInput = ::Struct.new(
      :transform_id,
      :task_run_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute transform_id
    #   <p>The unique identifier of the task run.</p>
    #
    #   @return [String]
    #
    # @!attribute task_run_id
    #   <p>The unique run identifier associated with this run.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status for this task run.</p>
    #
    #   Enum, one of: ["STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED", "TIMEOUT"]
    #
    #   @return [String]
    #
    # @!attribute log_group_name
    #   <p>The names of the log groups that are associated with the task run.</p>
    #
    #   @return [String]
    #
    # @!attribute properties
    #   <p>The list of properties that are associated with the task run.</p>
    #
    #   @return [TaskRunProperties]
    #
    # @!attribute error_string
    #   <p>The error strings that are associated with the task run.</p>
    #
    #   @return [String]
    #
    # @!attribute started_on
    #   <p>The date and time when this task run started.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_on
    #   <p>The date and time when this task run was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute completed_on
    #   <p>The date and time when this task run was completed.</p>
    #
    #   @return [Time]
    #
    # @!attribute execution_time
    #   <p>The amount of time (in seconds) that the task run consumed resources.</p>
    #
    #   @return [Integer]
    #
    GetMLTaskRunOutput = ::Struct.new(
      :transform_id,
      :task_run_id,
      :status,
      :log_group_name,
      :properties,
      :error_string,
      :started_on,
      :last_modified_on,
      :completed_on,
      :execution_time,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.execution_time ||= 0
      end

    end

    # @!attribute transform_id
    #   <p>The unique identifier of the machine learning transform.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A token for pagination of the results. The default is empty.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return. </p>
    #
    #   @return [Integer]
    #
    # @!attribute filter
    #   <p>The filter criteria, in the <code>TaskRunFilterCriteria</code> structure, for the task run.</p>
    #
    #   @return [TaskRunFilterCriteria]
    #
    # @!attribute sort
    #   <p>The sorting criteria, in the <code>TaskRunSortCriteria</code> structure, for the task run.</p>
    #
    #   @return [TaskRunSortCriteria]
    #
    GetMLTaskRunsInput = ::Struct.new(
      :transform_id,
      :next_token,
      :max_results,
      :filter,
      :sort,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute task_runs
    #   <p>A list of task runs that are associated with the transform.</p>
    #
    #   @return [Array<TaskRun>]
    #
    # @!attribute next_token
    #   <p>A pagination token, if more results are available.</p>
    #
    #   @return [String]
    #
    GetMLTaskRunsOutput = ::Struct.new(
      :task_runs,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute transform_id
    #   <p>The unique identifier of the transform, generated at the time that the transform was
    #         created.</p>
    #
    #   @return [String]
    #
    GetMLTransformInput = ::Struct.new(
      :transform_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute transform_id
    #   <p>The unique identifier of the transform, generated at the time that the transform was
    #         created.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The unique name given to the transform when it was created.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the transform.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The last known status of the transform (to indicate whether it can be used or not). One of "NOT_READY", "READY", or "DELETING".</p>
    #
    #   Enum, one of: ["NOT_READY", "READY", "DELETING"]
    #
    #   @return [String]
    #
    # @!attribute created_on
    #   <p>The date and time when the transform was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_on
    #   <p>The date and time when the transform was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute input_record_tables
    #   <p>A list of Glue table definitions used by the transform.</p>
    #
    #   @return [Array<GlueTable>]
    #
    # @!attribute parameters
    #   <p>The configuration parameters that are specific to the algorithm used.</p>
    #
    #   @return [TransformParameters]
    #
    # @!attribute evaluation_metrics
    #   <p>The latest evaluation metrics.</p>
    #
    #   @return [EvaluationMetrics]
    #
    # @!attribute label_count
    #   <p>The number of labels available for this transform.</p>
    #
    #   @return [Integer]
    #
    # @!attribute schema
    #   <p>The <code>Map<Column, Type></code> object that represents the schema that this
    #         transform accepts. Has an upper bound of 100 columns.</p>
    #
    #   @return [Array<SchemaColumn>]
    #
    # @!attribute role
    #   <p>The name or Amazon Resource Name (ARN) of the IAM role with the required
    #         permissions.</p>
    #
    #   @return [String]
    #
    # @!attribute glue_version
    #   <p>This value determines which version of Glue this machine learning transform is compatible with. Glue 1.0 is recommended for most customers. If the value is not set, the Glue compatibility defaults to Glue 0.9.  For more information, see <a href="https://docs.aws.amazon.com/glue/latest/dg/release-notes.html release-notes-versions">Glue Versions</a> in the developer guide.</p>
    #
    #   @return [String]
    #
    # @!attribute max_capacity
    #   <p>The number of Glue data processing units (DPUs) that are allocated to task runs for this transform. You can allocate from 2 to 100 DPUs; the default is 10. A DPU is a relative measure of
    #         processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more
    #         information, see the <a href="https://aws.amazon.com/glue/pricing/">Glue pricing
    #           page</a>. </p>
    #   		
    #            <p>When the <code>WorkerType</code> field is set to a value other than <code>Standard</code>, the <code>MaxCapacity</code> field is set automatically and becomes read-only.</p>
    #
    #   @return [Float]
    #
    # @!attribute worker_type
    #   <p>The type of predefined worker that is allocated when this task runs. Accepts a value of Standard, G.1X, or G.2X.</p>
    #   	        <ul>
    #               <li>
    #                  <p>For the <code>Standard</code> worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.</p>
    #               </li>
    #               <li>
    #                  <p>For the <code>G.1X</code> worker type, each worker provides 4 vCPU, 16 GB of memory and a 64GB disk, and 1 executor per worker.</p>
    #               </li>
    #               <li>
    #                  <p>For the <code>G.2X</code> worker type, each worker provides 8 vCPU, 32 GB of memory and a 128GB disk, and 1 executor per worker.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["Standard", "G.1X", "G.2X"]
    #
    #   @return [String]
    #
    # @!attribute number_of_workers
    #   <p>The number of workers of a defined <code>workerType</code> that are allocated when this task runs.</p>
    #
    #   @return [Integer]
    #
    # @!attribute timeout
    #   <p>The timeout for a task run for this transform in minutes. This is the maximum time that a task run for this transform can consume resources before it is terminated and enters <code>TIMEOUT</code> status. The default is 2,880 minutes (48 hours).</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_retries
    #   <p>The maximum number of times to retry a task for this transform after a task run fails.</p>
    #
    #   @return [Integer]
    #
    # @!attribute transform_encryption
    #   <p>The encryption-at-rest settings of the transform that apply to accessing user data. Machine learning transforms can access user data encrypted in Amazon S3 using KMS.</p>
    #
    #   @return [TransformEncryption]
    #
    GetMLTransformOutput = ::Struct.new(
      :transform_id,
      :name,
      :description,
      :status,
      :created_on,
      :last_modified_on,
      :input_record_tables,
      :parameters,
      :evaluation_metrics,
      :label_count,
      :schema,
      :role,
      :glue_version,
      :max_capacity,
      :worker_type,
      :number_of_workers,
      :timeout,
      :max_retries,
      :transform_encryption,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.label_count ||= 0
      end

    end

    # @!attribute next_token
    #   <p>A paginated token to offset the results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute filter
    #   <p>The filter transformation criteria.</p>
    #
    #   @return [TransformFilterCriteria]
    #
    # @!attribute sort
    #   <p>The sorting criteria.</p>
    #
    #   @return [TransformSortCriteria]
    #
    GetMLTransformsInput = ::Struct.new(
      :next_token,
      :max_results,
      :filter,
      :sort,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute transforms
    #   <p>A list of machine learning transforms.</p>
    #
    #   @return [Array<MLTransform>]
    #
    # @!attribute next_token
    #   <p>A pagination token, if more results are available.</p>
    #
    #   @return [String]
    #
    GetMLTransformsOutput = ::Struct.new(
      :transforms,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute source
    #   <p>Specifies the source table.</p>
    #
    #   @return [CatalogEntry]
    #
    # @!attribute sinks
    #   <p>A list of target tables.</p>
    #
    #   @return [Array<CatalogEntry>]
    #
    # @!attribute location
    #   <p>Parameters for the mapping.</p>
    #
    #   @return [Location]
    #
    GetMappingInput = ::Struct.new(
      :source,
      :sinks,
      :location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute mapping
    #   <p>A list of mappings to the specified targets.</p>
    #
    #   @return [Array<MappingEntry>]
    #
    GetMappingOutput = ::Struct.new(
      :mapping,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The catalog ID where the table resides.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>Specifies the name of a database from which you want to retrieve partition indexes.</p>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>Specifies the name of a table for which you want to retrieve the partition indexes.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A continuation token, included if this is a continuation call.</p>
    #
    #   @return [String]
    #
    GetPartitionIndexesInput = ::Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute partition_index_descriptor_list
    #   <p>A list of index descriptors.</p>
    #
    #   @return [Array<PartitionIndexDescriptor>]
    #
    # @!attribute next_token
    #   <p>A continuation token, present if the current list segment is not the last.</p>
    #
    #   @return [String]
    #
    GetPartitionIndexesOutput = ::Struct.new(
      :partition_index_descriptor_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog where the partition in question resides. If none is provided,
    #         the Amazon Web Services account ID is used by default.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The name of the catalog database where the partition resides.</p>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>The name of the partition's table.</p>
    #
    #   @return [String]
    #
    # @!attribute partition_values
    #   <p>The values that define the partition.</p>
    #
    #   @return [Array<String>]
    #
    GetPartitionInput = ::Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :partition_values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute partition
    #   <p>The requested information, in the form of a <code>Partition</code>
    #         object.</p>
    #
    #   @return [Partition]
    #
    GetPartitionOutput = ::Struct.new(
      :partition,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog where the partitions in question reside. If none is provided,
    #         the Amazon Web Services account ID is used by default.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The name of the catalog database where the partitions reside.</p>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>The name of the partitions' table.</p>
    #
    #   @return [String]
    #
    # @!attribute expression
    #   <p>An expression that filters the partitions to be returned.</p>
    #            <p>The expression uses SQL syntax similar to the SQL <code>WHERE</code> filter clause. The
    #         SQL statement parser <a href="http://jsqlparser.sourceforge.net/home.php">JSQLParser</a> parses the expression. </p>
    #            <p>
    #               <i>Operators</i>: The following are the operators that you can use in the
    #           <code>Expression</code> API call:</p>
    #            <dl>
    #               <dt>=</dt>
    #               <dd>
    #                  <p>Checks whether the values of the two operands are equal; if yes, then the condition becomes
    #               true.</p>
    #                  <p>Example: Assume 'variable a' holds 10 and 'variable b' holds 20. </p>
    #                  <p>(a = b) is not true.</p>
    #               </dd>
    #               <dt>< ></dt>
    #               <dd>
    #                  <p>Checks whether the values of two operands are equal; if the values are not equal,
    #               then the condition becomes true.</p>
    #                  <p>Example: (a < > b) is true.</p>
    #               </dd>
    #               <dt>></dt>
    #               <dd>
    #                  <p>Checks whether the value of the left operand is greater than the value of the right
    #               operand; if yes, then the condition becomes true.</p>
    #                  <p>Example: (a > b) is not true.</p>
    #               </dd>
    #               <dt><</dt>
    #               <dd>
    #                  <p>Checks whether the value of the left operand is less than the value of the right
    #               operand; if yes, then the condition becomes true.</p>
    #                  <p>Example: (a < b) is true.</p>
    #               </dd>
    #               <dt>>=</dt>
    #               <dd>
    #                  <p>Checks whether the value of the left operand is greater than or equal to the value
    #               of the right operand; if yes, then the condition becomes true.</p>
    #                  <p>Example: (a >= b) is not true.</p>
    #               </dd>
    #               <dt><=</dt>
    #               <dd>
    #                  <p>Checks whether the value of the left operand is less than or equal to the value of
    #               the right operand; if yes, then the condition becomes true.</p>
    #                  <p>Example: (a <= b) is true.</p>
    #               </dd>
    #               <dt>AND, OR, IN, BETWEEN, LIKE, NOT, IS NULL</dt>
    #               <dd>
    #                  <p>Logical operators.</p>
    #               </dd>
    #            </dl>
    #            <p>
    #               <i>Supported Partition Key Types</i>: The following are the supported
    #         partition keys.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>string</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>date</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>timestamp</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>int</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>bigint</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>long</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>tinyint</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>smallint</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>decimal</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>If an type is encountered that is not valid, an exception is thrown. </p>
    #            <p>The following list shows the valid operators on each type. When you define a crawler, the
    #           <code>partitionKey</code> type is created as a <code>STRING</code>, to be compatible with the catalog
    #         partitions. </p>
    #
    #            <p>
    #               <i>Sample API Call</i>: </p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A continuation token, if this is not the first call to retrieve
    #         these partitions.</p>
    #
    #   @return [String]
    #
    # @!attribute segment
    #   <p>The segment of the table's partitions to scan in this request.</p>
    #
    #   @return [Segment]
    #
    # @!attribute max_results
    #   <p>The maximum number of partitions to return in a single response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute exclude_column_schema
    #   <p>When true, specifies not returning the partition column schema. Useful when you are interested only in other partition attributes such as partition values or location. This approach avoids the problem of a large response by not returning duplicate data.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute transaction_id
    #   <p>The transaction ID at which to read the partition contents.</p>
    #
    #   @return [String]
    #
    # @!attribute query_as_of_time
    #   <p>The time as of when to read the partition contents. If not set, the most recent transaction commit time will be used. Cannot be specified along with <code>TransactionId</code>.</p>
    #
    #   @return [Time]
    #
    GetPartitionsInput = ::Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :expression,
      :next_token,
      :segment,
      :max_results,
      :exclude_column_schema,
      :transaction_id,
      :query_as_of_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute partitions
    #   <p>A list of requested partitions.</p>
    #
    #   @return [Array<Partition>]
    #
    # @!attribute next_token
    #   <p>A continuation token, if the returned list of partitions does not include the last
    #         one.</p>
    #
    #   @return [String]
    #
    GetPartitionsOutput = ::Struct.new(
      :partitions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute mapping
    #   <p>The list of mappings from a source table to target tables.</p>
    #
    #   @return [Array<MappingEntry>]
    #
    # @!attribute source
    #   <p>The source table.</p>
    #
    #   @return [CatalogEntry]
    #
    # @!attribute sinks
    #   <p>The target tables.</p>
    #
    #   @return [Array<CatalogEntry>]
    #
    # @!attribute location
    #   <p>The parameters for the mapping.</p>
    #
    #   @return [Location]
    #
    # @!attribute language
    #   <p>The programming language of the code to perform the mapping.</p>
    #
    #   Enum, one of: ["PYTHON", "SCALA"]
    #
    #   @return [String]
    #
    # @!attribute additional_plan_options_map
    #   <p>A map to hold additional optional key-value parameters.</p>
    #   	
    #   	        <p>Currently, these key-value pairs are supported:</p>
    #   	
    #   	        <ul>
    #               <li>
    #                  <p>
    #                     <code>inferSchema</code>  —  Specifies whether to set <code>inferSchema</code> to true or false for the default script generated by an Glue job. For example, to set <code>inferSchema</code> to true, pass the following key value pair:</p>
    #   	              <p>
    #                     <code>--additional-plan-options-map '{"inferSchema":"true"}'</code>
    #                  </p>
    #   	           </li>
    #            </ul>
    #
    #   @return [Hash<String, String>]
    #
    GetPlanInput = ::Struct.new(
      :mapping,
      :source,
      :sinks,
      :location,
      :language,
      :additional_plan_options_map,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute python_script
    #   <p>A Python script to perform the mapping.</p>
    #
    #   @return [String]
    #
    # @!attribute scala_code
    #   <p>The Scala code to perform the mapping.</p>
    #
    #   @return [String]
    #
    GetPlanOutput = ::Struct.new(
      :python_script,
      :scala_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registry_id
    #   <p>This is a wrapper structure that may contain the registry name and Amazon Resource Name (ARN).</p>
    #
    #   @return [RegistryId]
    #
    GetRegistryInput = ::Struct.new(
      :registry_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registry_name
    #   <p>The name of the registry.</p>
    #
    #   @return [String]
    #
    # @!attribute registry_arn
    #   <p>The Amazon Resource Name (ARN) of the registry.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the registry.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the registry.</p>
    #
    #   Enum, one of: ["AVAILABLE", "DELETING"]
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>The date and time the registry was created.</p>
    #
    #   @return [String]
    #
    # @!attribute updated_time
    #   <p>The date and time the registry was updated.</p>
    #
    #   @return [String]
    #
    GetRegistryOutput = ::Struct.new(
      :registry_name,
      :registry_arn,
      :description,
      :status,
      :created_time,
      :updated_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A continuation token, if this is a continuation request.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum size of a list to return.</p>
    #
    #   @return [Integer]
    #
    GetResourcePoliciesInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute get_resource_policies_response_list
    #   <p>A list of the individual resource policies and the account-level resource policy.</p>
    #
    #   @return [Array<GluePolicy>]
    #
    # @!attribute next_token
    #   <p>A continuation token, if the returned list does not contain the last resource policy available.</p>
    #
    #   @return [String]
    #
    GetResourcePoliciesOutput = ::Struct.new(
      :get_resource_policies_response_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the Glue resource for which to retrieve the resource policy. If not
    #         supplied, the Data Catalog resource policy is returned. Use <code>GetResourcePolicies</code>
    #         to view all existing resource policies. For more information see <a href="https://docs.aws.amazon.com/glue/latest/dg/glue-specifying-resource-arns.html">Specifying Glue Resource ARNs</a>.
    #       </p>
    #
    #   @return [String]
    #
    GetResourcePolicyInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy_in_json
    #   <p>Contains the requested policy document, in JSON format.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_hash
    #   <p>Contains the hash value associated with this policy.</p>
    #
    #   @return [String]
    #
    # @!attribute create_time
    #   <p>The date and time at which the policy was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute update_time
    #   <p>The date and time at which the policy was last updated.</p>
    #
    #   @return [Time]
    #
    GetResourcePolicyOutput = ::Struct.new(
      :policy_in_json,
      :policy_hash,
      :create_time,
      :update_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute schema_id
    #   <p>This is a wrapper structure to contain schema identity fields. The structure contains:</p>
    #   	        <ul>
    #               <li>
    #                  <p>SchemaId$SchemaArn: The Amazon Resource Name (ARN) of the schema. One of <code>SchemaArn</code> or <code>SchemaName</code> has to be provided.</p>
    #               </li>
    #               <li>
    #                  <p>SchemaId$SchemaName: The name of the schema. One of <code>SchemaArn</code> or <code>SchemaName</code> has to be provided.</p>
    #               </li>
    #            </ul>
    #
    #   @return [SchemaId]
    #
    # @!attribute schema_definition
    #   <p>The definition of the schema for which schema details are required.</p>
    #
    #   @return [String]
    #
    GetSchemaByDefinitionInput = ::Struct.new(
      :schema_id,
      :schema_definition,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute schema_version_id
    #   <p>The schema ID of the schema version.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_arn
    #   <p>The Amazon Resource Name (ARN) of the schema.</p>
    #
    #   @return [String]
    #
    # @!attribute data_format
    #   <p>The data format of the schema definition. Currently <code>AVRO</code>, <code>JSON</code> and <code>PROTOBUF</code> are supported.</p>
    #
    #   Enum, one of: ["AVRO", "JSON", "PROTOBUF"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the schema version.</p>
    #
    #   Enum, one of: ["AVAILABLE", "PENDING", "FAILURE", "DELETING"]
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>The date and time the schema was created.</p>
    #
    #   @return [String]
    #
    GetSchemaByDefinitionOutput = ::Struct.new(
      :schema_version_id,
      :schema_arn,
      :data_format,
      :status,
      :created_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute schema_id
    #   <p>This is a wrapper structure to contain schema identity fields. The structure contains:</p>
    #   	        <ul>
    #               <li>
    #                  <p>SchemaId$SchemaArn: The Amazon Resource Name (ARN) of the schema. Either <code>SchemaArn</code> or <code>SchemaName</code> and <code>RegistryName</code> has to be provided.</p>
    #               </li>
    #               <li>
    #                  <p>SchemaId$SchemaName: The name of the schema. Either <code>SchemaArn</code> or <code>SchemaName</code> and <code>RegistryName</code> has to be provided.</p>
    #               </li>
    #            </ul>
    #
    #   @return [SchemaId]
    #
    GetSchemaInput = ::Struct.new(
      :schema_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registry_name
    #   <p>The name of the registry.</p>
    #
    #   @return [String]
    #
    # @!attribute registry_arn
    #   <p>The Amazon Resource Name (ARN) of the registry.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_name
    #   <p>The name of the schema.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_arn
    #   <p>The Amazon Resource Name (ARN) of the schema.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of schema if specified when created</p>
    #
    #   @return [String]
    #
    # @!attribute data_format
    #   <p>The data format of the schema definition. Currently <code>AVRO</code>, <code>JSON</code> and <code>PROTOBUF</code> are supported.</p>
    #
    #   Enum, one of: ["AVRO", "JSON", "PROTOBUF"]
    #
    #   @return [String]
    #
    # @!attribute compatibility
    #   <p>The compatibility mode of the schema.</p>
    #
    #   Enum, one of: ["NONE", "DISABLED", "BACKWARD", "BACKWARD_ALL", "FORWARD", "FORWARD_ALL", "FULL", "FULL_ALL"]
    #
    #   @return [String]
    #
    # @!attribute schema_checkpoint
    #   <p>The version number of the checkpoint (the last time the compatibility mode was changed).</p>
    #
    #   @return [Integer]
    #
    # @!attribute latest_schema_version
    #   <p>The latest version of the schema associated with the returned schema definition.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_schema_version
    #   <p>The next version of the schema associated with the returned schema definition.</p>
    #
    #   @return [Integer]
    #
    # @!attribute schema_status
    #   <p>The status of the schema.</p>
    #
    #   Enum, one of: ["AVAILABLE", "PENDING", "DELETING"]
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>The date and time the schema was created.</p>
    #
    #   @return [String]
    #
    # @!attribute updated_time
    #   <p>The date and time the schema was updated.</p>
    #
    #   @return [String]
    #
    GetSchemaOutput = ::Struct.new(
      :registry_name,
      :registry_arn,
      :schema_name,
      :schema_arn,
      :description,
      :data_format,
      :compatibility,
      :schema_checkpoint,
      :latest_schema_version,
      :next_schema_version,
      :schema_status,
      :created_time,
      :updated_time,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.schema_checkpoint ||= 0
        self.latest_schema_version ||= 0
        self.next_schema_version ||= 0
      end

    end

    # @!attribute schema_id
    #   <p>This is a wrapper structure to contain schema identity fields. The structure contains:</p>
    #   	        <ul>
    #               <li>
    #                  <p>SchemaId$SchemaArn: The Amazon Resource Name (ARN) of the schema. Either <code>SchemaArn</code> or <code>SchemaName</code> and <code>RegistryName</code> has to be provided.</p>
    #               </li>
    #               <li>
    #                  <p>SchemaId$SchemaName: The name of the schema. Either <code>SchemaArn</code> or <code>SchemaName</code> and <code>RegistryName</code> has to be provided.</p>
    #               </li>
    #            </ul>
    #
    #   @return [SchemaId]
    #
    # @!attribute schema_version_id
    #   <p>The <code>SchemaVersionId</code> of the schema version. This field is required for fetching by schema ID. Either this or the <code>SchemaId</code> wrapper has to be provided.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_version_number
    #   <p>The version number of the schema.</p>
    #
    #   @return [SchemaVersionNumber]
    #
    GetSchemaVersionInput = ::Struct.new(
      :schema_id,
      :schema_version_id,
      :schema_version_number,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute schema_version_id
    #   <p>The <code>SchemaVersionId</code> of the schema version.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_definition
    #   <p>The schema definition for the schema ID.</p>
    #
    #   @return [String]
    #
    # @!attribute data_format
    #   <p>The data format of the schema definition. Currently <code>AVRO</code>, <code>JSON</code> and <code>PROTOBUF</code> are supported.</p>
    #
    #   Enum, one of: ["AVRO", "JSON", "PROTOBUF"]
    #
    #   @return [String]
    #
    # @!attribute schema_arn
    #   <p>The Amazon Resource Name (ARN) of the schema.</p>
    #
    #   @return [String]
    #
    # @!attribute version_number
    #   <p>The version number of the schema.</p>
    #
    #   @return [Integer]
    #
    # @!attribute status
    #   <p>The status of the schema version. </p>
    #
    #   Enum, one of: ["AVAILABLE", "PENDING", "FAILURE", "DELETING"]
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>The date and time the schema version was created.</p>
    #
    #   @return [String]
    #
    GetSchemaVersionOutput = ::Struct.new(
      :schema_version_id,
      :schema_definition,
      :data_format,
      :schema_arn,
      :version_number,
      :status,
      :created_time,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.version_number ||= 0
      end

    end

    # @!attribute schema_id
    #   <p>This is a wrapper structure to contain schema identity fields. The structure contains:</p>
    #   	        <ul>
    #               <li>
    #                  <p>SchemaId$SchemaArn: The Amazon Resource Name (ARN) of the schema. One of <code>SchemaArn</code> or <code>SchemaName</code> has to be provided.</p>
    #               </li>
    #               <li>
    #                  <p>SchemaId$SchemaName: The name of the schema. One of <code>SchemaArn</code> or <code>SchemaName</code> has to be provided.</p>
    #               </li>
    #            </ul>
    #
    #   @return [SchemaId]
    #
    # @!attribute first_schema_version_number
    #   <p>The first of the two schema versions to be compared.</p>
    #
    #   @return [SchemaVersionNumber]
    #
    # @!attribute second_schema_version_number
    #   <p>The second of the two schema versions to be compared.</p>
    #
    #   @return [SchemaVersionNumber]
    #
    # @!attribute schema_diff_type
    #   <p>Refers to <code>SYNTAX_DIFF</code>, which is the currently supported diff type.</p>
    #
    #   Enum, one of: ["SYNTAX_DIFF"]
    #
    #   @return [String]
    #
    GetSchemaVersionsDiffInput = ::Struct.new(
      :schema_id,
      :first_schema_version_number,
      :second_schema_version_number,
      :schema_diff_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute diff
    #   <p>The difference between schemas as a string in JsonPatch format.</p>
    #
    #   @return [String]
    #
    GetSchemaVersionsDiffOutput = ::Struct.new(
      :diff,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the security configuration to retrieve.</p>
    #
    #   @return [String]
    #
    GetSecurityConfigurationInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute security_configuration
    #   <p>The requested security configuration.</p>
    #
    #   @return [SecurityConfiguration]
    #
    GetSecurityConfigurationOutput = ::Struct.new(
      :security_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A continuation token, if this is a continuation call.</p>
    #
    #   @return [String]
    #
    GetSecurityConfigurationsInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute security_configurations
    #   <p>A list of security configurations.</p>
    #
    #   @return [Array<SecurityConfiguration>]
    #
    # @!attribute next_token
    #   <p>A continuation token, if there are more security
    #         configurations to return.</p>
    #
    #   @return [String]
    #
    GetSecurityConfigurationsOutput = ::Struct.new(
      :security_configurations,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the session. </p>
    #
    #   @return [String]
    #
    # @!attribute request_origin
    #   <p>The origin of the request. </p>
    #
    #   @return [String]
    #
    GetSessionInput = ::Struct.new(
      :id,
      :request_origin,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute session
    #   <p>The session object is returned in the response.</p>
    #
    #   @return [Session]
    #
    GetSessionOutput = ::Struct.new(
      :session,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute session_id
    #   <p>The Session ID of the statement.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The Id of the statement.</p>
    #
    #   @return [Integer]
    #
    # @!attribute request_origin
    #   <p>The origin of the request.</p>
    #
    #   @return [String]
    #
    GetStatementInput = ::Struct.new(
      :session_id,
      :id,
      :request_origin,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.id ||= 0
      end

    end

    # @!attribute statement
    #   <p>Returns the statement.</p>
    #
    #   @return [Statement]
    #
    GetStatementOutput = ::Struct.new(
      :statement,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog where the table resides. If none is provided, the Amazon Web Services account
    #         ID is used by default.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The name of the database in the catalog in which the table resides.
    #         For Hive compatibility, this name is entirely lowercase.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the table for which to retrieve the definition. For Hive
    #         compatibility, this name is entirely lowercase.</p>
    #
    #   @return [String]
    #
    # @!attribute transaction_id
    #   <p>The transaction ID at which to read the table contents. </p>
    #
    #   @return [String]
    #
    # @!attribute query_as_of_time
    #   <p>The time as of when to read the table contents. If not set, the most recent transaction commit time will be used. Cannot be specified along with <code>TransactionId</code>.</p>
    #
    #   @return [Time]
    #
    GetTableInput = ::Struct.new(
      :catalog_id,
      :database_name,
      :name,
      :transaction_id,
      :query_as_of_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute table
    #   <p>The <code>Table</code> object that defines the specified table.</p>
    #
    #   @return [Table]
    #
    GetTableOutput = ::Struct.new(
      :table,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog where the tables reside. If none is provided, the Amazon Web Services account
    #         ID is used by default.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The database in the catalog in which the table resides. For Hive
    #         compatibility, this name is entirely lowercase.</p>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>The name of the table. For Hive compatibility,
    #         this name is entirely lowercase.</p>
    #
    #   @return [String]
    #
    # @!attribute version_id
    #   <p>The ID value of the table version to be retrieved. A <code>VersionID</code> is a string representation of an integer. Each version is incremented by 1. </p>
    #
    #   @return [String]
    #
    GetTableVersionInput = ::Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :version_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute table_version
    #   <p>The requested table version.</p>
    #
    #   @return [TableVersion]
    #
    GetTableVersionOutput = ::Struct.new(
      :table_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog where the tables reside. If none is provided, the Amazon Web Services account
    #         ID is used by default.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The database in the catalog in which the table resides. For Hive
    #         compatibility, this name is entirely lowercase.</p>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>The name of the table. For Hive
    #         compatibility, this name is entirely lowercase.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A continuation token, if this is not the first call.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of table versions to return in one response.</p>
    #
    #   @return [Integer]
    #
    GetTableVersionsInput = ::Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute table_versions
    #   <p>A list of strings identifying available versions of the
    #         specified table.</p>
    #
    #   @return [Array<TableVersion>]
    #
    # @!attribute next_token
    #   <p>A continuation token, if the list of available versions does
    #         not include the last one.</p>
    #
    #   @return [String]
    #
    GetTableVersionsOutput = ::Struct.new(
      :table_versions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog where the tables reside. If none is provided, the Amazon Web Services account
    #         ID is used by default.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The database in the catalog whose tables to list. For Hive
    #         compatibility, this name is entirely lowercase.</p>
    #
    #   @return [String]
    #
    # @!attribute expression
    #   <p>A regular expression pattern. If present, only those tables
    #         whose names match the pattern are returned.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A continuation token, included if this is a continuation call.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of tables to return in a single response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute transaction_id
    #   <p>The transaction ID at which to read the table contents.</p>
    #
    #   @return [String]
    #
    # @!attribute query_as_of_time
    #   <p>The time as of when to read the table contents. If not set, the most recent transaction commit time will be used. Cannot be specified along with <code>TransactionId</code>.</p>
    #
    #   @return [Time]
    #
    GetTablesInput = ::Struct.new(
      :catalog_id,
      :database_name,
      :expression,
      :next_token,
      :max_results,
      :transaction_id,
      :query_as_of_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute table_list
    #   <p>A list of the requested <code>Table</code> objects.</p>
    #
    #   @return [Array<Table>]
    #
    # @!attribute next_token
    #   <p>A continuation token, present if the current list segment is
    #         not the last.</p>
    #
    #   @return [String]
    #
    GetTablesOutput = ::Struct.new(
      :table_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which to retrieve tags.</p>
    #
    #   @return [String]
    #
    GetTagsInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tags
    #   <p>The requested tags.</p>
    #
    #   @return [Hash<String, String>]
    #
    GetTagsOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the trigger to retrieve.</p>
    #
    #   @return [String]
    #
    GetTriggerInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute trigger
    #   <p>The requested trigger definition.</p>
    #
    #   @return [Trigger]
    #
    GetTriggerOutput = ::Struct.new(
      :trigger,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A continuation token, if this is a continuation call.</p>
    #
    #   @return [String]
    #
    # @!attribute dependent_job_name
    #   <p>The name of the job to retrieve triggers for. The trigger that can start this job is
    #         returned, and if there is no such trigger, all triggers are returned.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum size of the response.</p>
    #
    #   @return [Integer]
    #
    GetTriggersInput = ::Struct.new(
      :next_token,
      :dependent_job_name,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute triggers
    #   <p>A list of triggers for the specified job.</p>
    #
    #   @return [Array<Trigger>]
    #
    # @!attribute next_token
    #   <p>A continuation token, if not all the requested triggers
    #         have yet been returned.</p>
    #
    #   @return [String]
    #
    GetTriggersOutput = ::Struct.new(
      :triggers,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #
    #   @return [String]
    #
    # @!attribute database_name
    #
    #   @return [String]
    #
    # @!attribute table_name
    #
    #   @return [String]
    #
    # @!attribute partition_values
    #
    #   @return [Array<String>]
    #
    # @!attribute audit_context
    #   <p>A structure containing information for audit.</p>
    #
    #   @return [AuditContext]
    #
    # @!attribute supported_permission_types
    #
    #   @return [Array<String>]
    #
    GetUnfilteredPartitionMetadataInput = ::Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :partition_values,
      :audit_context,
      :supported_permission_types,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute partition
    #   <p>Represents a slice of table data.</p>
    #
    #   @return [Partition]
    #
    # @!attribute authorized_columns
    #
    #   @return [Array<String>]
    #
    # @!attribute is_registered_with_lake_formation
    #
    #   @return [Boolean]
    #
    GetUnfilteredPartitionMetadataOutput = ::Struct.new(
      :partition,
      :authorized_columns,
      :is_registered_with_lake_formation,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.is_registered_with_lake_formation ||= false
      end

    end

    # @!attribute catalog_id
    #
    #   @return [String]
    #
    # @!attribute database_name
    #
    #   @return [String]
    #
    # @!attribute table_name
    #
    #   @return [String]
    #
    # @!attribute expression
    #
    #   @return [String]
    #
    # @!attribute audit_context
    #   <p>A structure containing information for audit.</p>
    #
    #   @return [AuditContext]
    #
    # @!attribute supported_permission_types
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #
    #   @return [String]
    #
    # @!attribute segment
    #   <p>Defines a non-overlapping region of a table's partitions, allowing
    #         multiple requests to be run in parallel.</p>
    #
    #   @return [Segment]
    #
    # @!attribute max_results
    #
    #   @return [Integer]
    #
    GetUnfilteredPartitionsMetadataInput = ::Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :expression,
      :audit_context,
      :supported_permission_types,
      :next_token,
      :segment,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute unfiltered_partitions
    #
    #   @return [Array<UnfilteredPartition>]
    #
    # @!attribute next_token
    #
    #   @return [String]
    #
    GetUnfilteredPartitionsMetadataOutput = ::Struct.new(
      :unfiltered_partitions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #
    #   @return [String]
    #
    # @!attribute database_name
    #
    #   @return [String]
    #
    # @!attribute name
    #
    #   @return [String]
    #
    # @!attribute audit_context
    #   <p>A structure containing information for audit.</p>
    #
    #   @return [AuditContext]
    #
    # @!attribute supported_permission_types
    #
    #   @return [Array<String>]
    #
    GetUnfilteredTableMetadataInput = ::Struct.new(
      :catalog_id,
      :database_name,
      :name,
      :audit_context,
      :supported_permission_types,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute table
    #   <p>Represents a collection of related data organized in columns and rows.</p>
    #
    #   @return [Table]
    #
    # @!attribute authorized_columns
    #
    #   @return [Array<String>]
    #
    # @!attribute is_registered_with_lake_formation
    #
    #   @return [Boolean]
    #
    # @!attribute cell_filters
    #
    #   @return [Array<ColumnRowFilter>]
    #
    GetUnfilteredTableMetadataOutput = ::Struct.new(
      :table,
      :authorized_columns,
      :is_registered_with_lake_formation,
      :cell_filters,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.is_registered_with_lake_formation ||= false
      end

    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog where the function to be retrieved is located. If none is
    #         provided, the Amazon Web Services account ID is used by default.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The name of the catalog database where the function is located.</p>
    #
    #   @return [String]
    #
    # @!attribute function_name
    #   <p>The name of the function.</p>
    #
    #   @return [String]
    #
    GetUserDefinedFunctionInput = ::Struct.new(
      :catalog_id,
      :database_name,
      :function_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_defined_function
    #   <p>The requested function definition.</p>
    #
    #   @return [UserDefinedFunction]
    #
    GetUserDefinedFunctionOutput = ::Struct.new(
      :user_defined_function,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog where the functions to be retrieved are located. If none is
    #         provided, the Amazon Web Services account ID is used by default.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The name of the catalog database where the functions are located. If none is provided, functions from all the
    #         databases across the catalog will be returned.</p>
    #
    #   @return [String]
    #
    # @!attribute pattern
    #   <p>An optional function-name pattern string that filters the function
    #         definitions returned.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A continuation token, if this is a continuation call.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of functions to return in one response.</p>
    #
    #   @return [Integer]
    #
    GetUserDefinedFunctionsInput = ::Struct.new(
      :catalog_id,
      :database_name,
      :pattern,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_defined_functions
    #   <p>A list of requested function definitions.</p>
    #
    #   @return [Array<UserDefinedFunction>]
    #
    # @!attribute next_token
    #   <p>A continuation token, if the list of functions returned does
    #         not include the last requested function.</p>
    #
    #   @return [String]
    #
    GetUserDefinedFunctionsOutput = ::Struct.new(
      :user_defined_functions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the workflow to retrieve.</p>
    #
    #   @return [String]
    #
    # @!attribute include_graph
    #   <p>Specifies whether to include a graph when returning the workflow resource metadata.</p>
    #
    #   @return [Boolean]
    #
    GetWorkflowInput = ::Struct.new(
      :name,
      :include_graph,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workflow
    #   <p>The resource metadata for the workflow.</p>
    #
    #   @return [Workflow]
    #
    GetWorkflowOutput = ::Struct.new(
      :workflow,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>Name of the workflow being run.</p>
    #
    #   @return [String]
    #
    # @!attribute run_id
    #   <p>The ID of the workflow run.</p>
    #
    #   @return [String]
    #
    # @!attribute include_graph
    #   <p>Specifies whether to include the workflow graph in response or not.</p>
    #
    #   @return [Boolean]
    #
    GetWorkflowRunInput = ::Struct.new(
      :name,
      :run_id,
      :include_graph,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute run
    #   <p>The requested workflow run metadata.</p>
    #
    #   @return [WorkflowRun]
    #
    GetWorkflowRunOutput = ::Struct.new(
      :run,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>Name of the workflow which was run.</p>
    #
    #   @return [String]
    #
    # @!attribute run_id
    #   <p>The ID of the workflow run whose run properties should be returned.</p>
    #
    #   @return [String]
    #
    GetWorkflowRunPropertiesInput = ::Struct.new(
      :name,
      :run_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute run_properties
    #   <p>The workflow run properties which were set during the specified run.</p>
    #
    #   @return [Hash<String, String>]
    #
    GetWorkflowRunPropertiesOutput = ::Struct.new(
      :run_properties,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>Name of the workflow whose metadata of runs should be returned.</p>
    #
    #   @return [String]
    #
    # @!attribute include_graph
    #   <p>Specifies whether to include the workflow graph in response or not.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute next_token
    #   <p>The maximum size of the response.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of workflow runs to be included in the response.</p>
    #
    #   @return [Integer]
    #
    GetWorkflowRunsInput = ::Struct.new(
      :name,
      :include_graph,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute runs
    #   <p>A list of workflow run metadata objects.</p>
    #
    #   @return [Array<WorkflowRun>]
    #
    # @!attribute next_token
    #   <p>A continuation token, if not all requested workflow runs have been returned.</p>
    #
    #   @return [String]
    #
    GetWorkflowRunsOutput = ::Struct.new(
      :runs,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An encryption operation failed.</p>
    #
    # @!attribute message
    #   <p>The message describing the problem.</p>
    #
    #   @return [String]
    #
    GlueEncryptionException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure for returning a resource policy.</p>
    #
    # @!attribute policy_in_json
    #   <p>Contains the requested policy document, in JSON format.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_hash
    #   <p>Contains the hash value associated with this policy.</p>
    #
    #   @return [String]
    #
    # @!attribute create_time
    #   <p>The date and time at which the policy was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute update_time
    #   <p>The date and time at which the policy was last updated.</p>
    #
    #   @return [Time]
    #
    GluePolicy = ::Struct.new(
      :policy_in_json,
      :policy_hash,
      :create_time,
      :update_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for GlueRecordType
    #
    module GlueRecordType
      # No documentation available.
      #
      DATE = "DATE"

      # No documentation available.
      #
      STRING = "STRING"

      # No documentation available.
      #
      TIMESTAMP = "TIMESTAMP"

      # No documentation available.
      #
      INT = "INT"

      # No documentation available.
      #
      FLOAT = "FLOAT"

      # No documentation available.
      #
      LONG = "LONG"

      # No documentation available.
      #
      BIGDECIMAL = "BIGDECIMAL"

      # No documentation available.
      #
      BYTE = "BYTE"

      # No documentation available.
      #
      SHORT = "SHORT"

      # No documentation available.
      #
      DOUBLE = "DOUBLE"
    end

    # <p>Specifies a user-defined schema when a schema cannot be determined by AWS Glue.</p>
    #
    # @!attribute columns
    #   <p>Specifies the column definitions that make up a Glue schema.</p>
    #
    #   @return [Array<GlueStudioSchemaColumn>]
    #
    GlueSchema = ::Struct.new(
      :columns,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a single column in a Glue schema definition.</p>
    #
    # @!attribute name
    #   <p>The name of the column in the Glue Studio schema.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The hive type for this column in the Glue Studio schema.</p>
    #
    #   @return [String]
    #
    GlueStudioSchemaColumn = ::Struct.new(
      :name,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The database and table in the Glue Data Catalog that is used for input or output data.</p>
    #
    # @!attribute database_name
    #   <p>A database name in the Glue Data Catalog.</p>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>A table name in the Glue Data Catalog.</p>
    #
    #   @return [String]
    #
    # @!attribute catalog_id
    #   <p>A unique identifier for the Glue Data Catalog.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_name
    #   <p>The name of the connection to the Glue Data Catalog.</p>
    #
    #   @return [String]
    #
    GlueTable = ::Struct.new(
      :database_name,
      :table_name,
      :catalog_id,
      :connection_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the data store in the governed Glue Data Catalog.</p>
    #
    # @!attribute name
    #   <p>The name of the data store.</p>
    #
    #   @return [String]
    #
    # @!attribute database
    #   <p>The database to read from.</p>
    #
    #   @return [String]
    #
    # @!attribute table
    #   <p>The database table to read from.</p>
    #
    #   @return [String]
    #
    # @!attribute partition_predicate
    #   <p>Partitions satisfying this predicate are deleted. Files within the retention period in these partitions are not deleted. Set to <code>""</code> – empty by default.</p>
    #
    #   @return [String]
    #
    # @!attribute additional_options
    #   <p>Specifies additional connection options.</p>
    #
    #   @return [S3SourceAdditionalOptions]
    #
    GovernedCatalogSource = ::Struct.new(
      :name,
      :database,
      :table,
      :partition_predicate,
      :additional_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a data target that writes to Amazon S3 using the Glue Data Catalog.</p>
    #
    # @!attribute name
    #   <p>The name of the data target.</p>
    #
    #   @return [String]
    #
    # @!attribute inputs
    #   <p>The nodes that are inputs to the data target.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute partition_keys
    #   <p>Specifies native partitioning using a sequence of keys.</p>
    #
    #   @return [Array<Array<String>>]
    #
    # @!attribute table
    #   <p>The name of the table in the database to write to.</p>
    #
    #   @return [String]
    #
    # @!attribute database
    #   <p>The name of the database to write to.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_change_policy
    #   <p>A policy that specifies update behavior for the governed catalog.</p>
    #
    #   @return [CatalogSchemaChangePolicy]
    #
    GovernedCatalogTarget = ::Struct.new(
      :name,
      :inputs,
      :partition_keys,
      :table,
      :database,
      :schema_change_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A classifier that uses <code>grok</code> patterns.</p>
    #
    # @!attribute name
    #   <p>The name of the classifier.</p>
    #
    #   @return [String]
    #
    # @!attribute classification
    #   <p>An identifier of the data format that the classifier matches, such as Twitter, JSON, Omniture logs, and
    #         so on.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The time that this classifier was registered.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated
    #   <p>The time that this classifier was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute version
    #   <p>The version of this classifier.</p>
    #
    #   @return [Integer]
    #
    # @!attribute grok_pattern
    #   <p>The grok pattern applied to a data store by this classifier.
    #          For more information, see built-in patterns in <a href="https://docs.aws.amazon.com/glue/latest/dg/custom-classifier.html">Writing Custom Classifiers</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute custom_patterns
    #   <p>Optional custom grok patterns defined by this classifier.
    #         For more information, see custom patterns in <a href="https://docs.aws.amazon.com/glue/latest/dg/custom-classifier.html">Writing Custom Classifiers</a>.</p>
    #
    #   @return [String]
    #
    GrokClassifier = ::Struct.new(
      :name,
      :classification,
      :creation_time,
      :last_updated,
      :version,
      :grok_pattern,
      :custom_patterns,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.version ||= 0
      end

    end

    # <p>The same unique identifier was associated with two different records.</p>
    #
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #
    #   @return [String]
    #
    IdempotentParameterMismatchException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute message
    #
    #   @return [String]
    #
    IllegalBlueprintStateException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The session is in an invalid state to perform a requested operation.</p>
    #
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #
    #   @return [String]
    #
    IllegalSessionStateException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The workflow is in an invalid state to perform a requested operation.</p>
    #
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #
    #   @return [String]
    #
    IllegalWorkflowStateException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the catalog to import. Currently, this should be the Amazon Web Services account ID.</p>
    #
    #   @return [String]
    #
    ImportCatalogToGlueInput = ::Struct.new(
      :catalog_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    ImportCatalogToGlueOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies configuration properties for an importing labels task run.</p>
    #
    # @!attribute input_s3_path
    #   <p>The Amazon Simple Storage Service (Amazon S3) path from where you will import the
    #         labels.</p>
    #
    #   @return [String]
    #
    # @!attribute replace
    #   <p>Indicates whether to overwrite your existing labels.</p>
    #
    #   @return [Boolean]
    #
    ImportLabelsTaskRunProperties = ::Struct.new(
      :input_s3_path,
      :replace,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.replace ||= false
      end

    end

    # <p>An internal service error occurred.</p>
    #
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #
    #   @return [String]
    #
    InternalServiceException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The input provided was not valid.</p>
    #
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #
    #   @return [String]
    #
    InvalidInputException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An error that indicates your data is in an invalid state.</p>
    #
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #
    #   @return [String]
    #
    InvalidStateException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Additional connection options for the connector.</p>
    #
    # @!attribute filter_predicate
    #   <p>Extra condition clause to filter data from source. For example:</p>
    #   	
    #   	        <p>
    #               <code>BillingCity='Mountain View'</code>
    #            </p>
    #   	
    #   	        <p>When using a query instead of a table name, you should validate that the query works with the specified <code>filterPredicate</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute partition_column
    #   <p>The name of an integer column that is used for partitioning. This option works only when it's included with <code>lowerBound</code>, <code>upperBound</code>, and <code>numPartitions</code>. This option works the same way as in the Spark SQL JDBC reader.</p>
    #
    #   @return [String]
    #
    # @!attribute lower_bound
    #   <p>The minimum value of <code>partitionColumn</code> that is used to decide partition stride.</p>
    #
    #   @return [Integer]
    #
    # @!attribute upper_bound
    #   <p>The maximum value of <code>partitionColumn</code> that is used to decide partition stride.</p>
    #
    #   @return [Integer]
    #
    # @!attribute num_partitions
    #   <p>The number of partitions. This value, along with <code>lowerBound</code> (inclusive) and <code>upperBound</code> (exclusive), form partition strides for generated <code>WHERE</code> clause expressions that are used to split the <code>partitionColumn</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute job_bookmark_keys
    #   <p>The name of the job bookmark keys on which to sort.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute job_bookmark_keys_sort_order
    #   <p>Specifies an ascending or descending sort order.</p>
    #
    #   @return [String]
    #
    # @!attribute data_type_mapping
    #   <p>Custom data type mapping that builds a mapping from a JDBC data type to an Glue data type. For example, the option <code>"dataTypeMapping":{"FLOAT":"STRING"}</code> maps data fields of JDBC type <code>FLOAT</code> into the Java <code>String</code> type by calling the <code>ResultSet.getString()</code> method of the driver, and uses it to build the Glue record. The <code>ResultSet</code> object is implemented by each driver, so the behavior is specific to the driver you use. Refer to the documentation for your JDBC driver to understand how the driver performs the conversions.</p>
    #
    #   @return [Hash<String, String>]
    #
    JDBCConnectorOptions = ::Struct.new(
      :filter_predicate,
      :partition_column,
      :lower_bound,
      :upper_bound,
      :num_partitions,
      :job_bookmark_keys,
      :job_bookmark_keys_sort_order,
      :data_type_mapping,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a connector to a JDBC data source.</p>
    #
    # @!attribute name
    #   <p>The name of the data source.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_name
    #   <p>The name of the connection that is associated with the connector.</p>
    #
    #   @return [String]
    #
    # @!attribute connector_name
    #   <p>The name of a connector that assists with accessing the data store in Glue Studio.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_type
    #   <p>The type of connection, such as marketplace.jdbc or custom.jdbc, designating a connection to a JDBC data store.</p>
    #
    #   @return [String]
    #
    # @!attribute additional_options
    #   <p>Additional connection options for the connector.</p>
    #
    #   @return [JDBCConnectorOptions]
    #
    # @!attribute connection_table
    #   <p>The name of the table in the data source.</p>
    #
    #   @return [String]
    #
    # @!attribute query
    #   <p>The table or SQL query to get the data from. You can specify either <code>ConnectionTable</code> or <code>query</code>, but not both.</p>
    #
    #   @return [String]
    #
    # @!attribute output_schemas
    #   <p>Specifies the data schema for the custom JDBC source.</p>
    #
    #   @return [Array<GlueSchema>]
    #
    JDBCConnectorSource = ::Struct.new(
      :name,
      :connection_name,
      :connector_name,
      :connection_type,
      :additional_options,
      :connection_table,
      :query,
      :output_schemas,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a data target that writes to Amazon S3 in Apache Parquet columnar storage.</p>
    #
    # @!attribute name
    #   <p>The name of the data target.</p>
    #
    #   @return [String]
    #
    # @!attribute inputs
    #   <p>The nodes that are inputs to the data target.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute connection_name
    #   <p>The name of the connection that is associated with the connector.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_table
    #   <p>The name of the table in the data target.</p>
    #
    #   @return [String]
    #
    # @!attribute connector_name
    #   <p>The name of a connector that will be used.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_type
    #   <p>The type of connection, such as marketplace.jdbc or custom.jdbc, designating a connection to a JDBC data target.</p>
    #
    #   @return [String]
    #
    # @!attribute additional_options
    #   <p>Additional connection options for the connector.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute output_schemas
    #   <p>Specifies the data schema for the JDBC target.</p>
    #
    #   @return [Array<GlueSchema>]
    #
    JDBCConnectorTarget = ::Struct.new(
      :name,
      :inputs,
      :connection_name,
      :connection_table,
      :connector_name,
      :connection_type,
      :additional_options,
      :output_schemas,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for JDBCDataType
    #
    module JDBCDataType
      # No documentation available.
      #
      ARRAY = "ARRAY"

      # No documentation available.
      #
      BIGINT = "BIGINT"

      # No documentation available.
      #
      BINARY = "BINARY"

      # No documentation available.
      #
      BIT = "BIT"

      # No documentation available.
      #
      BLOB = "BLOB"

      # No documentation available.
      #
      BOOLEAN = "BOOLEAN"

      # No documentation available.
      #
      CHAR = "CHAR"

      # No documentation available.
      #
      CLOB = "CLOB"

      # No documentation available.
      #
      DATALINK = "DATALINK"

      # No documentation available.
      #
      DATE = "DATE"

      # No documentation available.
      #
      DECIMAL = "DECIMAL"

      # No documentation available.
      #
      DISTINCT = "DISTINCT"

      # No documentation available.
      #
      DOUBLE = "DOUBLE"

      # No documentation available.
      #
      FLOAT = "FLOAT"

      # No documentation available.
      #
      INTEGER = "INTEGER"

      # No documentation available.
      #
      JAVA_OBJECT = "JAVA_OBJECT"

      # No documentation available.
      #
      LONGNVARCHAR = "LONGNVARCHAR"

      # No documentation available.
      #
      LONGVARBINARY = "LONGVARBINARY"

      # No documentation available.
      #
      LONGVARCHAR = "LONGVARCHAR"

      # No documentation available.
      #
      NCHAR = "NCHAR"

      # No documentation available.
      #
      NCLOB = "NCLOB"

      # No documentation available.
      #
      NULL = "NULL"

      # No documentation available.
      #
      NUMERIC = "NUMERIC"

      # No documentation available.
      #
      NVARCHAR = "NVARCHAR"

      # No documentation available.
      #
      OTHER = "OTHER"

      # No documentation available.
      #
      REAL = "REAL"

      # No documentation available.
      #
      REF = "REF"

      # No documentation available.
      #
      REF_CURSOR = "REF_CURSOR"

      # No documentation available.
      #
      ROWID = "ROWID"

      # No documentation available.
      #
      SMALLINT = "SMALLINT"

      # No documentation available.
      #
      SQLXML = "SQLXML"

      # No documentation available.
      #
      STRUCT = "STRUCT"

      # No documentation available.
      #
      TIME = "TIME"

      # No documentation available.
      #
      TIME_WITH_TIMEZONE = "TIME_WITH_TIMEZONE"

      # No documentation available.
      #
      TIMESTAMP = "TIMESTAMP"

      # No documentation available.
      #
      TIMESTAMP_WITH_TIMEZONE = "TIMESTAMP_WITH_TIMEZONE"

      # No documentation available.
      #
      TINYINT = "TINYINT"

      # No documentation available.
      #
      VARBINARY = "VARBINARY"

      # No documentation available.
      #
      VARCHAR = "VARCHAR"
    end

    # <p>Specifies a JDBC data store to crawl.</p>
    #
    # @!attribute connection_name
    #   <p>The name of the connection to use to connect to the JDBC target.</p>
    #
    #   @return [String]
    #
    # @!attribute path
    #   <p>The path of the JDBC target.</p>
    #
    #   @return [String]
    #
    # @!attribute exclusions
    #   <p>A list of glob patterns used to exclude from the crawl.
    #         For more information, see <a href="https://docs.aws.amazon.com/glue/latest/dg/add-crawler.html">Catalog Tables with a Crawler</a>.</p>
    #
    #   @return [Array<String>]
    #
    JdbcTarget = ::Struct.new(
      :connection_name,
      :path,
      :exclusions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a job definition.</p>
    #
    # @!attribute name
    #   <p>The name you assign to this job definition.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the job.</p>
    #
    #   @return [String]
    #
    # @!attribute log_uri
    #   <p>This field is reserved for future use.</p>
    #
    #   @return [String]
    #
    # @!attribute role
    #   <p>The name or Amazon Resource Name (ARN) of the IAM role associated with this job.</p>
    #
    #   @return [String]
    #
    # @!attribute created_on
    #   <p>The time and date that this job definition was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_on
    #   <p>The last point in time when this job definition was modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute execution_property
    #   <p>An <code>ExecutionProperty</code> specifying the maximum number of concurrent runs allowed
    #         for this job.</p>
    #
    #   @return [ExecutionProperty]
    #
    # @!attribute command
    #   <p>The <code>JobCommand</code> that runs this job.</p>
    #
    #   @return [JobCommand]
    #
    # @!attribute default_arguments
    #   <p>The default arguments for this job, specified as name-value pairs.</p>
    #            <p>You can specify arguments here that your own job-execution script
    #         consumes, as well as arguments that Glue itself consumes.</p>
    #            <p>For information about how to specify and consume your own Job arguments, see the <a href="https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html">Calling Glue APIs in Python</a> topic in the developer guide.</p>
    #            <p>For information about the key-value pairs that Glue consumes to set up your job, see the <a href="https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html">Special Parameters Used by Glue</a> topic in the developer guide.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute non_overridable_arguments
    #   <p>Non-overridable arguments for this job, specified as name-value pairs.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute connections
    #   <p>The connections used for this job.</p>
    #
    #   @return [ConnectionsList]
    #
    # @!attribute max_retries
    #   <p>The maximum number of times to retry this job after a JobRun fails.</p>
    #
    #   @return [Integer]
    #
    # @!attribute allocated_capacity
    #   <p>This field is deprecated. Use <code>MaxCapacity</code> instead.</p>
    #   	
    #            <p>The number of Glue data processing units (DPUs) allocated to runs of this job. You can
    #         allocate from 2 to 100 DPUs; the default is 10. A DPU is a relative measure of processing
    #         power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information,
    #         see the <a href="https://aws.amazon.com/glue/pricing/">Glue pricing
    #         page</a>.</p>
    #   	        <p></p>
    #
    #   @deprecated
    #     This property is deprecated, use MaxCapacity instead.
    #
    #   @return [Integer]
    #
    # @!attribute timeout
    #   <p>The job timeout in minutes.  This is the maximum time that a job run
    #         can consume resources before it is terminated and enters <code>TIMEOUT</code>
    #         status. The default is 2,880 minutes (48 hours).</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_capacity
    #   <p>For Glue version 1.0 or earlier jobs, using the standard worker type, the number of Glue data processing units (DPUs) that can be allocated when this job runs. A DPU is a relative measure
    #         of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory.
    #         For more information, see the <a href="https://aws.amazon.com/glue/pricing/">Glue
    #         pricing page</a>.</p>
    #   	
    #   	        <p>Do not set <code>Max Capacity</code> if using <code>WorkerType</code> and <code>NumberOfWorkers</code>.</p>
    #   	
    #   	        <p>The value that can be allocated for <code>MaxCapacity</code> depends on whether you are
    #         running a Python shell job, an Apache Spark ETL job, or an Apache Spark streaming ETL
    #         job:</p>
    #           <ul>
    #               <li>
    #                  <p>When you specify a Python shell job (<code>JobCommand.Name</code>="pythonshell"), you can
    #             allocate either 0.0625 or 1 DPU. The default is 0.0625 DPU.</p>
    #               </li>
    #               <li>
    #                  <p>When you specify an Apache Spark ETL job (<code>JobCommand.Name</code>="glueetl") or Apache
    #               Spark streaming ETL job (<code>JobCommand.Name</code>="gluestreaming"), you can allocate from 2 to 100 DPUs.
    #               The default is 10 DPUs. This job type cannot have a fractional DPU allocation.</p>
    #               </li>
    #            </ul>
    #            <p>For Glue version 2.0 jobs, you cannot instead specify a <code>Maximum capacity</code>. Instead, you should specify a <code>Worker type</code> and the <code>Number of workers</code>.</p>
    #
    #   @return [Float]
    #
    # @!attribute worker_type
    #   <p>The type of predefined worker that is allocated when a job runs. Accepts a value of Standard, G.1X, or G.2X.</p>
    #   	        <ul>
    #               <li>
    #                  <p>For the <code>Standard</code> worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.</p>
    #               </li>
    #               <li>
    #                  <p>For the <code>G.1X</code> worker type, each worker maps to 1 DPU (4 vCPU, 16 GB of memory, 64 GB disk), and provides 1 executor per worker. We recommend this worker type for memory-intensive jobs.</p>
    #               </li>
    #               <li>
    #                  <p>For the <code>G.2X</code> worker type, each worker maps to 2 DPU (8 vCPU, 32 GB of memory, 128 GB disk), and provides 1 executor per worker. We recommend this worker type for memory-intensive jobs.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["Standard", "G.1X", "G.2X"]
    #
    #   @return [String]
    #
    # @!attribute number_of_workers
    #   <p>The number of workers of a defined <code>workerType</code> that are allocated when a job runs.</p>
    #   	
    #   		       <p>The maximum number of workers you can define are 299 for <code>G.1X</code>, and 149 for <code>G.2X</code>. </p>
    #
    #   @return [Integer]
    #
    # @!attribute security_configuration
    #   <p>The name of the <code>SecurityConfiguration</code> structure to be used with this
    #         job.</p>
    #
    #   @return [String]
    #
    # @!attribute notification_property
    #   <p>Specifies configuration properties of a job notification.</p>
    #
    #   @return [NotificationProperty]
    #
    # @!attribute glue_version
    #   <p>Glue version determines the versions of Apache Spark and Python that Glue supports. The Python version indicates the version supported for jobs of type Spark. </p>
    #
    #            <p>For more information about the available Glue versions and corresponding Spark and Python versions, see <a href="https://docs.aws.amazon.com/glue/latest/dg/add-job.html">Glue version</a> in the developer guide.</p>
    #   	
    #   	        <p>Jobs that are created without specifying a Glue version default to Glue 0.9.</p>
    #
    #   @return [String]
    #
    # @!attribute code_gen_configuration_nodes
    #   <p>The representation of a directed acyclic graph on which both the Glue Studio visual component and Glue Studio code generation is based.</p>
    #
    #   @return [Hash<String, CodeGenConfigurationNode>]
    #
    Job = ::Struct.new(
      :name,
      :description,
      :log_uri,
      :role,
      :created_on,
      :last_modified_on,
      :execution_property,
      :command,
      :default_arguments,
      :non_overridable_arguments,
      :connections,
      :max_retries,
      :allocated_capacity,
      :timeout,
      :max_capacity,
      :worker_type,
      :number_of_workers,
      :security_configuration,
      :notification_property,
      :glue_version,
      :code_gen_configuration_nodes,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_retries ||= 0
        self.allocated_capacity ||= 0
      end

      def to_s
        "#<struct AWS::SDK::Glue::Types::Job "\
          "name=#{name || 'nil'}, "\
          "description=#{description || 'nil'}, "\
          "log_uri=#{log_uri || 'nil'}, "\
          "role=#{role || 'nil'}, "\
          "created_on=#{created_on || 'nil'}, "\
          "last_modified_on=#{last_modified_on || 'nil'}, "\
          "execution_property=#{execution_property || 'nil'}, "\
          "command=#{command || 'nil'}, "\
          "default_arguments=#{default_arguments || 'nil'}, "\
          "non_overridable_arguments=#{non_overridable_arguments || 'nil'}, "\
          "connections=#{connections || 'nil'}, "\
          "max_retries=#{max_retries || 'nil'}, "\
          "allocated_capacity=#{allocated_capacity || 'nil'}, "\
          "timeout=#{timeout || 'nil'}, "\
          "max_capacity=#{max_capacity || 'nil'}, "\
          "worker_type=#{worker_type || 'nil'}, "\
          "number_of_workers=#{number_of_workers || 'nil'}, "\
          "security_configuration=#{security_configuration || 'nil'}, "\
          "notification_property=#{notification_property || 'nil'}, "\
          "glue_version=#{glue_version || 'nil'}, "\
          "code_gen_configuration_nodes=\"[SENSITIVE]\">"
      end
    end

    # <p>Defines a point that a job can resume processing.</p>
    #
    # @!attribute job_name
    #   <p>The name of the job in question.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version of the job.</p>
    #
    #   @return [Integer]
    #
    # @!attribute run
    #   <p>The run ID number.</p>
    #
    #   @return [Integer]
    #
    # @!attribute attempt
    #   <p>The attempt ID number.</p>
    #
    #   @return [Integer]
    #
    # @!attribute previous_run_id
    #   <p>The unique run identifier associated with the previous job run.</p>
    #
    #   @return [String]
    #
    # @!attribute run_id
    #   <p>The run ID number.</p>
    #
    #   @return [String]
    #
    # @!attribute job_bookmark
    #   <p>The bookmark itself.</p>
    #
    #   @return [String]
    #
    JobBookmarkEntry = ::Struct.new(
      :job_name,
      :version,
      :run,
      :attempt,
      :previous_run_id,
      :run_id,
      :job_bookmark,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.version ||= 0
        self.run ||= 0
        self.attempt ||= 0
      end

    end

    # <p>Specifies how job bookmark data should be encrypted.</p>
    #
    # @!attribute job_bookmarks_encryption_mode
    #   <p>The encryption mode to use for job bookmarks data.</p>
    #
    #   Enum, one of: ["DISABLED", "CSE-KMS"]
    #
    #   @return [String]
    #
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key to be used to encrypt the data.</p>
    #
    #   @return [String]
    #
    JobBookmarksEncryption = ::Struct.new(
      :job_bookmarks_encryption_mode,
      :kms_key_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for JobBookmarksEncryptionMode
    #
    module JobBookmarksEncryptionMode
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      CSEKMS = "CSE-KMS"
    end

    # <p>Specifies code that runs when a job is run.</p>
    #
    # @!attribute name
    #   <p>The name of the job command. For an Apache Spark ETL job, this must be
    #         <code>glueetl</code>. For a Python shell job, it must be <code>pythonshell</code>.
    #         For an Apache Spark streaming ETL job, this must be <code>gluestreaming</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute script_location
    #   <p>Specifies the Amazon Simple Storage Service (Amazon S3) path to a script that runs a
    #         job.</p>
    #
    #   @return [String]
    #
    # @!attribute python_version
    #   <p>The Python version being used to run a Python shell job. Allowed values are 2 or 3.</p>
    #
    #   @return [String]
    #
    JobCommand = ::Struct.new(
      :name,
      :script_location,
      :python_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The details of a Job node present in the workflow.</p>
    #
    # @!attribute job_runs
    #   <p>The information for the job runs represented by the job node.</p>
    #
    #   @return [Array<JobRun>]
    #
    JobNodeDetails = ::Struct.new(
      :job_runs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about a job run.</p>
    #
    # @!attribute id
    #   <p>The ID of this job run.</p>
    #
    #   @return [String]
    #
    # @!attribute attempt
    #   <p>The number of the attempt to run this job.</p>
    #
    #   @return [Integer]
    #
    # @!attribute previous_run_id
    #   <p>The ID of the previous run of this job. For example, the <code>JobRunId</code> specified
    #         in the <code>StartJobRun</code> action.</p>
    #
    #   @return [String]
    #
    # @!attribute trigger_name
    #   <p>The name of the trigger that started this job run.</p>
    #
    #   @return [String]
    #
    # @!attribute job_name
    #   <p>The name of the job definition being used in this run.</p>
    #
    #   @return [String]
    #
    # @!attribute started_on
    #   <p>The date and time at which this job run was started.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_on
    #   <p>The last time that this job run was modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute completed_on
    #   <p>The date and time that this job run completed.</p>
    #
    #   @return [Time]
    #
    # @!attribute job_run_state
    #   <p>The current state of the job run. For more information about the statuses of jobs that have terminated abnormally, see <a href="https://docs.aws.amazon.com/glue/latest/dg/job-run-statuses.html">Glue Job Run Statuses</a>.</p>
    #
    #   Enum, one of: ["STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED", "TIMEOUT"]
    #
    #   @return [String]
    #
    # @!attribute arguments
    #   <p>The job arguments associated with this run. For this job run, they replace the default arguments set in the job definition itself.</p>
    #            <p>You can specify arguments here that your own job-execution script
    #         consumes, as well as arguments that Glue itself consumes.</p>
    #            <p>For information about how to specify and consume your own job arguments, see the <a href="https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html">Calling Glue APIs in Python</a> topic in the developer guide.</p>
    #            <p>For information about the key-value pairs that Glue consumes to set up your job, see the <a href="https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html">Special Parameters Used by Glue</a> topic in the developer guide.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute error_message
    #   <p>An error message associated with this job run.</p>
    #
    #   @return [String]
    #
    # @!attribute predecessor_runs
    #   <p>A list of predecessors to this job run.</p>
    #
    #   @return [Array<Predecessor>]
    #
    # @!attribute allocated_capacity
    #   <p>This field is deprecated. Use <code>MaxCapacity</code> instead.</p>
    #
    #            <p>The number of Glue data processing units (DPUs) allocated to this JobRun.
    #         From 2 to 100 DPUs can be allocated; the default is 10. A DPU is a relative measure
    #         of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory.
    #         For more information, see the <a href="https://aws.amazon.com/glue/pricing/">Glue
    #           pricing page</a>.</p>
    #
    #   @deprecated
    #     This property is deprecated, use MaxCapacity instead.
    #
    #   @return [Integer]
    #
    # @!attribute execution_time
    #   <p>The amount of time (in seconds) that the job run consumed resources.</p>
    #
    #   @return [Integer]
    #
    # @!attribute timeout
    #   <p>The <code>JobRun</code> timeout in minutes. This is the maximum time that a job run can
    #         consume resources before it is terminated and enters <code>TIMEOUT</code> status. The default
    #         is 2,880 minutes (48 hours). This overrides the timeout value set in the parent job.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_capacity
    #   <p>The number of Glue data processing units (DPUs) that can be allocated when this job runs. A DPU is a relative measure
    #         of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory.
    #         For more information, see the <a href="https://aws.amazon.com/glue/pricing/">Glue
    #           pricing page</a>.</p>
    #
    #            <p>Do not set <code>Max Capacity</code> if using <code>WorkerType</code> and <code>NumberOfWorkers</code>.</p>
    #
    #            <p>The value that can be allocated for <code>MaxCapacity</code> depends on whether you are
    #         running a Python shell job or an Apache Spark ETL job:</p>
    #            <ul>
    #               <li>
    #                  <p>When you specify a Python shell job (<code>JobCommand.Name</code>="pythonshell"), you can
    #           allocate either 0.0625 or 1 DPU. The default is 0.0625 DPU.</p>
    #               </li>
    #               <li>
    #                  <p>When you specify an Apache Spark ETL job (<code>JobCommand.Name</code>="glueetl"), you can allocate from 2 to 100 DPUs. The default is 10 DPUs. This job type cannot have a fractional DPU allocation.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Float]
    #
    # @!attribute worker_type
    #   <p>The type of predefined worker that is allocated when a job runs. Accepts a value of Standard, G.1X, or G.2X.</p>
    #            <ul>
    #               <li>
    #                  <p>For the <code>Standard</code> worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.</p>
    #               </li>
    #               <li>
    #                  <p>For the <code>G.1X</code> worker type, each worker provides 4 vCPU, 16 GB of memory and a 64GB disk, and 1 executor per worker.</p>
    #               </li>
    #               <li>
    #                  <p>For the <code>G.2X</code> worker type, each worker provides 8 vCPU, 32 GB of memory and a 128GB disk, and 1 executor per worker.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["Standard", "G.1X", "G.2X"]
    #
    #   @return [String]
    #
    # @!attribute number_of_workers
    #   <p>The number of workers of a defined <code>workerType</code> that are allocated when a job runs.</p>
    #
    #            <p>The maximum number of workers you can define are 299 for <code>G.1X</code>, and 149 for <code>G.2X</code>. </p>
    #
    #   @return [Integer]
    #
    # @!attribute security_configuration
    #   <p>The name of the <code>SecurityConfiguration</code> structure to be used with this job
    #         run.</p>
    #
    #   @return [String]
    #
    # @!attribute log_group_name
    #   <p>The name of the log group for secure logging that can be server-side encrypted in Amazon
    #         CloudWatch using KMS. This name can be <code>/aws-glue/jobs/</code>, in which case the
    #         default encryption is <code>NONE</code>. If you add a role name and
    #         <code>SecurityConfiguration</code> name (in other words,
    #         <code>/aws-glue/jobs-yourRoleName-yourSecurityConfigurationName/</code>), then that security
    #         configuration is used to encrypt the log group.</p>
    #
    #   @return [String]
    #
    # @!attribute notification_property
    #   <p>Specifies configuration properties of a job run notification.</p>
    #
    #   @return [NotificationProperty]
    #
    # @!attribute glue_version
    #   <p>Glue version determines the versions of Apache Spark and Python that Glue supports. The Python version indicates the version supported for jobs of type Spark. </p>
    #
    #            <p>For more information about the available Glue versions and corresponding Spark and Python versions, see <a href="https://docs.aws.amazon.com/glue/latest/dg/add-job.html">Glue version</a> in the developer guide.</p>
    #   	
    #   	        <p>Jobs that are created without specifying a Glue version default to Glue 0.9.</p>
    #
    #   @return [String]
    #
    # @!attribute dpu_seconds
    #   <p>This field populates only when an Auto Scaling job run completes, and represents the total time each executor ran during the lifecycle of a job run in seconds, multiplied by a DPU factor (1 for <code>G.1X</code> and 2 for <code>G.2X</code> workers). This value may be different than the <code>executionEngineRuntime</code> * <code>MaxCapacity</code> as in the case of Auto Scaling jobs, as the number of executors running at a given time may be less than the <code>MaxCapacity</code>. Therefore, it is possible that the value of <code>DPUSeconds</code> is less than <code>executionEngineRuntime</code> * <code>MaxCapacity</code>.</p>
    #
    #   @return [Float]
    #
    JobRun = ::Struct.new(
      :id,
      :attempt,
      :previous_run_id,
      :trigger_name,
      :job_name,
      :started_on,
      :last_modified_on,
      :completed_on,
      :job_run_state,
      :arguments,
      :error_message,
      :predecessor_runs,
      :allocated_capacity,
      :execution_time,
      :timeout,
      :max_capacity,
      :worker_type,
      :number_of_workers,
      :security_configuration,
      :log_group_name,
      :notification_property,
      :glue_version,
      :dpu_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.attempt ||= 0
        self.allocated_capacity ||= 0
        self.execution_time ||= 0
      end

    end

    # Includes enum constants for JobRunState
    #
    module JobRunState
      # No documentation available.
      #
      STARTING = "STARTING"

      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      STOPPING = "STOPPING"

      # No documentation available.
      #
      STOPPED = "STOPPED"

      # No documentation available.
      #
      SUCCEEDED = "SUCCEEDED"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      TIMEOUT = "TIMEOUT"
    end

    # <p>Specifies information used to update an existing job definition. The previous job
    #       definition is completely overwritten by this information.</p>
    #
    # @!attribute description
    #   <p>Description of the job being defined.</p>
    #
    #   @return [String]
    #
    # @!attribute log_uri
    #   <p>This field is reserved for future use.</p>
    #
    #   @return [String]
    #
    # @!attribute role
    #   <p>The name or Amazon Resource Name (ARN) of the IAM role associated with this job
    #         (required).</p>
    #
    #   @return [String]
    #
    # @!attribute execution_property
    #   <p>An <code>ExecutionProperty</code> specifying the maximum number of concurrent runs allowed
    #         for this job.</p>
    #
    #   @return [ExecutionProperty]
    #
    # @!attribute command
    #   <p>The <code>JobCommand</code> that runs this job (required).</p>
    #
    #   @return [JobCommand]
    #
    # @!attribute default_arguments
    #   <p>The default arguments for this job.</p>
    #            <p>You can specify arguments here that your own job-execution script
    #         consumes, as well as arguments that Glue itself consumes.</p>
    #            <p>For information about how to specify and consume your own Job arguments, see the <a href="https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html">Calling Glue APIs in Python</a> topic in the developer guide.</p>
    #            <p>For information about the key-value pairs that Glue consumes to set up your job, see the <a href="https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html">Special Parameters Used by Glue</a> topic in the developer guide.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute non_overridable_arguments
    #   <p>Non-overridable arguments for this job, specified as name-value pairs.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute connections
    #   <p>The connections used for this job.</p>
    #
    #   @return [ConnectionsList]
    #
    # @!attribute max_retries
    #   <p>The maximum number of times to retry this job if it fails.</p>
    #
    #   @return [Integer]
    #
    # @!attribute allocated_capacity
    #   <p>This field is deprecated. Use <code>MaxCapacity</code> instead.</p>
    #
    #            <p>The number of Glue data processing units (DPUs) to allocate to this job. You can
    #         allocate from 2 to 100 DPUs; the default is 10. A DPU is a relative measure of processing
    #         power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information,
    #         see the <a href="https://aws.amazon.com/glue/pricing/">Glue pricing
    #         page</a>.</p>
    #
    #   @deprecated
    #     This property is deprecated, use MaxCapacity instead.
    #
    #   @return [Integer]
    #
    # @!attribute timeout
    #   <p>The job timeout in minutes.  This is the maximum time that a job run
    #         can consume resources before it is terminated and enters <code>TIMEOUT</code>
    #         status. The default is 2,880 minutes (48 hours).</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_capacity
    #   <p>For Glue version 1.0 or earlier jobs, using the standard worker type, the number of Glue data processing units (DPUs) that can be allocated when this job runs. A DPU is a relative measure
    #        of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the <a href="https://aws.amazon.com/glue/pricing/">Glue pricing page</a>.</p>
    #
    #   	        <p>Do not set <code>Max Capacity</code> if using <code>WorkerType</code> and <code>NumberOfWorkers</code>.</p>	
    #   	
    #            <p>The value that can be allocated for <code>MaxCapacity</code> depends on whether you are
    #         running a Python shell job or an Apache Spark ETL job:</p>
    #
    #            <ul>
    #               <li>
    #                  <p>When you specify a Python shell job (<code>JobCommand.Name</code>="pythonshell"), you can
    #             allocate either 0.0625 or 1 DPU. The default is 0.0625 DPU.</p>
    #               </li>
    #               <li>
    #                  <p>When you specify an Apache Spark ETL job (<code>JobCommand.Name</code>="glueetl") or Apache
    #              Spark streaming ETL job (<code>JobCommand.Name</code>="gluestreaming"), you can allocate from 2 to 100 DPUs.
    #              The default is 10 DPUs. This job type cannot have a fractional DPU allocation.</p>
    #               </li>
    #            </ul>		
    #   	        <p>For Glue version 2.0 jobs, you cannot instead specify a <code>Maximum capacity</code>. Instead, you should specify a <code>Worker type</code> and the <code>Number of workers</code>.</p>
    #
    #   @return [Float]
    #
    # @!attribute worker_type
    #   <p>The type of predefined worker that is allocated when a job runs. Accepts a value of Standard, G.1X, or G.2X.</p>
    #   	        <ul>
    #               <li>
    #                  <p>For the <code>Standard</code> worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.</p>
    #               </li>
    #               <li>
    #                  <p>For the <code>G.1X</code> worker type, each worker maps to 1 DPU (4 vCPU, 16 GB of memory, 64 GB disk), and provides 1 executor per worker. We recommend this worker type for memory-intensive jobs.</p>
    #               </li>
    #               <li>
    #                  <p>For the <code>G.2X</code> worker type, each worker maps to 2 DPU (8 vCPU, 32 GB of memory, 128 GB disk), and provides 1 executor per worker. We recommend this worker type for memory-intensive jobs.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["Standard", "G.1X", "G.2X"]
    #
    #   @return [String]
    #
    # @!attribute number_of_workers
    #   <p>The number of workers of a defined <code>workerType</code> that are allocated when a job runs.</p>
    #   	
    #            <p>The maximum number of workers you can define are 299 for <code>G.1X</code>, and 149 for <code>G.2X</code>. </p>
    #
    #   @return [Integer]
    #
    # @!attribute security_configuration
    #   <p>The name of the <code>SecurityConfiguration</code> structure to be used with this
    #         job.</p>
    #
    #   @return [String]
    #
    # @!attribute notification_property
    #   <p>Specifies the configuration properties of a job notification.</p>
    #
    #   @return [NotificationProperty]
    #
    # @!attribute glue_version
    #   <p>Glue version determines the versions of Apache Spark and Python that Glue supports. The Python version indicates the version supported for jobs of type Spark. </p>
    #
    #            <p>For more information about the available Glue versions and corresponding Spark and Python versions, see <a href="https://docs.aws.amazon.com/glue/latest/dg/add-job.html">Glue version</a> in the developer guide.</p>
    #
    #   @return [String]
    #
    # @!attribute code_gen_configuration_nodes
    #   <p>The representation of a directed acyclic graph on which both the Glue Studio visual component and Glue Studio code generation is based.</p>
    #
    #   @return [Hash<String, CodeGenConfigurationNode>]
    #
    JobUpdate = ::Struct.new(
      :description,
      :log_uri,
      :role,
      :execution_property,
      :command,
      :default_arguments,
      :non_overridable_arguments,
      :connections,
      :max_retries,
      :allocated_capacity,
      :timeout,
      :max_capacity,
      :worker_type,
      :number_of_workers,
      :security_configuration,
      :notification_property,
      :glue_version,
      :code_gen_configuration_nodes,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_retries ||= 0
        self.allocated_capacity ||= 0
      end

      def to_s
        "#<struct AWS::SDK::Glue::Types::JobUpdate "\
          "description=#{description || 'nil'}, "\
          "log_uri=#{log_uri || 'nil'}, "\
          "role=#{role || 'nil'}, "\
          "execution_property=#{execution_property || 'nil'}, "\
          "command=#{command || 'nil'}, "\
          "default_arguments=#{default_arguments || 'nil'}, "\
          "non_overridable_arguments=#{non_overridable_arguments || 'nil'}, "\
          "connections=#{connections || 'nil'}, "\
          "max_retries=#{max_retries || 'nil'}, "\
          "allocated_capacity=#{allocated_capacity || 'nil'}, "\
          "timeout=#{timeout || 'nil'}, "\
          "max_capacity=#{max_capacity || 'nil'}, "\
          "worker_type=#{worker_type || 'nil'}, "\
          "number_of_workers=#{number_of_workers || 'nil'}, "\
          "security_configuration=#{security_configuration || 'nil'}, "\
          "notification_property=#{notification_property || 'nil'}, "\
          "glue_version=#{glue_version || 'nil'}, "\
          "code_gen_configuration_nodes=\"[SENSITIVE]\">"
      end
    end

    # <p>Specifies a transform that joins two datasets into one dataset using a comparison phrase on the specified data property keys. You can use inner, outer, left, right, left semi, and left anti joins.</p>
    #
    # @!attribute name
    #   <p>The name of the transform node.</p>
    #
    #   @return [String]
    #
    # @!attribute inputs
    #   <p>The data inputs identified by their node names.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute join_type
    #   <p>Specifies the type of join to be performed on the datasets.</p>
    #
    #   Enum, one of: ["equijoin", "left", "right", "outer", "leftsemi", "leftanti"]
    #
    #   @return [String]
    #
    # @!attribute columns
    #   <p>A list of the two columns to be joined.</p>
    #
    #   @return [Array<JoinColumn>]
    #
    Join = ::Struct.new(
      :name,
      :inputs,
      :join_type,
      :columns,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a column to be joined.</p>
    #
    # @!attribute from
    #   <p>The column to be joined.</p>
    #
    #   @return [String]
    #
    # @!attribute keys
    #   <p>The key of the column to be joined.</p>
    #
    #   @return [Array<Array<String>>]
    #
    JoinColumn = ::Struct.new(
      :from,
      :keys,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for JoinType
    #
    module JoinType
      # No documentation available.
      #
      EQUIJOIN = "equijoin"

      # No documentation available.
      #
      LEFT = "left"

      # No documentation available.
      #
      RIGHT = "right"

      # No documentation available.
      #
      OUTER = "outer"

      # No documentation available.
      #
      LEFT_SEMI = "leftsemi"

      # No documentation available.
      #
      LEFT_ANTI = "leftanti"
    end

    # <p>A classifier for <code>JSON</code> content.</p>
    #
    # @!attribute name
    #   <p>The name of the classifier.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The time that this classifier was registered.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated
    #   <p>The time that this classifier was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute version
    #   <p>The version of this classifier.</p>
    #
    #   @return [Integer]
    #
    # @!attribute json_path
    #   <p>A <code>JsonPath</code> string defining the JSON data for the classifier to classify.
    #         Glue supports a subset of JsonPath, as described in <a href="https://docs.aws.amazon.com/glue/latest/dg/custom-classifier.html custom-classifier-json">Writing JsonPath Custom Classifiers</a>.</p>
    #
    #   @return [String]
    #
    JsonClassifier = ::Struct.new(
      :name,
      :creation_time,
      :last_updated,
      :version,
      :json_path,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.version ||= 0
      end

    end

    # <p>Additional options for streaming.</p>
    #
    # @!attribute bootstrap_servers
    #   <p>A list of bootstrap server URLs, for example, as <code>b-1.vpc-test-2.o4q88o.c6.kafka.us-east-1.amazonaws.com:9094</code>. This option must be specified in the API call or defined in the table metadata in the Data Catalog.</p>
    #
    #   @return [String]
    #
    # @!attribute security_protocol
    #   <p>The protocol used to communicate with brokers. The possible values are <code>"SSL"</code> or <code>"PLAINTEXT"</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_name
    #   <p>The name of the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute topic_name
    #   <p>The topic name as specified in Apache Kafka. You must specify at least one of <code>"topicName"</code>, <code>"assign"</code> or <code>"subscribePattern"</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute assign
    #   <p>The specific <code>TopicPartitions</code> to consume. You must specify at least one of <code>"topicName"</code>, <code>"assign"</code> or <code>"subscribePattern"</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute subscribe_pattern
    #   <p>A Java regex string that identifies the topic list to subscribe to. You must specify at least one of <code>"topicName"</code>, <code>"assign"</code> or <code>"subscribePattern"</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute classification
    #   <p>An optional classification.</p>
    #
    #   @return [String]
    #
    # @!attribute delimiter
    #   <p>Specifies the delimiter character.</p>
    #
    #   @return [String]
    #
    # @!attribute starting_offsets
    #   <p>The starting position in the Kafka topic to read data from. The possible values are <code>"earliest"</code> or <code>"latest"</code>. The default value is <code>"latest"</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute ending_offsets
    #   <p>The end point when a batch query is ended. Possible values are either <code>"latest"</code> or a JSON string that specifies an ending offset for each <code>TopicPartition</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute poll_timeout_ms
    #   <p>The timeout in milliseconds to poll data from Kafka in Spark job executors. The default value is <code>512</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute num_retries
    #   <p>The number of times to retry before failing to fetch Kafka offsets. The default value is <code>3</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute retry_interval_ms
    #   <p>The time in milliseconds to wait before retrying to fetch Kafka offsets. The default value is <code>10</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_offsets_per_trigger
    #   <p>The rate limit on the maximum number of offsets that are processed per trigger interval. The specified total number of offsets is proportionally split across <code>topicPartitions</code> of different volumes. The default value is null, which means that the consumer reads all offsets until the known latest offset.</p>
    #
    #   @return [Integer]
    #
    # @!attribute min_partitions
    #   <p>The desired minimum number of partitions to read from Kafka. The default value is null, which means that the number of spark partitions is equal to the number of Kafka partitions.</p>
    #
    #   @return [Integer]
    #
    KafkaStreamingSourceOptions = ::Struct.new(
      :bootstrap_servers,
      :security_protocol,
      :connection_name,
      :topic_name,
      :assign,
      :subscribe_pattern,
      :classification,
      :delimiter,
      :starting_offsets,
      :ending_offsets,
      :poll_timeout_ms,
      :num_retries,
      :retry_interval_ms,
      :max_offsets_per_trigger,
      :min_partitions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A partition key pair consisting of a name and a type.</p>
    #
    # @!attribute name
    #   <p>The name of a partition key.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of a partition key.</p>
    #
    #   @return [String]
    #
    KeySchemaElement = ::Struct.new(
      :name,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Additional options for the Amazon Kinesis streaming data source.</p>
    #
    # @!attribute endpoint_url
    #   <p>The URL of the Kinesis endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute stream_name
    #   <p>The name of the Kinesis data stream.</p>
    #
    #   @return [String]
    #
    # @!attribute classification
    #   <p>An optional classification.</p>
    #
    #   @return [String]
    #
    # @!attribute delimiter
    #   <p>Specifies the delimiter character.</p>
    #
    #   @return [String]
    #
    # @!attribute starting_position
    #   <p>The starting position in the Kinesis data stream to read data from. The possible values are <code>"latest"</code>, <code>"trim_horizon"</code>, or <code>"earliest"</code>. The default value is <code>"latest"</code>.</p>
    #
    #   Enum, one of: ["latest", "trim_horizon", "earliest"]
    #
    #   @return [String]
    #
    # @!attribute max_fetch_time_in_ms
    #   <p>The maximum time spent in the job executor to fetch a record from the Kinesis data stream per shard, specified in milliseconds (ms). The default value is <code>1000</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_fetch_records_per_shard
    #   <p>The maximum number of records to fetch per shard in the Kinesis data stream. The default value is <code>100000</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_record_per_read
    #   <p>The maximum number of records to fetch from the Kinesis data stream in each getRecords operation. The default value is <code>10000</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute add_idle_time_between_reads
    #   <p>Adds a time delay between two consecutive getRecords operations. The default value is <code>"False"</code>. This option is only configurable for Glue version 2.0 and above.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute idle_time_between_reads_in_ms
    #   <p>The minimum time delay between two consecutive getRecords operations, specified in ms. The default value is <code>1000</code>. This option is only configurable for Glue version 2.0 and above.</p>
    #
    #   @return [Integer]
    #
    # @!attribute describe_shard_interval
    #   <p>The minimum time interval between two ListShards API calls for your script to consider resharding. The default value is <code>1s</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute num_retries
    #   <p>The maximum number of retries for Kinesis Data Streams API requests. The default value is <code>3</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute retry_interval_ms
    #   <p>The cool-off time period (specified in ms) before retrying the Kinesis Data Streams API call. The default value is <code>1000</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_retry_interval_ms
    #   <p>The maximum cool-off time period (specified in ms) between two retries of a Kinesis Data Streams API call. The default value is <code>10000</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute avoid_empty_batches
    #   <p>Avoids creating an empty microbatch job by checking for unread data in the Kinesis data stream before the batch is started. The default value is <code>"False"</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute stream_arn
    #   <p>The Amazon Resource Name (ARN) of the Kinesis data stream.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the role to assume using AWS Security Token Service (AWS STS). This role must have permissions for describe or read record operations for the Kinesis data stream. You must use this parameter when accessing a data stream in a different account. Used in conjunction with <code>"awsSTSSessionName"</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute role_session_name
    #   <p>An identifier for the session assuming the role using AWS STS. You must use this parameter when accessing a data stream in a different account. Used in conjunction with <code>"awsSTSRoleARN"</code>.</p>
    #
    #   @return [String]
    #
    KinesisStreamingSourceOptions = ::Struct.new(
      :endpoint_url,
      :stream_name,
      :classification,
      :delimiter,
      :starting_position,
      :max_fetch_time_in_ms,
      :max_fetch_records_per_shard,
      :max_record_per_read,
      :add_idle_time_between_reads,
      :idle_time_between_reads_in_ms,
      :describe_shard_interval,
      :num_retries,
      :retry_interval_ms,
      :max_retry_interval_ms,
      :avoid_empty_batches,
      :stream_arn,
      :role_arn,
      :role_session_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies configuration properties for a labeling set generation task run.</p>
    #
    # @!attribute output_s3_path
    #   <p>The Amazon Simple Storage Service (Amazon S3) path where you will generate the labeling
    #         set.</p>
    #
    #   @return [String]
    #
    LabelingSetGenerationTaskRunProperties = ::Struct.new(
      :output_s3_path,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies AWS Lake Formation configuration settings for the crawler.</p>
    #
    # @!attribute use_lake_formation_credentials
    #   <p>Specifies whether to use AWS Lake Formation credentials for the crawler instead of the IAM role credentials.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute account_id
    #   <p>Required for cross account crawls. For same account crawls as the target data, this can be left as null.</p>
    #
    #   @return [String]
    #
    LakeFormationConfiguration = ::Struct.new(
      :use_lake_formation_credentials,
      :account_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Language
    #
    module Language
      # No documentation available.
      #
      PYTHON = "PYTHON"

      # No documentation available.
      #
      SCALA = "SCALA"
    end

    # <p>When there are multiple versions of a blueprint and the latest version has some errors, this attribute indicates the last successful blueprint definition that is available with the service.</p>
    #
    # @!attribute description
    #   <p>The description of the blueprint.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_on
    #   <p>The date and time the blueprint was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute parameter_spec
    #   <p>A JSON string specifying the parameters for the blueprint.</p>
    #
    #   @return [String]
    #
    # @!attribute blueprint_location
    #   <p>Specifies a path in Amazon S3 where the blueprint is published by the Glue developer.</p>
    #
    #   @return [String]
    #
    # @!attribute blueprint_service_location
    #   <p>Specifies a path in Amazon S3 where the blueprint is copied when you create or update the blueprint.</p>
    #
    #   @return [String]
    #
    LastActiveDefinition = ::Struct.new(
      :description,
      :last_modified_on,
      :parameter_spec,
      :blueprint_location,
      :blueprint_service_location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Status and error information about the most recent crawl.</p>
    #
    # @!attribute status
    #   <p>Status of the last crawl.</p>
    #
    #   Enum, one of: ["SUCCEEDED", "CANCELLED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>If an error occurred, the error information about the last crawl.</p>
    #
    #   @return [String]
    #
    # @!attribute log_group
    #   <p>The log group for the last crawl.</p>
    #
    #   @return [String]
    #
    # @!attribute log_stream
    #   <p>The log stream for the last crawl.</p>
    #
    #   @return [String]
    #
    # @!attribute message_prefix
    #   <p>The prefix for a message about this crawl.</p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The time at which the crawl started.</p>
    #
    #   @return [Time]
    #
    LastCrawlInfo = ::Struct.new(
      :status,
      :error_message,
      :log_group,
      :log_stream,
      :message_prefix,
      :start_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for LastCrawlStatus
    #
    module LastCrawlStatus
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

    # <p>Specifies data lineage configuration settings for the crawler.</p>
    #
    # @!attribute crawler_lineage_settings
    #   <p>Specifies whether data lineage is enabled for the crawler. Valid values are:</p>
    #   	
    #   	        <ul>
    #               <li>
    #                  <p>ENABLE: enables data lineage for the crawler</p>
    #               </li>
    #               <li>
    #                  <p>DISABLE: disables data lineage for the crawler</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ENABLE", "DISABLE"]
    #
    #   @return [String]
    #
    LineageConfiguration = ::Struct.new(
      :crawler_lineage_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A continuation token, if this is a continuation request.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum size of a list to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute tags
    #   <p>Filters the list by an Amazon Web Services resource tag.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListBlueprintsInput = ::Struct.new(
      :next_token,
      :max_results,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute blueprints
    #   <p>List of names of blueprints in the account.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>A continuation token, if not all blueprint names have been returned.</p>
    #
    #   @return [String]
    #
    ListBlueprintsOutput = ::Struct.new(
      :blueprints,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum size of a list to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A continuation token, if this is a continuation request.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Specifies to return only these tagged resources.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListCrawlersInput = ::Struct.new(
      :max_results,
      :next_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute crawler_names
    #   <p>The names of all crawlers in the account, or the crawlers with the specified tags.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>A continuation token, if the returned list does not contain the
    #         last metric available.</p>
    #
    #   @return [String]
    #
    ListCrawlersOutput = ::Struct.new(
      :crawler_names,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A paginated token to offset the results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #
    #   @return [Integer]
    #
    ListCustomEntityTypesInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute custom_entity_types
    #   <p>A list of <code>CustomEntityType</code> objects representing custom patterns.</p>
    #
    #   @return [Array<CustomEntityType>]
    #
    # @!attribute next_token
    #   <p>A pagination token, if more results are available.</p>
    #
    #   @return [String]
    #
    ListCustomEntityTypesOutput = ::Struct.new(
      :custom_entity_types,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A continuation token, if this is a continuation request.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum size of a list to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute tags
    #   <p>Specifies to return only these tagged resources.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListDevEndpointsInput = ::Struct.new(
      :next_token,
      :max_results,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute dev_endpoint_names
    #   <p>The names of all the <code>DevEndpoint</code>s in the account, or the
    #           <code>DevEndpoint</code>s with the specified tags.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>A continuation token, if the returned list does not contain the
    #         last metric available.</p>
    #
    #   @return [String]
    #
    ListDevEndpointsOutput = ::Struct.new(
      :dev_endpoint_names,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A continuation token, if this is a continuation request.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum size of a list to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute tags
    #   <p>Specifies to return only these tagged resources.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListJobsInput = ::Struct.new(
      :next_token,
      :max_results,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_names
    #   <p>The names of all jobs in the account, or the jobs with the specified tags.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>A continuation token, if the returned list does not contain the
    #         last metric available.</p>
    #
    #   @return [String]
    #
    ListJobsOutput = ::Struct.new(
      :job_names,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A continuation token, if this is a continuation request.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum size of a list to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute filter
    #   <p>A <code>TransformFilterCriteria</code> used to filter the machine learning transforms.</p>
    #
    #   @return [TransformFilterCriteria]
    #
    # @!attribute sort
    #   <p>A <code>TransformSortCriteria</code> used to sort the machine learning transforms.</p>
    #
    #   @return [TransformSortCriteria]
    #
    # @!attribute tags
    #   <p>Specifies to return only these tagged resources.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListMLTransformsInput = ::Struct.new(
      :next_token,
      :max_results,
      :filter,
      :sort,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute transform_ids
    #   <p>The identifiers of all the machine learning transforms in the account, or the
    #           machine learning transforms with the specified tags.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>A continuation token, if the returned list does not contain the
    #         last metric available.</p>
    #
    #   @return [String]
    #
    ListMLTransformsOutput = ::Struct.new(
      :transform_ids,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>Maximum number of results required per page. If the value is not supplied, this will be defaulted to 25 per page.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A continuation token, if this is a continuation call.</p>
    #
    #   @return [String]
    #
    ListRegistriesInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registries
    #   <p>An array of <code>RegistryDetailedListItem</code> objects containing minimal details of each registry.</p>
    #
    #   @return [Array<RegistryListItem>]
    #
    # @!attribute next_token
    #   <p>A continuation token for paginating the returned list of tokens, returned if the current segment of the list is not the last.</p>
    #
    #   @return [String]
    #
    ListRegistriesOutput = ::Struct.new(
      :registries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute schema_id
    #   <p>This is a wrapper structure to contain schema identity fields. The structure contains:</p>
    #   	        <ul>
    #               <li>
    #                  <p>SchemaId$SchemaArn: The Amazon Resource Name (ARN) of the schema. Either <code>SchemaArn</code> or <code>SchemaName</code> and <code>RegistryName</code> has to be provided.</p>
    #               </li>
    #               <li>
    #                  <p>SchemaId$SchemaName: The name of the schema. Either <code>SchemaArn</code> or <code>SchemaName</code> and <code>RegistryName</code> has to be provided.</p>
    #               </li>
    #            </ul>
    #
    #   @return [SchemaId]
    #
    # @!attribute max_results
    #   <p>Maximum number of results required per page. If the value is not supplied, this will be defaulted to 25 per page.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A continuation token, if this is a continuation call.</p>
    #
    #   @return [String]
    #
    ListSchemaVersionsInput = ::Struct.new(
      :schema_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute schemas
    #   <p>An array of <code>SchemaVersionList</code> objects containing details of each schema version.</p>
    #
    #   @return [Array<SchemaVersionListItem>]
    #
    # @!attribute next_token
    #   <p>A continuation token for paginating the returned list of tokens, returned if the current segment of the list is not the last.</p>
    #
    #   @return [String]
    #
    ListSchemaVersionsOutput = ::Struct.new(
      :schemas,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registry_id
    #   <p>A wrapper structure that may contain the registry name and Amazon Resource Name (ARN).</p>
    #
    #   @return [RegistryId]
    #
    # @!attribute max_results
    #   <p>Maximum number of results required per page. If the value is not supplied, this will be defaulted to 25 per page.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A continuation token, if this is a continuation call.</p>
    #
    #   @return [String]
    #
    ListSchemasInput = ::Struct.new(
      :registry_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute schemas
    #   <p>An array of <code>SchemaListItem</code> objects containing details of each schema.</p>
    #
    #   @return [Array<SchemaListItem>]
    #
    # @!attribute next_token
    #   <p>A continuation token for paginating the returned list of tokens, returned if the current segment of the list is not the last.</p>
    #
    #   @return [String]
    #
    ListSchemasOutput = ::Struct.new(
      :schemas,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no more result. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results. </p>
    #
    #   @return [Integer]
    #
    # @!attribute tags
    #   <p>Tags belonging to the session. </p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute request_origin
    #   <p>The origin of the request. </p>
    #
    #   @return [String]
    #
    ListSessionsInput = ::Struct.new(
      :next_token,
      :max_results,
      :tags,
      :request_origin,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute ids
    #   <p>Returns the Id of the session. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute sessions
    #   <p>Returns the session object. </p>
    #
    #   @return [Array<Session>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no more result. </p>
    #
    #   @return [String]
    #
    ListSessionsOutput = ::Struct.new(
      :ids,
      :sessions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute session_id
    #   <p>The Session ID of the statements.</p>
    #
    #   @return [String]
    #
    # @!attribute request_origin
    #   <p>The origin of the request to list statements.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #
    #   @return [String]
    #
    ListStatementsInput = ::Struct.new(
      :session_id,
      :request_origin,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute statements
    #   <p>Returns the list of statements.</p>
    #
    #   @return [Array<Statement>]
    #
    # @!attribute next_token
    #
    #   @return [String]
    #
    ListStatementsOutput = ::Struct.new(
      :statements,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A continuation token, if this is a continuation request.</p>
    #
    #   @return [String]
    #
    # @!attribute dependent_job_name
    #   <p> The name of the job for which to retrieve triggers. The trigger that can start this job
    #         is returned. If there is no such trigger, all triggers are returned.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum size of a list to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute tags
    #   <p>Specifies to return only these tagged resources.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListTriggersInput = ::Struct.new(
      :next_token,
      :dependent_job_name,
      :max_results,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute trigger_names
    #   <p>The names of all triggers in the account, or the triggers with the specified tags.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>A continuation token, if the returned list does not contain the
    #         last metric available.</p>
    #
    #   @return [String]
    #
    ListTriggersOutput = ::Struct.new(
      :trigger_names,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A continuation token, if this is a continuation request.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum size of a list to return.</p>
    #
    #   @return [Integer]
    #
    ListWorkflowsInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workflows
    #   <p>List of names of workflows in the account.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>A continuation token, if not all workflow names have been returned.</p>
    #
    #   @return [String]
    #
    ListWorkflowsOutput = ::Struct.new(
      :workflows,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The location of resources.</p>
    #
    # @!attribute jdbc
    #   <p>A JDBC location.</p>
    #
    #   @return [Array<CodeGenNodeArg>]
    #
    # @!attribute s3
    #   <p>An Amazon Simple Storage Service (Amazon S3) location.</p>
    #
    #   @return [Array<CodeGenNodeArg>]
    #
    # @!attribute dynamo_db
    #   <p>An Amazon DynamoDB table location.</p>
    #
    #   @return [Array<CodeGenNodeArg>]
    #
    Location = ::Struct.new(
      :jdbc,
      :s3,
      :dynamo_db,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Logical
    #
    module Logical
      # No documentation available.
      #
      AND = "AND"

      # No documentation available.
      #
      ANY = "ANY"
    end

    # Includes enum constants for LogicalOperator
    #
    module LogicalOperator
      # No documentation available.
      #
      EQUALS = "EQUALS"
    end

    # <p>Defines column statistics supported for integer data columns.</p>
    #
    # @!attribute minimum_value
    #   <p>The lowest value in the column.</p>
    #
    #   @return [Integer]
    #
    # @!attribute maximum_value
    #   <p>The highest value in the column.</p>
    #
    #   @return [Integer]
    #
    # @!attribute number_of_nulls
    #   <p>The number of null values in the column.</p>
    #
    #   @return [Integer]
    #
    # @!attribute number_of_distinct_values
    #   <p>The number of distinct values in a column.</p>
    #
    #   @return [Integer]
    #
    LongColumnStatisticsData = ::Struct.new(
      :minimum_value,
      :maximum_value,
      :number_of_nulls,
      :number_of_distinct_values,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.minimum_value ||= 0
        self.maximum_value ||= 0
        self.number_of_nulls ||= 0
        self.number_of_distinct_values ||= 0
      end

    end

    # <p>A structure for a machine learning transform.</p>
    #
    # @!attribute transform_id
    #   <p>The unique transform ID that is generated for the machine learning transform. The ID is
    #         guaranteed to be unique and does not change.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A user-defined name for the machine learning transform. Names are not guaranteed unique
    #         and can be changed at any time.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A user-defined, long-form description text for the machine learning transform.
    #         Descriptions are not guaranteed to be unique and can be changed at any time.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the machine learning transform.</p>
    #
    #   Enum, one of: ["NOT_READY", "READY", "DELETING"]
    #
    #   @return [String]
    #
    # @!attribute created_on
    #   <p>A timestamp. The time and date that this machine learning transform was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_on
    #   <p>A timestamp. The last point in time when this machine learning transform was modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute input_record_tables
    #   <p>A list of Glue table definitions used by the transform.</p>
    #
    #   @return [Array<GlueTable>]
    #
    # @!attribute parameters
    #   <p>A <code>TransformParameters</code> object. You can use parameters to tune (customize) the
    #         behavior of the machine learning transform by specifying what data it learns from and your
    #         preference on various tradeoffs (such as precious vs. recall, or accuracy vs. cost).</p>
    #
    #   @return [TransformParameters]
    #
    # @!attribute evaluation_metrics
    #   <p>An <code>EvaluationMetrics</code> object. Evaluation metrics provide an estimate of the quality of your machine learning transform.</p>
    #
    #   @return [EvaluationMetrics]
    #
    # @!attribute label_count
    #   <p>A count identifier for the labeling files generated by Glue for this transform. As you create a better transform, you can iteratively download, label, and upload the labeling file.</p>
    #
    #   @return [Integer]
    #
    # @!attribute schema
    #   <p>A map of key-value pairs representing the columns and data types that this transform can
    #         run against. Has an upper bound of 100 columns.</p>
    #
    #   @return [Array<SchemaColumn>]
    #
    # @!attribute role
    #   <p>The name or Amazon Resource Name (ARN) of the IAM role with the required permissions. The required permissions include both Glue service role permissions to Glue resources, and Amazon S3 permissions required by the transform. </p>
    #
    #   		       <ul>
    #               <li>
    #                  <p>This role needs Glue service role permissions to allow access to resources in Glue. See <a href="https://docs.aws.amazon.com/glue/latest/dg/attach-policy-iam-user.html">Attach a Policy to IAM Users That Access Glue</a>.</p>
    #               </li>
    #               <li>
    #                  <p>This role needs permission to your Amazon Simple Storage Service (Amazon S3) sources, targets, temporary directory, scripts, and any libraries used by the task run for this transform.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute glue_version
    #   <p>This value determines which version of Glue this machine learning transform is compatible with. Glue 1.0 is recommended for most customers. If the value is not set, the Glue compatibility defaults to Glue 0.9.  For more information, see <a href="https://docs.aws.amazon.com/glue/latest/dg/release-notes.html release-notes-versions">Glue Versions</a> in the developer guide.</p>
    #
    #   @return [String]
    #
    # @!attribute max_capacity
    #   <p>The number of Glue data processing units (DPUs) that are allocated to task runs for this transform. You can allocate from 2 to 100 DPUs; the default is 10. A DPU is a relative measure of
    #         processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more
    #         information, see the <a href="http://aws.amazon.com/glue/pricing/">Glue pricing
    #           page</a>. </p>
    #   		
    #   		       <p>
    #               <code>MaxCapacity</code> is a mutually exclusive option with <code>NumberOfWorkers</code> and <code>WorkerType</code>.</p>
    #           <ul>
    #               <li>
    #                  <p>If either <code>NumberOfWorkers</code> or <code>WorkerType</code> is set, then <code>MaxCapacity</code> cannot be set.</p>
    #               </li>
    #               <li>
    #                  <p>If <code>MaxCapacity</code> is set then neither <code>NumberOfWorkers</code> or <code>WorkerType</code> can be set.</p>
    #               </li>
    #               <li>
    #                  <p>If <code>WorkerType</code> is set, then <code>NumberOfWorkers</code> is required (and vice versa).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MaxCapacity</code> and <code>NumberOfWorkers</code> must both be at least 1.</p>
    #               </li>
    #            </ul>
    #   		
    #   	        <p>When the <code>WorkerType</code> field is set to a value other than <code>Standard</code>, the <code>MaxCapacity</code> field is set automatically and becomes read-only.</p>
    #
    #   @return [Float]
    #
    # @!attribute worker_type
    #   <p>The type of predefined worker that is allocated when a task of this transform runs. Accepts a value of Standard, G.1X, or G.2X.</p>
    #   	        <ul>
    #               <li>
    #                  <p>For the <code>Standard</code> worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.</p>
    #               </li>
    #               <li>
    #                  <p>For the <code>G.1X</code> worker type, each worker provides 4 vCPU, 16 GB of memory and a 64GB disk, and 1 executor per worker.</p>
    #               </li>
    #               <li>
    #                  <p>For the <code>G.2X</code> worker type, each worker provides 8 vCPU, 32 GB of memory and a 128GB disk, and 1 executor per worker.</p>
    #               </li>
    #            </ul>
    #   	
    #   	        <p>
    #               <code>MaxCapacity</code> is a mutually exclusive option with <code>NumberOfWorkers</code> and <code>WorkerType</code>.</p>
    #           <ul>
    #               <li>
    #                  <p>If either <code>NumberOfWorkers</code> or <code>WorkerType</code> is set, then <code>MaxCapacity</code> cannot be set.</p>
    #               </li>
    #               <li>
    #                  <p>If <code>MaxCapacity</code> is set then neither <code>NumberOfWorkers</code> or <code>WorkerType</code> can be set.</p>
    #               </li>
    #               <li>
    #                  <p>If <code>WorkerType</code> is set, then <code>NumberOfWorkers</code> is required (and vice versa).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MaxCapacity</code> and <code>NumberOfWorkers</code> must both be at least 1.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["Standard", "G.1X", "G.2X"]
    #
    #   @return [String]
    #
    # @!attribute number_of_workers
    #   <p>The number of workers of a defined <code>workerType</code> that are allocated when a task of the transform runs.</p>
    #   	
    #   	        <p>If <code>WorkerType</code> is set, then <code>NumberOfWorkers</code> is required (and vice versa).</p>
    #
    #   @return [Integer]
    #
    # @!attribute timeout
    #   <p>The timeout in minutes of the machine learning transform.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_retries
    #   <p>The maximum number of times to retry after an <code>MLTaskRun</code> of the machine
    #         learning transform fails.</p>
    #
    #   @return [Integer]
    #
    # @!attribute transform_encryption
    #   <p>The encryption-at-rest settings of the transform that apply to accessing user data. Machine learning transforms can access user data encrypted in Amazon S3 using KMS.</p>
    #
    #   @return [TransformEncryption]
    #
    MLTransform = ::Struct.new(
      :transform_id,
      :name,
      :description,
      :status,
      :created_on,
      :last_modified_on,
      :input_record_tables,
      :parameters,
      :evaluation_metrics,
      :label_count,
      :schema,
      :role,
      :glue_version,
      :max_capacity,
      :worker_type,
      :number_of_workers,
      :timeout,
      :max_retries,
      :transform_encryption,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.label_count ||= 0
      end

    end

    # <p>The machine learning transform is not ready to run.</p>
    #
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #
    #   @return [String]
    #
    MLTransformNotReadyException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The encryption-at-rest settings of the transform that apply to accessing user data.</p>
    #
    # @!attribute ml_user_data_encryption_mode
    #   <p>The encryption mode applied to user data. Valid values are:</p>
    #   	
    #   	        <ul>
    #               <li>
    #                  <p>DISABLED: encryption is disabled</p>
    #               </li>
    #               <li>
    #                  <p>SSEKMS: use of server-side encryption with Key Management Service (SSE-KMS) for user data stored in Amazon S3.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["DISABLED", "SSE-KMS"]
    #
    #   @return [String]
    #
    # @!attribute kms_key_id
    #   <p>The ID for the customer-provided KMS key.</p>
    #
    #   @return [String]
    #
    MLUserDataEncryption = ::Struct.new(
      :ml_user_data_encryption_mode,
      :kms_key_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for MLUserDataEncryptionModeString
    #
    module MLUserDataEncryptionModeString
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      SSEKMS = "SSE-KMS"
    end

    # <p>Specifies the mapping of data property keys.</p>
    #
    # @!attribute to_key
    #   <p>After the apply mapping, what the name of the column should be. Can be the same as <code>FromPath</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute from_path
    #   <p>The table or column to be modified.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute from_type
    #   <p>The type of the data to be modified.</p>
    #
    #   @return [String]
    #
    # @!attribute to_type
    #   <p>The data type that the data is to be modified to.</p>
    #
    #   @return [String]
    #
    # @!attribute dropped
    #   <p>If true, then the column is removed.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute children
    #   <p>Only applicable to nested data structures. If you want to change the parent structure, but also one of its children, you can fill out this data strucutre. It is also <code>Mapping</code>, but its <code>FromPath</code> will be the parent's <code>FromPath</code> plus the <code>FromPath</code> from this structure.</p>
    #
    #            <p>For the children part, suppose you have the structure:</p>
    #   	
    #   	        <p>
    #               <code>{
    #     "FromPath": "OuterStructure",
    #     "ToKey": "OuterStructure",
    #     "ToType": "Struct",
    #     "Dropped": false,
    #     "Chidlren": [{
    #          "FromPath": "inner",
    #          "ToKey": "inner",
    #          "ToType": "Double",
    #         "Dropped": false,
    #     }]
    #   }</code>
    #            </p>
    #
    #            <p>You can specify a <code>Mapping</code> that looks like:</p>
    #   	
    #   	        <p>
    #               <code>{
    #     "FromPath": "OuterStructure",
    #     "ToKey": "OuterStructure",
    #     "ToType": "Struct",
    #     "Dropped": false,
    #     "Chidlren": [{
    #          "FromPath": "inner",
    #          "ToKey": "inner",
    #          "ToType": "Double",
    #         "Dropped": false,
    #     }]
    #   }</code>
    #            </p>
    #
    #   @return [Array<Mapping>]
    #
    Mapping = ::Struct.new(
      :to_key,
      :from_path,
      :from_type,
      :to_type,
      :dropped,
      :children,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Defines a mapping.</p>
    #
    # @!attribute source_table
    #   <p>The name of the source table.</p>
    #
    #   @return [String]
    #
    # @!attribute source_path
    #   <p>The source path.</p>
    #
    #   @return [String]
    #
    # @!attribute source_type
    #   <p>The source type.</p>
    #
    #   @return [String]
    #
    # @!attribute target_table
    #   <p>The target table.</p>
    #
    #   @return [String]
    #
    # @!attribute target_path
    #   <p>The target path.</p>
    #
    #   @return [String]
    #
    # @!attribute target_type
    #   <p>The target type.</p>
    #
    #   @return [String]
    #
    MappingEntry = ::Struct.new(
      :source_table,
      :source_path,
      :source_type,
      :target_table,
      :target_path,
      :target_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a transform that merges a <code>DynamicFrame</code> with a staging <code>DynamicFrame</code> based on the specified primary keys to identify records. Duplicate records (records with the same primary keys) are not de-duplicated. </p>
    #
    # @!attribute name
    #   <p>The name of the transform node.</p>
    #
    #   @return [String]
    #
    # @!attribute inputs
    #   <p>The data inputs identified by their node names.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute source
    #   <p>The source <code>DynamicFrame</code> that will be merged with a staging <code>DynamicFrame</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute primary_keys
    #   <p>The list of primary key fields to match records from the source and staging dynamic frames.</p>
    #
    #   @return [Array<Array<String>>]
    #
    Merge = ::Struct.new(
      :name,
      :inputs,
      :source,
      :primary_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure containing metadata information for a schema version.</p>
    #
    # @!attribute metadata_value
    #   <p>The metadata key’s corresponding value.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>The time at which the entry was created.</p>
    #
    #   @return [String]
    #
    # @!attribute other_metadata_value_list
    #   <p>Other metadata belonging to the same metadata key.</p>
    #
    #   @return [Array<OtherMetadataValueListItem>]
    #
    MetadataInfo = ::Struct.new(
      :metadata_value,
      :created_time,
      :other_metadata_value_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure containing a key value pair for metadata.</p>
    #
    # @!attribute metadata_key
    #   <p>A metadata key.</p>
    #
    #   @return [String]
    #
    # @!attribute metadata_value
    #   <p>A metadata key’s corresponding value.</p>
    #
    #   @return [String]
    #
    MetadataKeyValuePair = ::Struct.new(
      :metadata_key,
      :metadata_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a Microsoft SQL server data source in the Glue Data Catalog.</p>
    #
    # @!attribute name
    #   <p>The name of the data source.</p>
    #
    #   @return [String]
    #
    # @!attribute database
    #   <p>The name of the database to read from.</p>
    #
    #   @return [String]
    #
    # @!attribute table
    #   <p>The name of the table in the database to read from.</p>
    #
    #   @return [String]
    #
    MicrosoftSQLServerCatalogSource = ::Struct.new(
      :name,
      :database,
      :table,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a target that uses Microsoft SQL.</p>
    #
    # @!attribute name
    #   <p>The name of the data target.</p>
    #
    #   @return [String]
    #
    # @!attribute inputs
    #   <p>The nodes that are inputs to the data target.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute database
    #   <p>The name of the database to write to.</p>
    #
    #   @return [String]
    #
    # @!attribute table
    #   <p>The name of the table in the database to write to.</p>
    #
    #   @return [String]
    #
    MicrosoftSQLServerCatalogTarget = ::Struct.new(
      :name,
      :inputs,
      :database,
      :table,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies an Amazon DocumentDB or MongoDB data store to crawl.</p>
    #
    # @!attribute connection_name
    #   <p>The name of the connection to use to connect to the Amazon DocumentDB or MongoDB target.</p>
    #
    #   @return [String]
    #
    # @!attribute path
    #   <p>The path of the Amazon DocumentDB or MongoDB target (database/collection).</p>
    #
    #   @return [String]
    #
    # @!attribute scan_all
    #   <p>Indicates whether to scan all the records, or to sample rows from the table. Scanning all the records can take a long time when the table is not a high throughput table.</p>
    #   	
    #   	        <p>A value of <code>true</code> means to scan all records, while a value of <code>false</code> means to sample the records. If no value is specified, the value defaults to <code>true</code>.</p>
    #
    #   @return [Boolean]
    #
    MongoDBTarget = ::Struct.new(
      :connection_name,
      :path,
      :scan_all,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a MySQL data source in the Glue Data Catalog.</p>
    #
    # @!attribute name
    #   <p>The name of the data source.</p>
    #
    #   @return [String]
    #
    # @!attribute database
    #   <p>The name of the database to read from.</p>
    #
    #   @return [String]
    #
    # @!attribute table
    #   <p>The name of the table in the database to read from.</p>
    #
    #   @return [String]
    #
    MySQLCatalogSource = ::Struct.new(
      :name,
      :database,
      :table,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a target that uses MySQL.</p>
    #
    # @!attribute name
    #   <p>The name of the data target.</p>
    #
    #   @return [String]
    #
    # @!attribute inputs
    #   <p>The nodes that are inputs to the data target.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute database
    #   <p>The name of the database to write to.</p>
    #
    #   @return [String]
    #
    # @!attribute table
    #   <p>The name of the table in the database to write to.</p>
    #
    #   @return [String]
    #
    MySQLCatalogTarget = ::Struct.new(
      :name,
      :inputs,
      :database,
      :table,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>There is no applicable schedule.</p>
    #
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #
    #   @return [String]
    #
    NoScheduleException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A node represents an Glue component (trigger, crawler, or job) on a workflow graph.</p>
    #
    # @!attribute type
    #   <p>The type of Glue component represented by the node.</p>
    #
    #   Enum, one of: ["CRAWLER", "JOB", "TRIGGER"]
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the Glue component represented by the node.</p>
    #
    #   @return [String]
    #
    # @!attribute unique_id
    #   <p>The unique Id assigned to the node within the workflow.</p>
    #
    #   @return [String]
    #
    # @!attribute trigger_details
    #   <p>Details of the Trigger when the node represents a Trigger.</p>
    #
    #   @return [TriggerNodeDetails]
    #
    # @!attribute job_details
    #   <p>Details of the Job when the node represents a Job.</p>
    #
    #   @return [JobNodeDetails]
    #
    # @!attribute crawler_details
    #   <p>Details of the crawler when the node represents a crawler.</p>
    #
    #   @return [CrawlerNodeDetails]
    #
    Node = ::Struct.new(
      :type,
      :name,
      :unique_id,
      :trigger_details,
      :job_details,
      :crawler_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for NodeType
    #
    module NodeType
      # No documentation available.
      #
      CRAWLER = "CRAWLER"

      # No documentation available.
      #
      JOB = "JOB"

      # No documentation available.
      #
      TRIGGER = "TRIGGER"
    end

    # <p>Specifies configuration properties of a notification.</p>
    #
    # @!attribute notify_delay_after
    #   <p>After a job run starts, the number of minutes to wait before
    #         sending a job run delay notification.</p>
    #
    #   @return [Integer]
    #
    NotificationProperty = ::Struct.new(
      :notify_delay_after,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents whether certain values are recognized as null values for removal.</p>
    #
    # @!attribute is_empty
    #   <p>Specifies that an empty string is considered as a null value.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute is_null_string
    #   <p>Specifies that a value spelling out the word 'null' is considered as a null value.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute is_neg_one
    #   <p>Specifies that an integer value of -1 is considered as a null value.</p>
    #
    #   @return [Boolean]
    #
    NullCheckBoxList = ::Struct.new(
      :is_empty,
      :is_null_string,
      :is_neg_one,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a custom null value such as a zeros or other value being used as a null placeholder unique to the dataset.</p>
    #
    # @!attribute value
    #   <p>The value of the null placeholder.</p>
    #
    #   @return [String]
    #
    # @!attribute datatype
    #   <p>The datatype of the value.</p>
    #
    #   @return [Datatype]
    #
    NullValueField = ::Struct.new(
      :value,
      :datatype,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The operation timed out.</p>
    #
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #
    #   @return [String]
    #
    OperationTimeoutException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies an Oracle data source in the Glue Data Catalog.</p>
    #
    # @!attribute name
    #   <p>The name of the data source.</p>
    #
    #   @return [String]
    #
    # @!attribute database
    #   <p>The name of the database to read from.</p>
    #
    #   @return [String]
    #
    # @!attribute table
    #   <p>The name of the table in the database to read from.</p>
    #
    #   @return [String]
    #
    OracleSQLCatalogSource = ::Struct.new(
      :name,
      :database,
      :table,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a target that uses Oracle SQL.</p>
    #
    # @!attribute name
    #   <p>The name of the data target.</p>
    #
    #   @return [String]
    #
    # @!attribute inputs
    #   <p>The nodes that are inputs to the data target.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute database
    #   <p>The name of the database to write to.</p>
    #
    #   @return [String]
    #
    # @!attribute table
    #   <p>The name of the table in the database to write to.</p>
    #
    #   @return [String]
    #
    OracleSQLCatalogTarget = ::Struct.new(
      :name,
      :inputs,
      :database,
      :table,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the sort order of a sorted column.</p>
    #
    # @!attribute column
    #   <p>The name of the column.</p>
    #
    #   @return [String]
    #
    # @!attribute sort_order
    #   <p>Indicates that the column is sorted in ascending order
    #         (<code>== 1</code>), or in descending order (<code>==0</code>).</p>
    #
    #   @return [Integer]
    #
    Order = ::Struct.new(
      :column,
      :sort_order,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.sort_order ||= 0
      end

    end

    # <p>A structure containing other metadata for a schema version belonging to the same metadata key.</p>
    #
    # @!attribute metadata_value
    #   <p>The metadata key’s corresponding value for the other metadata belonging to the same metadata key.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>The time at which the entry was created.</p>
    #
    #   @return [String]
    #
    OtherMetadataValueListItem = ::Struct.new(
      :metadata_value,
      :created_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a transform that identifies, removes or masks PII data.</p>
    #
    # @!attribute name
    #   <p>The name of the transform node.</p>
    #
    #   @return [String]
    #
    # @!attribute inputs
    #   <p>The node ID inputs to the transform.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute pii_type
    #   <p>Indicates the type of PIIDetection transform. </p>
    #
    #   Enum, one of: ["RowAudit", "RowMasking", "ColumnAudit", "ColumnMasking"]
    #
    #   @return [String]
    #
    # @!attribute entity_types_to_detect
    #   <p>Indicates the types of entities the PIIDetection transform will identify as PII data. </p>
    #            <p>
    #          PII type entities include: PERSON_NAME, DATE, USA_SNN, EMAIL, USA_ITIN, USA_PASSPORT_NUMBER, PHONE_NUMBER, BANK_ACCOUNT,
    #          IP_ADDRESS, MAC_ADDRESS, USA_CPT_CODE, USA_HCPCS_CODE, USA_NATIONAL_DRUG_CODE, USA_MEDICARE_BENEFICIARY_IDENTIFIER,
    #          USA_HEALTH_INSURANCE_CLAIM_NUMBER,CREDIT_CARD,USA_NATIONAL_PROVIDER_IDENTIFIER,USA_DEA_NUMBER,USA_DRIVING_LICENSE
    #       </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute output_column_name
    #   <p>Indicates the output column name that will contain any entity type detected in that row. </p>
    #
    #   @return [String]
    #
    # @!attribute sample_fraction
    #   <p>Indicates the fraction of the data to sample when scanning for PII entities. </p>
    #
    #   @return [Float]
    #
    # @!attribute threshold_fraction
    #   <p>Indicates the fraction of the data that must be met in order for a column to be identified as PII data. </p>
    #
    #   @return [Float]
    #
    # @!attribute mask_value
    #   <p>Indicates the value that will replace the detected entity. </p>
    #
    #   @return [String]
    #
    PIIDetection = ::Struct.new(
      :name,
      :inputs,
      :pii_type,
      :entity_types_to_detect,
      :output_column_name,
      :sample_fraction,
      :threshold_fraction,
      :mask_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ParquetCompressionType
    #
    module ParquetCompressionType
      # No documentation available.
      #
      SNAPPY = "snappy"

      # No documentation available.
      #
      LZO = "lzo"

      # No documentation available.
      #
      GZIP = "gzip"

      # No documentation available.
      #
      UNCOMPRESSED = "uncompressed"

      # No documentation available.
      #
      NONE = "none"
    end

    # <p>Represents a slice of table data.</p>
    #
    # @!attribute values
    #   <p>The values of the partition.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute database_name
    #   <p>The name of the catalog database in which to create the partition.</p>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>The name of the database table in which to create the partition.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The time at which the partition was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_access_time
    #   <p>The last time at which the partition was accessed.</p>
    #
    #   @return [Time]
    #
    # @!attribute storage_descriptor
    #   <p>Provides information about the physical
    #         location where the partition is stored.</p>
    #
    #   @return [StorageDescriptor]
    #
    # @!attribute parameters
    #   <p>These key-value pairs define partition parameters.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute last_analyzed_time
    #   <p>The last time at which column statistics were computed for this
    #         partition.</p>
    #
    #   @return [Time]
    #
    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog in which the partition resides.</p>
    #
    #   @return [String]
    #
    Partition = ::Struct.new(
      :values,
      :database_name,
      :table_name,
      :creation_time,
      :last_access_time,
      :storage_descriptor,
      :parameters,
      :last_analyzed_time,
      :catalog_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about a partition error.</p>
    #
    # @!attribute partition_values
    #   <p>The values that define the partition.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute error_detail
    #   <p>The details about the partition error.</p>
    #
    #   @return [ErrorDetail]
    #
    PartitionError = ::Struct.new(
      :partition_values,
      :error_detail,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure for a partition index.</p>
    #
    # @!attribute keys
    #   <p>The keys for the partition index.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute index_name
    #   <p>The name of the partition index.</p>
    #
    #   @return [String]
    #
    PartitionIndex = ::Struct.new(
      :keys,
      :index_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A descriptor for a partition index in a table.</p>
    #
    # @!attribute index_name
    #   <p>The name of the partition index.</p>
    #
    #   @return [String]
    #
    # @!attribute keys
    #   <p>A list of one or more keys, as <code>KeySchemaElement</code> structures, for the partition index.</p>
    #
    #   @return [Array<KeySchemaElement>]
    #
    # @!attribute index_status
    #   <p>The status of the partition index. </p>
    #   	
    #   	        <p>The possible statuses are:</p>
    #   	        <ul>
    #               <li>
    #                  <p>CREATING: The index is being created. When an index is in a CREATING state, the index or its table cannot be deleted.</p>
    #               </li>
    #               <li>
    #                  <p>ACTIVE: The index creation succeeds.</p>
    #               </li>
    #               <li>
    #                  <p>FAILED: The index creation fails. </p>
    #               </li>
    #               <li>
    #                  <p>DELETING: The index is deleted from the list of indexes.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["CREATING", "ACTIVE", "DELETING", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute backfill_errors
    #   <p>A list of errors that can occur when registering partition indexes for an existing table.</p>
    #
    #   @return [Array<BackfillError>]
    #
    PartitionIndexDescriptor = ::Struct.new(
      :index_name,
      :keys,
      :index_status,
      :backfill_errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PartitionIndexStatus
    #
    module PartitionIndexStatus
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
      FAILED = "FAILED"
    end

    # <p>The structure used to create and update a partition.</p>
    #
    # @!attribute values
    #   <p>The values of the partition. Although this parameter is not required by the SDK, you must specify this parameter for a valid input.</p>
    #   	
    #   	        <p>The values for the keys for the new partition must be passed as an array of String objects that must be ordered in the same order as the partition keys appearing in the Amazon S3 prefix. Otherwise Glue will add the values to the wrong keys.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute last_access_time
    #   <p>The last time at which the partition was accessed.</p>
    #
    #   @return [Time]
    #
    # @!attribute storage_descriptor
    #   <p>Provides information about the physical
    #         location where the partition is stored.</p>
    #
    #   @return [StorageDescriptor]
    #
    # @!attribute parameters
    #   <p>These key-value pairs define partition parameters.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute last_analyzed_time
    #   <p>The last time at which column statistics were computed for this partition.</p>
    #
    #   @return [Time]
    #
    PartitionInput = ::Struct.new(
      :values,
      :last_access_time,
      :storage_descriptor,
      :parameters,
      :last_analyzed_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains a list of values defining partitions.</p>
    #
    # @!attribute values
    #   <p>The list of values.</p>
    #
    #   @return [Array<String>]
    #
    PartitionValueList = ::Struct.new(
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Permission
    #
    module Permission
      # No documentation available.
      #
      ALL = "ALL"

      # No documentation available.
      #
      SELECT = "SELECT"

      # No documentation available.
      #
      ALTER = "ALTER"

      # No documentation available.
      #
      DROP = "DROP"

      # No documentation available.
      #
      DELETE = "DELETE"

      # No documentation available.
      #
      INSERT = "INSERT"

      # No documentation available.
      #
      CREATE_DATABASE = "CREATE_DATABASE"

      # No documentation available.
      #
      CREATE_TABLE = "CREATE_TABLE"

      # No documentation available.
      #
      DATA_LOCATION_ACCESS = "DATA_LOCATION_ACCESS"
    end

    # Includes enum constants for PermissionType
    #
    module PermissionType
      # No documentation available.
      #
      COLUMN_PERMISSION = "COLUMN_PERMISSION"

      # No documentation available.
      #
      CELL_FILTER_PERMISSION = "CELL_FILTER_PERMISSION"
    end

    # @!attribute message
    #
    #   @return [String]
    #
    PermissionTypeMismatchException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the physical requirements for a connection.</p>
    #
    # @!attribute subnet_id
    #   <p>The subnet ID used by the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute security_group_id_list
    #   <p>The security group ID list used by the connection.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute availability_zone
    #   <p>The connection's Availability Zone. This field is redundant because the specified subnet
    #         implies the Availability Zone to be used. Currently the field must be populated, but it will
    #         be deprecated in the future.</p>
    #
    #   @return [String]
    #
    PhysicalConnectionRequirements = ::Struct.new(
      :subnet_id,
      :security_group_id_list,
      :availability_zone,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PiiType
    #
    module PiiType
      # No documentation available.
      #
      RowAudit = "RowAudit"

      # No documentation available.
      #
      RowMasking = "RowMasking"

      # No documentation available.
      #
      ColumnAudit = "ColumnAudit"

      # No documentation available.
      #
      ColumnMasking = "ColumnMasking"
    end

    # <p>Specifies a PostgresSQL data source in the Glue Data Catalog.</p>
    #
    # @!attribute name
    #   <p>The name of the data source.</p>
    #
    #   @return [String]
    #
    # @!attribute database
    #   <p>The name of the database to read from.</p>
    #
    #   @return [String]
    #
    # @!attribute table
    #   <p>The name of the table in the database to read from.</p>
    #
    #   @return [String]
    #
    PostgreSQLCatalogSource = ::Struct.new(
      :name,
      :database,
      :table,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a target that uses Postgres SQL.</p>
    #
    # @!attribute name
    #   <p>The name of the data target.</p>
    #
    #   @return [String]
    #
    # @!attribute inputs
    #   <p>The nodes that are inputs to the data target.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute database
    #   <p>The name of the database to write to.</p>
    #
    #   @return [String]
    #
    # @!attribute table
    #   <p>The name of the table in the database to write to.</p>
    #
    #   @return [String]
    #
    PostgreSQLCatalogTarget = ::Struct.new(
      :name,
      :inputs,
      :database,
      :table,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A job run that was used in the predicate of a conditional trigger
    #       that triggered this job run.</p>
    #
    # @!attribute job_name
    #   <p>The name of the job definition used by the predecessor job run.</p>
    #
    #   @return [String]
    #
    # @!attribute run_id
    #   <p>The job-run ID of the predecessor job run.</p>
    #
    #   @return [String]
    #
    Predecessor = ::Struct.new(
      :job_name,
      :run_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Defines the predicate of the trigger, which determines when it fires.</p>
    #
    # @!attribute logical
    #   <p>An optional field if only one condition is listed. If multiple conditions are listed, then
    #         this field is required.</p>
    #
    #   Enum, one of: ["AND", "ANY"]
    #
    #   @return [String]
    #
    # @!attribute conditions
    #   <p>A list of the conditions that determine when the trigger will fire.</p>
    #
    #   @return [Array<Condition>]
    #
    Predicate = ::Struct.new(
      :logical,
      :conditions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Permissions granted to a principal.</p>
    #
    # @!attribute principal
    #   <p>The principal who is granted permissions.</p>
    #
    #   @return [DataLakePrincipal]
    #
    # @!attribute permissions
    #   <p>The permissions that are granted to the principal.</p>
    #
    #   @return [Array<String>]
    #
    PrincipalPermissions = ::Struct.new(
      :principal,
      :permissions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PrincipalType
    #
    module PrincipalType
      # No documentation available.
      #
      USER = "USER"

      # No documentation available.
      #
      ROLE = "ROLE"

      # No documentation available.
      #
      GROUP = "GROUP"
    end

    # <p>Defines a property predicate.</p>
    #
    # @!attribute key
    #   <p>The key of the property.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the property.</p>
    #
    #   @return [String]
    #
    # @!attribute comparator
    #   <p>The comparator used to compare this property to others.</p>
    #
    #   Enum, one of: ["EQUALS", "GREATER_THAN", "LESS_THAN", "GREATER_THAN_EQUALS", "LESS_THAN_EQUALS"]
    #
    #   @return [String]
    #
    PropertyPredicate = ::Struct.new(
      :key,
      :value,
      :comparator,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog to set the security configuration for. If none is provided, the
    #         Amazon Web Services account ID is used by default.</p>
    #
    #   @return [String]
    #
    # @!attribute data_catalog_encryption_settings
    #   <p>The security configuration to set.</p>
    #
    #   @return [DataCatalogEncryptionSettings]
    #
    PutDataCatalogEncryptionSettingsInput = ::Struct.new(
      :catalog_id,
      :data_catalog_encryption_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutDataCatalogEncryptionSettingsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy_in_json
    #   <p>Contains the policy document to set, in JSON format.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_arn
    #   <p>Do not use. For internal use only.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_hash_condition
    #   <p>The hash value returned when the previous policy was set using
    #           <code>PutResourcePolicy</code>. Its purpose is to prevent concurrent modifications of a
    #         policy. Do not use this parameter if no previous policy has been set.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_exists_condition
    #   <p>A value of <code>MUST_EXIST</code> is used to update a policy. A value of
    #           <code>NOT_EXIST</code> is used to create a new policy. If a value of <code>NONE</code> or a
    #         null value is used, the call does not depend on the existence of a policy.</p>
    #
    #   Enum, one of: ["MUST_EXIST", "NOT_EXIST", "NONE"]
    #
    #   @return [String]
    #
    # @!attribute enable_hybrid
    #   <p>If <code>'TRUE'</code>, indicates that you are using both methods to grant cross-account
    #         access to Data Catalog resources:</p>
    #            <ul>
    #               <li>
    #                  <p>By directly updating the resource policy with <code>PutResourePolicy</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>By using the <b>Grant permissions</b> command on the Amazon Web Services Management Console.</p>
    #               </li>
    #            </ul>
    #            <p>Must be set to <code>'TRUE'</code> if you have already used the Management Console to
    #         grant cross-account access, otherwise the call fails. Default is 'FALSE'.</p>
    #
    #   Enum, one of: ["TRUE", "FALSE"]
    #
    #   @return [String]
    #
    PutResourcePolicyInput = ::Struct.new(
      :policy_in_json,
      :resource_arn,
      :policy_hash_condition,
      :policy_exists_condition,
      :enable_hybrid,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy_hash
    #   <p>A hash of the policy that has just been set. This must
    #         be included in a subsequent call that overwrites or updates
    #         this policy.</p>
    #
    #   @return [String]
    #
    PutResourcePolicyOutput = ::Struct.new(
      :policy_hash,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute schema_id
    #   <p>The unique ID for the schema.</p>
    #
    #   @return [SchemaId]
    #
    # @!attribute schema_version_number
    #   <p>The version number of the schema.</p>
    #
    #   @return [SchemaVersionNumber]
    #
    # @!attribute schema_version_id
    #   <p>The unique version ID of the schema version.</p>
    #
    #   @return [String]
    #
    # @!attribute metadata_key_value
    #   <p>The metadata key's corresponding value.</p>
    #
    #   @return [MetadataKeyValuePair]
    #
    PutSchemaVersionMetadataInput = ::Struct.new(
      :schema_id,
      :schema_version_number,
      :schema_version_id,
      :metadata_key_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute schema_arn
    #   <p>The Amazon Resource Name (ARN) for the schema.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_name
    #   <p>The name for the schema.</p>
    #
    #   @return [String]
    #
    # @!attribute registry_name
    #   <p>The name for the registry.</p>
    #
    #   @return [String]
    #
    # @!attribute latest_version
    #   <p>The latest version of the schema.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute version_number
    #   <p>The version number of the schema.</p>
    #
    #   @return [Integer]
    #
    # @!attribute schema_version_id
    #   <p>The unique version ID of the schema version.</p>
    #
    #   @return [String]
    #
    # @!attribute metadata_key
    #   <p>The metadata key.</p>
    #
    #   @return [String]
    #
    # @!attribute metadata_value
    #   <p>The value of the metadata key.</p>
    #
    #   @return [String]
    #
    PutSchemaVersionMetadataOutput = ::Struct.new(
      :schema_arn,
      :schema_name,
      :registry_name,
      :latest_version,
      :version_number,
      :schema_version_id,
      :metadata_key,
      :metadata_value,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.latest_version ||= false
        self.version_number ||= 0
      end

    end

    # @!attribute name
    #   <p>Name of the workflow which was run.</p>
    #
    #   @return [String]
    #
    # @!attribute run_id
    #   <p>The ID of the workflow run for which the run properties should be updated.</p>
    #
    #   @return [String]
    #
    # @!attribute run_properties
    #   <p>The properties to put for the specified run.</p>
    #
    #   @return [Hash<String, String>]
    #
    PutWorkflowRunPropertiesInput = ::Struct.new(
      :name,
      :run_id,
      :run_properties,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutWorkflowRunPropertiesOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute schema_id
    #   <p>A wrapper structure that may contain the schema name and Amazon Resource Name (ARN).</p>
    #
    #   @return [SchemaId]
    #
    # @!attribute schema_version_number
    #   <p>The version number of the schema.</p>
    #
    #   @return [SchemaVersionNumber]
    #
    # @!attribute schema_version_id
    #   <p>The unique version ID of the schema version.</p>
    #
    #   @return [String]
    #
    # @!attribute metadata_list
    #   <p>Search key-value pairs for metadata, if they are not provided all the metadata information will be fetched.</p>
    #
    #   @return [Array<MetadataKeyValuePair>]
    #
    # @!attribute max_results
    #   <p>Maximum number of results required per page. If the value is not supplied, this will be defaulted to 25 per page.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A continuation token, if this is a continuation call.</p>
    #
    #   @return [String]
    #
    QuerySchemaVersionMetadataInput = ::Struct.new(
      :schema_id,
      :schema_version_number,
      :schema_version_id,
      :metadata_list,
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

    # @!attribute metadata_info_map
    #   <p>A map of a metadata key and associated values.</p>
    #
    #   @return [Hash<String, MetadataInfo>]
    #
    # @!attribute schema_version_id
    #   <p>The unique version ID of the schema version.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A continuation token for paginating the returned list of tokens, returned if the current segment of the list is not the last.</p>
    #
    #   @return [String]
    #
    QuerySchemaVersionMetadataOutput = ::Struct.new(
      :metadata_info_map,
      :schema_version_id,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for QuoteChar
    #
    module QuoteChar
      # No documentation available.
      #
      QUOTE = "quote"

      # No documentation available.
      #
      QUILLEMET = "quillemet"

      # No documentation available.
      #
      SINGLE_QUOTE = "single_quote"

      # No documentation available.
      #
      DISABLED = "disabled"
    end

    # Includes enum constants for RecrawlBehavior
    #
    module RecrawlBehavior
      # No documentation available.
      #
      CRAWL_EVERYTHING = "CRAWL_EVERYTHING"

      # No documentation available.
      #
      CRAWL_NEW_FOLDERS_ONLY = "CRAWL_NEW_FOLDERS_ONLY"

      # No documentation available.
      #
      CRAWL_EVENT_MODE = "CRAWL_EVENT_MODE"
    end

    # <p>When crawling an Amazon S3 data source after the first crawl is complete, specifies whether to crawl the entire dataset again or to crawl only folders that were added since the last crawler run. For more information, see <a href="https://docs.aws.amazon.com/glue/latest/dg/incremental-crawls.html">Incremental Crawls in Glue</a> in the developer guide.</p>
    #
    # @!attribute recrawl_behavior
    #   <p>Specifies whether to crawl the entire dataset again or to crawl only folders that were added since the last crawler run.</p>
    #   	
    #   	        <p>A value of <code>CRAWL_EVERYTHING</code> specifies crawling the entire dataset again.</p>
    #
    #            <p>A value of <code>CRAWL_NEW_FOLDERS_ONLY</code> specifies crawling only folders that were added since the last crawler run.</p>
    #   	
    #   	        <p>A value of <code>CRAWL_EVENT_MODE</code> specifies crawling only the changes identified by Amazon S3 events.</p>
    #
    #   Enum, one of: ["CRAWL_EVERYTHING", "CRAWL_NEW_FOLDERS_ONLY", "CRAWL_EVENT_MODE"]
    #
    #   @return [String]
    #
    RecrawlPolicy = ::Struct.new(
      :recrawl_behavior,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies an Amazon Redshift data store.</p>
    #
    # @!attribute name
    #   <p>The name of the Amazon Redshift data store.</p>
    #
    #   @return [String]
    #
    # @!attribute database
    #   <p>The database to read from.</p>
    #
    #   @return [String]
    #
    # @!attribute table
    #   <p>The database table to read from.</p>
    #
    #   @return [String]
    #
    # @!attribute redshift_tmp_dir
    #   <p>The Amazon S3 path where temporary data can be staged when copying out of the database.</p>
    #
    #   @return [String]
    #
    # @!attribute tmp_dir_iam_role
    #   <p>The IAM role with permissions.</p>
    #
    #   @return [String]
    #
    RedshiftSource = ::Struct.new(
      :name,
      :database,
      :table,
      :redshift_tmp_dir,
      :tmp_dir_iam_role,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a target that uses Amazon Redshift.</p>
    #
    # @!attribute name
    #   <p>The name of the data target.</p>
    #
    #   @return [String]
    #
    # @!attribute inputs
    #   <p>The nodes that are inputs to the data target.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute database
    #   <p>The name of the database to write to.</p>
    #
    #   @return [String]
    #
    # @!attribute table
    #   <p>The name of the table in the database to write to.</p>
    #
    #   @return [String]
    #
    # @!attribute redshift_tmp_dir
    #   <p>The Amazon S3 path where temporary data can be staged when copying out of the database.</p>
    #
    #   @return [String]
    #
    # @!attribute tmp_dir_iam_role
    #   <p>The IAM role with permissions.</p>
    #
    #   @return [String]
    #
    # @!attribute upsert_redshift_options
    #   <p>The set of options to configure an upsert operation when writing to a Redshift target.</p>
    #
    #   @return [UpsertRedshiftTargetOptions]
    #
    RedshiftTarget = ::Struct.new(
      :name,
      :inputs,
      :database,
      :table,
      :redshift_tmp_dir,
      :tmp_dir_iam_role,
      :upsert_redshift_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute schema_id
    #   <p>This is a wrapper structure to contain schema identity fields. The structure contains:</p>
    #   	        <ul>
    #               <li>
    #                  <p>SchemaId$SchemaArn: The Amazon Resource Name (ARN) of the schema. Either <code>SchemaArn</code> or <code>SchemaName</code> and <code>RegistryName</code> has to be provided.</p>
    #               </li>
    #               <li>
    #                  <p>SchemaId$SchemaName: The name of the schema. Either <code>SchemaArn</code> or <code>SchemaName</code> and <code>RegistryName</code> has to be provided.</p>
    #               </li>
    #            </ul>
    #
    #   @return [SchemaId]
    #
    # @!attribute schema_definition
    #   <p>The schema definition using the <code>DataFormat</code> setting for the <code>SchemaName</code>.</p>
    #
    #   @return [String]
    #
    RegisterSchemaVersionInput = ::Struct.new(
      :schema_id,
      :schema_definition,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute schema_version_id
    #   <p>The unique ID that represents the version of this schema.</p>
    #
    #   @return [String]
    #
    # @!attribute version_number
    #   <p>The version of this schema (for sync flow only, in case this is the first version).</p>
    #
    #   @return [Integer]
    #
    # @!attribute status
    #   <p>The status of the schema version.</p>
    #
    #   Enum, one of: ["AVAILABLE", "PENDING", "FAILURE", "DELETING"]
    #
    #   @return [String]
    #
    RegisterSchemaVersionOutput = ::Struct.new(
      :schema_version_id,
      :version_number,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.version_number ||= 0
      end

    end

    # <p>A wrapper structure that may contain the registry name and Amazon Resource Name (ARN).</p>
    #
    # @!attribute registry_name
    #   <p>Name of the registry. Used only for lookup. One of <code>RegistryArn</code> or <code>RegistryName</code> has to be provided. </p>
    #
    #   @return [String]
    #
    # @!attribute registry_arn
    #   <p>Arn of the registry to be updated. One of <code>RegistryArn</code> or <code>RegistryName</code> has to be provided.</p>
    #
    #   @return [String]
    #
    RegistryId = ::Struct.new(
      :registry_name,
      :registry_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure containing the details for a registry.</p>
    #
    # @!attribute registry_name
    #   <p>The name of the registry.</p>
    #
    #   @return [String]
    #
    # @!attribute registry_arn
    #   <p>The Amazon Resource Name (ARN) of the registry.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the registry.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the registry.</p>
    #
    #   Enum, one of: ["AVAILABLE", "DELETING"]
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>The data the registry was created.</p>
    #
    #   @return [String]
    #
    # @!attribute updated_time
    #   <p>The date the registry was updated.</p>
    #
    #   @return [String]
    #
    RegistryListItem = ::Struct.new(
      :registry_name,
      :registry_arn,
      :description,
      :status,
      :created_time,
      :updated_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RegistryStatus
    #
    module RegistryStatus
      # No documentation available.
      #
      AVAILABLE = "AVAILABLE"

      # No documentation available.
      #
      DELETING = "DELETING"
    end

    # <p>Specifies a Relational database data source in the Glue Data Catalog.</p>
    #
    # @!attribute name
    #   <p>The name of the data source.</p>
    #
    #   @return [String]
    #
    # @!attribute database
    #   <p>The name of the database to read from.</p>
    #
    #   @return [String]
    #
    # @!attribute table
    #   <p>The name of the table in the database to read from.</p>
    #
    #   @return [String]
    #
    RelationalCatalogSource = ::Struct.new(
      :name,
      :database,
      :table,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute schema_id
    #   <p>A wrapper structure that may contain the schema name and Amazon Resource Name (ARN).</p>
    #
    #   @return [SchemaId]
    #
    # @!attribute schema_version_number
    #   <p>The version number of the schema.</p>
    #
    #   @return [SchemaVersionNumber]
    #
    # @!attribute schema_version_id
    #   <p>The unique version ID of the schema version.</p>
    #
    #   @return [String]
    #
    # @!attribute metadata_key_value
    #   <p>The value of the metadata key.</p>
    #
    #   @return [MetadataKeyValuePair]
    #
    RemoveSchemaVersionMetadataInput = ::Struct.new(
      :schema_id,
      :schema_version_number,
      :schema_version_id,
      :metadata_key_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute schema_arn
    #   <p>The Amazon Resource Name (ARN) of the schema.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_name
    #   <p>The name of the schema.</p>
    #
    #   @return [String]
    #
    # @!attribute registry_name
    #   <p>The name of the registry.</p>
    #
    #   @return [String]
    #
    # @!attribute latest_version
    #   <p>The latest version of the schema.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute version_number
    #   <p>The version number of the schema.</p>
    #
    #   @return [Integer]
    #
    # @!attribute schema_version_id
    #   <p>The version ID for the schema version.</p>
    #
    #   @return [String]
    #
    # @!attribute metadata_key
    #   <p>The metadata key.</p>
    #
    #   @return [String]
    #
    # @!attribute metadata_value
    #   <p>The value of the metadata key.</p>
    #
    #   @return [String]
    #
    RemoveSchemaVersionMetadataOutput = ::Struct.new(
      :schema_arn,
      :schema_name,
      :registry_name,
      :latest_version,
      :version_number,
      :schema_version_id,
      :metadata_key,
      :metadata_value,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.latest_version ||= false
        self.version_number ||= 0
      end

    end

    # <p>Specifies a transform that renames a single data property key.</p>
    #
    # @!attribute name
    #   <p>The name of the transform node.</p>
    #
    #   @return [String]
    #
    # @!attribute inputs
    #   <p>The data inputs identified by their node names.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute source_path
    #   <p>A JSON path to a variable in the data structure for the source data.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute target_path
    #   <p>A JSON path to a variable in the data structure for the target data.</p>
    #
    #   @return [Array<String>]
    #
    RenameField = ::Struct.new(
      :name,
      :inputs,
      :source_path,
      :target_path,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_name
    #   <p>The name of the job in question.</p>
    #
    #   @return [String]
    #
    # @!attribute run_id
    #   <p>The unique run identifier associated with this job run.</p>
    #
    #   @return [String]
    #
    ResetJobBookmarkInput = ::Struct.new(
      :job_name,
      :run_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_bookmark_entry
    #   <p>The reset bookmark entry.</p>
    #
    #   @return [JobBookmarkEntry]
    #
    ResetJobBookmarkOutput = ::Struct.new(
      :job_bookmark_entry,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A resource was not ready for a transaction.</p>
    #
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #
    #   @return [String]
    #
    ResourceNotReadyException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A resource numerical limit was exceeded.</p>
    #
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #
    #   @return [String]
    #
    ResourceNumberLimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ResourceShareType
    #
    module ResourceShareType
      # No documentation available.
      #
      FOREIGN = "FOREIGN"

      # No documentation available.
      #
      ALL = "ALL"
    end

    # Includes enum constants for ResourceType
    #
    module ResourceType
      # No documentation available.
      #
      JAR = "JAR"

      # No documentation available.
      #
      FILE = "FILE"

      # No documentation available.
      #
      ARCHIVE = "ARCHIVE"
    end

    # <p>The URIs for function resources.</p>
    #
    # @!attribute resource_type
    #   <p>The type of the resource.</p>
    #
    #   Enum, one of: ["JAR", "FILE", "ARCHIVE"]
    #
    #   @return [String]
    #
    # @!attribute uri
    #   <p>The URI for accessing the resource.</p>
    #
    #   @return [String]
    #
    ResourceUri = ::Struct.new(
      :resource_type,
      :uri,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the workflow to resume.</p>
    #
    #   @return [String]
    #
    # @!attribute run_id
    #   <p>The ID of the workflow run to resume.</p>
    #
    #   @return [String]
    #
    # @!attribute node_ids
    #   <p>A list of the node IDs for the nodes you want to restart. The nodes that are to be restarted must have a run attempt in the original run.</p>
    #
    #   @return [Array<String>]
    #
    ResumeWorkflowRunInput = ::Struct.new(
      :name,
      :run_id,
      :node_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute run_id
    #   <p>The new ID assigned to the resumed workflow run. Each resume of a workflow run will have a new run ID.</p>
    #
    #   @return [String]
    #
    # @!attribute node_ids
    #   <p>A list of the node IDs for the nodes that were actually restarted.</p>
    #
    #   @return [Array<String>]
    #
    ResumeWorkflowRunOutput = ::Struct.new(
      :run_id,
      :node_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute session_id
    #   <p>The Session Id of the statement to be run.</p>
    #
    #   @return [String]
    #
    # @!attribute code
    #   <p>The statement code to be run.</p>
    #
    #   @return [String]
    #
    # @!attribute request_origin
    #   <p>The origin of the request.</p>
    #
    #   @return [String]
    #
    RunStatementInput = ::Struct.new(
      :session_id,
      :code,
      :request_origin,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>Returns the Id of the statement that was run.</p>
    #
    #   @return [Integer]
    #
    RunStatementOutput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.id ||= 0
      end

    end

    # <p>Specifies an Amazon S3 data store in the Glue Data Catalog.</p>
    #
    # @!attribute name
    #   <p>The name of the data store.</p>
    #
    #   @return [String]
    #
    # @!attribute database
    #   <p>The database to read from.</p>
    #
    #   @return [String]
    #
    # @!attribute table
    #   <p>The database table to read from.</p>
    #
    #   @return [String]
    #
    # @!attribute partition_predicate
    #   <p>Partitions satisfying this predicate are deleted. Files within the retention period in these partitions are not deleted. Set to <code>""</code> – empty by default.</p>
    #
    #   @return [String]
    #
    # @!attribute additional_options
    #   <p>Specifies additional connection options.</p>
    #
    #   @return [S3SourceAdditionalOptions]
    #
    S3CatalogSource = ::Struct.new(
      :name,
      :database,
      :table,
      :partition_predicate,
      :additional_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a data target that writes to Amazon S3 using the Glue Data Catalog.</p>
    #
    # @!attribute name
    #   <p>The name of the data target.</p>
    #
    #   @return [String]
    #
    # @!attribute inputs
    #   <p>The nodes that are inputs to the data target.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute partition_keys
    #   <p>Specifies native partitioning using a sequence of keys.</p>
    #
    #   @return [Array<Array<String>>]
    #
    # @!attribute table
    #   <p>The name of the table in the database to write to.</p>
    #
    #   @return [String]
    #
    # @!attribute database
    #   <p>The name of the database to write to.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_change_policy
    #   <p>A policy that specifies update behavior for the crawler.</p>
    #
    #   @return [CatalogSchemaChangePolicy]
    #
    S3CatalogTarget = ::Struct.new(
      :name,
      :inputs,
      :partition_keys,
      :table,
      :database,
      :schema_change_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a command-separated value (CSV) data store stored in Amazon S3.</p>
    #
    # @!attribute name
    #   <p>The name of the data store.</p>
    #
    #   @return [String]
    #
    # @!attribute paths
    #   <p>A list of the Amazon S3 paths to read from.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute compression_type
    #   <p>Specifies how the data is compressed. This is generally not necessary if the data has a standard file extension. Possible values are <code>"gzip"</code> and <code>"bzip"</code>).</p>
    #
    #   Enum, one of: ["gzip", "bzip2"]
    #
    #   @return [String]
    #
    # @!attribute exclusions
    #   <p>A string containing a JSON list of Unix-style glob patterns to exclude. For example, "[\"**.pdf\"]" excludes all PDF files. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute group_size
    #   <p>The target group size in bytes. The default is computed based on the input data size and the size of your cluster. When there are fewer than 50,000 input files, <code>"groupFiles"</code> must be set to <code>"inPartition"</code> for this to take effect.</p>
    #
    #   @return [String]
    #
    # @!attribute group_files
    #   <p>Grouping files is turned on by default when the input contains more than 50,000 files. To turn on grouping with fewer than 50,000 files, set this parameter to "inPartition". To disable grouping when there are more than 50,000 files, set this parameter to <code>"none"</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute recurse
    #   <p>If set to true, recursively reads files in all subdirectories under the specified paths.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute max_band
    #   <p>This option controls the duration in milliseconds after which the s3 listing is likely to be consistent. Files with modification timestamps falling within the last maxBand milliseconds are tracked specially when using JobBookmarks to account for Amazon S3 eventual consistency. Most users don't need to set this option. The default is 900000 milliseconds, or 15 minutes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_files_in_band
    #   <p>This option specifies the maximum number of files to save from the last maxBand seconds. If this number is exceeded, extra files are skipped and only processed in the next job run.</p>
    #
    #   @return [Integer]
    #
    # @!attribute additional_options
    #   <p>Specifies additional connection options.</p>
    #
    #   @return [S3DirectSourceAdditionalOptions]
    #
    # @!attribute separator
    #   <p>Specifies the delimiter character. The default is a comma: ",", but any other character can be specified.</p>
    #
    #   Enum, one of: ["comma", "ctrla", "pipe", "semicolon", "tab"]
    #
    #   @return [String]
    #
    # @!attribute escaper
    #   <p>Specifies a character to use for escaping. This option is used only when reading CSV files. The default value is <code>none</code>. If enabled, the character which immediately follows is used as-is, except for a small set of well-known escapes (<code>\n</code>, <code>\r</code>, <code>\t</code>, and <code>\0</code>).</p>
    #
    #   @return [String]
    #
    # @!attribute quote_char
    #   <p>Specifies the character to use for quoting. The default is a double quote: <code>'"'</code>. Set this to <code>-1</code> to turn off quoting entirely.</p>
    #
    #   Enum, one of: ["quote", "quillemet", "single_quote", "disabled"]
    #
    #   @return [String]
    #
    # @!attribute multiline
    #   <p>A Boolean value that specifies whether a single record can span multiple lines. This can occur when a field contains a quoted new-line character. You must set this option to True if any record spans multiple lines. The default value is <code>False</code>, which allows for more aggressive file-splitting during parsing.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute with_header
    #   <p>A Boolean value that specifies whether to treat the first line as a header. The default value is <code>False</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute write_header
    #   <p>A Boolean value that specifies whether to write the header to output. The default value is <code>True</code>. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute skip_first
    #   <p>A Boolean value that specifies whether to skip the first data line. The default value is <code>False</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute optimize_performance
    #   <p>A Boolean value that specifies whether to use the advanced SIMD CSV reader along with Apache Arrow based columnar memory formats. Only available in Glue version 3.0.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute output_schemas
    #   <p>Specifies the data schema for the S3 CSV source.</p>
    #
    #   @return [Array<GlueSchema>]
    #
    S3CsvSource = ::Struct.new(
      :name,
      :paths,
      :compression_type,
      :exclusions,
      :group_size,
      :group_files,
      :recurse,
      :max_band,
      :max_files_in_band,
      :additional_options,
      :separator,
      :escaper,
      :quote_char,
      :multiline,
      :with_header,
      :write_header,
      :skip_first,
      :optimize_performance,
      :output_schemas,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.optimize_performance ||= false
      end

    end

    # <p>Specifies additional connection options for the Amazon S3 data store.</p>
    #
    # @!attribute bounded_size
    #   <p>Sets the upper limit for the target size of the dataset in bytes that will be processed.</p>
    #
    #   @return [Integer]
    #
    # @!attribute bounded_files
    #   <p>Sets the upper limit for the target number of files that will be processed.</p>
    #
    #   @return [Integer]
    #
    # @!attribute enable_sample_path
    #   <p>Sets option to enable a sample path.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute sample_path
    #   <p>If enabled, specifies the sample path.</p>
    #
    #   @return [String]
    #
    S3DirectSourceAdditionalOptions = ::Struct.new(
      :bounded_size,
      :bounded_files,
      :enable_sample_path,
      :sample_path,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a data target that writes to Amazon S3.</p>
    #
    # @!attribute name
    #   <p>The name of the data target.</p>
    #
    #   @return [String]
    #
    # @!attribute inputs
    #   <p>The nodes that are inputs to the data target.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute partition_keys
    #   <p>Specifies native partitioning using a sequence of keys.</p>
    #
    #   @return [Array<Array<String>>]
    #
    # @!attribute path
    #   <p>A single Amazon S3 path to write to.</p>
    #
    #   @return [String]
    #
    # @!attribute compression
    #   <p>Specifies how the data is compressed. This is generally not necessary if the data has a standard file extension. Possible values are <code>"gzip"</code> and <code>"bzip"</code>).</p>
    #
    #   @return [String]
    #
    # @!attribute format
    #   <p>Specifies the data output format for the target.</p>
    #
    #   Enum, one of: ["json", "csv", "avro", "orc", "parquet"]
    #
    #   @return [String]
    #
    # @!attribute schema_change_policy
    #   <p>A policy that specifies update behavior for the crawler.</p>
    #
    #   @return [DirectSchemaChangePolicy]
    #
    S3DirectTarget = ::Struct.new(
      :name,
      :inputs,
      :partition_keys,
      :path,
      :compression,
      :format,
      :schema_change_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies how Amazon Simple Storage Service (Amazon S3) data should be encrypted.</p>
    #
    # @!attribute s3_encryption_mode
    #   <p>The encryption mode to use for Amazon S3 data.</p>
    #
    #   Enum, one of: ["DISABLED", "SSE-KMS", "SSE-S3"]
    #
    #   @return [String]
    #
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key to be used to encrypt the data.</p>
    #
    #   @return [String]
    #
    S3Encryption = ::Struct.new(
      :s3_encryption_mode,
      :kms_key_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for S3EncryptionMode
    #
    module S3EncryptionMode
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      SSEKMS = "SSE-KMS"

      # No documentation available.
      #
      SSES3 = "SSE-S3"
    end

    # <p>Specifies a data target that writes to Amazon S3 in Apache Parquet columnar storage.</p>
    #
    # @!attribute name
    #   <p>The name of the data target.</p>
    #
    #   @return [String]
    #
    # @!attribute inputs
    #   <p>The nodes that are inputs to the data target.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute partition_keys
    #   <p>Specifies native partitioning using a sequence of keys.</p>
    #
    #   @return [Array<Array<String>>]
    #
    # @!attribute path
    #   <p>A single Amazon S3 path to write to.</p>
    #
    #   @return [String]
    #
    # @!attribute compression
    #   <p>Specifies how the data is compressed. This is generally not necessary if the data has a standard file extension. Possible values are <code>"gzip"</code> and <code>"bzip"</code>).</p>
    #
    #   Enum, one of: ["snappy", "lzo", "gzip", "uncompressed", "none"]
    #
    #   @return [String]
    #
    # @!attribute schema_change_policy
    #   <p>A policy that specifies update behavior for the crawler.</p>
    #
    #   @return [DirectSchemaChangePolicy]
    #
    S3GlueParquetTarget = ::Struct.new(
      :name,
      :inputs,
      :partition_keys,
      :path,
      :compression,
      :schema_change_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a JSON data store stored in Amazon S3.</p>
    #
    # @!attribute name
    #   <p>The name of the data store.</p>
    #
    #   @return [String]
    #
    # @!attribute paths
    #   <p>A list of the Amazon S3 paths to read from.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute compression_type
    #   <p>Specifies how the data is compressed. This is generally not necessary if the data has a standard file extension. Possible values are <code>"gzip"</code> and <code>"bzip"</code>).</p>
    #
    #   Enum, one of: ["gzip", "bzip2"]
    #
    #   @return [String]
    #
    # @!attribute exclusions
    #   <p>A string containing a JSON list of Unix-style glob patterns to exclude. For example, "[\"**.pdf\"]" excludes all PDF files. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute group_size
    #   <p>The target group size in bytes. The default is computed based on the input data size and the size of your cluster. When there are fewer than 50,000 input files, <code>"groupFiles"</code> must be set to <code>"inPartition"</code> for this to take effect.</p>
    #
    #   @return [String]
    #
    # @!attribute group_files
    #   <p>Grouping files is turned on by default when the input contains more than 50,000 files. To turn on grouping with fewer than 50,000 files, set this parameter to "inPartition". To disable grouping when there are more than 50,000 files, set this parameter to <code>"none"</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute recurse
    #   <p>If set to true, recursively reads files in all subdirectories under the specified paths.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute max_band
    #   <p>This option controls the duration in milliseconds after which the s3 listing is likely to be consistent. Files with modification timestamps falling within the last maxBand milliseconds are tracked specially when using JobBookmarks to account for Amazon S3 eventual consistency. Most users don't need to set this option. The default is 900000 milliseconds, or 15 minutes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_files_in_band
    #   <p>This option specifies the maximum number of files to save from the last maxBand seconds. If this number is exceeded, extra files are skipped and only processed in the next job run.</p>
    #
    #   @return [Integer]
    #
    # @!attribute additional_options
    #   <p>Specifies additional connection options.</p>
    #
    #   @return [S3DirectSourceAdditionalOptions]
    #
    # @!attribute json_path
    #   <p>A JsonPath string defining the JSON data.</p>
    #
    #   @return [String]
    #
    # @!attribute multiline
    #   <p>A Boolean value that specifies whether a single record can span multiple lines. This can occur when a field contains a quoted new-line character. You must set this option to True if any record spans multiple lines. The default value is <code>False</code>, which allows for more aggressive file-splitting during parsing.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute output_schemas
    #   <p>Specifies the data schema for the S3 JSON source.</p>
    #
    #   @return [Array<GlueSchema>]
    #
    S3JsonSource = ::Struct.new(
      :name,
      :paths,
      :compression_type,
      :exclusions,
      :group_size,
      :group_files,
      :recurse,
      :max_band,
      :max_files_in_band,
      :additional_options,
      :json_path,
      :multiline,
      :output_schemas,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies an Apache Parquet data store stored in Amazon S3.</p>
    #
    # @!attribute name
    #   <p>The name of the data store.</p>
    #
    #   @return [String]
    #
    # @!attribute paths
    #   <p>A list of the Amazon S3 paths to read from.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute compression_type
    #   <p>Specifies how the data is compressed. This is generally not necessary if the data has a standard file extension. Possible values are <code>"gzip"</code> and <code>"bzip"</code>).</p>
    #
    #   Enum, one of: ["snappy", "lzo", "gzip", "uncompressed", "none"]
    #
    #   @return [String]
    #
    # @!attribute exclusions
    #   <p>A string containing a JSON list of Unix-style glob patterns to exclude. For example, "[\"**.pdf\"]" excludes all PDF files. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute group_size
    #   <p>The target group size in bytes. The default is computed based on the input data size and the size of your cluster. When there are fewer than 50,000 input files, <code>"groupFiles"</code> must be set to <code>"inPartition"</code> for this to take effect.</p>
    #
    #   @return [String]
    #
    # @!attribute group_files
    #   <p>Grouping files is turned on by default when the input contains more than 50,000 files. To turn on grouping with fewer than 50,000 files, set this parameter to "inPartition". To disable grouping when there are more than 50,000 files, set this parameter to <code>"none"</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute recurse
    #   <p>If set to true, recursively reads files in all subdirectories under the specified paths.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute max_band
    #   <p>This option controls the duration in milliseconds after which the s3 listing is likely to be consistent. Files with modification timestamps falling within the last maxBand milliseconds are tracked specially when using JobBookmarks to account for Amazon S3 eventual consistency. Most users don't need to set this option. The default is 900000 milliseconds, or 15 minutes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_files_in_band
    #   <p>This option specifies the maximum number of files to save from the last maxBand seconds. If this number is exceeded, extra files are skipped and only processed in the next job run.</p>
    #
    #   @return [Integer]
    #
    # @!attribute additional_options
    #   <p>Specifies additional connection options.</p>
    #
    #   @return [S3DirectSourceAdditionalOptions]
    #
    # @!attribute output_schemas
    #   <p>Specifies the data schema for the S3 Parquet source.</p>
    #
    #   @return [Array<GlueSchema>]
    #
    S3ParquetSource = ::Struct.new(
      :name,
      :paths,
      :compression_type,
      :exclusions,
      :group_size,
      :group_files,
      :recurse,
      :max_band,
      :max_files_in_band,
      :additional_options,
      :output_schemas,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies additional connection options for the Amazon S3 data store.</p>
    #
    # @!attribute bounded_size
    #   <p>Sets the upper limit for the target size of the dataset in bytes that will be processed.</p>
    #
    #   @return [Integer]
    #
    # @!attribute bounded_files
    #   <p>Sets the upper limit for the target number of files that will be processed.</p>
    #
    #   @return [Integer]
    #
    S3SourceAdditionalOptions = ::Struct.new(
      :bounded_size,
      :bounded_files,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a data store in Amazon Simple Storage Service (Amazon S3).</p>
    #
    # @!attribute path
    #   <p>The path to the Amazon S3 target.</p>
    #
    #   @return [String]
    #
    # @!attribute exclusions
    #   <p>A list of glob patterns used to exclude from the crawl.
    #         For more information, see <a href="https://docs.aws.amazon.com/glue/latest/dg/add-crawler.html">Catalog Tables with a Crawler</a>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute connection_name
    #   <p>The name of a connection which allows a job or crawler to access data in Amazon S3 within an Amazon Virtual Private Cloud environment (Amazon VPC).</p>
    #
    #   @return [String]
    #
    # @!attribute sample_size
    #   <p>Sets the number of files in each leaf folder to be crawled when crawling sample files in a dataset. If not set, all the files are crawled. A valid value is an integer between 1 and 249.</p>
    #
    #   @return [Integer]
    #
    # @!attribute event_queue_arn
    #   <p>A valid Amazon SQS ARN. For example, <code>arn:aws:sqs:region:account:sqs</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute dlq_event_queue_arn
    #   <p>A valid Amazon dead-letter SQS ARN. For example, <code>arn:aws:sqs:region:account:deadLetterQueue</code>.</p>
    #
    #   @return [String]
    #
    S3Target = ::Struct.new(
      :path,
      :exclusions,
      :connection_name,
      :sample_size,
      :event_queue_arn,
      :dlq_event_queue_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A scheduling object using a <code>cron</code> statement to schedule an event.</p>
    #
    # @!attribute schedule_expression
    #   <p>A <code>cron</code> expression used to specify the schedule (see <a href="https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html">Time-Based Schedules for Jobs and Crawlers</a>. For example, to run
    #         something every day at 12:15 UTC, you would specify:
    #         <code>cron(15 12 * * ? *)</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the schedule.</p>
    #
    #   Enum, one of: ["SCHEDULED", "NOT_SCHEDULED", "TRANSITIONING"]
    #
    #   @return [String]
    #
    Schedule = ::Struct.new(
      :schedule_expression,
      :state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ScheduleState
    #
    module ScheduleState
      # No documentation available.
      #
      SCHEDULED = "SCHEDULED"

      # No documentation available.
      #
      NOT_SCHEDULED = "NOT_SCHEDULED"

      # No documentation available.
      #
      TRANSITIONING = "TRANSITIONING"
    end

    # <p>The specified scheduler is not running.</p>
    #
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #
    #   @return [String]
    #
    SchedulerNotRunningException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified scheduler is already running.</p>
    #
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #
    #   @return [String]
    #
    SchedulerRunningException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified scheduler is transitioning.</p>
    #
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #
    #   @return [String]
    #
    SchedulerTransitioningException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A policy that specifies update and deletion behaviors for the crawler.</p>
    #
    # @!attribute update_behavior
    #   <p>The update behavior when the crawler finds a changed schema.</p>
    #
    #   Enum, one of: ["LOG", "UPDATE_IN_DATABASE"]
    #
    #   @return [String]
    #
    # @!attribute delete_behavior
    #   <p>The deletion behavior when the crawler finds a deleted object.</p>
    #
    #   Enum, one of: ["LOG", "DELETE_FROM_DATABASE", "DEPRECATE_IN_DATABASE"]
    #
    #   @return [String]
    #
    SchemaChangePolicy = ::Struct.new(
      :update_behavior,
      :delete_behavior,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A key-value pair representing a column and data type that this transform can
    #       run against. The <code>Schema</code> parameter of the <code>MLTransform</code> may contain up to 100 of these structures.</p>
    #
    # @!attribute name
    #   <p>The name of the column.</p>
    #
    #   @return [String]
    #
    # @!attribute data_type
    #   <p>The type of data in the column.</p>
    #
    #   @return [String]
    #
    SchemaColumn = ::Struct.new(
      :name,
      :data_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SchemaDiffType
    #
    module SchemaDiffType
      # No documentation available.
      #
      SYNTAX_DIFF = "SYNTAX_DIFF"
    end

    # <p>The unique ID of the schema in the Glue schema registry.</p>
    #
    # @!attribute schema_arn
    #   <p>The Amazon Resource Name (ARN) of the schema. One of <code>SchemaArn</code> or <code>SchemaName</code> has to be provided.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_name
    #   <p>The name of the schema. One of <code>SchemaArn</code> or <code>SchemaName</code> has to be provided.</p>
    #
    #   @return [String]
    #
    # @!attribute registry_name
    #   <p>The name of the schema registry that contains the schema.</p>
    #
    #   @return [String]
    #
    SchemaId = ::Struct.new(
      :schema_arn,
      :schema_name,
      :registry_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that contains minimal details for a schema.</p>
    #
    # @!attribute registry_name
    #   <p>the name of the registry where the schema resides.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_name
    #   <p>The name of the schema.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_arn
    #   <p>The Amazon Resource Name (ARN) for the schema.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description for the schema.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_status
    #   <p>The status of the schema.</p>
    #
    #   Enum, one of: ["AVAILABLE", "PENDING", "DELETING"]
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>The date and time that a schema was created.</p>
    #
    #   @return [String]
    #
    # @!attribute updated_time
    #   <p>The date and time that a schema was updated.</p>
    #
    #   @return [String]
    #
    SchemaListItem = ::Struct.new(
      :registry_name,
      :schema_name,
      :schema_arn,
      :description,
      :schema_status,
      :created_time,
      :updated_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that references a schema stored in the Glue Schema Registry.</p>
    #
    # @!attribute schema_id
    #   <p>A structure that contains schema identity fields. Either this or the <code>SchemaVersionId</code> has to be provided.</p>
    #
    #   @return [SchemaId]
    #
    # @!attribute schema_version_id
    #   <p>The unique ID assigned to a version of the schema. Either this or the <code>SchemaId</code> has to be provided.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_version_number
    #   <p>The version number of the schema.</p>
    #
    #   @return [Integer]
    #
    SchemaReference = ::Struct.new(
      :schema_id,
      :schema_version_id,
      :schema_version_number,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SchemaStatus
    #
    module SchemaStatus
      # No documentation available.
      #
      AVAILABLE = "AVAILABLE"

      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      DELETING = "DELETING"
    end

    # <p>An object that contains the error details for an operation on a schema version.</p>
    #
    # @!attribute version_number
    #   <p>The version number of the schema.</p>
    #
    #   @return [Integer]
    #
    # @!attribute error_details
    #   <p>The details of the error for the schema version.</p>
    #
    #   @return [ErrorDetails]
    #
    SchemaVersionErrorItem = ::Struct.new(
      :version_number,
      :error_details,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.version_number ||= 0
      end

    end

    # <p>An object containing the details about a schema version.</p>
    #
    # @!attribute schema_arn
    #   <p>The Amazon Resource Name (ARN) of the schema.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_version_id
    #   <p>The unique identifier of the schema version.</p>
    #
    #   @return [String]
    #
    # @!attribute version_number
    #   <p>The version number of the schema.</p>
    #
    #   @return [Integer]
    #
    # @!attribute status
    #   <p>The status of the schema version.</p>
    #
    #   Enum, one of: ["AVAILABLE", "PENDING", "FAILURE", "DELETING"]
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>The date and time the schema version was created.</p>
    #
    #   @return [String]
    #
    SchemaVersionListItem = ::Struct.new(
      :schema_arn,
      :schema_version_id,
      :version_number,
      :status,
      :created_time,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.version_number ||= 0
      end

    end

    # <p>A structure containing the schema version information.</p>
    #
    # @!attribute latest_version
    #   <p>The latest version available for the schema.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute version_number
    #   <p>The version number of the schema.</p>
    #
    #   @return [Integer]
    #
    SchemaVersionNumber = ::Struct.new(
      :latest_version,
      :version_number,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.latest_version ||= false
        self.version_number ||= 0
      end

    end

    # Includes enum constants for SchemaVersionStatus
    #
    module SchemaVersionStatus
      # No documentation available.
      #
      AVAILABLE = "AVAILABLE"

      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      FAILURE = "FAILURE"

      # No documentation available.
      #
      DELETING = "DELETING"
    end

    # @!attribute catalog_id
    #   <p>A unique identifier, consisting of <code>
    #                  <i>account_id</i>
    #               </code>.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A continuation token, included if this is a continuation call.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>A list of key-value pairs, and a comparator used to filter the search results. Returns all entities matching the predicate.</p>
    #   	
    #   	        <p>The <code>Comparator</code> member of the <code>PropertyPredicate</code> struct is used only for time fields, and can be omitted for other field types. Also, when comparing string values, such as when <code>Key=Name</code>, a fuzzy match algorithm is used. The <code>Key</code> field (for example, the value of the <code>Name</code> field) is split on certain punctuation characters, for example, -, :,  , etc. into tokens. Then each token is exact-match compared with the <code>Value</code> member of <code>PropertyPredicate</code>. For example, if <code>Key=Name</code> and <code>Value=link</code>, tables named <code>customer-link</code> and <code>xx-link-yy</code> are returned, but <code>xxlinkyy</code> is not returned.</p>
    #
    #   @return [Array<PropertyPredicate>]
    #
    # @!attribute search_text
    #   <p>A string used for a text search.</p>
    #   	        <p>Specifying a value in quotes filters based on an exact match to the value.</p>
    #
    #   @return [String]
    #
    # @!attribute sort_criteria
    #   <p>A list of criteria for sorting the results by a field name, in an ascending or descending order.</p>
    #
    #   @return [Array<SortCriterion>]
    #
    # @!attribute max_results
    #   <p>The maximum number of tables to return in a single response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute resource_share_type
    #   <p>Allows you to specify that you want to search the tables shared with your account. The allowable values are <code>FOREIGN</code> or <code>ALL</code>. </p>
    #   	
    #   	        <ul>
    #               <li>
    #                  <p>If set to <code>FOREIGN</code>, will search the tables shared with your account. </p>
    #               </li>
    #               <li>
    #                  <p>If set to <code>ALL</code>, will search the tables shared with your account, as well as the tables in yor local account. </p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["FOREIGN", "ALL"]
    #
    #   @return [String]
    #
    SearchTablesInput = ::Struct.new(
      :catalog_id,
      :next_token,
      :filters,
      :search_text,
      :sort_criteria,
      :max_results,
      :resource_share_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A continuation token, present if the current list segment is not the last.</p>
    #
    #   @return [String]
    #
    # @!attribute table_list
    #   <p>A list of the requested <code>Table</code> objects. The <code>SearchTables</code> response returns only the tables that you have access to.</p>
    #
    #   @return [Array<Table>]
    #
    SearchTablesOutput = ::Struct.new(
      :next_token,
      :table_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a security configuration.</p>
    #
    # @!attribute name
    #   <p>The name of the security configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time_stamp
    #   <p>The time at which this security configuration was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute encryption_configuration
    #   <p>The encryption configuration associated with this security configuration.</p>
    #
    #   @return [EncryptionConfiguration]
    #
    SecurityConfiguration = ::Struct.new(
      :name,
      :created_time_stamp,
      :encryption_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Defines a non-overlapping region of a table's partitions, allowing
    #       multiple requests to be run in parallel.</p>
    #
    # @!attribute segment_number
    #   <p>The zero-based index number of the segment. For example, if the total number of segments
    #         is 4, <code>SegmentNumber</code> values range from 0 through 3.</p>
    #
    #   @return [Integer]
    #
    # @!attribute total_segments
    #   <p>The total number of segments.</p>
    #
    #   @return [Integer]
    #
    Segment = ::Struct.new(
      :segment_number,
      :total_segments,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.segment_number ||= 0
        self.total_segments ||= 0
      end

    end

    # <p>Specifies a transform that chooses the data property keys that you want to keep.</p>
    #
    # @!attribute name
    #   <p>The name of the transform node.</p>
    #
    #   @return [String]
    #
    # @!attribute inputs
    #   <p>The data inputs identified by their node names.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute paths
    #   <p>A JSON path to a variable in the data structure.</p>
    #
    #   @return [Array<Array<String>>]
    #
    SelectFields = ::Struct.new(
      :name,
      :inputs,
      :paths,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a transform that chooses one <code>DynamicFrame</code> from a collection of <code>DynamicFrames</code>. The output is the selected <code>DynamicFrame</code>
    #          </p>
    #
    # @!attribute name
    #   <p>The name of the transform node.</p>
    #
    #   @return [String]
    #
    # @!attribute inputs
    #   <p>The data inputs identified by their node names.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute index
    #   <p>The index for the DynamicFrame to be selected.</p>
    #
    #   @return [Integer]
    #
    SelectFromCollection = ::Struct.new(
      :name,
      :inputs,
      :index,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.index ||= 0
      end

    end

    # Includes enum constants for Separator
    #
    module Separator
      # No documentation available.
      #
      COMMA = "comma"

      # No documentation available.
      #
      CTRLA = "ctrla"

      # No documentation available.
      #
      PIPE = "pipe"

      # No documentation available.
      #
      SEMICOLON = "semicolon"

      # No documentation available.
      #
      TAB = "tab"
    end

    # <p>Information about a serialization/deserialization program (SerDe) that serves as an
    #       extractor and loader.</p>
    #
    # @!attribute name
    #   <p>Name of the SerDe.</p>
    #
    #   @return [String]
    #
    # @!attribute serialization_library
    #   <p>Usually the class that implements the SerDe. An example is
    #           <code>org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>These key-value pairs define initialization parameters for the SerDe.</p>
    #
    #   @return [Hash<String, String>]
    #
    SerDeInfo = ::Struct.new(
      :name,
      :serialization_library,
      :parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The period in which a remote Spark runtime environment is running.</p>
    #
    # @!attribute id
    #   <p>The ID of the session.</p>
    #
    #   @return [String]
    #
    # @!attribute created_on
    #   <p>The time and date when the session was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>The session status. </p>
    #
    #   Enum, one of: ["PROVISIONING", "READY", "FAILED", "TIMEOUT", "STOPPING", "STOPPED"]
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>The error message displayed during the session.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the session.</p>
    #
    #   @return [String]
    #
    # @!attribute role
    #   <p>The name or Amazon Resource Name (ARN) of the IAM role associated with the Session.</p>
    #
    #   @return [String]
    #
    # @!attribute command
    #   <p>The command object.See SessionCommand.</p>
    #
    #   @return [SessionCommand]
    #
    # @!attribute default_arguments
    #   <p>A map array of key-value pairs. Max is 75 pairs. </p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute connections
    #   <p>The number of connections used for the session.</p>
    #
    #   @return [ConnectionsList]
    #
    # @!attribute progress
    #   <p>The code execution progress of the session.</p>
    #
    #   @return [Float]
    #
    # @!attribute max_capacity
    #   <p>The number of AWS Glue data processing units (DPUs) that can be allocated when the job runs.
    #         A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB memory. </p>
    #
    #   @return [Float]
    #
    # @!attribute security_configuration
    #   <p>The name of the SecurityConfiguration structure to be used with the session.</p>
    #
    #   @return [String]
    #
    # @!attribute glue_version
    #   <p>The Glue version determines the versions of Apache Spark and Python that AWS Glue supports.
    #         The GlueVersion must be greater than 2.0.</p>
    #
    #   @return [String]
    #
    Session = ::Struct.new(
      :id,
      :created_on,
      :status,
      :error_message,
      :description,
      :role,
      :command,
      :default_arguments,
      :connections,
      :progress,
      :max_capacity,
      :security_configuration,
      :glue_version,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.progress ||= 0
      end

    end

    # <p>The <code>SessionCommand</code> that runs the job.</p>
    #
    # @!attribute name
    #   <p>Specifies the name of the SessionCommand.Can be 'glueetl' or 'gluestreaming'.</p>
    #
    #   @return [String]
    #
    # @!attribute python_version
    #   <p>Specifies the Python version. The Python version indicates the version supported for jobs of type Spark.</p>
    #
    #   @return [String]
    #
    SessionCommand = ::Struct.new(
      :name,
      :python_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SessionStatus
    #
    module SessionStatus
      # No documentation available.
      #
      PROVISIONING = "PROVISIONING"

      # No documentation available.
      #
      READY = "READY"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      TIMEOUT = "TIMEOUT"

      # No documentation available.
      #
      STOPPING = "STOPPING"

      # No documentation available.
      #
      STOPPED = "STOPPED"
    end

    # <p>Specifies skewed values in a table. Skewed values are those that occur with very high
    #       frequency.</p>
    #
    # @!attribute skewed_column_names
    #   <p>A list of names of columns that contain skewed values.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute skewed_column_values
    #   <p>A list of values that appear so frequently as to be considered
    #         skewed.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute skewed_column_value_location_maps
    #   <p>A mapping of skewed values to the columns that contain them.</p>
    #
    #   @return [Hash<String, String>]
    #
    SkewedInfo = ::Struct.new(
      :skewed_column_names,
      :skewed_column_values,
      :skewed_column_value_location_maps,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Sort
    #
    module Sort
      # No documentation available.
      #
      ASCENDING = "ASC"

      # No documentation available.
      #
      DESCENDING = "DESC"
    end

    # <p>Specifies a field to sort by and a sort order.</p>
    #
    # @!attribute field_name
    #   <p>The name of the field on which to sort.</p>
    #
    #   @return [String]
    #
    # @!attribute sort
    #   <p>An ascending or descending sort.</p>
    #
    #   Enum, one of: ["ASC", "DESC"]
    #
    #   @return [String]
    #
    SortCriterion = ::Struct.new(
      :field_name,
      :sort,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SortDirectionType
    #
    module SortDirectionType
      # No documentation available.
      #
      DESCENDING = "DESCENDING"

      # No documentation available.
      #
      ASCENDING = "ASCENDING"
    end

    # <p>Specifies a connector to an Apache Spark data source.</p>
    #
    # @!attribute name
    #   <p>The name of the data source.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_name
    #   <p>The name of the connection that is associated with the connector.</p>
    #
    #   @return [String]
    #
    # @!attribute connector_name
    #   <p>The name of a connector that assists with accessing the data store in Glue Studio.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_type
    #   <p>The type of connection, such as marketplace.spark or custom.spark, designating a connection to an Apache Spark data store.</p>
    #
    #   @return [String]
    #
    # @!attribute additional_options
    #   <p>Additional connection options for the connector.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute output_schemas
    #   <p>Specifies data schema for the custom spark source.</p>
    #
    #   @return [Array<GlueSchema>]
    #
    SparkConnectorSource = ::Struct.new(
      :name,
      :connection_name,
      :connector_name,
      :connection_type,
      :additional_options,
      :output_schemas,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a target that uses an Apache Spark connector.</p>
    #
    # @!attribute name
    #   <p>The name of the data target.</p>
    #
    #   @return [String]
    #
    # @!attribute inputs
    #   <p>The nodes that are inputs to the data target.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute connection_name
    #   <p>The name of a connection for an Apache Spark connector.</p>
    #
    #   @return [String]
    #
    # @!attribute connector_name
    #   <p>The name of an Apache Spark connector.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_type
    #   <p>The type of connection, such as marketplace.spark or custom.spark, designating a connection to an Apache Spark data store.</p>
    #
    #   @return [String]
    #
    # @!attribute additional_options
    #   <p>Additional connection options for the connector.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute output_schemas
    #   <p>Specifies the data schema for the custom spark target.</p>
    #
    #   @return [Array<GlueSchema>]
    #
    SparkConnectorTarget = ::Struct.new(
      :name,
      :inputs,
      :connection_name,
      :connector_name,
      :connection_type,
      :additional_options,
      :output_schemas,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a transform where you enter a SQL query using Spark SQL syntax to transform the data. The output is a single <code>DynamicFrame</code>.</p>
    #
    # @!attribute name
    #   <p>The name of the transform node.</p>
    #
    #   @return [String]
    #
    # @!attribute inputs
    #   <p>The data inputs identified by their node names. You can associate a table name with each input node to use in the SQL query. The name you choose must meet the Spark SQL naming restrictions.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute sql_query
    #   <p>A SQL query that must use Spark SQL syntax and return a single data set.</p>
    #
    #   @return [String]
    #
    # @!attribute sql_aliases
    #   <p>A list of aliases. An alias allows you to specify what name to use in the SQL for a given input. For example, you have a datasource named "MyDataSource". If you specify <code>From</code> as MyDataSource, and <code>Alias</code> as SqlName, then in your SQL you can do:</p>
    #
    #            <p>
    #               <code>select *
    #   from SqlName</code>
    #            </p>
    #
    #            <p>and that gets data from MyDataSource.</p>
    #
    #   @return [Array<SqlAlias>]
    #
    # @!attribute output_schemas
    #   <p>Specifies the data schema for the SparkSQL transform.</p>
    #
    #   @return [Array<GlueSchema>]
    #
    SparkSQL = ::Struct.new(
      :name,
      :inputs,
      :sql_query,
      :sql_aliases,
      :output_schemas,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a transform that writes samples of the data to an Amazon S3 bucket.</p>
    #
    # @!attribute name
    #   <p>The name of the transform node.</p>
    #
    #   @return [String]
    #
    # @!attribute inputs
    #   <p>The data inputs identified by their node names.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute path
    #   <p>A path in Amazon S3 where the transform will write a subset of records from the dataset to a JSON file in an Amazon S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute topk
    #   <p>Specifies a number of records to write starting from the beginning of the dataset.</p>
    #
    #   @return [Integer]
    #
    # @!attribute prob
    #   <p>The probability (a decimal value with a maximum value of 1) of picking any given record. A value of 1 indicates that each row read from the dataset should be included in the sample output.</p>
    #
    #   @return [Float]
    #
    Spigot = ::Struct.new(
      :name,
      :inputs,
      :path,
      :topk,
      :prob,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a transform that splits data property keys into two <code>DynamicFrames</code>. The output is a collection of <code>DynamicFrames</code>: one with selected data property keys, and one with the remaining data property keys.</p>
    #
    # @!attribute name
    #   <p>The name of the transform node.</p>
    #
    #   @return [String]
    #
    # @!attribute inputs
    #   <p>The data inputs identified by their node names.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute paths
    #   <p>A JSON path to a variable in the data structure.</p>
    #
    #   @return [Array<Array<String>>]
    #
    SplitFields = ::Struct.new(
      :name,
      :inputs,
      :paths,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a single entry in the list of values for <code>SqlAliases</code>. </p>
    #
    # @!attribute from
    #   <p>A table, or a column in a table.</p>
    #
    #   @return [String]
    #
    # @!attribute alias
    #   <p>A temporary name given to a table, or a column in a table.</p>
    #
    #   @return [String]
    #
    SqlAlias = ::Struct.new(
      :from,
      :alias,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute blueprint_name
    #   <p>The name of the blueprint.</p>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>Specifies the parameters as a <code>BlueprintParameters</code> object.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>Specifies the IAM role used to create the workflow.</p>
    #
    #   @return [String]
    #
    StartBlueprintRunInput = ::Struct.new(
      :blueprint_name,
      :parameters,
      :role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute run_id
    #   <p>The run ID for this blueprint run.</p>
    #
    #   @return [String]
    #
    StartBlueprintRunOutput = ::Struct.new(
      :run_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>Name of the crawler to start.</p>
    #
    #   @return [String]
    #
    StartCrawlerInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    StartCrawlerOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute crawler_name
    #   <p>Name of the crawler to schedule.</p>
    #
    #   @return [String]
    #
    StartCrawlerScheduleInput = ::Struct.new(
      :crawler_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    StartCrawlerScheduleOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute transform_id
    #   <p>The unique identifier of the machine learning transform.</p>
    #
    #   @return [String]
    #
    # @!attribute output_s3_path
    #   <p>The Amazon S3 path where you export the labels.</p>
    #
    #   @return [String]
    #
    StartExportLabelsTaskRunInput = ::Struct.new(
      :transform_id,
      :output_s3_path,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute task_run_id
    #   <p>The unique identifier for the task run.</p>
    #
    #   @return [String]
    #
    StartExportLabelsTaskRunOutput = ::Struct.new(
      :task_run_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute transform_id
    #   <p>The unique identifier of the machine learning transform.</p>
    #
    #   @return [String]
    #
    # @!attribute input_s3_path
    #   <p>The Amazon Simple Storage Service (Amazon S3) path from where you import the
    #         labels.</p>
    #
    #   @return [String]
    #
    # @!attribute replace_all_labels
    #   <p>Indicates whether to overwrite your existing labels.</p>
    #
    #   @return [Boolean]
    #
    StartImportLabelsTaskRunInput = ::Struct.new(
      :transform_id,
      :input_s3_path,
      :replace_all_labels,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.replace_all_labels ||= false
      end

    end

    # @!attribute task_run_id
    #   <p>The unique identifier for the task run.</p>
    #
    #   @return [String]
    #
    StartImportLabelsTaskRunOutput = ::Struct.new(
      :task_run_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_name
    #   <p>The name of the job definition to use.</p>
    #
    #   @return [String]
    #
    # @!attribute job_run_id
    #   <p>The ID of a previous <code>JobRun</code> to retry.</p>
    #
    #   @return [String]
    #
    # @!attribute arguments
    #   <p>The job arguments specifically for this run. For this job run, they replace the default arguments set in the job definition itself.</p>
    #            <p>You can specify arguments here that your own job-execution script
    #         consumes, as well as arguments that Glue itself consumes.</p>
    #            <p>For information about how to specify and consume your own Job arguments, see the <a href="https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html">Calling Glue APIs in Python</a> topic in the developer guide.</p>
    #            <p>For information about the key-value pairs that Glue consumes to set up your job, see the <a href="https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html">Special Parameters Used by Glue</a> topic in the developer guide.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute allocated_capacity
    #   <p>This field is deprecated. Use <code>MaxCapacity</code> instead.</p>
    #
    #            <p>The number of Glue data processing units (DPUs) to allocate to this JobRun.
    #         From 2 to 100 DPUs can be allocated; the default is 10. A DPU is a relative measure
    #         of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory.
    #         For more information, see the <a href="https://aws.amazon.com/glue/pricing/">Glue
    #           pricing page</a>.</p>
    #
    #   @deprecated
    #     This property is deprecated, use MaxCapacity instead.
    #
    #   @return [Integer]
    #
    # @!attribute timeout
    #   <p>The <code>JobRun</code> timeout in minutes. This is the maximum time that a job run can
    #         consume resources before it is terminated and enters <code>TIMEOUT</code> status. The default
    #         is 2,880 minutes (48 hours). This overrides the timeout value set in the parent job.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_capacity
    #   <p>The number of Glue data processing units (DPUs) that can be allocated when this job runs. A DPU is a relative measure
    #         of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory.
    #         For more information, see the <a href="https://aws.amazon.com/glue/pricing/">Glue
    #           pricing page</a>.</p>
    #
    #            <p>Do not set <code>Max Capacity</code> if using <code>WorkerType</code> and <code>NumberOfWorkers</code>.</p>
    #
    #            <p>The value that can be allocated for <code>MaxCapacity</code> depends on whether you are
    #         running a Python shell job, or an Apache Spark ETL job:</p>
    #            <ul>
    #               <li>
    #                  <p>When you specify a Python shell job (<code>JobCommand.Name</code>="pythonshell"), you can
    #           allocate either 0.0625 or 1 DPU. The default is 0.0625 DPU.</p>
    #               </li>
    #               <li>
    #                  <p>When you specify an Apache Spark ETL job (<code>JobCommand.Name</code>="glueetl"), you can allocate from 2 to 100 DPUs. The default is 10 DPUs. This job type cannot have a fractional DPU allocation.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Float]
    #
    # @!attribute security_configuration
    #   <p>The name of the <code>SecurityConfiguration</code> structure to be used with this job
    #         run.</p>
    #
    #   @return [String]
    #
    # @!attribute notification_property
    #   <p>Specifies configuration properties of a job run notification.</p>
    #
    #   @return [NotificationProperty]
    #
    # @!attribute worker_type
    #   <p>The type of predefined worker that is allocated when a job runs. Accepts a value of Standard, G.1X, or G.2X.</p>
    #            <ul>
    #               <li>
    #                  <p>For the <code>Standard</code> worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.</p>
    #               </li>
    #               <li>
    #                  <p>For the <code>G.1X</code> worker type, each worker provides 4 vCPU, 16 GB of memory and a 64GB disk, and 1 executor per worker.</p>
    #               </li>
    #               <li>
    #                  <p>For the <code>G.2X</code> worker type, each worker provides 8 vCPU, 32 GB of memory and a 128GB disk, and 1 executor per worker.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["Standard", "G.1X", "G.2X"]
    #
    #   @return [String]
    #
    # @!attribute number_of_workers
    #   <p>The number of workers of a defined <code>workerType</code> that are allocated when a job runs.</p>
    #
    #            <p>The maximum number of workers you can define are 299 for <code>G.1X</code>, and 149 for <code>G.2X</code>. </p>
    #
    #   @return [Integer]
    #
    StartJobRunInput = ::Struct.new(
      :job_name,
      :job_run_id,
      :arguments,
      :allocated_capacity,
      :timeout,
      :max_capacity,
      :security_configuration,
      :notification_property,
      :worker_type,
      :number_of_workers,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.allocated_capacity ||= 0
      end

    end

    # @!attribute job_run_id
    #   <p>The ID assigned to this job run.</p>
    #
    #   @return [String]
    #
    StartJobRunOutput = ::Struct.new(
      :job_run_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute transform_id
    #   <p>The unique identifier of the machine learning transform.</p>
    #
    #   @return [String]
    #
    StartMLEvaluationTaskRunInput = ::Struct.new(
      :transform_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute task_run_id
    #   <p>The unique identifier associated with this run.</p>
    #
    #   @return [String]
    #
    StartMLEvaluationTaskRunOutput = ::Struct.new(
      :task_run_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute transform_id
    #   <p>The unique identifier of the machine learning transform.</p>
    #
    #   @return [String]
    #
    # @!attribute output_s3_path
    #   <p>The Amazon Simple Storage Service (Amazon S3) path where you generate the labeling
    #         set.</p>
    #
    #   @return [String]
    #
    StartMLLabelingSetGenerationTaskRunInput = ::Struct.new(
      :transform_id,
      :output_s3_path,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute task_run_id
    #   <p>The unique run identifier that is associated with this task run.</p>
    #
    #   @return [String]
    #
    StartMLLabelingSetGenerationTaskRunOutput = ::Struct.new(
      :task_run_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the trigger to start.</p>
    #
    #   @return [String]
    #
    StartTriggerInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the trigger that was started.</p>
    #
    #   @return [String]
    #
    StartTriggerOutput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the workflow to start.</p>
    #
    #   @return [String]
    #
    # @!attribute run_properties
    #   <p>The workflow run properties for the new workflow run.</p>
    #
    #   @return [Hash<String, String>]
    #
    StartWorkflowRunInput = ::Struct.new(
      :name,
      :run_properties,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute run_id
    #   <p>An Id for the new run.</p>
    #
    #   @return [String]
    #
    StartWorkflowRunOutput = ::Struct.new(
      :run_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The batch condition that started the workflow run. Either the number of events in the batch size arrived,
    #       in which case the BatchSize member is non-zero, or the batch window expired, in which case the BatchWindow
    #       member is non-zero.</p>
    #
    # @!attribute batch_size
    #   <p>Number of events in the batch.</p>
    #
    #   @return [Integer]
    #
    # @!attribute batch_window
    #   <p>Duration of the batch window in seconds.</p>
    #
    #   @return [Integer]
    #
    StartingEventBatchCondition = ::Struct.new(
      :batch_size,
      :batch_window,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for StartingPosition
    #
    module StartingPosition
      # No documentation available.
      #
      LATEST = "latest"

      # No documentation available.
      #
      TRIM_HORIZON = "trim_horizon"

      # No documentation available.
      #
      EARLIEST = "earliest"
    end

    # <p>The statement or request for a particular action to occur in a session.</p>
    #
    # @!attribute id
    #   <p>The ID of the statement.</p>
    #
    #   @return [Integer]
    #
    # @!attribute code
    #   <p>The execution code of the statement.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state while request is actioned.</p>
    #
    #   Enum, one of: ["WAITING", "RUNNING", "AVAILABLE", "CANCELLING", "CANCELLED", "ERROR"]
    #
    #   @return [String]
    #
    # @!attribute output
    #   <p>The output in JSON.</p>
    #
    #   @return [StatementOutput]
    #
    # @!attribute progress
    #   <p>The code execution progress.</p>
    #
    #   @return [Float]
    #
    # @!attribute started_on
    #   <p>The unix time and date that the job definition was started.</p>
    #
    #   @return [Integer]
    #
    # @!attribute completed_on
    #   <p>The unix time and date that the job definition was completed.</p>
    #
    #   @return [Integer]
    #
    Statement = ::Struct.new(
      :id,
      :code,
      :state,
      :output,
      :progress,
      :started_on,
      :completed_on,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.id ||= 0
        self.progress ||= 0
        self.started_on ||= 0
        self.completed_on ||= 0
      end

    end

    # <p>The code execution output in JSON format.</p>
    #
    # @!attribute data
    #   <p>The code execution output.</p>
    #
    #   @return [StatementOutputData]
    #
    # @!attribute execution_count
    #   <p>The execution count of the output.</p>
    #
    #   @return [Integer]
    #
    # @!attribute status
    #   <p>The status of the code execution output.</p>
    #
    #   Enum, one of: ["WAITING", "RUNNING", "AVAILABLE", "CANCELLING", "CANCELLED", "ERROR"]
    #
    #   @return [String]
    #
    # @!attribute error_name
    #   <p>The name of the error in the output.</p>
    #
    #   @return [String]
    #
    # @!attribute error_value
    #   <p>The error value of the output.</p>
    #
    #   @return [String]
    #
    # @!attribute traceback
    #   <p>The traceback of the output.</p>
    #
    #   @return [Array<String>]
    #
    StatementOutput = ::Struct.new(
      :data,
      :execution_count,
      :status,
      :error_name,
      :error_value,
      :traceback,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.execution_count ||= 0
      end

    end

    # <p>The code execution output in JSON format.</p>
    #
    # @!attribute text_plain
    #   <p>The code execution output in text format.</p>
    #
    #   @return [String]
    #
    StatementOutputData = ::Struct.new(
      :text_plain,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for StatementState
    #
    module StatementState
      # No documentation available.
      #
      WAITING = "WAITING"

      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      AVAILABLE = "AVAILABLE"

      # No documentation available.
      #
      CANCELLING = "CANCELLING"

      # No documentation available.
      #
      CANCELLED = "CANCELLED"

      # No documentation available.
      #
      ERROR = "ERROR"
    end

    # @!attribute name
    #   <p>Name of the crawler to stop.</p>
    #
    #   @return [String]
    #
    StopCrawlerInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    StopCrawlerOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute crawler_name
    #   <p>Name of the crawler whose schedule state to set.</p>
    #
    #   @return [String]
    #
    StopCrawlerScheduleInput = ::Struct.new(
      :crawler_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    StopCrawlerScheduleOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the session to be stopped.</p>
    #
    #   @return [String]
    #
    # @!attribute request_origin
    #   <p>The origin of the request.</p>
    #
    #   @return [String]
    #
    StopSessionInput = ::Struct.new(
      :id,
      :request_origin,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>Returns the Id of the stopped session.</p>
    #
    #   @return [String]
    #
    StopSessionOutput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the trigger to stop.</p>
    #
    #   @return [String]
    #
    StopTriggerInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the trigger that was stopped.</p>
    #
    #   @return [String]
    #
    StopTriggerOutput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the workflow to stop.</p>
    #
    #   @return [String]
    #
    # @!attribute run_id
    #   <p>The ID of the workflow run to stop.</p>
    #
    #   @return [String]
    #
    StopWorkflowRunInput = ::Struct.new(
      :name,
      :run_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    StopWorkflowRunOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the physical storage of table data.</p>
    #
    # @!attribute columns
    #   <p>A list of the <code>Columns</code> in the table.</p>
    #
    #   @return [Array<Column>]
    #
    # @!attribute location
    #   <p>The physical location of the table. By default, this takes the form of the warehouse
    #         location, followed by the database location in the warehouse, followed by the table
    #         name.</p>
    #
    #   @return [String]
    #
    # @!attribute additional_locations
    #
    #   @return [Array<String>]
    #
    # @!attribute input_format
    #   <p>The input format: <code>SequenceFileInputFormat</code> (binary),
    #         or <code>TextInputFormat</code>, or a custom format.</p>
    #
    #   @return [String]
    #
    # @!attribute output_format
    #   <p>The output format: <code>SequenceFileOutputFormat</code> (binary),
    #         or <code>IgnoreKeyTextOutputFormat</code>, or a custom format.</p>
    #
    #   @return [String]
    #
    # @!attribute compressed
    #   <p>
    #               <code>True</code> if the data in the table is compressed, or <code>False</code> if
    #         not.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute number_of_buckets
    #   <p>Must be specified if the table contains any dimension columns.</p>
    #
    #   @return [Integer]
    #
    # @!attribute serde_info
    #   <p>The serialization/deserialization (SerDe) information.</p>
    #
    #   @return [SerDeInfo]
    #
    # @!attribute bucket_columns
    #   <p>A list of reducer grouping columns, clustering columns, and
    #         bucketing columns in the table.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute sort_columns
    #   <p>A list specifying the sort order of each bucket in the table.</p>
    #
    #   @return [Array<Order>]
    #
    # @!attribute parameters
    #   <p>The user-supplied properties in key-value form.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute skewed_info
    #   <p>The information about values that appear frequently in a column (skewed values).</p>
    #
    #   @return [SkewedInfo]
    #
    # @!attribute stored_as_sub_directories
    #   <p>
    #               <code>True</code> if the table data is stored in subdirectories, or <code>False</code> if
    #         not.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute schema_reference
    #   <p>An object that references a schema stored in the Glue Schema Registry.</p>
    #   	
    #   	        <p>When creating a table, you can pass an empty list of columns for the schema, and instead use a schema reference.</p>
    #
    #   @return [SchemaReference]
    #
    StorageDescriptor = ::Struct.new(
      :columns,
      :location,
      :additional_locations,
      :input_format,
      :output_format,
      :compressed,
      :number_of_buckets,
      :serde_info,
      :bucket_columns,
      :sort_columns,
      :parameters,
      :skewed_info,
      :stored_as_sub_directories,
      :schema_reference,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.compressed ||= false
        self.number_of_buckets ||= 0
        self.stored_as_sub_directories ||= false
      end

    end

    # <p>Specifies options related to data preview for viewing a sample of your data.</p>
    #
    # @!attribute polling_time
    #   <p>The polling time in milliseconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute record_polling_limit
    #   <p>The limit to the number of records polled.</p>
    #
    #   @return [Integer]
    #
    StreamingDataPreviewOptions = ::Struct.new(
      :polling_time,
      :record_polling_limit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Defines column statistics supported for character sequence data values.</p>
    #
    # @!attribute maximum_length
    #   <p>The size of the longest string in the column.</p>
    #
    #   @return [Integer]
    #
    # @!attribute average_length
    #   <p>The average string length in the column.</p>
    #
    #   @return [Float]
    #
    # @!attribute number_of_nulls
    #   <p>The number of null values in the column.</p>
    #
    #   @return [Integer]
    #
    # @!attribute number_of_distinct_values
    #   <p>The number of distinct values in a column.</p>
    #
    #   @return [Integer]
    #
    StringColumnStatisticsData = ::Struct.new(
      :maximum_length,
      :average_length,
      :number_of_nulls,
      :number_of_distinct_values,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.maximum_length ||= 0
        self.average_length ||= 0
        self.number_of_nulls ||= 0
        self.number_of_distinct_values ||= 0
      end

    end

    # <p>Represents a collection of related data organized in columns and rows.</p>
    #
    # @!attribute name
    #   <p>The table name. For Hive compatibility, this must be entirely
    #         lowercase.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The name of the database where the table metadata resides.
    #         For Hive compatibility, this must be all lowercase.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the table.</p>
    #
    #   @return [String]
    #
    # @!attribute owner
    #   <p>The owner of the table.</p>
    #
    #   @return [String]
    #
    # @!attribute create_time
    #   <p>The time when the table definition was created in the Data Catalog.</p>
    #
    #   @return [Time]
    #
    # @!attribute update_time
    #   <p>The last time that the table was updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_access_time
    #   <p>The last time that the table was accessed. This is usually taken from HDFS, and might not
    #         be reliable.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_analyzed_time
    #   <p>The last time that column statistics were computed for this table.</p>
    #
    #   @return [Time]
    #
    # @!attribute retention
    #   <p>The retention time for this table.</p>
    #
    #   @return [Integer]
    #
    # @!attribute storage_descriptor
    #   <p>A storage descriptor containing information about the physical storage
    #         of this table.</p>
    #
    #   @return [StorageDescriptor]
    #
    # @!attribute partition_keys
    #   <p>A list of columns by which the table is partitioned. Only primitive
    #         types are supported as partition keys.</p>
    #   	        <p>When you create a table used by Amazon Athena, and you do not specify any
    #           <code>partitionKeys</code>, you must at least set the value of <code>partitionKeys</code> to
    #         an empty list. For example:</p>
    #            <p>
    #               <code>"PartitionKeys": []</code>
    #            </p>
    #
    #   @return [Array<Column>]
    #
    # @!attribute view_original_text
    #   <p>If the table is a view, the original text of the view; otherwise <code>null</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute view_expanded_text
    #   <p>If the table is a view, the expanded text of the view; otherwise <code>null</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute table_type
    #   <p>The type of this table (<code>EXTERNAL_TABLE</code>, <code>VIRTUAL_VIEW</code>, etc.).</p>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>These key-value pairs define properties associated with the table.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute created_by
    #   <p>The person or entity who created the table.</p>
    #
    #   @return [String]
    #
    # @!attribute is_registered_with_lake_formation
    #   <p>Indicates whether the table has been registered with Lake Formation.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute target_table
    #   <p>A <code>TableIdentifier</code> structure that describes a target table for resource linking.</p>
    #
    #   @return [TableIdentifier]
    #
    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog in which the table resides.</p>
    #
    #   @return [String]
    #
    # @!attribute version_id
    #
    #   @return [String]
    #
    Table = ::Struct.new(
      :name,
      :database_name,
      :description,
      :owner,
      :create_time,
      :update_time,
      :last_access_time,
      :last_analyzed_time,
      :retention,
      :storage_descriptor,
      :partition_keys,
      :view_original_text,
      :view_expanded_text,
      :table_type,
      :parameters,
      :created_by,
      :is_registered_with_lake_formation,
      :target_table,
      :catalog_id,
      :version_id,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.retention ||= 0
        self.is_registered_with_lake_formation ||= false
      end

    end

    # <p>An error record for table operations.</p>
    #
    # @!attribute table_name
    #   <p>The name of the table. For Hive compatibility, this must be entirely lowercase.</p>
    #
    #   @return [String]
    #
    # @!attribute error_detail
    #   <p>The details about the error.</p>
    #
    #   @return [ErrorDetail]
    #
    TableError = ::Struct.new(
      :table_name,
      :error_detail,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure that describes a target table for resource linking.</p>
    #
    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog in which the table resides.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The name of the catalog database that contains the target table.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the target table.</p>
    #
    #   @return [String]
    #
    TableIdentifier = ::Struct.new(
      :catalog_id,
      :database_name,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure used to define a table.</p>
    #
    # @!attribute name
    #   <p>The table name. For Hive compatibility, this is folded to
    #         lowercase when it is stored.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the table.</p>
    #
    #   @return [String]
    #
    # @!attribute owner
    #   <p>The table owner.</p>
    #
    #   @return [String]
    #
    # @!attribute last_access_time
    #   <p>The last time that the table was accessed.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_analyzed_time
    #   <p>The last time that column statistics were computed for this table.</p>
    #
    #   @return [Time]
    #
    # @!attribute retention
    #   <p>The retention time for this table.</p>
    #
    #   @return [Integer]
    #
    # @!attribute storage_descriptor
    #   <p>A storage descriptor containing information about the physical storage
    #         of this table.</p>
    #
    #   @return [StorageDescriptor]
    #
    # @!attribute partition_keys
    #   <p>A list of columns by which the table is partitioned. Only primitive
    #         types are supported as partition keys.</p>
    #   	        <p>When you create a table used by Amazon Athena, and you do not specify any
    #           <code>partitionKeys</code>, you must at least set the value of <code>partitionKeys</code> to
    #         an empty list. For example:</p>
    #            <p>
    #               <code>"PartitionKeys": []</code>
    #            </p>
    #
    #   @return [Array<Column>]
    #
    # @!attribute view_original_text
    #   <p>If the table is a view, the original text of the view; otherwise <code>null</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute view_expanded_text
    #   <p>If the table is a view, the expanded text of the view; otherwise <code>null</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute table_type
    #   <p>The type of this table (<code>EXTERNAL_TABLE</code>, <code>VIRTUAL_VIEW</code>, etc.).</p>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>These key-value pairs define properties associated with the table.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute target_table
    #   <p>A <code>TableIdentifier</code> structure that describes a target table for resource linking.</p>
    #
    #   @return [TableIdentifier]
    #
    TableInput = ::Struct.new(
      :name,
      :description,
      :owner,
      :last_access_time,
      :last_analyzed_time,
      :retention,
      :storage_descriptor,
      :partition_keys,
      :view_original_text,
      :view_expanded_text,
      :table_type,
      :parameters,
      :target_table,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.retention ||= 0
      end

    end

    # <p>Specifies a version of a table.</p>
    #
    # @!attribute table
    #   <p>The table in question.</p>
    #
    #   @return [Table]
    #
    # @!attribute version_id
    #   <p>The ID value that identifies this table version. A <code>VersionId</code> is a string representation of an integer. Each version is incremented by 1.</p>
    #
    #   @return [String]
    #
    TableVersion = ::Struct.new(
      :table,
      :version_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An error record for table-version operations.</p>
    #
    # @!attribute table_name
    #   <p>The name of the table in question.</p>
    #
    #   @return [String]
    #
    # @!attribute version_id
    #   <p>The ID value of the version in question. A <code>VersionID</code> is a string representation of an integer. Each version is incremented by 1.</p>
    #
    #   @return [String]
    #
    # @!attribute error_detail
    #   <p>The details about the error.</p>
    #
    #   @return [ErrorDetail]
    #
    TableVersionError = ::Struct.new(
      :table_name,
      :version_id,
      :error_detail,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the Glue resource to which to add the tags. For more
    #         information about Glue resource ARNs, see the <a href="https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-common.html aws-glue-api-regex-aws-glue-arn-id">Glue ARN string pattern</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute tags_to_add
    #   <p>Tags to add to this resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    TagResourceInput = ::Struct.new(
      :resource_arn,
      :tags_to_add,
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

    # Includes enum constants for TargetFormat
    #
    module TargetFormat
      # No documentation available.
      #
      JSON = "json"

      # No documentation available.
      #
      CSV = "csv"

      # No documentation available.
      #
      AVRO = "avro"

      # No documentation available.
      #
      ORC = "orc"

      # No documentation available.
      #
      PARQUET = "parquet"
    end

    # <p>The sampling parameters that are associated with the machine learning transform.</p>
    #
    # @!attribute transform_id
    #   <p>The unique identifier for the transform.</p>
    #
    #   @return [String]
    #
    # @!attribute task_run_id
    #   <p>The unique identifier for this task run.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the requested task run.</p>
    #
    #   Enum, one of: ["STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED", "TIMEOUT"]
    #
    #   @return [String]
    #
    # @!attribute log_group_name
    #   <p>The names of the log group for secure logging, associated with this task run.</p>
    #
    #   @return [String]
    #
    # @!attribute properties
    #   <p>Specifies configuration properties associated with this task run.</p>
    #
    #   @return [TaskRunProperties]
    #
    # @!attribute error_string
    #   <p>The list of error strings associated with this task run.</p>
    #
    #   @return [String]
    #
    # @!attribute started_on
    #   <p>The date and time that this task run started.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_on
    #   <p>The last point in time that the requested task run was updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute completed_on
    #   <p>The last point in time that the requested task run was completed.</p>
    #
    #   @return [Time]
    #
    # @!attribute execution_time
    #   <p>The amount of time (in seconds) that the task run consumed resources.</p>
    #
    #   @return [Integer]
    #
    TaskRun = ::Struct.new(
      :transform_id,
      :task_run_id,
      :status,
      :log_group_name,
      :properties,
      :error_string,
      :started_on,
      :last_modified_on,
      :completed_on,
      :execution_time,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.execution_time ||= 0
      end

    end

    # <p>The criteria that are used to filter the task runs for the machine learning
    #       transform.</p>
    #
    # @!attribute task_run_type
    #   <p>The type of task run.</p>
    #
    #   Enum, one of: ["EVALUATION", "LABELING_SET_GENERATION", "IMPORT_LABELS", "EXPORT_LABELS", "FIND_MATCHES"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the task run.</p>
    #
    #   Enum, one of: ["STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED", "TIMEOUT"]
    #
    #   @return [String]
    #
    # @!attribute started_before
    #   <p>Filter on task runs started before this date.</p>
    #
    #   @return [Time]
    #
    # @!attribute started_after
    #   <p>Filter on task runs started after this date.</p>
    #
    #   @return [Time]
    #
    TaskRunFilterCriteria = ::Struct.new(
      :task_run_type,
      :status,
      :started_before,
      :started_after,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configuration properties for the task run.</p>
    #
    # @!attribute task_type
    #   <p>The type of task run.</p>
    #
    #   Enum, one of: ["EVALUATION", "LABELING_SET_GENERATION", "IMPORT_LABELS", "EXPORT_LABELS", "FIND_MATCHES"]
    #
    #   @return [String]
    #
    # @!attribute import_labels_task_run_properties
    #   <p>The configuration properties for an importing labels task run.</p>
    #
    #   @return [ImportLabelsTaskRunProperties]
    #
    # @!attribute export_labels_task_run_properties
    #   <p>The configuration properties for an exporting labels task run.</p>
    #
    #   @return [ExportLabelsTaskRunProperties]
    #
    # @!attribute labeling_set_generation_task_run_properties
    #   <p>The configuration properties for a labeling set generation task run.</p>
    #
    #   @return [LabelingSetGenerationTaskRunProperties]
    #
    # @!attribute find_matches_task_run_properties
    #   <p>The configuration properties for a find matches task run.</p>
    #
    #   @return [FindMatchesTaskRunProperties]
    #
    TaskRunProperties = ::Struct.new(
      :task_type,
      :import_labels_task_run_properties,
      :export_labels_task_run_properties,
      :labeling_set_generation_task_run_properties,
      :find_matches_task_run_properties,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TaskRunSortColumnType
    #
    module TaskRunSortColumnType
      # No documentation available.
      #
      TASK_RUN_TYPE = "TASK_RUN_TYPE"

      # No documentation available.
      #
      STATUS = "STATUS"

      # No documentation available.
      #
      STARTED = "STARTED"
    end

    # <p>The sorting criteria that are used to sort the list of task runs for the machine learning
    #       transform.</p>
    #
    # @!attribute column
    #   <p>The column to be used to sort the list of task runs for the machine learning
    #         transform.</p>
    #
    #   Enum, one of: ["TASK_RUN_TYPE", "STATUS", "STARTED"]
    #
    #   @return [String]
    #
    # @!attribute sort_direction
    #   <p>The sort direction to be used to sort the list of task runs for the machine learning
    #         transform.</p>
    #
    #   Enum, one of: ["DESCENDING", "ASCENDING"]
    #
    #   @return [String]
    #
    TaskRunSortCriteria = ::Struct.new(
      :column,
      :sort_direction,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TaskStatusType
    #
    module TaskStatusType
      # No documentation available.
      #
      STARTING = "STARTING"

      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      STOPPING = "STOPPING"

      # No documentation available.
      #
      STOPPED = "STOPPED"

      # No documentation available.
      #
      SUCCEEDED = "SUCCEEDED"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      TIMEOUT = "TIMEOUT"
    end

    # Includes enum constants for TaskType
    #
    module TaskType
      # No documentation available.
      #
      EVALUATION = "EVALUATION"

      # No documentation available.
      #
      LABELING_SET_GENERATION = "LABELING_SET_GENERATION"

      # No documentation available.
      #
      IMPORT_LABELS = "IMPORT_LABELS"

      # No documentation available.
      #
      EXPORT_LABELS = "EXPORT_LABELS"

      # No documentation available.
      #
      FIND_MATCHES = "FIND_MATCHES"
    end

    # <p>The encryption-at-rest settings of the transform that apply to accessing user data. Machine learning transforms can access user data encrypted in Amazon S3 using KMS.</p>
    #
    # 	        <p>Additionally, imported labels and trained transforms can now be encrypted using a customer provided KMS key.</p>
    #
    # @!attribute ml_user_data_encryption
    #   <p>An <code>MLUserDataEncryption</code> object containing the encryption mode and customer-provided KMS key ID.</p>
    #
    #   @return [MLUserDataEncryption]
    #
    # @!attribute task_run_security_configuration_name
    #   <p>The name of the security configuration.</p>
    #
    #   @return [String]
    #
    TransformEncryption = ::Struct.new(
      :ml_user_data_encryption,
      :task_run_security_configuration_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The criteria used to filter the machine learning transforms.</p>
    #
    # @!attribute name
    #   <p>A unique transform name that is used to filter the machine learning transforms.</p>
    #
    #   @return [String]
    #
    # @!attribute transform_type
    #   <p>The type of machine learning transform that is used to filter the machine learning
    #         transforms.</p>
    #
    #   Enum, one of: ["FIND_MATCHES"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Filters the list of machine learning transforms by the last known status of the transforms (to indicate whether a transform can be used or not). One of "NOT_READY", "READY", or "DELETING".</p>
    #
    #   Enum, one of: ["NOT_READY", "READY", "DELETING"]
    #
    #   @return [String]
    #
    # @!attribute glue_version
    #   <p>This value determines which version of Glue this machine learning transform is compatible with. Glue 1.0 is recommended for most customers. If the value is not set, the Glue compatibility defaults to Glue 0.9.  For more information, see <a href="https://docs.aws.amazon.com/glue/latest/dg/release-notes.html release-notes-versions">Glue Versions</a> in the developer guide.</p>
    #
    #   @return [String]
    #
    # @!attribute created_before
    #   <p>The time and date before which the transforms were created.</p>
    #
    #   @return [Time]
    #
    # @!attribute created_after
    #   <p>The time and date after which the transforms were created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_before
    #   <p>Filter on transforms last modified before this date.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_after
    #   <p>Filter on transforms last modified after this date.</p>
    #
    #   @return [Time]
    #
    # @!attribute schema
    #   <p>Filters on datasets with a specific schema. The <code>Map<Column, Type></code>
    #         object is an array of key-value pairs representing the schema this transform accepts, where
    #           <code>Column</code> is the name of a column, and <code>Type</code> is the type of the data
    #         such as an integer or string. Has an upper bound of 100 columns.</p>
    #
    #   @return [Array<SchemaColumn>]
    #
    TransformFilterCriteria = ::Struct.new(
      :name,
      :transform_type,
      :status,
      :glue_version,
      :created_before,
      :created_after,
      :last_modified_before,
      :last_modified_after,
      :schema,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The algorithm-specific parameters that are associated with the machine learning
    #       transform.</p>
    #
    # @!attribute transform_type
    #   <p>The type of machine learning transform.</p>
    #   	        <p>For information about the types of machine learning transforms, see <a href="https://docs.aws.amazon.com/glue/latest/dg/add-job-machine-learning-transform.html">Creating Machine Learning Transforms</a>.</p>
    #
    #   Enum, one of: ["FIND_MATCHES"]
    #
    #   @return [String]
    #
    # @!attribute find_matches_parameters
    #   <p>The parameters for the find matches algorithm.</p>
    #
    #   @return [FindMatchesParameters]
    #
    TransformParameters = ::Struct.new(
      :transform_type,
      :find_matches_parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TransformSortColumnType
    #
    module TransformSortColumnType
      # No documentation available.
      #
      NAME = "NAME"

      # No documentation available.
      #
      TRANSFORM_TYPE = "TRANSFORM_TYPE"

      # No documentation available.
      #
      STATUS = "STATUS"

      # No documentation available.
      #
      CREATED = "CREATED"

      # No documentation available.
      #
      LAST_MODIFIED = "LAST_MODIFIED"
    end

    # <p>The sorting criteria that are associated with the machine learning transform.</p>
    #
    # @!attribute column
    #   <p>The column to be used in the sorting criteria that are associated with the machine
    #         learning transform.</p>
    #
    #   Enum, one of: ["NAME", "TRANSFORM_TYPE", "STATUS", "CREATED", "LAST_MODIFIED"]
    #
    #   @return [String]
    #
    # @!attribute sort_direction
    #   <p>The sort direction to be used in the sorting criteria that are associated with the machine
    #         learning transform.</p>
    #
    #   Enum, one of: ["DESCENDING", "ASCENDING"]
    #
    #   @return [String]
    #
    TransformSortCriteria = ::Struct.new(
      :column,
      :sort_direction,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TransformStatusType
    #
    module TransformStatusType
      # No documentation available.
      #
      NOT_READY = "NOT_READY"

      # No documentation available.
      #
      READY = "READY"

      # No documentation available.
      #
      DELETING = "DELETING"
    end

    # Includes enum constants for TransformType
    #
    module TransformType
      # No documentation available.
      #
      FIND_MATCHES = "FIND_MATCHES"
    end

    # <p>Information about a specific trigger.</p>
    #
    # @!attribute name
    #   <p>The name of the trigger.</p>
    #
    #   @return [String]
    #
    # @!attribute workflow_name
    #   <p>The name of the workflow associated with the trigger.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>Reserved for future use.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of trigger that this is.</p>
    #
    #   Enum, one of: ["SCHEDULED", "CONDITIONAL", "ON_DEMAND", "EVENT"]
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The current state of the trigger.</p>
    #
    #   Enum, one of: ["CREATING", "CREATED", "ACTIVATING", "ACTIVATED", "DEACTIVATING", "DEACTIVATED", "DELETING", "UPDATING"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of this trigger.</p>
    #
    #   @return [String]
    #
    # @!attribute schedule
    #   <p>A <code>cron</code> expression used to specify the schedule (see <a href="https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html">Time-Based
    #         Schedules for Jobs and Crawlers</a>. For example, to run
    #         something every day at 12:15 UTC, you would specify:
    #         <code>cron(15 12 * * ? *)</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute actions
    #   <p>The actions initiated by this trigger.</p>
    #
    #   @return [Array<Action>]
    #
    # @!attribute predicate
    #   <p>The predicate of this trigger, which defines when it will fire.</p>
    #
    #   @return [Predicate]
    #
    # @!attribute event_batching_condition
    #   <p>Batch condition that must be met (specified number of events received or batch time window expired)
    #         before EventBridge event trigger fires.</p>
    #
    #   @return [EventBatchingCondition]
    #
    Trigger = ::Struct.new(
      :name,
      :workflow_name,
      :id,
      :type,
      :state,
      :description,
      :schedule,
      :actions,
      :predicate,
      :event_batching_condition,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The details of a Trigger node present in the workflow.</p>
    #
    # @!attribute trigger
    #   <p>The information of the trigger represented by the trigger node.</p>
    #
    #   @return [Trigger]
    #
    TriggerNodeDetails = ::Struct.new(
      :trigger,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TriggerState
    #
    module TriggerState
      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      CREATED = "CREATED"

      # No documentation available.
      #
      ACTIVATING = "ACTIVATING"

      # No documentation available.
      #
      ACTIVATED = "ACTIVATED"

      # No documentation available.
      #
      DEACTIVATING = "DEACTIVATING"

      # No documentation available.
      #
      DEACTIVATED = "DEACTIVATED"

      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      UPDATING = "UPDATING"
    end

    # Includes enum constants for TriggerType
    #
    module TriggerType
      # No documentation available.
      #
      SCHEDULED = "SCHEDULED"

      # No documentation available.
      #
      CONDITIONAL = "CONDITIONAL"

      # No documentation available.
      #
      ON_DEMAND = "ON_DEMAND"

      # No documentation available.
      #
      EVENT = "EVENT"
    end

    # <p>A structure used to provide information used to update a trigger. This object updates the
    #       previous trigger definition by overwriting it completely.</p>
    #
    # @!attribute name
    #   <p>Reserved for future use.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of this trigger.</p>
    #
    #   @return [String]
    #
    # @!attribute schedule
    #   <p>A <code>cron</code> expression used to specify the schedule (see <a href="https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html">Time-Based
    #         Schedules for Jobs and Crawlers</a>. For example, to run
    #         something every day at 12:15 UTC, you would specify:
    #         <code>cron(15 12 * * ? *)</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute actions
    #   <p>The actions initiated by this trigger.</p>
    #
    #   @return [Array<Action>]
    #
    # @!attribute predicate
    #   <p>The predicate of this trigger, which defines when it will fire.</p>
    #
    #   @return [Predicate]
    #
    # @!attribute event_batching_condition
    #   <p>Batch condition that must be met (specified number of events received or batch time window expired)
    #         before EventBridge event trigger fires.</p>
    #
    #   @return [EventBatchingCondition]
    #
    TriggerUpdate = ::Struct.new(
      :name,
      :description,
      :schedule,
      :actions,
      :predicate,
      :event_batching_condition,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute partition
    #   <p>Represents a slice of table data.</p>
    #
    #   @return [Partition]
    #
    # @!attribute authorized_columns
    #
    #   @return [Array<String>]
    #
    # @!attribute is_registered_with_lake_formation
    #
    #   @return [Boolean]
    #
    UnfilteredPartition = ::Struct.new(
      :partition,
      :authorized_columns,
      :is_registered_with_lake_formation,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.is_registered_with_lake_formation ||= false
      end

    end

    # <p>Specifies a transform that combines the rows from two or more datasets into a single result.</p>
    #
    # @!attribute name
    #   <p>The name of the transform node.</p>
    #
    #   @return [String]
    #
    # @!attribute inputs
    #   <p>The node ID inputs to the transform.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute union_type
    #   <p>Indicates the type of Union transform. </p>
    #   	
    #   	        <p>Specify <code>ALL</code> to join all rows from data sources to the resulting DynamicFrame. The resulting union does not remove duplicate rows.</p>
    #
    #            <p>Specify <code>DISTINCT</code> to remove duplicate rows in the resulting DynamicFrame.</p>
    #
    #   Enum, one of: ["ALL", "DISTINCT"]
    #
    #   @return [String]
    #
    Union = ::Struct.new(
      :name,
      :inputs,
      :union_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for UnionType
    #
    module UnionType
      # No documentation available.
      #
      ALL = "ALL"

      # No documentation available.
      #
      DISTINCT = "DISTINCT"
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource from which to remove the tags.</p>
    #
    #   @return [String]
    #
    # @!attribute tags_to_remove
    #   <p>Tags to remove from this resource.</p>
    #
    #   @return [Array<String>]
    #
    UntagResourceInput = ::Struct.new(
      :resource_arn,
      :tags_to_remove,
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

    # Includes enum constants for UpdateBehavior
    #
    module UpdateBehavior
      # No documentation available.
      #
      LOG = "LOG"

      # No documentation available.
      #
      UPDATE_IN_DATABASE = "UPDATE_IN_DATABASE"
    end

    # @!attribute name
    #   <p>The name of the blueprint.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the blueprint.</p>
    #
    #   @return [String]
    #
    # @!attribute blueprint_location
    #   <p>Specifies a path in Amazon S3 where the blueprint is published.</p>
    #
    #   @return [String]
    #
    UpdateBlueprintInput = ::Struct.new(
      :name,
      :description,
      :blueprint_location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>Returns the name of the blueprint that was updated.</p>
    #
    #   @return [String]
    #
    UpdateBlueprintOutput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for UpdateCatalogBehavior
    #
    module UpdateCatalogBehavior
      # No documentation available.
      #
      UPDATE_IN_DATABASE = "UPDATE_IN_DATABASE"

      # No documentation available.
      #
      LOG = "LOG"
    end

    # @!attribute grok_classifier
    #   <p>A <code>GrokClassifier</code> object with updated fields.</p>
    #
    #   @return [UpdateGrokClassifierRequest]
    #
    # @!attribute xml_classifier
    #   <p>An <code>XMLClassifier</code> object with updated fields.</p>
    #
    #   @return [UpdateXMLClassifierRequest]
    #
    # @!attribute json_classifier
    #   <p>A <code>JsonClassifier</code> object with updated fields.</p>
    #
    #   @return [UpdateJsonClassifierRequest]
    #
    # @!attribute csv_classifier
    #   <p>A <code>CsvClassifier</code> object with updated fields.</p>
    #
    #   @return [UpdateCsvClassifierRequest]
    #
    UpdateClassifierInput = ::Struct.new(
      :grok_classifier,
      :xml_classifier,
      :json_classifier,
      :csv_classifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateClassifierOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog where the partitions in question reside.
    #         If none is supplied, the Amazon Web Services account ID is used by default.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The name of the catalog database where the partitions reside.</p>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>The name of the partitions' table.</p>
    #
    #   @return [String]
    #
    # @!attribute partition_values
    #   <p>A list of partition values identifying the partition.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute column_statistics_list
    #   <p>A list of the column statistics.</p>
    #
    #   @return [Array<ColumnStatistics>]
    #
    UpdateColumnStatisticsForPartitionInput = ::Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :partition_values,
      :column_statistics_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute errors
    #   <p>Error occurred during updating column statistics data.</p>
    #
    #   @return [Array<ColumnStatisticsError>]
    #
    UpdateColumnStatisticsForPartitionOutput = ::Struct.new(
      :errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog where the partitions in question reside.
    #         If none is supplied, the Amazon Web Services account ID is used by default.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The name of the catalog database where the partitions reside.</p>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>The name of the partitions' table.</p>
    #
    #   @return [String]
    #
    # @!attribute column_statistics_list
    #   <p>A list of the column statistics.</p>
    #
    #   @return [Array<ColumnStatistics>]
    #
    UpdateColumnStatisticsForTableInput = ::Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :column_statistics_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute errors
    #   <p>List of ColumnStatisticsErrors.</p>
    #
    #   @return [Array<ColumnStatisticsError>]
    #
    UpdateColumnStatisticsForTableOutput = ::Struct.new(
      :errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog in which the connection resides. If none is provided, the Amazon Web Services
    #         account ID is used by default.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the connection definition to update.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_input
    #   <p>A <code>ConnectionInput</code> object that redefines the connection
    #         in question.</p>
    #
    #   @return [ConnectionInput]
    #
    UpdateConnectionInput = ::Struct.new(
      :catalog_id,
      :name,
      :connection_input,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateConnectionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>Name of the new crawler.</p>
    #
    #   @return [String]
    #
    # @!attribute role
    #   <p>The IAM role or Amazon Resource Name (ARN) of an IAM role that is used by the new crawler
    #         to access customer resources.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The Glue database where results are stored, such as:
    #           <code>arn:aws:daylight:us-east-1::database/sometable/*</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the new crawler.</p>
    #
    #   @return [String]
    #
    # @!attribute targets
    #   <p>A list of targets to crawl.</p>
    #
    #   @return [CrawlerTargets]
    #
    # @!attribute schedule
    #   <p>A <code>cron</code> expression used to specify the schedule (see <a href="https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html">Time-Based Schedules for Jobs and Crawlers</a>. For example, to run
    #         something every day at 12:15 UTC, you would specify:
    #         <code>cron(15 12 * * ? *)</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute classifiers
    #   <p>A list of custom classifiers that the user
    #         has registered. By default, all built-in classifiers are included in a crawl,
    #         but these custom classifiers always override the default classifiers
    #         for a given classification.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute table_prefix
    #   <p>The table prefix used for catalog tables that are created.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_change_policy
    #   <p>The policy for the crawler's update and deletion behavior.</p>
    #
    #   @return [SchemaChangePolicy]
    #
    # @!attribute recrawl_policy
    #   <p>A policy that specifies whether to crawl the entire dataset again, or to crawl only folders that were added since the last crawler run.</p>
    #
    #   @return [RecrawlPolicy]
    #
    # @!attribute lineage_configuration
    #   <p>Specifies data lineage configuration settings for the crawler.</p>
    #
    #   @return [LineageConfiguration]
    #
    # @!attribute lake_formation_configuration
    #   <p>Specifies AWS Lake Formation configuration settings for the crawler.</p>
    #
    #   @return [LakeFormationConfiguration]
    #
    # @!attribute configuration
    #   <p>Crawler configuration information. This versioned JSON string allows users
    #           to specify aspects of a crawler's behavior.
    #           For more information, see <a href="https://docs.aws.amazon.com/glue/latest/dg/crawler-configuration.html">Configuring a Crawler</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute crawler_security_configuration
    #   <p>The name of the <code>SecurityConfiguration</code> structure to be used by this
    #         crawler.</p>
    #
    #   @return [String]
    #
    UpdateCrawlerInput = ::Struct.new(
      :name,
      :role,
      :database_name,
      :description,
      :targets,
      :schedule,
      :classifiers,
      :table_prefix,
      :schema_change_policy,
      :recrawl_policy,
      :lineage_configuration,
      :lake_formation_configuration,
      :configuration,
      :crawler_security_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateCrawlerOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute crawler_name
    #   <p>The name of the crawler whose schedule to update.</p>
    #
    #   @return [String]
    #
    # @!attribute schedule
    #   <p>The updated <code>cron</code> expression used to specify the schedule (see <a href="https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html">Time-Based Schedules for Jobs and Crawlers</a>. For example, to run
    #         something every day at 12:15 UTC, you would specify:
    #         <code>cron(15 12 * * ? *)</code>.</p>
    #
    #   @return [String]
    #
    UpdateCrawlerScheduleInput = ::Struct.new(
      :crawler_name,
      :schedule,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateCrawlerScheduleOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a custom CSV classifier to be updated.</p>
    #
    # @!attribute name
    #   <p>The name of the classifier.</p>
    #
    #   @return [String]
    #
    # @!attribute delimiter
    #   <p>A custom symbol to denote what separates each column entry in the row.</p>
    #
    #   @return [String]
    #
    # @!attribute quote_symbol
    #   <p>A custom symbol to denote what combines content into a single column value. It must be
    #         different from the column delimiter.</p>
    #
    #   @return [String]
    #
    # @!attribute contains_header
    #   <p>Indicates whether the CSV file contains a header.</p>
    #
    #   Enum, one of: ["UNKNOWN", "PRESENT", "ABSENT"]
    #
    #   @return [String]
    #
    # @!attribute header
    #   <p>A list of strings representing column names.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute disable_value_trimming
    #   <p>Specifies not to trim values before identifying the type of column values. The default value is true.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute allow_single_column
    #   <p>Enables the processing of files that contain only one column.</p>
    #
    #   @return [Boolean]
    #
    UpdateCsvClassifierRequest = ::Struct.new(
      :name,
      :delimiter,
      :quote_symbol,
      :contains_header,
      :header,
      :disable_value_trimming,
      :allow_single_column,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog in which the metadata database resides. If none is provided,
    #         the Amazon Web Services account ID is used by default.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the database to update in the catalog. For Hive
    #         compatibility, this is folded to lowercase.</p>
    #
    #   @return [String]
    #
    # @!attribute database_input
    #   <p>A <code>DatabaseInput</code> object specifying the new definition
    #         of the metadata database in the catalog.</p>
    #
    #   @return [DatabaseInput]
    #
    UpdateDatabaseInput = ::Struct.new(
      :catalog_id,
      :name,
      :database_input,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateDatabaseOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute endpoint_name
    #   <p>The name of the <code>DevEndpoint</code> to be updated.</p>
    #
    #   @return [String]
    #
    # @!attribute public_key
    #   <p>The public key for the <code>DevEndpoint</code> to use.</p>
    #
    #   @return [String]
    #
    # @!attribute add_public_keys
    #   <p>The list of public keys for the <code>DevEndpoint</code> to use.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute delete_public_keys
    #   <p>The list of public keys to be deleted from the <code>DevEndpoint</code>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute custom_libraries
    #   <p>Custom Python or Java libraries to be loaded in the <code>DevEndpoint</code>.</p>
    #
    #   @return [DevEndpointCustomLibraries]
    #
    # @!attribute update_etl_libraries
    #   <p>
    #               <code>True</code> if the list of custom libraries to be loaded in the development endpoint
    #         needs to be updated, or <code>False</code> if otherwise.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute delete_arguments
    #   <p>The list of argument keys to be deleted from the map of arguments used to configure the
    #           <code>DevEndpoint</code>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute add_arguments
    #   <p>The map of arguments to add the map of arguments used to configure the
    #           <code>DevEndpoint</code>.</p>
    #   		
    #   	        <p>Valid arguments are:</p>
    #   	        <ul>
    #               <li>
    #                  <p>
    #                     <code>"--enable-glue-datacatalog": ""</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   	
    #            <p>You can specify a version of Python support for development endpoints by using the <code>Arguments</code> parameter in the <code>CreateDevEndpoint</code> or <code>UpdateDevEndpoint</code> APIs. If no arguments are provided, the version defaults to Python 2.</p>
    #
    #   @return [Hash<String, String>]
    #
    UpdateDevEndpointInput = ::Struct.new(
      :endpoint_name,
      :public_key,
      :add_public_keys,
      :delete_public_keys,
      :custom_libraries,
      :update_etl_libraries,
      :delete_arguments,
      :add_arguments,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.update_etl_libraries ||= false
      end

    end

    UpdateDevEndpointOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a grok classifier to update when passed to
    #       <code>UpdateClassifier</code>.</p>
    #
    # @!attribute name
    #   <p>The name of the <code>GrokClassifier</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute classification
    #   <p>An identifier of the data format that the classifier matches, such as Twitter, JSON, Omniture logs,
    #         Amazon CloudWatch Logs, and so on.</p>
    #
    #   @return [String]
    #
    # @!attribute grok_pattern
    #   <p>The grok pattern used by this classifier.</p>
    #
    #   @return [String]
    #
    # @!attribute custom_patterns
    #   <p>Optional custom grok patterns used by this classifier.</p>
    #
    #   @return [String]
    #
    UpdateGrokClassifierRequest = ::Struct.new(
      :name,
      :classification,
      :grok_pattern,
      :custom_patterns,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_name
    #   <p>The name of the job definition to update.</p>
    #
    #   @return [String]
    #
    # @!attribute job_update
    #   <p>Specifies the values with which to update the job definition.</p>
    #
    #   @return [JobUpdate]
    #
    UpdateJobInput = ::Struct.new(
      :job_name,
      :job_update,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_name
    #   <p>Returns the name of the updated job definition.</p>
    #
    #   @return [String]
    #
    UpdateJobOutput = ::Struct.new(
      :job_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a JSON classifier to be updated.</p>
    #
    # @!attribute name
    #   <p>The name of the classifier.</p>
    #
    #   @return [String]
    #
    # @!attribute json_path
    #   <p>A <code>JsonPath</code> string defining the JSON data for the classifier to classify.
    #         Glue supports a subset of JsonPath, as described in <a href="https://docs.aws.amazon.com/glue/latest/dg/custom-classifier.html custom-classifier-json">Writing JsonPath Custom Classifiers</a>.</p>
    #
    #   @return [String]
    #
    UpdateJsonClassifierRequest = ::Struct.new(
      :name,
      :json_path,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute transform_id
    #   <p>A unique identifier that was generated when the transform was created.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The unique name that you gave the transform when you created it.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the transform. The default is an empty string.</p>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>The configuration parameters that are specific to the transform type (algorithm) used.
    #         Conditionally dependent on the transform type.</p>
    #
    #   @return [TransformParameters]
    #
    # @!attribute role
    #   <p>The name or Amazon Resource Name (ARN) of the IAM role with the required
    #         permissions.</p>
    #
    #   @return [String]
    #
    # @!attribute glue_version
    #   <p>This value determines which version of Glue this machine learning transform is compatible with. Glue 1.0 is recommended for most customers. If the value is not set, the Glue compatibility defaults to Glue 0.9.  For more information, see <a href="https://docs.aws.amazon.com/glue/latest/dg/release-notes.html release-notes-versions">Glue Versions</a> in the developer guide.</p>
    #
    #   @return [String]
    #
    # @!attribute max_capacity
    #   <p>The number of Glue data processing units (DPUs) that are allocated to task runs for this transform. You can allocate from 2 to 100 DPUs; the default is 10. A DPU is a relative measure of
    #         processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more
    #         information, see the <a href="https://aws.amazon.com/glue/pricing/">Glue pricing
    #           page</a>. </p>
    #   		
    #            <p>When the <code>WorkerType</code> field is set to a value other than <code>Standard</code>, the <code>MaxCapacity</code> field is set automatically and becomes read-only.</p>
    #
    #   @return [Float]
    #
    # @!attribute worker_type
    #   <p>The type of predefined worker that is allocated when this task runs. Accepts a value of Standard, G.1X, or G.2X.</p>
    #   	        <ul>
    #               <li>
    #                  <p>For the <code>Standard</code> worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.</p>
    #               </li>
    #               <li>
    #                  <p>For the <code>G.1X</code> worker type, each worker provides 4 vCPU, 16 GB of memory and a 64GB disk, and 1 executor per worker.</p>
    #               </li>
    #               <li>
    #                  <p>For the <code>G.2X</code> worker type, each worker provides 8 vCPU, 32 GB of memory and a 128GB disk, and 1 executor per worker.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["Standard", "G.1X", "G.2X"]
    #
    #   @return [String]
    #
    # @!attribute number_of_workers
    #   <p>The number of workers of a defined <code>workerType</code> that are allocated when this task runs.</p>
    #
    #   @return [Integer]
    #
    # @!attribute timeout
    #   <p>The timeout for a task run for this transform in minutes. This is the maximum time that a task run for this transform can consume resources before it is terminated and enters <code>TIMEOUT</code> status. The default is 2,880 minutes (48 hours).</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_retries
    #   <p>The maximum number of times to retry a task for this transform after a task run fails.</p>
    #
    #   @return [Integer]
    #
    UpdateMLTransformInput = ::Struct.new(
      :transform_id,
      :name,
      :description,
      :parameters,
      :role,
      :glue_version,
      :max_capacity,
      :worker_type,
      :number_of_workers,
      :timeout,
      :max_retries,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute transform_id
    #   <p>The unique identifier for the transform that was updated.</p>
    #
    #   @return [String]
    #
    UpdateMLTransformOutput = ::Struct.new(
      :transform_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog where the partition to be updated resides. If none is provided,
    #         the Amazon Web Services account ID is used by default.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The name of the catalog database in which the table in question
    #         resides.</p>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>The name of the table in which the partition to be updated is located.</p>
    #
    #   @return [String]
    #
    # @!attribute partition_value_list
    #   <p>List of partition key values that define the partition to update.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute partition_input
    #   <p>The new partition object to update the partition to.</p>
    #   	
    #   	        <p>The <code>Values</code> property can't be changed. If you want to change the partition key values for a partition, delete and recreate the partition.</p>
    #
    #   @return [PartitionInput]
    #
    UpdatePartitionInput = ::Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :partition_value_list,
      :partition_input,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdatePartitionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registry_id
    #   <p>This is a wrapper structure that may contain the registry name and Amazon Resource Name (ARN).</p>
    #
    #   @return [RegistryId]
    #
    # @!attribute description
    #   <p>A description of the registry. If description is not provided, this field will not be updated.</p>
    #
    #   @return [String]
    #
    UpdateRegistryInput = ::Struct.new(
      :registry_id,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registry_name
    #   <p>The name of the updated registry.</p>
    #
    #   @return [String]
    #
    # @!attribute registry_arn
    #   <p>The Amazon Resource name (ARN) of the updated registry.</p>
    #
    #   @return [String]
    #
    UpdateRegistryOutput = ::Struct.new(
      :registry_name,
      :registry_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute schema_id
    #   <p>This is a wrapper structure to contain schema identity fields. The structure contains:</p>
    #   	        <ul>
    #               <li>
    #                  <p>SchemaId$SchemaArn: The Amazon Resource Name (ARN) of the schema. One of <code>SchemaArn</code> or <code>SchemaName</code> has to be provided.</p>
    #               </li>
    #               <li>
    #                  <p>SchemaId$SchemaName: The name of the schema. One of <code>SchemaArn</code> or <code>SchemaName</code> has to be provided.</p>
    #               </li>
    #            </ul>
    #
    #   @return [SchemaId]
    #
    # @!attribute schema_version_number
    #   <p>Version number required for check pointing. One of <code>VersionNumber</code> or <code>Compatibility</code> has to be provided.</p>
    #
    #   @return [SchemaVersionNumber]
    #
    # @!attribute compatibility
    #   <p>The new compatibility setting for the schema.</p>
    #
    #   Enum, one of: ["NONE", "DISABLED", "BACKWARD", "BACKWARD_ALL", "FORWARD", "FORWARD_ALL", "FULL", "FULL_ALL"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The new description for the schema.</p>
    #
    #   @return [String]
    #
    UpdateSchemaInput = ::Struct.new(
      :schema_id,
      :schema_version_number,
      :compatibility,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute schema_arn
    #   <p>The Amazon Resource Name (ARN) of the schema.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_name
    #   <p>The name of the schema.</p>
    #
    #   @return [String]
    #
    # @!attribute registry_name
    #   <p>The name of the registry that contains the schema.</p>
    #
    #   @return [String]
    #
    UpdateSchemaOutput = ::Struct.new(
      :schema_arn,
      :schema_name,
      :registry_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog where the table resides. If none is provided, the Amazon Web Services account
    #         ID is used by default.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The name of the catalog database in which the table resides. For Hive
    #         compatibility, this name is entirely lowercase.</p>
    #
    #   @return [String]
    #
    # @!attribute table_input
    #   <p>An updated <code>TableInput</code> object to define the metadata table
    #         in the catalog.</p>
    #
    #   @return [TableInput]
    #
    # @!attribute skip_archive
    #   <p>By default, <code>UpdateTable</code> always creates an archived version of the table
    #         before updating it. However, if <code>skipArchive</code> is set to true,
    #           <code>UpdateTable</code> does not create the archived version.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute transaction_id
    #   <p>The transaction ID at which to update the table contents. </p>
    #
    #   @return [String]
    #
    # @!attribute version_id
    #
    #   @return [String]
    #
    UpdateTableInput = ::Struct.new(
      :catalog_id,
      :database_name,
      :table_input,
      :skip_archive,
      :transaction_id,
      :version_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateTableOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the trigger to update.</p>
    #
    #   @return [String]
    #
    # @!attribute trigger_update
    #   <p>The new values with which to update the trigger.</p>
    #
    #   @return [TriggerUpdate]
    #
    UpdateTriggerInput = ::Struct.new(
      :name,
      :trigger_update,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute trigger
    #   <p>The resulting trigger definition.</p>
    #
    #   @return [Trigger]
    #
    UpdateTriggerOutput = ::Struct.new(
      :trigger,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog where the function to be updated is located. If none is
    #         provided, the Amazon Web Services account ID is used by default.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The name of the catalog database where the function to be updated is
    #         located.</p>
    #
    #   @return [String]
    #
    # @!attribute function_name
    #   <p>The name of the function.</p>
    #
    #   @return [String]
    #
    # @!attribute function_input
    #   <p>A <code>FunctionInput</code> object that redefines the function in the Data
    #         Catalog.</p>
    #
    #   @return [UserDefinedFunctionInput]
    #
    UpdateUserDefinedFunctionInput = ::Struct.new(
      :catalog_id,
      :database_name,
      :function_name,
      :function_input,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateUserDefinedFunctionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>Name of the workflow to be updated.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the workflow.</p>
    #
    #   @return [String]
    #
    # @!attribute default_run_properties
    #   <p>A collection of properties to be used as part of each execution of the workflow.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute max_concurrent_runs
    #   <p>You can use this parameter to prevent unwanted multiple updates to data, to control costs, or in some cases, to prevent exceeding the maximum number of concurrent runs of any of the component jobs. If you leave this parameter blank, there is no limit to the number of concurrent workflow runs.</p>
    #
    #   @return [Integer]
    #
    UpdateWorkflowInput = ::Struct.new(
      :name,
      :description,
      :default_run_properties,
      :max_concurrent_runs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the workflow which was specified in input.</p>
    #
    #   @return [String]
    #
    UpdateWorkflowOutput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies an XML classifier to be updated.</p>
    #
    # @!attribute name
    #   <p>The name of the classifier.</p>
    #
    #   @return [String]
    #
    # @!attribute classification
    #   <p>An identifier of the data format that the classifier matches.</p>
    #
    #   @return [String]
    #
    # @!attribute row_tag
    #   <p>The XML tag designating the element that contains each record in an XML document being
    #         parsed. This cannot identify a self-closing element (closed by <code>/></code>). An empty
    #         row element that contains only attributes can be parsed as long as it ends with a closing tag
    #         (for example, <code><row item_a="A" item_b="B"></row></code> is okay, but
    #           <code><row item_a="A" item_b="B" /></code> is not).</p>
    #
    #   @return [String]
    #
    UpdateXMLClassifierRequest = ::Struct.new(
      :name,
      :classification,
      :row_tag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The options to configure an upsert operation when writing to a Redshift target .</p>
    #
    # @!attribute table_location
    #   <p>The physical location of the Redshift table.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_name
    #   <p>The name of the connection to use to write to Redshift.</p>
    #
    #   @return [String]
    #
    # @!attribute upsert_keys
    #   <p>The keys used to determine whether to perform an update or insert.</p>
    #
    #   @return [Array<String>]
    #
    UpsertRedshiftTargetOptions = ::Struct.new(
      :table_location,
      :connection_name,
      :upsert_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the equivalent of a Hive user-defined function
    #       (<code>UDF</code>) definition.</p>
    #
    # @!attribute function_name
    #   <p>The name of the function.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The name of the catalog database that contains the function.</p>
    #
    #   @return [String]
    #
    # @!attribute class_name
    #   <p>The Java class that contains the function code.</p>
    #
    #   @return [String]
    #
    # @!attribute owner_name
    #   <p>The owner of the function.</p>
    #
    #   @return [String]
    #
    # @!attribute owner_type
    #   <p>The owner type.</p>
    #
    #   Enum, one of: ["USER", "ROLE", "GROUP"]
    #
    #   @return [String]
    #
    # @!attribute create_time
    #   <p>The time at which the function was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute resource_uris
    #   <p>The resource URIs for the function.</p>
    #
    #   @return [Array<ResourceUri>]
    #
    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog in which the function resides.</p>
    #
    #   @return [String]
    #
    UserDefinedFunction = ::Struct.new(
      :function_name,
      :database_name,
      :class_name,
      :owner_name,
      :owner_type,
      :create_time,
      :resource_uris,
      :catalog_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure used to create or update a user-defined function.</p>
    #
    # @!attribute function_name
    #   <p>The name of the function.</p>
    #
    #   @return [String]
    #
    # @!attribute class_name
    #   <p>The Java class that contains the function code.</p>
    #
    #   @return [String]
    #
    # @!attribute owner_name
    #   <p>The owner of the function.</p>
    #
    #   @return [String]
    #
    # @!attribute owner_type
    #   <p>The owner type.</p>
    #
    #   Enum, one of: ["USER", "ROLE", "GROUP"]
    #
    #   @return [String]
    #
    # @!attribute resource_uris
    #   <p>The resource URIs for the function.</p>
    #
    #   @return [Array<ResourceUri>]
    #
    UserDefinedFunctionInput = ::Struct.new(
      :function_name,
      :class_name,
      :owner_name,
      :owner_type,
      :resource_uris,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A value could not be validated.</p>
    #
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #
    #   @return [String]
    #
    ValidationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>There was a version conflict.</p>
    #
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #
    #   @return [String]
    #
    VersionMismatchException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for WorkerType
    #
    module WorkerType
      # No documentation available.
      #
      Standard = "Standard"

      # No documentation available.
      #
      G_1X = "G.1X"

      # No documentation available.
      #
      G_2X = "G.2X"
    end

    # <p>A workflow is a collection of multiple dependent Glue
    #       jobs and crawlers that are run to complete a complex ETL task. A
    #       workflow manages the execution and monitoring of all its jobs and crawlers.</p>
    #
    # @!attribute name
    #   <p>The name of the workflow.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the workflow.</p>
    #
    #   @return [String]
    #
    # @!attribute default_run_properties
    #   <p>A collection of properties to be used as part of each execution of the workflow.
    #       The run properties are made available to each job in the workflow. A job can modify
    #       the properties for the next jobs in the flow.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute created_on
    #   <p>The date and time when the workflow was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_on
    #   <p>The date and time when the workflow was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_run
    #   <p>The information about the last execution of the workflow.</p>
    #
    #   @return [WorkflowRun]
    #
    # @!attribute graph
    #   <p>The graph representing all the Glue components that belong to the workflow as nodes and directed
    #         connections between them as edges.</p>
    #
    #   @return [WorkflowGraph]
    #
    # @!attribute max_concurrent_runs
    #   <p>You can use this parameter to prevent unwanted multiple updates to data, to control costs, or in some cases, to prevent exceeding the maximum number of concurrent runs of any of the component jobs. If you leave this parameter blank, there is no limit to the number of concurrent workflow runs.</p>
    #
    #   @return [Integer]
    #
    # @!attribute blueprint_details
    #   <p>This structure indicates the details of the blueprint that this particular workflow is created from.</p>
    #
    #   @return [BlueprintDetails]
    #
    Workflow = ::Struct.new(
      :name,
      :description,
      :default_run_properties,
      :created_on,
      :last_modified_on,
      :last_run,
      :graph,
      :max_concurrent_runs,
      :blueprint_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A workflow graph represents the complete workflow containing all the Glue components present in the
    #       workflow and all the directed connections between them.</p>
    #
    # @!attribute nodes
    #   <p>A list of the the Glue components belong to the workflow represented as nodes.</p>
    #
    #   @return [Array<Node>]
    #
    # @!attribute edges
    #   <p>A list of all the directed connections between the nodes belonging to the workflow.</p>
    #
    #   @return [Array<Edge>]
    #
    WorkflowGraph = ::Struct.new(
      :nodes,
      :edges,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A workflow run is an execution of a workflow providing all the runtime information.</p>
    #
    # @!attribute name
    #   <p>Name of the workflow that was run.</p>
    #
    #   @return [String]
    #
    # @!attribute workflow_run_id
    #   <p>The ID of this workflow run.</p>
    #
    #   @return [String]
    #
    # @!attribute previous_run_id
    #   <p>The ID of the previous workflow run.</p>
    #
    #   @return [String]
    #
    # @!attribute workflow_run_properties
    #   <p>The workflow run properties which were set during the run.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute started_on
    #   <p>The date and time when the workflow run was started.</p>
    #
    #   @return [Time]
    #
    # @!attribute completed_on
    #   <p>The date and time when the workflow run completed.</p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>The status of the workflow run.</p>
    #
    #   Enum, one of: ["RUNNING", "COMPLETED", "STOPPING", "STOPPED", "ERROR"]
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>This error message describes any error that may have occurred in starting the workflow run. Currently the only error message is "Concurrent runs exceeded for workflow: <code>foo</code>."</p>
    #
    #   @return [String]
    #
    # @!attribute statistics
    #   <p>The statistics of the run.</p>
    #
    #   @return [WorkflowRunStatistics]
    #
    # @!attribute graph
    #   <p>The graph representing all the Glue components that belong to the workflow as nodes and directed
    #         connections between them as edges.</p>
    #
    #   @return [WorkflowGraph]
    #
    # @!attribute starting_event_batch_condition
    #   <p>The batch condition that started the workflow run.</p>
    #
    #   @return [StartingEventBatchCondition]
    #
    WorkflowRun = ::Struct.new(
      :name,
      :workflow_run_id,
      :previous_run_id,
      :workflow_run_properties,
      :started_on,
      :completed_on,
      :status,
      :error_message,
      :statistics,
      :graph,
      :starting_event_batch_condition,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Workflow run statistics provides statistics about the workflow run.</p>
    #
    # @!attribute total_actions
    #   <p>Total number of Actions in the workflow run.</p>
    #
    #   @return [Integer]
    #
    # @!attribute timeout_actions
    #   <p>Total number of Actions that timed out.</p>
    #
    #   @return [Integer]
    #
    # @!attribute failed_actions
    #   <p>Total number of Actions that have failed.</p>
    #
    #   @return [Integer]
    #
    # @!attribute stopped_actions
    #   <p>Total number of Actions that have stopped.</p>
    #
    #   @return [Integer]
    #
    # @!attribute succeeded_actions
    #   <p>Total number of Actions that have succeeded.</p>
    #
    #   @return [Integer]
    #
    # @!attribute running_actions
    #   <p>Total number Actions in running state.</p>
    #
    #   @return [Integer]
    #
    WorkflowRunStatistics = ::Struct.new(
      :total_actions,
      :timeout_actions,
      :failed_actions,
      :stopped_actions,
      :succeeded_actions,
      :running_actions,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.total_actions ||= 0
        self.timeout_actions ||= 0
        self.failed_actions ||= 0
        self.stopped_actions ||= 0
        self.succeeded_actions ||= 0
        self.running_actions ||= 0
      end

    end

    # Includes enum constants for WorkflowRunStatus
    #
    module WorkflowRunStatus
      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      COMPLETED = "COMPLETED"

      # No documentation available.
      #
      STOPPING = "STOPPING"

      # No documentation available.
      #
      STOPPED = "STOPPED"

      # No documentation available.
      #
      ERROR = "ERROR"
    end

    # <p>A classifier for <code>XML</code> content.</p>
    #
    # @!attribute name
    #   <p>The name of the classifier.</p>
    #
    #   @return [String]
    #
    # @!attribute classification
    #   <p>An identifier of the data format that the classifier matches.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The time that this classifier was registered.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated
    #   <p>The time that this classifier was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute version
    #   <p>The version of this classifier.</p>
    #
    #   @return [Integer]
    #
    # @!attribute row_tag
    #   <p>The XML tag designating the element that contains each record in an XML document being
    #         parsed. This can't identify a self-closing element (closed by <code>/></code>). An empty
    #         row element that contains only attributes can be parsed as long as it ends with a closing tag
    #         (for example, <code><row item_a="A" item_b="B"></row></code> is okay, but
    #           <code><row item_a="A" item_b="B" /></code> is not).</p>
    #
    #   @return [String]
    #
    XMLClassifier = ::Struct.new(
      :name,
      :classification,
      :creation_time,
      :last_updated,
      :version,
      :row_tag,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.version ||= 0
      end

    end

  end
end
