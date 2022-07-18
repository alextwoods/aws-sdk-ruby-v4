# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Athena
  module Types

    # <p>Indicates that an Amazon S3 canned ACL should be set to control ownership of
    #             stored query results. When Athena stores query results in Amazon S3,
    #             the canned ACL is set with the <code>x-amz-acl</code> request header. For more
    #             information about S3 Object Ownership, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html#object-ownership-overview">Object Ownership settings</a> in the <i>Amazon S3 User
    #                 Guide</i>.</p>
    #
    # @!attribute s3_acl_option
    #   <p>The Amazon S3 canned ACL that Athena should specify when storing
    #               query results. Currently the only supported canned ACL is
    #                   <code>BUCKET_OWNER_FULL_CONTROL</code>. If a query runs in a workgroup and the
    #               workgroup overrides client-side settings, then the Amazon S3 canned ACL
    #               specified in the workgroup's settings is used for all queries that run in the workgroup.
    #               For more information about Amazon S3 canned ACLs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html canned-acl">Canned ACL</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   Enum, one of: ["BUCKET_OWNER_FULL_CONTROL"]
    #
    #   @return [String]
    #
    AclConfiguration = ::Struct.new(
      :s3_acl_option,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about an Athena query error. The
    #                 <code>AthenaError</code> feature provides standardized error information to help you
    #             understand failed queries and take steps after a query failure occurs.
    #                 <code>AthenaError</code> includes an <code>ErrorCategory</code> field that specifies
    #             whether the cause of the failed query is due to system error, user error, or other
    #             error.</p>
    #
    # @!attribute error_category
    #   <p>An integer value that specifies the category of a query failure error. The following
    #               list shows the category for each integer value.</p>
    #           <p>
    #               <b>1</b> - System</p>
    #           <p>
    #               <b>2</b> - User</p>
    #           <p>
    #               <b>3</b> - Other</p>
    #
    #   @return [Integer]
    #
    # @!attribute error_type
    #   <p>An integer value that provides specific information about an Athena query
    #               error. For the meaning of specific values, see the <a href="https://docs.aws.amazon.com/athena/latest/ug/error-reference.html error-reference-error-type-reference">Error Type Reference</a> in the <i>Amazon Athena User
    #                   Guide</i>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute retryable
    #   <p>True if the query might succeed if resubmitted.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute error_message
    #   <p>Contains a short description of the error that occurred.</p>
    #
    #   @return [String]
    #
    AthenaError = ::Struct.new(
      :error_category,
      :error_type,
      :retryable,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.retryable ||= false
      end
    end

    # @!attribute named_query_ids
    #   <p>An array of query IDs.</p>
    #
    #   @return [Array<String>]
    #
    BatchGetNamedQueryInput = ::Struct.new(
      :named_query_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute named_queries
    #   <p>Information about the named query IDs submitted.</p>
    #
    #   @return [Array<NamedQuery>]
    #
    # @!attribute unprocessed_named_query_ids
    #   <p>Information about provided query IDs.</p>
    #
    #   @return [Array<UnprocessedNamedQueryId>]
    #
    BatchGetNamedQueryOutput = ::Struct.new(
      :named_queries,
      :unprocessed_named_query_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute query_execution_ids
    #   <p>An array of query execution IDs.</p>
    #
    #   @return [Array<String>]
    #
    BatchGetQueryExecutionInput = ::Struct.new(
      :query_execution_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute query_executions
    #   <p>Information about a query execution.</p>
    #
    #   @return [Array<QueryExecution>]
    #
    # @!attribute unprocessed_query_execution_ids
    #   <p>Information about the query executions that failed to run.</p>
    #
    #   @return [Array<UnprocessedQueryExecutionId>]
    #
    BatchGetQueryExecutionOutput = ::Struct.new(
      :query_executions,
      :unprocessed_query_execution_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains metadata for a column in a table.</p>
    #
    # @!attribute name
    #   <p>The name of the column.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The data type of the column.</p>
    #
    #   @return [String]
    #
    # @!attribute comment
    #   <p>Optional information about the column.</p>
    #
    #   @return [String]
    #
    Column = ::Struct.new(
      :name,
      :type,
      :comment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the columns in a query execution result.</p>
    #
    # @!attribute catalog_name
    #   <p>The catalog to which the query results belong.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_name
    #   <p>The schema name (database name) to which the query results belong.</p>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>The table name for the query results.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the column.</p>
    #
    #   @return [String]
    #
    # @!attribute label
    #   <p>A column label.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The data type of the column.</p>
    #
    #   @return [String]
    #
    # @!attribute precision
    #   <p>For <code>DECIMAL</code> data types, specifies the total number of digits, up to 38.
    #               For performance reasons, we recommend up to 18 digits.</p>
    #
    #   @return [Integer]
    #
    # @!attribute scale
    #   <p>For <code>DECIMAL</code> data types, specifies the total number of digits in the
    #               fractional part of the value. Defaults to 0.</p>
    #
    #   @return [Integer]
    #
    # @!attribute nullable
    #   <p>Indicates the column's nullable status.</p>
    #
    #   Enum, one of: ["NOT_NULL", "NULLABLE", "UNKNOWN"]
    #
    #   @return [String]
    #
    # @!attribute case_sensitive
    #   <p>Indicates whether values in the column are case-sensitive.</p>
    #
    #   @return [Boolean]
    #
    ColumnInfo = ::Struct.new(
      :catalog_name,
      :schema_name,
      :table_name,
      :name,
      :label,
      :type,
      :precision,
      :scale,
      :nullable,
      :case_sensitive,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.precision ||= 0
        self.scale ||= 0
        self.case_sensitive ||= false
      end
    end

    # Includes enum constants for ColumnNullable
    #
    module ColumnNullable
      # No documentation available.
      #
      NOT_NULL = "NOT_NULL"

      # No documentation available.
      #
      NULLABLE = "NULLABLE"

      # No documentation available.
      #
      UNKNOWN = "UNKNOWN"
    end

    # @!attribute name
    #   <p>The name of the data catalog to create. The catalog name must be unique for the
    #                   Amazon Web Services account and can use a maximum of 127 alphanumeric, underscore, at
    #               sign, or hyphen characters. The remainder of the length constraint of 256 is reserved
    #               for use by Athena.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of data catalog to create: <code>LAMBDA</code> for a federated catalog,
    #                   <code>HIVE</code> for an external hive metastore, or <code>GLUE</code> for an
    #                   Glue Data Catalog.</p>
    #
    #   Enum, one of: ["LAMBDA", "GLUE", "HIVE"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the data catalog to be created.</p>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>Specifies the Lambda function or functions to use for creating the data
    #               catalog. This is a mapping whose values depend on the catalog type. </p>
    #           <ul>
    #               <li>
    #                   <p>For the <code>HIVE</code> data catalog type, use the following syntax. The
    #                           <code>metadata-function</code> parameter is required. <code>The
    #                           sdk-version</code> parameter is optional and defaults to the currently
    #                       supported version.</p>
    #                   <p>
    #                     <code>metadata-function=<i>lambda_arn</i>,
    #                               sdk-version=<i>version_number</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>For the <code>LAMBDA</code> data catalog type, use one of the following sets
    #                       of required parameters, but not both.</p>
    #                   <ul>
    #                     <li>
    #                           <p>If you have one Lambda function that processes metadata
    #                               and another for reading the actual data, use the following syntax. Both
    #                               parameters are required.</p>
    #                           <p>
    #                           <code>metadata-function=<i>lambda_arn</i>,
    #                                       record-function=<i>lambda_arn</i>
    #                           </code>
    #                        </p>
    #                       </li>
    #                     <li>
    #                           <p> If you have a composite Lambda function that processes
    #                               both metadata and data, use the following syntax to specify your Lambda function.</p>
    #                           <p>
    #                           <code>function=<i>lambda_arn</i>
    #                           </code>
    #                        </p>
    #                       </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                   <p>The <code>GLUE</code> type takes a catalog ID parameter and is required. The
    #                               <code>
    #                        <i>catalog_id</i>
    #                     </code> is the account ID of the
    #                           Amazon Web Services account to which the Glue Data Catalog
    #                       belongs.</p>
    #                   <p>
    #                     <code>catalog-id=<i>catalog_id</i>
    #                     </code>
    #                  </p>
    #                   <ul>
    #                     <li>
    #                           <p>The <code>GLUE</code> data catalog type also applies to the default
    #                                   <code>AwsDataCatalog</code> that already exists in your account, of
    #                               which you can have only one and cannot modify.</p>
    #                       </li>
    #                     <li>
    #                           <p>Queries that specify a Glue Data Catalog other than the default
    #                                   <code>AwsDataCatalog</code> must be run on Athena engine
    #                               version 2.</p>
    #                       </li>
    #                     <li>
    #                           <p>In Regions where Athena engine version 2 is not available,
    #                               creating new Glue data catalogs results in an
    #                                   <code>INVALID_INPUT</code> error.</p>
    #                       </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute tags
    #   <p>A list of comma separated tags to add to the data catalog that is created.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateDataCatalogInput = ::Struct.new(
      :name,
      :type,
      :description,
      :parameters,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CreateDataCatalogOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The query name.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The query description.</p>
    #
    #   @return [String]
    #
    # @!attribute database
    #   <p>The database to which the query belongs.</p>
    #
    #   @return [String]
    #
    # @!attribute query_string
    #   <p>The contents of the query with all query statements.</p>
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>A unique case-sensitive string used to ensure the request to create the query is
    #               idempotent (executes only once). If another <code>CreateNamedQuery</code> request is
    #               received, the same response is returned and another query is not created. If a parameter
    #               has changed, for example, the <code>QueryString</code>, an error is returned.</p>
    #           <important>
    #               <p>This token is listed as not required because Amazon Web Services SDKs (for example
    #                   the Amazon Web Services SDK for Java) auto-generate the token for users. If you are
    #                   not using the Amazon Web Services SDK or the Amazon Web Services CLI, you must provide
    #                   this token or the action will fail.</p>
    #           </important>
    #
    #   @return [String]
    #
    # @!attribute work_group
    #   <p>The name of the workgroup in which the named query is being created.</p>
    #
    #   @return [String]
    #
    CreateNamedQueryInput = ::Struct.new(
      :name,
      :description,
      :database,
      :query_string,
      :client_request_token,
      :work_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute named_query_id
    #   <p>The unique ID of the query.</p>
    #
    #   @return [String]
    #
    CreateNamedQueryOutput = ::Struct.new(
      :named_query_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute statement_name
    #   <p>The name of the prepared statement.</p>
    #
    #   @return [String]
    #
    # @!attribute work_group
    #   <p>The name of the workgroup to which the prepared statement belongs.</p>
    #
    #   @return [String]
    #
    # @!attribute query_statement
    #   <p>The query string for the prepared statement.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the prepared statement.</p>
    #
    #   @return [String]
    #
    CreatePreparedStatementInput = ::Struct.new(
      :statement_name,
      :work_group,
      :query_statement,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CreatePreparedStatementOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The workgroup name.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration
    #   <p>The configuration for the workgroup, which includes the location in Amazon S3
    #               where query results are stored, the encryption configuration, if any, used for
    #               encrypting query results, whether the Amazon CloudWatch Metrics are enabled for the
    #               workgroup, the limit for the amount of bytes scanned (cutoff) per query, if it is
    #               specified, and whether workgroup's settings (specified with
    #                   <code>EnforceWorkGroupConfiguration</code>) in the
    #                   <code>WorkGroupConfiguration</code> override client-side settings. See <a>WorkGroupConfiguration$EnforceWorkGroupConfiguration</a>.</p>
    #
    #   @return [WorkGroupConfiguration]
    #
    # @!attribute description
    #   <p>The workgroup description.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of comma separated tags to add to the workgroup that is created.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateWorkGroupInput = ::Struct.new(
      :name,
      :configuration,
      :description,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CreateWorkGroupOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about a data catalog in an Amazon Web Services account.</p>
    #
    # @!attribute name
    #   <p>The name of the data catalog. The catalog name must be unique for the Amazon Web Services account and can use a maximum of 127 alphanumeric, underscore, at sign,
    #               or hyphen characters. The remainder of the length constraint of 256 is reserved for use
    #               by Athena.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>An optional description of the data catalog.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of data catalog to create: <code>LAMBDA</code> for a federated catalog,
    #                   <code>HIVE</code> for an external hive metastore, or <code>GLUE</code> for an
    #                   Glue Data Catalog.</p>
    #
    #   Enum, one of: ["LAMBDA", "GLUE", "HIVE"]
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>Specifies the Lambda function or functions to use for the data catalog.
    #               This is a mapping whose values depend on the catalog type. </p>
    #           <ul>
    #               <li>
    #                   <p>For the <code>HIVE</code> data catalog type, use the following syntax. The
    #                           <code>metadata-function</code> parameter is required. <code>The
    #                           sdk-version</code> parameter is optional and defaults to the currently
    #                       supported version.</p>
    #                   <p>
    #                     <code>metadata-function=<i>lambda_arn</i>,
    #                               sdk-version=<i>version_number</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>For the <code>LAMBDA</code> data catalog type, use one of the following sets
    #                       of required parameters, but not both.</p>
    #                   <ul>
    #                     <li>
    #                           <p>If you have one Lambda function that processes metadata
    #                               and another for reading the actual data, use the following syntax. Both
    #                               parameters are required.</p>
    #                           <p>
    #                           <code>metadata-function=<i>lambda_arn</i>,
    #                                       record-function=<i>lambda_arn</i>
    #                           </code>
    #                        </p>
    #                       </li>
    #                     <li>
    #                           <p> If you have a composite Lambda function that processes
    #                               both metadata and data, use the following syntax to specify your Lambda function.</p>
    #                           <p>
    #                           <code>function=<i>lambda_arn</i>
    #                           </code>
    #                        </p>
    #                       </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                   <p>The <code>GLUE</code> type takes a catalog ID parameter and is required. The
    #                               <code>
    #                        <i>catalog_id</i>
    #                     </code> is the account ID of the
    #                           Amazon Web Services account to which the Glue catalog
    #                       belongs.</p>
    #                   <p>
    #                     <code>catalog-id=<i>catalog_id</i>
    #                     </code>
    #                  </p>
    #                   <ul>
    #                     <li>
    #                           <p>The <code>GLUE</code> data catalog type also applies to the default
    #                                   <code>AwsDataCatalog</code> that already exists in your account, of
    #                               which you can have only one and cannot modify.</p>
    #                       </li>
    #                     <li>
    #                           <p>Queries that specify a Glue Data Catalog other than the default
    #                                   <code>AwsDataCatalog</code> must be run on Athena engine
    #                               version 2.</p>
    #                       </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #
    #   @return [Hash<String, String>]
    #
    DataCatalog = ::Struct.new(
      :name,
      :description,
      :type,
      :parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The summary information for the data catalog, which includes its name and type.</p>
    #
    # @!attribute catalog_name
    #   <p>The name of the data catalog. The catalog name is unique for the Amazon Web Services account and can use a maximum of 127 alphanumeric, underscore, at sign,
    #               or hyphen characters. The remainder of the length constraint of 256 is reserved for use
    #               by Athena.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The data catalog type.</p>
    #
    #   Enum, one of: ["LAMBDA", "GLUE", "HIVE"]
    #
    #   @return [String]
    #
    DataCatalogSummary = ::Struct.new(
      :catalog_name,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DataCatalogType
    #
    module DataCatalogType
      # No documentation available.
      #
      LAMBDA = "LAMBDA"

      # No documentation available.
      #
      GLUE = "GLUE"

      # No documentation available.
      #
      HIVE = "HIVE"
    end

    # <p>Contains metadata information for a database in a data catalog.</p>
    #
    # @!attribute name
    #   <p>The name of the database.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>An optional description of the database.</p>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>A set of custom key/value pairs.</p>
    #
    #   @return [Hash<String, String>]
    #
    Database = ::Struct.new(
      :name,
      :description,
      :parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A piece of data (a field in the table).</p>
    #
    # @!attribute var_char_value
    #   <p>The value of the datum.</p>
    #
    #   @return [String]
    #
    Datum = ::Struct.new(
      :var_char_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the data catalog to delete.</p>
    #
    #   @return [String]
    #
    DeleteDataCatalogInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteDataCatalogOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute named_query_id
    #   <p>The unique ID of the query to delete.</p>
    #
    #   @return [String]
    #
    DeleteNamedQueryInput = ::Struct.new(
      :named_query_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteNamedQueryOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute statement_name
    #   <p>The name of the prepared statement to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute work_group
    #   <p>The workgroup to which the statement to be deleted belongs.</p>
    #
    #   @return [String]
    #
    DeletePreparedStatementInput = ::Struct.new(
      :statement_name,
      :work_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeletePreparedStatementOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute work_group
    #   <p>The unique name of the workgroup to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute recursive_delete_option
    #   <p>The option to delete the workgroup and its contents even if the workgroup contains any
    #               named queries or query executions.</p>
    #
    #   @return [Boolean]
    #
    DeleteWorkGroupInput = ::Struct.new(
      :work_group,
      :recursive_delete_option,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteWorkGroupOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>If query results are encrypted in Amazon S3, indicates the encryption option
    #             used (for example, <code>SSE_KMS</code> or <code>CSE_KMS</code>) and key
    #             information.</p>
    #
    # @!attribute encryption_option
    #   <p>Indicates whether Amazon S3 server-side encryption with Amazon S3-managed keys (<code>SSE_S3</code>), server-side encryption with KMS-managed keys
    #                   (<code>SSE_KMS</code>), or client-side encryption with KMS-managed keys
    #                   (<code>CSE_KMS</code>) is used.</p>
    #           <p>If a query runs in a workgroup and the workgroup overrides client-side settings, then
    #               the workgroup's setting for encryption is used. It specifies whether query results must
    #               be encrypted, for all queries that run in this workgroup. </p>
    #
    #   Enum, one of: ["SSE_S3", "SSE_KMS", "CSE_KMS"]
    #
    #   @return [String]
    #
    # @!attribute kms_key
    #   <p>For <code>SSE_KMS</code> and <code>CSE_KMS</code>, this is the KMS key ARN or
    #               ID.</p>
    #
    #   @return [String]
    #
    EncryptionConfiguration = ::Struct.new(
      :encryption_option,
      :kms_key,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EncryptionOption
    #
    module EncryptionOption
      # No documentation available.
      #
      SSE_S3 = "SSE_S3"

      # No documentation available.
      #
      SSE_KMS = "SSE_KMS"

      # No documentation available.
      #
      CSE_KMS = "CSE_KMS"
    end

    # <p>The Athena engine version for running queries.</p>
    #
    # @!attribute selected_engine_version
    #   <p>The engine version requested by the user. Possible values are determined by the output
    #               of <code>ListEngineVersions</code>, including Auto. The default is Auto.</p>
    #
    #   @return [String]
    #
    # @!attribute effective_engine_version
    #   <p>Read only. The engine version on which the query runs. If the user requests a valid
    #               engine version other than Auto, the effective engine version is the same as the engine
    #               version that the user requested. If the user requests Auto, the effective engine version
    #               is chosen by Athena. When a request to update the engine version is made by
    #               a <code>CreateWorkGroup</code> or <code>UpdateWorkGroup</code> operation, the
    #                   <code>EffectiveEngineVersion</code> field is ignored.</p>
    #
    #   @return [String]
    #
    EngineVersion = ::Struct.new(
      :selected_engine_version,
      :effective_engine_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the data catalog to return.</p>
    #
    #   @return [String]
    #
    GetDataCatalogInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute data_catalog
    #   <p>The data catalog returned.</p>
    #
    #   @return [DataCatalog]
    #
    GetDataCatalogOutput = ::Struct.new(
      :data_catalog,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_name
    #   <p>The name of the data catalog that contains the database to return.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The name of the database to return.</p>
    #
    #   @return [String]
    #
    GetDatabaseInput = ::Struct.new(
      :catalog_name,
      :database_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute database
    #   <p>The database returned.</p>
    #
    #   @return [Database]
    #
    GetDatabaseOutput = ::Struct.new(
      :database,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute named_query_id
    #   <p>The unique ID of the query. Use <a>ListNamedQueries</a> to get query
    #               IDs.</p>
    #
    #   @return [String]
    #
    GetNamedQueryInput = ::Struct.new(
      :named_query_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute named_query
    #   <p>Information about the query.</p>
    #
    #   @return [NamedQuery]
    #
    GetNamedQueryOutput = ::Struct.new(
      :named_query,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute statement_name
    #   <p>The name of the prepared statement to retrieve.</p>
    #
    #   @return [String]
    #
    # @!attribute work_group
    #   <p>The workgroup to which the statement to be retrieved belongs.</p>
    #
    #   @return [String]
    #
    GetPreparedStatementInput = ::Struct.new(
      :statement_name,
      :work_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute prepared_statement
    #   <p>The name of the prepared statement that was retrieved.</p>
    #
    #   @return [PreparedStatement]
    #
    GetPreparedStatementOutput = ::Struct.new(
      :prepared_statement,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute query_execution_id
    #   <p>The unique ID of the query execution.</p>
    #
    #   @return [String]
    #
    GetQueryExecutionInput = ::Struct.new(
      :query_execution_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute query_execution
    #   <p>Information about the query execution.</p>
    #
    #   @return [QueryExecution]
    #
    GetQueryExecutionOutput = ::Struct.new(
      :query_execution,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute query_execution_id
    #   <p>The unique ID of the query execution.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the <code>NextToken</code> from the response object of the previous page call.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results (rows) to return in this request.</p>
    #
    #   @return [Integer]
    #
    GetQueryResultsInput = ::Struct.new(
      :query_execution_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute update_count
    #   <p>The number of rows inserted with a <code>CREATE TABLE AS SELECT</code> statement.
    #           </p>
    #
    #   @return [Integer]
    #
    # @!attribute result_set
    #   <p>The results of the query execution.</p>
    #
    #   @return [ResultSet]
    #
    # @!attribute next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the <code>NextToken</code> from the response object of the previous page call.</p>
    #
    #   @return [String]
    #
    GetQueryResultsOutput = ::Struct.new(
      :update_count,
      :result_set,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_name
    #   <p>The name of the data catalog that contains the database and table metadata to
    #               return.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The name of the database that contains the table metadata to return.</p>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>The name of the table for which metadata is returned.</p>
    #
    #   @return [String]
    #
    GetTableMetadataInput = ::Struct.new(
      :catalog_name,
      :database_name,
      :table_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute table_metadata
    #   <p>An object that contains table metadata.</p>
    #
    #   @return [TableMetadata]
    #
    GetTableMetadataOutput = ::Struct.new(
      :table_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute work_group
    #   <p>The name of the workgroup.</p>
    #
    #   @return [String]
    #
    GetWorkGroupInput = ::Struct.new(
      :work_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute work_group
    #   <p>Information about the workgroup.</p>
    #
    #   @return [WorkGroup]
    #
    GetWorkGroupOutput = ::Struct.new(
      :work_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates a platform issue, which may be due to a transient condition or
    #             outage.</p>
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

    # <p>Indicates that something is wrong with the input to the request. For example, a
    #             required parameter may be missing or out of range.</p>
    #
    # @!attribute athena_error_code
    #   <p>The error code returned when the query execution failed to process, or when the
    #               processing request for the named query failed.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidRequestException = ::Struct.new(
      :athena_error_code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the NextToken from the response object of the previous page call.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Specifies the maximum number of data catalogs to return.</p>
    #
    #   @return [Integer]
    #
    ListDataCatalogsInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute data_catalogs_summary
    #   <p>A summary list of data catalogs.</p>
    #
    #   @return [Array<DataCatalogSummary>]
    #
    # @!attribute next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the NextToken from the response object of the previous page call.</p>
    #
    #   @return [String]
    #
    ListDataCatalogsOutput = ::Struct.new(
      :data_catalogs_summary,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_name
    #   <p>The name of the data catalog that contains the databases to return.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the <code>NextToken</code> from the response object of the previous page call.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Specifies the maximum number of results to return.</p>
    #
    #   @return [Integer]
    #
    ListDatabasesInput = ::Struct.new(
      :catalog_name,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute database_list
    #   <p>A list of databases from a data catalog.</p>
    #
    #   @return [Array<Database>]
    #
    # @!attribute next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the NextToken from the response object of the previous page call.</p>
    #
    #   @return [String]
    #
    ListDatabasesOutput = ::Struct.new(
      :database_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the <code>NextToken</code> from the response object of the previous page call.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of engine versions to return in this request.</p>
    #
    #   @return [Integer]
    #
    ListEngineVersionsInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute engine_versions
    #   <p>A list of engine versions that are available to choose from.</p>
    #
    #   @return [Array<EngineVersion>]
    #
    # @!attribute next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the <code>NextToken</code> from the response object of the previous page call.</p>
    #
    #   @return [String]
    #
    ListEngineVersionsOutput = ::Struct.new(
      :engine_versions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the <code>NextToken</code> from the response object of the previous page call.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of queries to return in this request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute work_group
    #   <p>The name of the workgroup from which the named queries are being returned. If a
    #               workgroup is not specified, the saved queries for the primary workgroup are
    #               returned.</p>
    #
    #   @return [String]
    #
    ListNamedQueriesInput = ::Struct.new(
      :next_token,
      :max_results,
      :work_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute named_query_ids
    #   <p>The list of unique query IDs.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the <code>NextToken</code> from the response object of the previous page call.</p>
    #
    #   @return [String]
    #
    ListNamedQueriesOutput = ::Struct.new(
      :named_query_ids,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute work_group
    #   <p>The workgroup to list the prepared statements for.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the <code>NextToken</code> from the response object of the previous page call.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in this request.</p>
    #
    #   @return [Integer]
    #
    ListPreparedStatementsInput = ::Struct.new(
      :work_group,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute prepared_statements
    #   <p>The list of prepared statements for the workgroup.</p>
    #
    #   @return [Array<PreparedStatementSummary>]
    #
    # @!attribute next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the <code>NextToken</code> from the response object of the previous page call.</p>
    #
    #   @return [String]
    #
    ListPreparedStatementsOutput = ::Struct.new(
      :prepared_statements,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the <code>NextToken</code> from the response object of the previous page call.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of query executions to return in this request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute work_group
    #   <p>The name of the workgroup from which queries are being returned. If a workgroup is not
    #               specified, a list of available query execution IDs for the queries in the primary
    #               workgroup is returned.</p>
    #
    #   @return [String]
    #
    ListQueryExecutionsInput = ::Struct.new(
      :next_token,
      :max_results,
      :work_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute query_execution_ids
    #   <p>The unique IDs of each query execution as an array of strings.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>A token to be used by the next request if this request is truncated.</p>
    #
    #   @return [String]
    #
    ListQueryExecutionsOutput = ::Struct.new(
      :query_execution_ids,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_name
    #   <p>The name of the data catalog for which table metadata should be returned.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The name of the database for which table metadata should be returned.</p>
    #
    #   @return [String]
    #
    # @!attribute expression
    #   <p>A regex filter that pattern-matches table names. If no expression is supplied,
    #               metadata for all tables are listed.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the NextToken from the response object of the previous page call.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Specifies the maximum number of results to return.</p>
    #
    #   @return [Integer]
    #
    ListTableMetadataInput = ::Struct.new(
      :catalog_name,
      :database_name,
      :expression,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute table_metadata_list
    #   <p>A list of table metadata.</p>
    #
    #   @return [Array<TableMetadata>]
    #
    # @!attribute next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the NextToken from the response object of the previous page call.</p>
    #
    #   @return [String]
    #
    ListTableMetadataOutput = ::Struct.new(
      :table_metadata_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>Lists the tags for the resource with the specified ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results for
    #               this request, where the request lists the tags for the resource with the specified
    #               ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to be returned per request that lists the tags for the
    #               resource.</p>
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
    #   <p>The list of tags associated with the specified resource.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute next_token
    #   <p>A token to be used by the next request if this request is truncated.</p>
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

    # @!attribute next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the <code>NextToken</code> from the response object of the previous page call.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of workgroups to return in this request.</p>
    #
    #   @return [Integer]
    #
    ListWorkGroupsInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute work_groups
    #   <p>A list of <a>WorkGroupSummary</a> objects that include the names,
    #               descriptions, creation times, and states for each workgroup.</p>
    #
    #   @return [Array<WorkGroupSummary>]
    #
    # @!attribute next_token
    #   <p>A token generated by the Athena service that specifies where to continue
    #               pagination if a previous request was truncated. To obtain the next set of pages, pass in
    #               the <code>NextToken</code> from the response object of the previous page call.</p>
    #
    #   @return [String]
    #
    ListWorkGroupsOutput = ::Struct.new(
      :work_groups,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An exception that Athena received when it called a custom metastore.
    #             Occurs if the error is not caused by user input (<code>InvalidRequestException</code>)
    #             or from the Athena platform (<code>InternalServerException</code>). For
    #             example, if a user-created Lambda function is missing permissions, the
    #                 Lambda
    #             <code>4XX</code> exception is returned in a <code>MetadataException</code>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    MetadataException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A query, where <code>QueryString</code> contains the SQL statements that make up the
    #             query.</p>
    #
    # @!attribute name
    #   <p>The query name.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The query description.</p>
    #
    #   @return [String]
    #
    # @!attribute database
    #   <p>The database to which the query belongs.</p>
    #
    #   @return [String]
    #
    # @!attribute query_string
    #   <p>The SQL statements that make up the query.</p>
    #
    #   @return [String]
    #
    # @!attribute named_query_id
    #   <p>The unique identifier of the query.</p>
    #
    #   @return [String]
    #
    # @!attribute work_group
    #   <p>The name of the workgroup that contains the named query.</p>
    #
    #   @return [String]
    #
    NamedQuery = ::Struct.new(
      :name,
      :description,
      :database,
      :query_string,
      :named_query_id,
      :work_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A prepared SQL statement for use with Athena.</p>
    #
    # @!attribute statement_name
    #   <p>The name of the prepared statement.</p>
    #
    #   @return [String]
    #
    # @!attribute query_statement
    #   <p>The query string for the prepared statement.</p>
    #
    #   @return [String]
    #
    # @!attribute work_group_name
    #   <p>The name of the workgroup to which the prepared statement belongs.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the prepared statement.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_time
    #   <p>The last modified time of the prepared statement.</p>
    #
    #   @return [Time]
    #
    PreparedStatement = ::Struct.new(
      :statement_name,
      :query_statement,
      :work_group_name,
      :description,
      :last_modified_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The name and last modified time of the prepared statement.</p>
    #
    # @!attribute statement_name
    #   <p>The name of the prepared statement.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_time
    #   <p>The last modified time of the prepared statement.</p>
    #
    #   @return [Time]
    #
    PreparedStatementSummary = ::Struct.new(
      :statement_name,
      :last_modified_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a single instance of a query execution.</p>
    #
    # @!attribute query_execution_id
    #   <p>The unique identifier for each query execution.</p>
    #
    #   @return [String]
    #
    # @!attribute query
    #   <p>The SQL query statements which the query execution ran.</p>
    #
    #   @return [String]
    #
    # @!attribute statement_type
    #   <p>The type of query statement that was run. <code>DDL</code> indicates DDL query
    #               statements. <code>DML</code> indicates DML (Data Manipulation Language) query
    #               statements, such as <code>CREATE TABLE AS SELECT</code>. <code>UTILITY</code> indicates
    #               query statements other than DDL and DML, such as <code>SHOW CREATE TABLE</code>, or
    #                   <code>DESCRIBE TABLE</code>.</p>
    #
    #   Enum, one of: ["DDL", "DML", "UTILITY"]
    #
    #   @return [String]
    #
    # @!attribute result_configuration
    #   <p>The location in Amazon S3 where query results were stored and the encryption
    #               option, if any, used for query results. These are known as "client-side settings". If
    #               workgroup settings override client-side settings, then the query uses the location for
    #               the query results and the encryption configuration that are specified for the
    #               workgroup.</p>
    #
    #   @return [ResultConfiguration]
    #
    # @!attribute query_execution_context
    #   <p>The database in which the query execution occurred.</p>
    #
    #   @return [QueryExecutionContext]
    #
    # @!attribute status
    #   <p>The completion date, current state, submission time, and state change reason (if
    #               applicable) for the query execution.</p>
    #
    #   @return [QueryExecutionStatus]
    #
    # @!attribute statistics
    #   <p>Query execution statistics, such as the amount of data scanned, the amount of time
    #               that the query took to process, and the type of statement that was run.</p>
    #
    #   @return [QueryExecutionStatistics]
    #
    # @!attribute work_group
    #   <p>The name of the workgroup in which the query ran.</p>
    #
    #   @return [String]
    #
    # @!attribute engine_version
    #   <p>The engine version that executed the query.</p>
    #
    #   @return [EngineVersion]
    #
    QueryExecution = ::Struct.new(
      :query_execution_id,
      :query,
      :statement_type,
      :result_configuration,
      :query_execution_context,
      :status,
      :statistics,
      :work_group,
      :engine_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The database and data catalog context in which the query execution occurs.</p>
    #
    # @!attribute database
    #   <p>The name of the database used in the query execution. The database must exist in the
    #               catalog.</p>
    #
    #   @return [String]
    #
    # @!attribute catalog
    #   <p>The name of the data catalog used in the query execution.</p>
    #
    #   @return [String]
    #
    QueryExecutionContext = ::Struct.new(
      :database,
      :catalog,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for QueryExecutionState
    #
    module QueryExecutionState
      # No documentation available.
      #
      QUEUED = "QUEUED"

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
      CANCELLED = "CANCELLED"
    end

    # <p>The amount of data scanned during the query execution and the amount of time that it
    #             took to execute, and the type of statement that was run.</p>
    #
    # @!attribute engine_execution_time_in_millis
    #   <p>The number of milliseconds that the query took to execute.</p>
    #
    #   @return [Integer]
    #
    # @!attribute data_scanned_in_bytes
    #   <p>The number of bytes in the data that was queried.</p>
    #
    #   @return [Integer]
    #
    # @!attribute data_manifest_location
    #   <p>The location and file name of a data manifest file. The manifest file is saved to the
    #                   Athena query results location in Amazon S3. The manifest file
    #               tracks files that the query wrote to Amazon S3. If the query fails, the manifest
    #               file also tracks files that the query intended to write. The manifest is useful for
    #               identifying orphaned files resulting from a failed query. For more information, see
    #                   <a href="https://docs.aws.amazon.com/athena/latest/ug/querying.html">Working with Query
    #                   Results, Output Files, and Query History</a> in the <i>Amazon Athena User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute total_execution_time_in_millis
    #   <p>The number of milliseconds that Athena took to run the query.</p>
    #
    #   @return [Integer]
    #
    # @!attribute query_queue_time_in_millis
    #   <p>The number of milliseconds that the query was in your query queue waiting for
    #               resources. Note that if transient errors occur, Athena might automatically
    #               add the query back to the queue.</p>
    #
    #   @return [Integer]
    #
    # @!attribute query_planning_time_in_millis
    #   <p>The number of milliseconds that Athena took to plan the query processing
    #               flow. This includes the time spent retrieving table partitions from the data source.
    #               Note that because the query engine performs the query planning, query planning time is a
    #               subset of engine processing time.</p>
    #
    #   @return [Integer]
    #
    # @!attribute service_processing_time_in_millis
    #   <p>The number of milliseconds that Athena took to finalize and publish the
    #               query results after the query engine finished running the query.</p>
    #
    #   @return [Integer]
    #
    QueryExecutionStatistics = ::Struct.new(
      :engine_execution_time_in_millis,
      :data_scanned_in_bytes,
      :data_manifest_location,
      :total_execution_time_in_millis,
      :query_queue_time_in_millis,
      :query_planning_time_in_millis,
      :service_processing_time_in_millis,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The completion date, current state, submission time, and state change reason (if
    #             applicable) for the query execution.</p>
    #
    # @!attribute state
    #   <p>The state of query execution. <code>QUEUED</code> indicates that the query has been
    #               submitted to the service, and Athena will execute the query as soon as
    #               resources are available. <code>RUNNING</code> indicates that the query is in execution
    #               phase. <code>SUCCEEDED</code> indicates that the query completed without errors.
    #                   <code>FAILED</code> indicates that the query experienced an error and did not
    #               complete processing. <code>CANCELLED</code> indicates that a user input interrupted
    #               query execution.</p>
    #           <note>
    #               <p>Athena automatically retries your queries in cases of certain
    #                   transient errors. As a result, you may see the query state transition from
    #                       <code>RUNNING</code> or <code>FAILED</code> to <code>QUEUED</code>. </p>
    #           </note>
    #
    #   Enum, one of: ["QUEUED", "RUNNING", "SUCCEEDED", "FAILED", "CANCELLED"]
    #
    #   @return [String]
    #
    # @!attribute state_change_reason
    #   <p>Further detail about the status of the query.</p>
    #
    #   @return [String]
    #
    # @!attribute submission_date_time
    #   <p>The date and time that the query was submitted.</p>
    #
    #   @return [Time]
    #
    # @!attribute completion_date_time
    #   <p>The date and time that the query completed.</p>
    #
    #   @return [Time]
    #
    # @!attribute athena_error
    #   <p>Provides information about an Athena query error.</p>
    #
    #   @return [AthenaError]
    #
    QueryExecutionStatus = ::Struct.new(
      :state,
      :state_change_reason,
      :submission_date_time,
      :completion_date_time,
      :athena_error,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A resource, such as a workgroup, was not found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_name
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      :resource_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The location in Amazon S3 where query results are stored and the encryption
    #             option, if any, used for query results. These are known as "client-side settings". If
    #             workgroup settings override client-side settings, then the query uses the workgroup
    #             settings.</p>
    #
    # @!attribute output_location
    #   <p>The location in Amazon S3 where your query results are stored, such as
    #                   <code>s3://path/to/query/bucket/</code>. To run the query, you must specify the
    #               query results location using one of the ways: either for individual queries using either
    #               this setting (client-side), or in the workgroup, using <a>WorkGroupConfiguration</a>. If none of them is set, Athena
    #               issues an error that no output location is provided. For more information, see <a href="https://docs.aws.amazon.com/athena/latest/ug/querying.html">Query Results</a>. If
    #               workgroup settings override client-side settings, then the query uses the settings
    #               specified for the workgroup. See <a>WorkGroupConfiguration$EnforceWorkGroupConfiguration</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute encryption_configuration
    #   <p>If query results are encrypted in Amazon S3, indicates the encryption option
    #               used (for example, <code>SSE_KMS</code> or <code>CSE_KMS</code>) and key information.
    #               This is a client-side setting. If workgroup settings override client-side settings, then
    #               the query uses the encryption configuration that is specified for the workgroup, and
    #               also uses the location for storing query results specified in the workgroup. See <a>WorkGroupConfiguration$EnforceWorkGroupConfiguration</a> and <a href="https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html">Workgroup Settings Override Client-Side Settings</a>.</p>
    #
    #   @return [EncryptionConfiguration]
    #
    # @!attribute expected_bucket_owner
    #   <p>The Amazon Web Services account ID that you expect to be the owner of the Amazon S3 bucket specified by <a>ResultConfiguration$OutputLocation</a>.
    #               If set, Athena uses the value for <code>ExpectedBucketOwner</code> when it
    #               makes Amazon S3 calls to your specified output location. If the
    #                   <code>ExpectedBucketOwner</code>
    #               Amazon Web Services account ID does not match the actual owner of the Amazon S3
    #               bucket, the call fails with a permissions error.</p>
    #           <p>This is a client-side setting. If workgroup settings override client-side settings,
    #               then the query uses the <code>ExpectedBucketOwner</code> setting that is specified for
    #               the workgroup, and also uses the location for storing query results specified in the
    #               workgroup. See <a>WorkGroupConfiguration$EnforceWorkGroupConfiguration</a>
    #               and <a href="https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html">Workgroup Settings Override Client-Side Settings</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute acl_configuration
    #   <p>Indicates that an Amazon S3 canned ACL should be set to control ownership of
    #               stored query results. Currently the only supported canned ACL is
    #                   <code>BUCKET_OWNER_FULL_CONTROL</code>. This is a client-side setting. If workgroup
    #               settings override client-side settings, then the query uses the ACL configuration that
    #               is specified for the workgroup, and also uses the location for storing query results
    #               specified in the workgroup. For more information, see <a>WorkGroupConfiguration$EnforceWorkGroupConfiguration</a> and <a href="https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html">Workgroup Settings Override Client-Side Settings</a>.</p>
    #
    #   @return [AclConfiguration]
    #
    ResultConfiguration = ::Struct.new(
      :output_location,
      :encryption_configuration,
      :expected_bucket_owner,
      :acl_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The information about the updates in the query results, such as output location and
    #             encryption configuration for the query results.</p>
    #
    # @!attribute output_location
    #   <p>The location in Amazon S3 where your query results are stored, such as
    #                   <code>s3://path/to/query/bucket/</code>. For more information, see <a href="https://docs.aws.amazon.com/athena/latest/ug/querying.html">Query Results</a> If
    #               workgroup settings override client-side settings, then the query uses the location for
    #               the query results and the encryption configuration that are specified for the workgroup.
    #               The "workgroup settings override" is specified in
    #                   <code>EnforceWorkGroupConfiguration</code> (true/false) in the
    #                   <code>WorkGroupConfiguration</code>. See <a>WorkGroupConfiguration$EnforceWorkGroupConfiguration</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute remove_output_location
    #   <p>If set to "true", indicates that the previously-specified query results location (also
    #               known as a client-side setting) for queries in this workgroup should be ignored and set
    #               to null. If set to "false" or not set, and a value is present in the
    #                   <code>OutputLocation</code> in <code>ResultConfigurationUpdates</code> (the
    #               client-side setting), the <code>OutputLocation</code> in the workgroup's
    #                   <code>ResultConfiguration</code> will be updated with the new value. For more
    #               information, see <a href="https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html">Workgroup Settings Override
    #                   Client-Side Settings</a>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute encryption_configuration
    #   <p>The encryption configuration for the query results.</p>
    #
    #   @return [EncryptionConfiguration]
    #
    # @!attribute remove_encryption_configuration
    #   <p>If set to "true", indicates that the previously-specified encryption configuration
    #               (also known as the client-side setting) for queries in this workgroup should be ignored
    #               and set to null. If set to "false" or not set, and a value is present in the
    #                   <code>EncryptionConfiguration</code> in <code>ResultConfigurationUpdates</code> (the
    #               client-side setting), the <code>EncryptionConfiguration</code> in the workgroup's
    #                   <code>ResultConfiguration</code> will be updated with the new value. For more
    #               information, see <a href="https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html">Workgroup Settings Override
    #                   Client-Side Settings</a>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute expected_bucket_owner
    #   <p>The Amazon Web Services account ID that you expect to be the owner of the Amazon S3 bucket specified by <a>ResultConfiguration$OutputLocation</a>.
    #               If set, Athena uses the value for <code>ExpectedBucketOwner</code> when it
    #               makes Amazon S3 calls to your specified output location. If the
    #                   <code>ExpectedBucketOwner</code>
    #               Amazon Web Services account ID does not match the actual owner of the Amazon S3
    #               bucket, the call fails with a permissions error.</p>
    #
    #           <p>If workgroup settings override client-side settings, then the query uses the
    #                   <code>ExpectedBucketOwner</code> setting that is specified for the workgroup, and
    #               also uses the location for storing query results specified in the workgroup. See <a>WorkGroupConfiguration$EnforceWorkGroupConfiguration</a> and <a href="https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html">Workgroup Settings Override Client-Side Settings</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute remove_expected_bucket_owner
    #   <p>If set to "true", removes the Amazon Web Services account ID previously specified for
    #                   <a>ResultConfiguration$ExpectedBucketOwner</a>. If set to "false" or not
    #               set, and a value is present in the <code>ExpectedBucketOwner</code> in
    #                   <code>ResultConfigurationUpdates</code> (the client-side setting), the
    #                   <code>ExpectedBucketOwner</code> in the workgroup's <code>ResultConfiguration</code>
    #               is updated with the new value. For more information, see <a href="https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html">Workgroup Settings Override
    #                   Client-Side Settings</a>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute acl_configuration
    #   <p>The ACL configuration for the query results.</p>
    #
    #   @return [AclConfiguration]
    #
    # @!attribute remove_acl_configuration
    #   <p>If set to <code>true</code>, indicates that the previously-specified ACL configuration
    #               for queries in this workgroup should be ignored and set to null. If set to
    #                   <code>false</code> or not set, and a value is present in the
    #                   <code>AclConfiguration</code> of <code>ResultConfigurationUpdates</code>, the
    #                   <code>AclConfiguration</code> in the workgroup's <code>ResultConfiguration</code> is
    #               updated with the new value. For more information, see <a href="https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html">Workgroup Settings Override
    #                   Client-Side Settings</a>.</p>
    #
    #   @return [Boolean]
    #
    ResultConfigurationUpdates = ::Struct.new(
      :output_location,
      :remove_output_location,
      :encryption_configuration,
      :remove_encryption_configuration,
      :expected_bucket_owner,
      :remove_expected_bucket_owner,
      :acl_configuration,
      :remove_acl_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The metadata and rows that make up a query result set. The metadata describes the
    #             column structure and data types. To return a <code>ResultSet</code> object, use <a>GetQueryResults</a>.</p>
    #
    # @!attribute rows
    #   <p>The rows in the table.</p>
    #
    #   @return [Array<Row>]
    #
    # @!attribute result_set_metadata
    #   <p>The metadata that describes the column structure and data types of a table of query
    #               results.</p>
    #
    #   @return [ResultSetMetadata]
    #
    ResultSet = ::Struct.new(
      :rows,
      :result_set_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The metadata that describes the column structure and data types of a table of query
    #             results. To return a <code>ResultSetMetadata</code> object, use <a>GetQueryResults</a>.</p>
    #
    # @!attribute column_info
    #   <p>Information about the columns returned in a query result metadata.</p>
    #
    #   @return [Array<ColumnInfo>]
    #
    ResultSetMetadata = ::Struct.new(
      :column_info,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The rows that make up a query result table.</p>
    #
    # @!attribute data
    #   <p>The data that populates a row in a query result table.</p>
    #
    #   @return [Array<Datum>]
    #
    Row = ::Struct.new(
      :data,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for S3AclOption
    #
    module S3AclOption
      # No documentation available.
      #
      BUCKET_OWNER_FULL_CONTROL = "BUCKET_OWNER_FULL_CONTROL"
    end

    # @!attribute query_string
    #   <p>The SQL query statements to be executed.</p>
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>A unique case-sensitive string used to ensure the request to create the query is
    #               idempotent (executes only once). If another <code>StartQueryExecution</code> request is
    #               received, the same response is returned and another query is not created. If a parameter
    #               has changed, for example, the <code>QueryString</code>, an error is returned.</p>
    #           <important>
    #               <p>This token is listed as not required because Amazon Web Services SDKs (for example
    #                   the Amazon Web Services SDK for Java) auto-generate the token for users. If you are
    #                   not using the Amazon Web Services SDK or the Amazon Web Services CLI, you must provide
    #                   this token or the action will fail.</p>
    #           </important>
    #
    #   @return [String]
    #
    # @!attribute query_execution_context
    #   <p>The database within which the query executes.</p>
    #
    #   @return [QueryExecutionContext]
    #
    # @!attribute result_configuration
    #   <p>Specifies information about where and how to save the results of the query execution.
    #               If the query runs in a workgroup, then workgroup's settings may override query settings.
    #               This affects the query results location. The workgroup settings override is specified in
    #               EnforceWorkGroupConfiguration (true/false) in the WorkGroupConfiguration. See <a>WorkGroupConfiguration$EnforceWorkGroupConfiguration</a>.</p>
    #
    #   @return [ResultConfiguration]
    #
    # @!attribute work_group
    #   <p>The name of the workgroup in which the query is being started.</p>
    #
    #   @return [String]
    #
    StartQueryExecutionInput = ::Struct.new(
      :query_string,
      :client_request_token,
      :query_execution_context,
      :result_configuration,
      :work_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute query_execution_id
    #   <p>The unique ID of the query that ran as a result of this request.</p>
    #
    #   @return [String]
    #
    StartQueryExecutionOutput = ::Struct.new(
      :query_execution_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for StatementType
    #
    module StatementType
      # No documentation available.
      #
      DDL = "DDL"

      # No documentation available.
      #
      DML = "DML"

      # No documentation available.
      #
      UTILITY = "UTILITY"
    end

    # @!attribute query_execution_id
    #   <p>The unique ID of the query execution to stop.</p>
    #
    #   @return [String]
    #
    StopQueryExecutionInput = ::Struct.new(
      :query_execution_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    StopQueryExecutionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains metadata for a table.</p>
    #
    # @!attribute name
    #   <p>The name of the table.</p>
    #
    #   @return [String]
    #
    # @!attribute create_time
    #   <p>The time that the table was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_access_time
    #   <p>The last time the table was accessed.</p>
    #
    #   @return [Time]
    #
    # @!attribute table_type
    #   <p>The type of table. In Athena, only <code>EXTERNAL_TABLE</code> is
    #               supported.</p>
    #
    #   @return [String]
    #
    # @!attribute columns
    #   <p>A list of the columns in the table.</p>
    #
    #   @return [Array<Column>]
    #
    # @!attribute partition_keys
    #   <p>A list of the partition keys in the table.</p>
    #
    #   @return [Array<Column>]
    #
    # @!attribute parameters
    #   <p>A set of custom key/value pairs for table properties.</p>
    #
    #   @return [Hash<String, String>]
    #
    TableMetadata = ::Struct.new(
      :name,
      :create_time,
      :last_access_time,
      :table_type,
      :columns,
      :partition_keys,
      :parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A label that you assign to a resource. In Athena, a resource can be a
    #             workgroup or data catalog. Each tag consists of a key and an optional value, both of
    #             which you define. For example, you can use tags to categorize Athena
    #             workgroups or data catalogs by purpose, owner, or environment. Use a consistent set of
    #             tag keys to make it easier to search and filter workgroups or data catalogs in your
    #             account. For best practices, see <a href="https://aws.amazon.com/answers/account-management/aws-tagging-strategies/">Tagging Best Practices</a>. Tag keys can be from 1 to 128 UTF-8 Unicode
    #             characters, and tag values can be from 0 to 256 UTF-8 Unicode characters. Tags can use
    #             letters and numbers representable in UTF-8, and the following characters: + - = . _ : /
    #             @. Tag keys and values are case-sensitive. Tag keys must be unique per resource. If you
    #             specify more than one tag, separate them by commas. </p>
    #
    # @!attribute key
    #   <p>A tag key. The tag key length is from 1 to 128 Unicode characters in UTF-8. You can
    #               use letters and numbers representable in UTF-8, and the following characters: + - = . _
    #               : / @. Tag keys are case-sensitive and must be unique per resource. </p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>A tag value. The tag value length is from 0 to 256 Unicode characters in UTF-8. You
    #               can use letters and numbers representable in UTF-8, and the following characters: + - =
    #               . _ : / @. Tag values are case-sensitive. </p>
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
    #   <p>Specifies the ARN of the Athena resource (workgroup or data catalog) to
    #               which tags are to be added.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A collection of one or more tags, separated by commas, to be added to an Athena workgroup or data catalog resource.</p>
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

    # Includes enum constants for ThrottleReason
    #
    module ThrottleReason
      # No documentation available.
      #
      CONCURRENT_QUERY_LIMIT_EXCEEDED = "CONCURRENT_QUERY_LIMIT_EXCEEDED"
    end

    # <p>Indicates that the request was throttled.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>The reason for the query throttling, for example, when it exceeds the concurrent query
    #               limit.</p>
    #
    #   Enum, one of: ["CONCURRENT_QUERY_LIMIT_EXCEEDED"]
    #
    #   @return [String]
    #
    TooManyRequestsException = ::Struct.new(
      :message,
      :reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a named query ID that could not be processed.</p>
    #
    # @!attribute named_query_id
    #   <p>The unique identifier of the named query.</p>
    #
    #   @return [String]
    #
    # @!attribute error_code
    #   <p>The error code returned when the processing request for the named query failed, if
    #               applicable.</p>
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>The error message returned when the processing request for the named query failed, if
    #               applicable.</p>
    #
    #   @return [String]
    #
    UnprocessedNamedQueryId = ::Struct.new(
      :named_query_id,
      :error_code,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a query execution that failed to process.</p>
    #
    # @!attribute query_execution_id
    #   <p>The unique identifier of the query execution.</p>
    #
    #   @return [String]
    #
    # @!attribute error_code
    #   <p>The error code returned when the query execution failed to process, if
    #               applicable.</p>
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>The error message returned when the query execution failed to process, if
    #               applicable.</p>
    #
    #   @return [String]
    #
    UnprocessedQueryExecutionId = ::Struct.new(
      :query_execution_id,
      :error_code,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>Specifies the ARN of the resource from which tags are to be removed.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>A comma-separated list of one or more tag keys whose tags are to be removed from the
    #               specified resource.</p>
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

    # @!attribute name
    #   <p>The name of the data catalog to update. The catalog name must be unique for the
    #                   Amazon Web Services account and can use a maximum of 127 alphanumeric, underscore, at
    #               sign, or hyphen characters. The remainder of the length constraint of 256 is reserved
    #               for use by Athena.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>Specifies the type of data catalog to update. Specify <code>LAMBDA</code> for a
    #               federated catalog, <code>HIVE</code> for an external hive metastore, or
    #                   <code>GLUE</code> for an Glue Data Catalog.</p>
    #
    #   Enum, one of: ["LAMBDA", "GLUE", "HIVE"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>New or modified text that describes the data catalog.</p>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>Specifies the Lambda function or functions to use for updating the data
    #               catalog. This is a mapping whose values depend on the catalog type. </p>
    #           <ul>
    #               <li>
    #                   <p>For the <code>HIVE</code> data catalog type, use the following syntax. The
    #                           <code>metadata-function</code> parameter is required. <code>The
    #                           sdk-version</code> parameter is optional and defaults to the currently
    #                       supported version.</p>
    #                   <p>
    #                     <code>metadata-function=<i>lambda_arn</i>,
    #                               sdk-version=<i>version_number</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>For the <code>LAMBDA</code> data catalog type, use one of the following sets
    #                       of required parameters, but not both.</p>
    #                   <ul>
    #                     <li>
    #                           <p>If you have one Lambda function that processes metadata
    #                               and another for reading the actual data, use the following syntax. Both
    #                               parameters are required.</p>
    #                           <p>
    #                           <code>metadata-function=<i>lambda_arn</i>,
    #                                       record-function=<i>lambda_arn</i>
    #                           </code>
    #                        </p>
    #                       </li>
    #                     <li>
    #                           <p> If you have a composite Lambda function that processes
    #                               both metadata and data, use the following syntax to specify your Lambda function.</p>
    #                           <p>
    #                           <code>function=<i>lambda_arn</i>
    #                           </code>
    #                        </p>
    #                       </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #
    #   @return [Hash<String, String>]
    #
    UpdateDataCatalogInput = ::Struct.new(
      :name,
      :type,
      :description,
      :parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateDataCatalogOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute named_query_id
    #   <p>The unique identifier (UUID) of the query.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the query.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The query description.</p>
    #
    #   @return [String]
    #
    # @!attribute query_string
    #   <p>The contents of the query with all query statements.</p>
    #
    #   @return [String]
    #
    UpdateNamedQueryInput = ::Struct.new(
      :named_query_id,
      :name,
      :description,
      :query_string,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateNamedQueryOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute statement_name
    #   <p>The name of the prepared statement.</p>
    #
    #   @return [String]
    #
    # @!attribute work_group
    #   <p>The workgroup for the prepared statement.</p>
    #
    #   @return [String]
    #
    # @!attribute query_statement
    #   <p>The query string for the prepared statement.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the prepared statement.</p>
    #
    #   @return [String]
    #
    UpdatePreparedStatementInput = ::Struct.new(
      :statement_name,
      :work_group,
      :query_statement,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdatePreparedStatementOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute work_group
    #   <p>The specified workgroup that will be updated.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The workgroup description.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_updates
    #   <p>The workgroup configuration that will be updated for the given workgroup.</p>
    #
    #   @return [WorkGroupConfigurationUpdates]
    #
    # @!attribute state
    #   <p>The workgroup state that will be updated for the given workgroup.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    UpdateWorkGroupInput = ::Struct.new(
      :work_group,
      :description,
      :configuration_updates,
      :state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateWorkGroupOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A workgroup, which contains a name, description, creation time, state, and other
    #             configuration, listed under <a>WorkGroup$Configuration</a>. Each workgroup
    #             enables you to isolate queries for you or your group of users from other queries in the
    #             same account, to configure the query results location and the encryption configuration
    #             (known as workgroup settings), to enable sending query metrics to Amazon CloudWatch,
    #             and to establish per-query data usage control limits for all queries in a workgroup. The
    #             workgroup settings override is specified in <code>EnforceWorkGroupConfiguration</code>
    #             (true/false) in the <code>WorkGroupConfiguration</code>. See <a>WorkGroupConfiguration$EnforceWorkGroupConfiguration</a>.</p>
    #
    # @!attribute name
    #   <p>The workgroup name.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the workgroup: ENABLED or DISABLED.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute configuration
    #   <p>The configuration of the workgroup, which includes the location in Amazon S3
    #               where query results are stored, the encryption configuration, if any, used for query
    #               results; whether the Amazon CloudWatch Metrics are enabled for the workgroup;
    #               whether workgroup settings override client-side settings; and the data usage limits for
    #               the amount of data scanned per query or per workgroup. The workgroup settings override
    #               is specified in <code>EnforceWorkGroupConfiguration</code> (true/false) in the
    #                   <code>WorkGroupConfiguration</code>. See <a>WorkGroupConfiguration$EnforceWorkGroupConfiguration</a>.</p>
    #
    #   @return [WorkGroupConfiguration]
    #
    # @!attribute description
    #   <p>The workgroup description.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The date and time the workgroup was created.</p>
    #
    #   @return [Time]
    #
    WorkGroup = ::Struct.new(
      :name,
      :state,
      :configuration,
      :description,
      :creation_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configuration of the workgroup, which includes the location in Amazon S3
    #             where query results are stored, the encryption option, if any, used for query results,
    #             whether the Amazon CloudWatch Metrics are enabled for the workgroup and whether
    #             workgroup settings override query settings, and the data usage limits for the amount of
    #             data scanned per query or per workgroup. The workgroup settings override is specified in
    #                 <code>EnforceWorkGroupConfiguration</code> (true/false) in the
    #                 <code>WorkGroupConfiguration</code>. See <a>WorkGroupConfiguration$EnforceWorkGroupConfiguration</a>. </p>
    #
    # @!attribute result_configuration
    #   <p>The configuration for the workgroup, which includes the location in Amazon S3
    #               where query results are stored and the encryption option, if any, used for query
    #               results. To run the query, you must specify the query results location using one of the
    #               ways: either in the workgroup using this setting, or for individual queries
    #               (client-side), using <a>ResultConfiguration$OutputLocation</a>. If none of
    #               them is set, Athena issues an error that no output location is provided. For
    #               more information, see <a href="https://docs.aws.amazon.com/athena/latest/ug/querying.html">Query Results</a>.</p>
    #
    #   @return [ResultConfiguration]
    #
    # @!attribute enforce_work_group_configuration
    #   <p>If set to "true", the settings for the workgroup override client-side settings. If set
    #               to "false", client-side settings are used. For more information, see <a href="https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html">Workgroup Settings Override Client-Side Settings</a>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute publish_cloud_watch_metrics_enabled
    #   <p>Indicates that the Amazon CloudWatch metrics are enabled for the workgroup.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute bytes_scanned_cutoff_per_query
    #   <p>The upper data usage limit (cutoff) for the amount of bytes a single query in a
    #               workgroup is allowed to scan.</p>
    #
    #   @return [Integer]
    #
    # @!attribute requester_pays_enabled
    #   <p>If set to <code>true</code>, allows members assigned to a workgroup to reference
    #                   Amazon S3 Requester Pays buckets in queries. If set to <code>false</code>,
    #               workgroup members cannot query data from Requester Pays buckets, and queries that
    #               retrieve data from Requester Pays buckets cause an error. The default is
    #                   <code>false</code>. For more information about Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/RequesterPaysBuckets.html">Requester
    #                   Pays Buckets</a> in the <i>Amazon Simple Storage Service Developer
    #                   Guide</i>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute engine_version
    #   <p>The engine version that all queries running on the workgroup use. Queries on the
    #                   <code>AmazonAthenaPreviewFunctionality</code> workgroup run on the preview engine
    #               regardless of this setting.</p>
    #
    #   @return [EngineVersion]
    #
    WorkGroupConfiguration = ::Struct.new(
      :result_configuration,
      :enforce_work_group_configuration,
      :publish_cloud_watch_metrics_enabled,
      :bytes_scanned_cutoff_per_query,
      :requester_pays_enabled,
      :engine_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configuration information that will be updated for this workgroup, which includes
    #             the location in Amazon S3 where query results are stored, the encryption option,
    #             if any, used for query results, whether the Amazon CloudWatch Metrics are enabled
    #             for the workgroup, whether the workgroup settings override the client-side settings, and
    #             the data usage limit for the amount of bytes scanned per query, if it is
    #             specified.</p>
    #
    # @!attribute enforce_work_group_configuration
    #   <p>If set to "true", the settings for the workgroup override client-side settings. If set
    #               to "false" client-side settings are used. For more information, see <a href="https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html">Workgroup Settings Override Client-Side Settings</a>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute result_configuration_updates
    #   <p>The result configuration information about the queries in this workgroup that will be
    #               updated. Includes the updated results location and an updated option for encrypting
    #               query results.</p>
    #
    #   @return [ResultConfigurationUpdates]
    #
    # @!attribute publish_cloud_watch_metrics_enabled
    #   <p>Indicates whether this workgroup enables publishing metrics to Amazon CloudWatch.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute bytes_scanned_cutoff_per_query
    #   <p>The upper limit (cutoff) for the amount of bytes a single query in a workgroup is
    #               allowed to scan.</p>
    #
    #   @return [Integer]
    #
    # @!attribute remove_bytes_scanned_cutoff_per_query
    #   <p>Indicates that the data usage control limit per query is removed. <a>WorkGroupConfiguration$BytesScannedCutoffPerQuery</a>
    #            </p>
    #
    #   @return [Boolean]
    #
    # @!attribute requester_pays_enabled
    #   <p>If set to <code>true</code>, allows members assigned to a workgroup to specify Amazon S3 Requester Pays buckets in queries. If set to <code>false</code>, workgroup
    #               members cannot query data from Requester Pays buckets, and queries that retrieve data
    #               from Requester Pays buckets cause an error. The default is <code>false</code>. For more
    #               information about Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/RequesterPaysBuckets.html">Requester Pays Buckets</a>
    #               in the <i>Amazon Simple Storage Service Developer Guide</i>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute engine_version
    #   <p>The engine version requested when a workgroup is updated. After the update, all
    #               queries on the workgroup run on the requested engine version. If no value was previously
    #               set, the default is Auto. Queries on the <code>AmazonAthenaPreviewFunctionality</code>
    #               workgroup run on the preview engine regardless of this setting.</p>
    #
    #   @return [EngineVersion]
    #
    WorkGroupConfigurationUpdates = ::Struct.new(
      :enforce_work_group_configuration,
      :result_configuration_updates,
      :publish_cloud_watch_metrics_enabled,
      :bytes_scanned_cutoff_per_query,
      :remove_bytes_scanned_cutoff_per_query,
      :requester_pays_enabled,
      :engine_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for WorkGroupState
    #
    module WorkGroupState
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # <p>The summary information for the workgroup, which includes its name, state,
    #             description, and the date and time it was created.</p>
    #
    # @!attribute name
    #   <p>The name of the workgroup.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the workgroup.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The workgroup description.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The workgroup creation date and time.</p>
    #
    #   @return [Time]
    #
    # @!attribute engine_version
    #   <p>The engine version setting for all queries on the workgroup. Queries on the
    #                   <code>AmazonAthenaPreviewFunctionality</code> workgroup run on the preview engine
    #               regardless of this setting.</p>
    #
    #   @return [EngineVersion]
    #
    WorkGroupSummary = ::Struct.new(
      :name,
      :state,
      :description,
      :creation_time,
      :engine_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
