# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::LakeFormation
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

    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #
    #   @return [String]
    #
    # @!attribute resource
    #   <p>The database, table, or column resource to which to attach an LF-tag.</p>
    #
    #   @return [Resource]
    #
    # @!attribute lf_tags
    #   <p>The LF-tags to attach to the resource.</p>
    #
    #   @return [Array<LFTagPair>]
    #
    AddLFTagsToResourceInput = ::Struct.new(
      :catalog_id,
      :resource,
      :lf_tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute failures
    #   <p>A list of failures to tag the resource.</p>
    #
    #   @return [Array<LFTagError>]
    #
    AddLFTagsToResourceOutput = ::Struct.new(
      :failures,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A new object to add to the governed table.</p>
    #
    # @!attribute uri
    #   <p>The Amazon S3 location of the object.</p>
    #
    #   @return [String]
    #
    # @!attribute e_tag
    #   <p>The Amazon S3 ETag of the object. Returned by <code>GetTableObjects</code> for validation and used to identify changes to the underlying data.</p>
    #
    #   @return [String]
    #
    # @!attribute size
    #   <p>The size of the Amazon S3 object in bytes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute partition_values
    #   <p>A list of partition values for the object. A value must be specified for each partition key associated with the table.</p>
    #   	        <p>The supported data types are integer, long, date(yyyy-MM-dd), timestamp(yyyy-MM-dd HH:mm:ssXXX or yyyy-MM-dd HH:mm:ss"), string and decimal.</p>
    #
    #   @return [Array<String>]
    #
    AddObjectInput = ::Struct.new(
      :uri,
      :e_tag,
      :size,
      :partition_values,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.size ||= 0
      end
    end

    # <p>A structure that you pass to indicate you want all rows in a filter. </p>
    #
    AllRowsWildcard = ::Struct.new(
      nil,
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

    # <p>A structure used to include auditing information on the privileged API. </p>
    #
    # @!attribute additional_audit_context
    #   <p>The filter engine can populate the 'AdditionalAuditContext' information with the request ID for you to track. This information will be displayed in CloudTrail log in your account.</p>
    #
    #   @return [String]
    #
    AuditContext = ::Struct.new(
      :additional_audit_context,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #
    #   @return [String]
    #
    # @!attribute entries
    #   <p>A list of up to 20 entries for resource permissions to be granted by batch operation to the principal.</p>
    #
    #   @return [Array<BatchPermissionsRequestEntry>]
    #
    BatchGrantPermissionsInput = ::Struct.new(
      :catalog_id,
      :entries,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute failures
    #   <p>A list of failures to grant permissions to the resources.</p>
    #
    #   @return [Array<BatchPermissionsFailureEntry>]
    #
    BatchGrantPermissionsOutput = ::Struct.new(
      :failures,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A list of failures when performing a batch grant or batch revoke operation.</p>
    #
    # @!attribute request_entry
    #   <p>An identifier for an entry of the batch request.</p>
    #
    #   @return [BatchPermissionsRequestEntry]
    #
    # @!attribute error
    #   <p>An error message that applies to the failure of the entry.</p>
    #
    #   @return [ErrorDetail]
    #
    BatchPermissionsFailureEntry = ::Struct.new(
      :request_entry,
      :error,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A permission to a resource granted by batch operation to the principal.</p>
    #
    # @!attribute id
    #   <p>A unique identifier for the batch permissions request entry.</p>
    #
    #   @return [String]
    #
    # @!attribute principal
    #   <p>The principal to be granted a permission.</p>
    #
    #   @return [DataLakePrincipal]
    #
    # @!attribute resource
    #   <p>The resource to which the principal is to be granted a permission.</p>
    #
    #   @return [Resource]
    #
    # @!attribute permissions
    #   <p>The permissions to be granted.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute permissions_with_grant_option
    #   <p>Indicates if the option to pass permissions is granted.</p>
    #
    #   @return [Array<String>]
    #
    BatchPermissionsRequestEntry = ::Struct.new(
      :id,
      :principal,
      :resource,
      :permissions,
      :permissions_with_grant_option,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #
    #   @return [String]
    #
    # @!attribute entries
    #   <p>A list of up to 20 entries for resource permissions to be revoked by batch operation to the principal.</p>
    #
    #   @return [Array<BatchPermissionsRequestEntry>]
    #
    BatchRevokePermissionsInput = ::Struct.new(
      :catalog_id,
      :entries,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute failures
    #   <p>A list of failures to revoke permissions to the resources.</p>
    #
    #   @return [Array<BatchPermissionsFailureEntry>]
    #
    BatchRevokePermissionsOutput = ::Struct.new(
      :failures,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute transaction_id
    #   <p>The transaction to cancel.</p>
    #
    #   @return [String]
    #
    CancelTransactionInput = ::Struct.new(
      :transaction_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CancelTransactionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure for the catalog object.</p>
    #
    CatalogResource = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure containing the name of a column resource and the LF-tags attached to it.</p>
    #
    # @!attribute name
    #   <p>The name of a column resource.</p>
    #
    #   @return [String]
    #
    # @!attribute lf_tags
    #   <p>The LF-tags attached to a column resource.</p>
    #
    #   @return [Array<LFTagPair>]
    #
    ColumnLFTag = ::Struct.new(
      :name,
      :lf_tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A wildcard object, consisting of an optional list of excluded column names or indexes.</p>
    #
    # @!attribute excluded_column_names
    #   <p>Excludes column names. Any column with this name will be excluded.</p>
    #
    #   @return [Array<String>]
    #
    ColumnWildcard = ::Struct.new(
      :excluded_column_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute transaction_id
    #   <p>The transaction to commit.</p>
    #
    #   @return [String]
    #
    CommitTransactionInput = ::Struct.new(
      :transaction_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute transaction_status
    #   <p>The status of the transaction.</p>
    #
    #   Enum, one of: ["ACTIVE", "COMMITTED", "ABORTED", "COMMIT_IN_PROGRESS"]
    #
    #   @return [String]
    #
    CommitTransactionOutput = ::Struct.new(
      :transaction_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ComparisonOperator
    #
    module ComparisonOperator
      # No documentation available.
      #
      EQ = "EQ"

      # No documentation available.
      #
      NE = "NE"

      # No documentation available.
      #
      LE = "LE"

      # No documentation available.
      #
      LT = "LT"

      # No documentation available.
      #
      GE = "GE"

      # No documentation available.
      #
      GT = "GT"

      # No documentation available.
      #
      CONTAINS = "CONTAINS"

      # No documentation available.
      #
      NOT_CONTAINS = "NOT_CONTAINS"

      # No documentation available.
      #
      BEGINS_WITH = "BEGINS_WITH"

      # No documentation available.
      #
      IN = "IN"

      # No documentation available.
      #
      BETWEEN = "BETWEEN"
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

    # @!attribute table_data
    #   <p>A <code>DataCellsFilter</code> structure containing information about the data cells filter.</p>
    #
    #   @return [DataCellsFilter]
    #
    CreateDataCellsFilterInput = ::Struct.new(
      :table_data,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CreateDataCellsFilterOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #
    #   @return [String]
    #
    # @!attribute tag_key
    #   <p>The key-name for the LF-tag.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_values
    #   <p>A list of possible values an attribute can take.</p>
    #
    #   @return [Array<String>]
    #
    CreateLFTagInput = ::Struct.new(
      :catalog_id,
      :tag_key,
      :tag_values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CreateLFTagOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure that describes certain columns on certain rows.</p>
    #
    # @!attribute table_catalog_id
    #   <p>The ID of the catalog to which the table belongs.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>A database in the Glue Data Catalog.</p>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>A table in the database.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name given by the user to the data filter cell.</p>
    #
    #   @return [String]
    #
    # @!attribute row_filter
    #   <p>A PartiQL predicate.</p>
    #
    #   @return [RowFilter]
    #
    # @!attribute column_names
    #   <p>A list of column names.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute column_wildcard
    #   <p>A wildcard with exclusions.</p>
    #
    #            <p>You must specify either a <code>ColumnNames</code> list or the
    #         <code>ColumnWildCard</code>. </p>
    #
    #   @return [ColumnWildcard]
    #
    DataCellsFilter = ::Struct.new(
      :table_catalog_id,
      :database_name,
      :table_name,
      :name,
      :row_filter,
      :column_names,
      :column_wildcard,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure for a data cells filter resource. </p>
    #
    # @!attribute table_catalog_id
    #   <p>The ID of the catalog to which the table belongs.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>A database in the Glue Data Catalog.</p>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>The name of the table.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the data cells filter. </p>
    #
    #   @return [String]
    #
    DataCellsFilterResource = ::Struct.new(
      :table_catalog_id,
      :database_name,
      :table_name,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The Lake Formation principal. Supported principals are IAM users
    #       or IAM roles.</p>
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

    # Includes enum constants for DataLakeResourceType
    #
    module DataLakeResourceType
      # No documentation available.
      #
      CATALOG = "CATALOG"

      # No documentation available.
      #
      DATABASE = "DATABASE"

      # No documentation available.
      #
      TABLE = "TABLE"

      # No documentation available.
      #
      DATA_LOCATION = "DATA_LOCATION"

      # No documentation available.
      #
      LF_TAG = "LF_TAG"

      # No documentation available.
      #
      LF_TAG_POLICY = "LF_TAG_POLICY"

      # No documentation available.
      #
      LF_TAG_POLICY_DATABASE = "LF_TAG_POLICY_DATABASE"

      # No documentation available.
      #
      LF_TAG_POLICY_TABLE = "LF_TAG_POLICY_TABLE"
    end

    # <p>A structure representing a list of Lake Formation principals designated as data lake administrators and lists of principal permission entries for default create database and default create table permissions.</p>
    #
    # @!attribute data_lake_admins
    #   <p>A list of Lake Formation principals. Supported principals are IAM users or IAM roles.</p>
    #
    #   @return [Array<DataLakePrincipal>]
    #
    # @!attribute create_database_default_permissions
    #   <p>Specifies whether access control on newly created database is managed by Lake Formation permissions or exclusively by IAM permissions. You can override this default setting when you create a database.</p>
    #   	
    #            <p>A null value indicates access control by Lake Formation permissions. A value that assigns ALL to IAM_ALLOWED_PRINCIPALS indicates access control by IAM permissions. This is referred to as the setting "Use only IAM access control," and is for backward compatibility with the Glue permission model implemented by IAM permissions.</p>
    #   	
    #   	        <p>The only permitted values are an empty array or an array that contains a single JSON object that grants ALL to IAM_ALLOWED_PRINCIPALS.</p>
    #
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/lake-formation/latest/dg/change-settings.html">Changing the Default Security Settings for Your Data Lake</a>.</p>
    #
    #   @return [Array<PrincipalPermissions>]
    #
    # @!attribute create_table_default_permissions
    #   <p>Specifies whether access control on newly created table is managed by Lake Formation permissions or exclusively by IAM permissions.</p>
    #   	
    #            <p>A null value indicates access control by Lake Formation permissions. A value that assigns ALL to IAM_ALLOWED_PRINCIPALS indicates access control by IAM permissions. This is referred to as the setting "Use only IAM access control," and is for backward compatibility with the Glue permission model implemented by IAM permissions.</p>
    #   	
    #   	        <p>The only permitted values are an empty array or an array that contains a single JSON object that grants ALL to IAM_ALLOWED_PRINCIPALS.</p>
    #
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/lake-formation/latest/dg/change-settings.html">Changing the Default Security Settings for Your Data Lake</a>.</p>
    #
    #   @return [Array<PrincipalPermissions>]
    #
    # @!attribute trusted_resource_owners
    #   <p>A list of the resource-owning account IDs that the caller's account can use to share their user access details (user ARNs). The user ARNs can be logged in the resource owner's CloudTrail log.</p>
    #   	
    #   	        <p>You may want to specify this property when you are in a high-trust boundary, such as the same team or company. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute allow_external_data_filtering
    #   <p>Whether to allow Amazon EMR clusters to access data managed by Lake Formation. </p>
    #   	
    #            <p>If true, you allow Amazon EMR clusters to access data in Amazon S3 locations that are registered with Lake Formation.</p>
    #   	
    #            <p>If false or null, no Amazon EMR clusters will be able to access data in Amazon S3 locations that are registered with Lake Formation.</p>
    #
    #            <p>For more information, see <a href="https://docs-aws.amazon.com/lake-formation/latest/dg/getting-started-setup.html emr-switch">(Optional) Allow Data Filtering on Amazon EMR</a>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute external_data_filtering_allow_list
    #   <p>A list of the account IDs of Amazon Web Services accounts with Amazon EMR clusters that are to perform data filtering.></p>
    #
    #   @return [Array<DataLakePrincipal>]
    #
    # @!attribute authorized_session_tag_value_list
    #   <p>Lake Formation relies on a privileged process secured by Amazon EMR or the third party integrator to tag the user's role while assuming it. Lake Formation will publish the acceptable key-value pair, for example key = "LakeFormationTrustedCaller" and value = "TRUE" and the third party integrator must properly tag the temporary security credentials that will be used to call Lake Formation's administrative APIs.</p>
    #
    #   @return [Array<String>]
    #
    DataLakeSettings = ::Struct.new(
      :data_lake_admins,
      :create_database_default_permissions,
      :create_table_default_permissions,
      :trusted_resource_owners,
      :allow_external_data_filtering,
      :external_data_filtering_allow_list,
      :authorized_session_tag_value_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure for a data location object where permissions are granted or revoked. </p>
    #
    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog where the location is registered with Lake Formation. By default, it is the account ID of the caller.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the data location resource.</p>
    #
    #   @return [String]
    #
    DataLocationResource = ::Struct.new(
      :catalog_id,
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure for the database object.</p>
    #
    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, it is the account ID of the caller.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the database resource. Unique to the Data Catalog.</p>
    #
    #   @return [String]
    #
    DatabaseResource = ::Struct.new(
      :catalog_id,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute table_catalog_id
    #   <p>The ID of the catalog to which the table belongs.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>A database in the Glue Data Catalog.</p>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>A table in the database.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name given by the user to the data filter cell.</p>
    #
    #   @return [String]
    #
    DeleteDataCellsFilterInput = ::Struct.new(
      :table_catalog_id,
      :database_name,
      :table_name,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteDataCellsFilterOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #
    #   @return [String]
    #
    # @!attribute tag_key
    #   <p>The key-name for the LF-tag to delete.</p>
    #
    #   @return [String]
    #
    DeleteLFTagInput = ::Struct.new(
      :catalog_id,
      :tag_key,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteLFTagOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object to delete from the governed table.</p>
    #
    # @!attribute uri
    #   <p>The Amazon S3 location of the object to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute e_tag
    #   <p>The Amazon S3 ETag of the object. Returned by <code>GetTableObjects</code> for validation and used to identify changes to the underlying data.</p>
    #
    #   @return [String]
    #
    # @!attribute partition_values
    #   <p>A list of partition values for the object. A value must be specified for each partition key associated with the governed table.</p>
    #
    #   @return [Array<String>]
    #
    DeleteObjectInput = ::Struct.new(
      :uri,
      :e_tag,
      :partition_values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The Glue data catalog that contains the governed table. Defaults to the current account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The database that contains the governed table.</p>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>The name of the governed table.</p>
    #
    #   @return [String]
    #
    # @!attribute transaction_id
    #   <p>ID of the transaction that the writes occur in.</p>
    #
    #   @return [String]
    #
    # @!attribute objects
    #   <p>A list of VirtualObject structures, which indicates the Amazon S3 objects to be deleted if the transaction cancels.</p>
    #
    #   @return [Array<VirtualObject>]
    #
    DeleteObjectsOnCancelInput = ::Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :transaction_id,
      :objects,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteObjectsOnCancelOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to deregister.</p>
    #
    #   @return [String]
    #
    DeregisterResourceInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeregisterResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The resource ARN.</p>
    #
    #   @return [String]
    #
    DescribeResourceInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_info
    #   <p>A structure containing information about an Lake Formation resource.</p>
    #
    #   @return [ResourceInfo]
    #
    DescribeResourceOutput = ::Struct.new(
      :resource_info,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute transaction_id
    #   <p>The transaction for which to return status.</p>
    #
    #   @return [String]
    #
    DescribeTransactionInput = ::Struct.new(
      :transaction_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute transaction_description
    #   <p>Returns a <code>TransactionDescription</code> object containing information about the transaction.</p>
    #
    #   @return [TransactionDescription]
    #
    DescribeTransactionOutput = ::Struct.new(
      :transaction_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure containing the additional details to be returned in the <code>AdditionalDetails</code> attribute of <code>PrincipalResourcePermissions</code>.</p>
    #
    #          <p>If a catalog resource is shared through Resource Access Manager (RAM), then there will exist a corresponding RAM resource share ARN.</p>
    #
    # @!attribute resource_share
    #   <p>A resource share ARN for a catalog resource shared through RAM.</p>
    #
    #   @return [Array<String>]
    #
    DetailsMap = ::Struct.new(
      :resource_share,
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

    # <p>Statistics related to the processing of a query statement.</p>
    #
    # @!attribute average_execution_time_millis
    #   <p>The average time the request took to be executed.</p>
    #
    #   @return [Integer]
    #
    # @!attribute data_scanned_bytes
    #   <p>The amount of data that was scanned in bytes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute work_units_executed_count
    #   <p>The number of work units executed.</p>
    #
    #   @return [Integer]
    #
    ExecutionStatistics = ::Struct.new(
      :average_execution_time_millis,
      :data_scanned_bytes,
      :work_units_executed_count,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.average_execution_time_millis ||= 0
        self.data_scanned_bytes ||= 0
        self.work_units_executed_count ||= 0
      end
    end

    # <p>Contains details about an error where the query request expired.</p>
    #
    # @!attribute message
    #   <p>A message describing the error.</p>
    #
    #   @return [String]
    #
    ExpiredException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute transaction_id
    #   <p>The transaction to extend.</p>
    #
    #   @return [String]
    #
    ExtendTransactionInput = ::Struct.new(
      :transaction_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    ExtendTransactionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FieldNameString
    #
    module FieldNameString
      # No documentation available.
      #
      RESOURCE_ARN = "RESOURCE_ARN"

      # No documentation available.
      #
      ROLE_ARN = "ROLE_ARN"

      # No documentation available.
      #
      LAST_MODIFIED = "LAST_MODIFIED"
    end

    # <p>This structure describes the filtering of columns in a table based on a filter condition.</p>
    #
    # @!attribute field
    #   <p>The field to filter in the filter condition.</p>
    #
    #   Enum, one of: ["RESOURCE_ARN", "ROLE_ARN", "LAST_MODIFIED"]
    #
    #   @return [String]
    #
    # @!attribute comparison_operator
    #   <p>The comparison operator used in the filter condition.</p>
    #
    #   Enum, one of: ["EQ", "NE", "LE", "LT", "GE", "GT", "CONTAINS", "NOT_CONTAINS", "BEGINS_WITH", "IN", "BETWEEN"]
    #
    #   @return [String]
    #
    # @!attribute string_value_list
    #   <p>A string with values used in evaluating the filter condition.</p>
    #
    #   @return [Array<String>]
    #
    FilterCondition = ::Struct.new(
      :field,
      :comparison_operator,
      :string_value_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #
    #   @return [String]
    #
    GetDataLakeSettingsInput = ::Struct.new(
      :catalog_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute data_lake_settings
    #   <p>A structure representing a list of Lake Formation principals designated as data lake administrators.</p>
    #
    #   @return [DataLakeSettings]
    #
    GetDataLakeSettingsOutput = ::Struct.new(
      :data_lake_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #
    #   @return [String]
    #
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which you want to get permissions.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A continuation token, if this is not the first call to retrieve this list.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #
    #   @return [Integer]
    #
    GetEffectivePermissionsForPathInput = ::Struct.new(
      :catalog_id,
      :resource_arn,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute permissions
    #   <p>A list of the permissions for the specified table or database resource located at the path in Amazon S3.</p>
    #
    #   @return [Array<PrincipalResourcePermissions>]
    #
    # @!attribute next_token
    #   <p>A continuation token, if this is not the first call to retrieve this list.</p>
    #
    #   @return [String]
    #
    GetEffectivePermissionsForPathOutput = ::Struct.new(
      :permissions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #
    #   @return [String]
    #
    # @!attribute tag_key
    #   <p>The key-name for the LF-tag.</p>
    #
    #   @return [String]
    #
    GetLFTagInput = ::Struct.new(
      :catalog_id,
      :tag_key,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #
    #   @return [String]
    #
    # @!attribute tag_key
    #   <p>The key-name for the LF-tag.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_values
    #   <p>A list of possible values an attribute can take.</p>
    #
    #   @return [Array<String>]
    #
    GetLFTagOutput = ::Struct.new(
      :catalog_id,
      :tag_key,
      :tag_values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute query_id
    #   <p>The ID of the plan query operation.</p>
    #
    #   @return [String]
    #
    GetQueryStateInput = ::Struct.new(
      :query_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure for the output.</p>
    #
    # @!attribute error
    #   <p>An error message when the operation fails.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of a query previously submitted. The possible states are:</p>
    #   	
    #   	        <ul>
    #               <li>
    #                  <p>PENDING: the query is pending.</p>
    #               </li>
    #               <li>
    #                  <p>WORKUNITS_AVAILABLE: some work units are ready for retrieval and execution.</p>
    #               </li>
    #               <li>
    #                  <p>FINISHED: the query planning finished successfully, and all work units are ready for retrieval and execution.</p>
    #               </li>
    #               <li>
    #                  <p>ERROR: an error occurred with the query, such as an invalid query ID or a backend error.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["PENDING", "WORKUNITS_AVAILABLE", "ERROR", "FINISHED", "EXPIRED"]
    #
    #   @return [String]
    #
    GetQueryStateOutput = ::Struct.new(
      :error,
      :state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute query_id
    #   <p>The ID of the plan query operation.</p>
    #
    #   @return [String]
    #
    GetQueryStatisticsInput = ::Struct.new(
      :query_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute execution_statistics
    #   <p>An <code>ExecutionStatistics</code> structure containing execution statistics.</p>
    #
    #   @return [ExecutionStatistics]
    #
    # @!attribute planning_statistics
    #   <p>A <code>PlanningStatistics</code> structure containing query planning statistics.</p>
    #
    #   @return [PlanningStatistics]
    #
    # @!attribute query_submission_time
    #   <p>The time that the query was submitted.</p>
    #
    #   @return [Time]
    #
    GetQueryStatisticsOutput = ::Struct.new(
      :execution_statistics,
      :planning_statistics,
      :query_submission_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #
    #   @return [String]
    #
    # @!attribute resource
    #   <p>The database, table, or column resource for which you want to return LF-tags.</p>
    #
    #   @return [Resource]
    #
    # @!attribute show_assigned_lf_tags
    #   <p>Indicates whether to show the assigned LF-tags.</p>
    #
    #   @return [Boolean]
    #
    GetResourceLFTagsInput = ::Struct.new(
      :catalog_id,
      :resource,
      :show_assigned_lf_tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute lf_tag_on_database
    #   <p>A list of LF-tags applied to a database resource.</p>
    #
    #   @return [Array<LFTagPair>]
    #
    # @!attribute lf_tags_on_table
    #   <p>A list of LF-tags applied to a table resource.</p>
    #
    #   @return [Array<LFTagPair>]
    #
    # @!attribute lf_tags_on_columns
    #   <p>A list of LF-tags applied to a column resource.</p>
    #
    #   @return [Array<ColumnLFTag>]
    #
    GetResourceLFTagsOutput = ::Struct.new(
      :lf_tag_on_database,
      :lf_tags_on_table,
      :lf_tags_on_columns,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The catalog containing the governed table. Defaults to the caller’s account.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The database containing the governed table.</p>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>The governed table for which to retrieve objects.</p>
    #
    #   @return [String]
    #
    # @!attribute transaction_id
    #   <p>The transaction ID at which to read the governed table contents. If this transaction has aborted, an error is returned. If not set, defaults to the most recent committed transaction. Cannot be specified along with <code>QueryAsOfTime</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute query_as_of_time
    #   <p>The time as of when to read the governed table contents. If not set, the most recent transaction commit time is used. Cannot be specified along with <code>TransactionId</code>.</p>
    #
    #   @return [Time]
    #
    # @!attribute partition_predicate
    #   <p>A predicate to filter the objects returned based on the partition keys defined in the governed table.</p>
    #   	        <ul>
    #               <li>
    #                  <p>The comparison operators supported are: =, >, <, >=, <=</p>
    #               </li>
    #               <li>
    #                  <p>The logical operators supported are: AND</p>
    #               </li>
    #               <li>
    #                  <p>The data types supported are integer, long, date(yyyy-MM-dd), timestamp(yyyy-MM-dd HH:mm:ssXXX or yyyy-MM-dd HH:mm:ss"), string and decimal.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Specifies how many values to return in a page.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A continuation token if this is not the first call to retrieve these objects.</p>
    #
    #   @return [String]
    #
    GetTableObjectsInput = ::Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :transaction_id,
      :query_as_of_time,
      :partition_predicate,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute objects
    #   <p>A list of objects organized by partition keys.</p>
    #
    #   @return [Array<PartitionObjects>]
    #
    # @!attribute next_token
    #   <p>A continuation token indicating whether additional data is available.</p>
    #
    #   @return [String]
    #
    GetTableObjectsOutput = ::Struct.new(
      :objects,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute table_arn
    #   <p>The ARN of the partitions' table.</p>
    #
    #   @return [String]
    #
    # @!attribute partition
    #   <p>A list of partition values identifying a single partition.</p>
    #
    #   @return [PartitionValueList]
    #
    # @!attribute permissions
    #   <p>Filters the request based on the user having been granted a list of specified permissions on the requested resource(s).</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute duration_seconds
    #   <p>The time period, between 900 and 21,600 seconds, for the timeout of the temporary credentials.</p>
    #
    #   @return [Integer]
    #
    # @!attribute audit_context
    #   <p>A structure representing context to access a resource (column names, query ID, etc).</p>
    #
    #   @return [AuditContext]
    #
    # @!attribute supported_permission_types
    #   <p>A list of supported permission types for the partition. Valid values are <code>COLUMN_PERMISSION</code> and <code>CELL_FILTER_PERMISSION</code>.</p>
    #
    #   @return [Array<String>]
    #
    GetTemporaryGluePartitionCredentialsInput = ::Struct.new(
      :table_arn,
      :partition,
      :permissions,
      :duration_seconds,
      :audit_context,
      :supported_permission_types,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute access_key_id
    #   <p>The access key ID for the temporary credentials.</p>
    #
    #   @return [String]
    #
    # @!attribute secret_access_key
    #   <p>The secret key for the temporary credentials.</p>
    #
    #   @return [String]
    #
    # @!attribute session_token
    #   <p>The session token for the temporary credentials.</p>
    #
    #   @return [String]
    #
    # @!attribute expiration
    #   <p>The date and time when the temporary credentials expire.</p>
    #
    #   @return [Time]
    #
    GetTemporaryGluePartitionCredentialsOutput = ::Struct.new(
      :access_key_id,
      :secret_access_key,
      :session_token,
      :expiration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute table_arn
    #   <p>The ARN identifying a table in the Data Catalog for the temporary credentials request.</p>
    #
    #   @return [String]
    #
    # @!attribute permissions
    #   <p>Filters the request based on the user having been granted a list of specified permissions on the requested resource(s).</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute duration_seconds
    #   <p>The time period, between 900 and 21,600 seconds, for the timeout of the temporary credentials.</p>
    #
    #   @return [Integer]
    #
    # @!attribute audit_context
    #   <p>A structure representing context to access a resource (column names, query ID, etc).</p>
    #
    #   @return [AuditContext]
    #
    # @!attribute supported_permission_types
    #   <p>A list of supported permission types for the table. Valid values are <code>COLUMN_PERMISSION</code> and <code>CELL_FILTER_PERMISSION</code>.</p>
    #
    #   @return [Array<String>]
    #
    GetTemporaryGlueTableCredentialsInput = ::Struct.new(
      :table_arn,
      :permissions,
      :duration_seconds,
      :audit_context,
      :supported_permission_types,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute access_key_id
    #   <p>The access key ID for the temporary credentials.</p>
    #
    #   @return [String]
    #
    # @!attribute secret_access_key
    #   <p>The secret key for the temporary credentials.</p>
    #
    #   @return [String]
    #
    # @!attribute session_token
    #   <p>The session token for the temporary credentials.</p>
    #
    #   @return [String]
    #
    # @!attribute expiration
    #   <p>The date and time when the temporary credentials expire.</p>
    #
    #   @return [Time]
    #
    GetTemporaryGlueTableCredentialsOutput = ::Struct.new(
      :access_key_id,
      :secret_access_key,
      :session_token,
      :expiration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute query_id
    #   <p>The ID of the plan query operation for which to get results.</p>
    #
    #   @return [String]
    #
    # @!attribute work_unit_id
    #   <p>The work unit ID for which to get results. Value generated by enumerating <code>WorkUnitIdMin</code> to <code>WorkUnitIdMax</code> (inclusive) from the <code>WorkUnitRange</code> in the output of <code>GetWorkUnits</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute work_unit_token
    #   <p>A work token used to query the execution service. Token output from <code>GetWorkUnits</code>.</p>
    #
    #   @return [String]
    #
    GetWorkUnitResultsInput = ::Struct.new(
      :query_id,
      :work_unit_id,
      :work_unit_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.work_unit_id ||= 0
      end

      def to_s
        "#<struct AWS::SDK::LakeFormation::Types::GetWorkUnitResultsInput "\
          "query_id=#{query_id || 'nil'}, "\
          "work_unit_id=#{work_unit_id || 'nil'}, "\
          "work_unit_token=\"[SENSITIVE]\">"
      end
    end

    # <p>A structure for the output.</p>
    #
    # @!attribute result_stream
    #   <p>Rows returned from the <code>GetWorkUnitResults</code> operation as a stream of Apache Arrow v1.0 messages.</p>
    #
    #   @return [String]
    #
    GetWorkUnitResultsOutput = ::Struct.new(
      :result_stream,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A continuation token, if this is a continuation call.</p>
    #
    #   @return [String]
    #
    # @!attribute page_size
    #   <p>The size of each page to get in the Amazon Web Services service call. This does not affect the number of items returned in the command's output. Setting a smaller page size results in more calls to the Amazon Web Services service, retrieving fewer items in each call. This can help prevent the Amazon Web Services service calls from timing out.</p>
    #
    #   @return [Integer]
    #
    # @!attribute query_id
    #   <p>The ID of the plan query operation.</p>
    #
    #   @return [String]
    #
    GetWorkUnitsInput = ::Struct.new(
      :next_token,
      :page_size,
      :query_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure for the output.</p>
    #
    # @!attribute next_token
    #   <p>A continuation token for paginating the returned list of tokens, returned if the current segment of the list is not the last.</p>
    #
    #   @return [String]
    #
    # @!attribute query_id
    #   <p>The ID of the plan query operation.</p>
    #
    #   @return [String]
    #
    # @!attribute work_unit_ranges
    #   <p>A <code>WorkUnitRangeList</code> object that specifies the valid range of work unit IDs for querying the execution service.</p>
    #
    #   @return [Array<WorkUnitRange>]
    #
    GetWorkUnitsOutput = ::Struct.new(
      :next_token,
      :query_id,
      :work_unit_ranges,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An encryption operation failed.</p>
    #
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #
    #   @return [String]
    #
    GlueEncryptionException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #
    #   @return [String]
    #
    # @!attribute principal
    #   <p>The principal to be granted the permissions on the resource. Supported principals are IAM users or IAM roles, and they are defined by their principal type and their ARN.</p>
    #   	        <p>Note that if you define a resource with a particular ARN, then later delete, and recreate a resource with that same ARN, the resource maintains the permissions already granted. </p>
    #
    #   @return [DataLakePrincipal]
    #
    # @!attribute resource
    #   <p>The resource to which permissions are to be granted. Resources in Lake Formation are the Data Catalog, databases, and tables.</p>
    #
    #   @return [Resource]
    #
    # @!attribute permissions
    #   <p>The permissions granted to the principal on the resource. Lake Formation defines privileges to grant and revoke access to metadata in the Data Catalog and data organized in underlying data storage such as Amazon S3. Lake Formation requires that each principal be authorized to perform a specific task on Lake Formation resources. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute permissions_with_grant_option
    #   <p>Indicates a list of the granted permissions that the principal may pass to other users. These permissions may only be a subset of the permissions granted in the <code>Privileges</code>.</p>
    #
    #   @return [Array<String>]
    #
    GrantPermissionsInput = ::Struct.new(
      :catalog_id,
      :principal,
      :resource,
      :permissions,
      :permissions_with_grant_option,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    GrantPermissionsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
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

    # <p>A structure that allows an admin to grant user permissions on certain conditions. For example, granting a role access to all columns that do not have the LF-tag 'PII' in tables that have the LF-tag 'Prod'.</p>
    #
    # @!attribute tag_key
    #   <p>The key-name for the LF-tag.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_values
    #   <p>A list of possible values an attribute can take.</p>
    #
    #   @return [Array<String>]
    #
    LFTag = ::Struct.new(
      :tag_key,
      :tag_values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure containing an error related to a <code>TagResource</code> or <code>UnTagResource</code> operation.</p>
    #
    # @!attribute lf_tag
    #   <p>The key-name of the LF-tag.</p>
    #
    #   @return [LFTagPair]
    #
    # @!attribute error
    #   <p>An error that occurred with the attachment or detachment of the LF-tag.</p>
    #
    #   @return [ErrorDetail]
    #
    LFTagError = ::Struct.new(
      :lf_tag,
      :error,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure containing an LF-tag key and values for a resource.</p>
    #
    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #
    #   @return [String]
    #
    # @!attribute tag_key
    #   <p>The key-name for the LF-tag.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_values
    #   <p>A list of possible values an attribute can take.</p>
    #
    #   @return [Array<String>]
    #
    LFTagKeyResource = ::Struct.new(
      :catalog_id,
      :tag_key,
      :tag_values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure containing an LF-tag key-value pair.</p>
    #
    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #
    #   @return [String]
    #
    # @!attribute tag_key
    #   <p>The key-name for the LF-tag.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_values
    #   <p>A list of possible values an attribute can take.</p>
    #
    #   @return [Array<String>]
    #
    LFTagPair = ::Struct.new(
      :catalog_id,
      :tag_key,
      :tag_values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure containing a list of LF-tag conditions that apply to a resource's LF-tag policy.</p>
    #
    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The resource type for which the LF-tag policy applies.</p>
    #
    #   Enum, one of: ["DATABASE", "TABLE"]
    #
    #   @return [String]
    #
    # @!attribute expression
    #   <p>A list of LF-tag conditions that apply to the resource's LF-tag policy.</p>
    #
    #   @return [Array<LFTag>]
    #
    LFTagPolicyResource = ::Struct.new(
      :catalog_id,
      :resource_type,
      :expression,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute table
    #   <p>A table in the Glue Data Catalog.</p>
    #
    #   @return [TableResource]
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
    ListDataCellsFilterInput = ::Struct.new(
      :table,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute data_cells_filters
    #   <p>A list of <code>DataCellFilter</code> structures.</p>
    #
    #   @return [Array<DataCellsFilter>]
    #
    # @!attribute next_token
    #   <p>A continuation token, if not all requested data cell filters have been returned.</p>
    #
    #   @return [String]
    #
    ListDataCellsFilterOutput = ::Struct.new(
      :data_cells_filters,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #
    #   @return [String]
    #
    # @!attribute resource_share_type
    #   <p>If resource share type is <code>ALL</code>, returns both in-account LF-tags and shared LF-tags that the requester has permission to view. If resource share type is <code>FOREIGN</code>, returns all share LF-tags that the requester can view. If no resource share type is passed, lists LF-tags in the given catalog ID that the requester has permission to view.</p>
    #
    #   Enum, one of: ["FOREIGN", "ALL"]
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A continuation token, if this is not the first call to retrieve this list.</p>
    #
    #   @return [String]
    #
    ListLFTagsInput = ::Struct.new(
      :catalog_id,
      :resource_share_type,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute lf_tags
    #   <p>A list of LF-tags that the requested has permission to view.</p>
    #
    #   @return [Array<LFTagPair>]
    #
    # @!attribute next_token
    #   <p>A continuation token, present if the current list segment is not the last.</p>
    #
    #   @return [String]
    #
    ListLFTagsOutput = ::Struct.new(
      :lf_tags,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #
    #   @return [String]
    #
    # @!attribute principal
    #   <p>Specifies a principal to filter the permissions returned.</p>
    #
    #   @return [DataLakePrincipal]
    #
    # @!attribute resource_type
    #   <p>Specifies a resource type to filter the permissions returned.</p>
    #
    #   Enum, one of: ["CATALOG", "DATABASE", "TABLE", "DATA_LOCATION", "LF_TAG", "LF_TAG_POLICY", "LF_TAG_POLICY_DATABASE", "LF_TAG_POLICY_TABLE"]
    #
    #   @return [String]
    #
    # @!attribute resource
    #   <p>A resource where you will get a list of the principal permissions.</p>
    #            <p>This operation does not support getting privileges on a table with columns. Instead, call this operation on the table, and the operation returns the table and the table w columns.</p>
    #
    #   @return [Resource]
    #
    # @!attribute next_token
    #   <p>A continuation token, if this is not the first call to retrieve this list.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute include_related
    #   <p>Indicates that related permissions should be included in the results.</p>
    #
    #   @return [String]
    #
    ListPermissionsInput = ::Struct.new(
      :catalog_id,
      :principal,
      :resource_type,
      :resource,
      :next_token,
      :max_results,
      :include_related,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute principal_resource_permissions
    #   <p>A list of principals and their permissions on the resource for the specified principal and resource types.</p>
    #
    #   @return [Array<PrincipalResourcePermissions>]
    #
    # @!attribute next_token
    #   <p>A continuation token, if this is not the first call to retrieve this list.</p>
    #
    #   @return [String]
    #
    ListPermissionsOutput = ::Struct.new(
      :principal_resource_permissions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filter_condition_list
    #   <p>Any applicable row-level and/or column-level filtering conditions for the resources.</p>
    #
    #   @return [Array<FilterCondition>]
    #
    # @!attribute max_results
    #   <p>The maximum number of resource results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A continuation token, if this is not the first call to retrieve these resources.</p>
    #
    #   @return [String]
    #
    ListResourcesInput = ::Struct.new(
      :filter_condition_list,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_info_list
    #   <p>A summary of the data lake resources.</p>
    #
    #   @return [Array<ResourceInfo>]
    #
    # @!attribute next_token
    #   <p>A continuation token, if this is not the first call to retrieve these resources.</p>
    #
    #   @return [String]
    #
    ListResourcesOutput = ::Struct.new(
      :resource_info_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The Catalog ID of the table.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>Name of the database where the table is present.</p>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>Name of the table.</p>
    #
    #   @return [String]
    #
    # @!attribute storage_optimizer_type
    #   <p>The specific type of storage optimizers to list. The supported value is <code>compaction</code>.</p>
    #
    #   Enum, one of: ["COMPACTION", "GARBAGE_COLLECTION", "ALL"]
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The number of storage optimizers to return on each call.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A continuation token, if this is a continuation call.</p>
    #
    #   @return [String]
    #
    ListTableStorageOptimizersInput = ::Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :storage_optimizer_type,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute storage_optimizer_list
    #   <p>A list of the storage optimizers associated with a table.</p>
    #
    #   @return [Array<StorageOptimizer>]
    #
    # @!attribute next_token
    #   <p>A continuation token for paginating the returned list of tokens, returned if the current segment of the list is not the last.</p>
    #
    #   @return [String]
    #
    ListTableStorageOptimizersOutput = ::Struct.new(
      :storage_optimizer_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The catalog for which to list transactions. Defaults to the account ID of the caller.</p>
    #
    #   @return [String]
    #
    # @!attribute status_filter
    #   <p> A filter indicating the status of transactions to return. Options are ALL | COMPLETED | COMMITTED | ABORTED | ACTIVE. The default is <code>ALL</code>.</p>
    #
    #   Enum, one of: ["ALL", "COMPLETED", "ACTIVE", "COMMITTED", "ABORTED"]
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of transactions to return in a single call.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A continuation token if this is not the first call to retrieve transactions.</p>
    #
    #   @return [String]
    #
    ListTransactionsInput = ::Struct.new(
      :catalog_id,
      :status_filter,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute transactions
    #   <p>A list of transactions. The record for each transaction is a <code>TransactionDescription</code> object.</p>
    #
    #   @return [Array<TransactionDescription>]
    #
    # @!attribute next_token
    #   <p>A continuation token indicating whether additional data is available.</p>
    #
    #   @return [String]
    #
    ListTransactionsOutput = ::Struct.new(
      :transactions,
      :next_token,
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

    # Includes enum constants for OptimizerType
    #
    module OptimizerType
      # No documentation available.
      #
      COMPACTION = "COMPACTION"

      # No documentation available.
      #
      GARBAGE_COLLECTION = "GARBAGE_COLLECTION"

      # No documentation available.
      #
      GENERIC = "ALL"
    end

    # <p>A structure containing a list of partition values and table objects.</p>
    #
    # @!attribute partition_values
    #   <p>A list of partition values.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute objects
    #   <p>A list of table objects</p>
    #
    #   @return [Array<TableObject>]
    #
    PartitionObjects = ::Struct.new(
      :partition_values,
      :objects,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains a list of values defining partitions.</p>
    #
    # @!attribute values
    #   <p>The list of partition values.</p>
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
      DESCRIBE = "DESCRIBE"

      # No documentation available.
      #
      CREATE_DATABASE = "CREATE_DATABASE"

      # No documentation available.
      #
      CREATE_TABLE = "CREATE_TABLE"

      # No documentation available.
      #
      DATA_LOCATION_ACCESS = "DATA_LOCATION_ACCESS"

      # No documentation available.
      #
      CREATE_TAG = "CREATE_TAG"

      # No documentation available.
      #
      ASSOCIATE = "ASSOCIATE"
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

    # <p>The engine does not support filtering data based on the enforced permissions. For example, if you call the <code>GetTemporaryGlueTableCredentials</code> operation with <code>SupportedPermissionType</code> equal to <code>ColumnPermission</code>, but cell-level permissions exist on the table, this exception is thrown.</p>
    #
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #
    #   @return [String]
    #
    PermissionTypeMismatchException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Statistics related to the processing of a query statement.</p>
    #
    # @!attribute estimated_data_to_scan_bytes
    #   <p>An estimate of the data that was scanned in bytes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute planning_time_millis
    #   <p>The time that it took to process the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute queue_time_millis
    #   <p>The time the request was in queue to be processed.</p>
    #
    #   @return [Integer]
    #
    # @!attribute work_units_generated_count
    #   <p>The number of work units generated.</p>
    #
    #   @return [Integer]
    #
    PlanningStatistics = ::Struct.new(
      :estimated_data_to_scan_bytes,
      :planning_time_millis,
      :queue_time_millis,
      :work_units_generated_count,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.estimated_data_to_scan_bytes ||= 0
        self.planning_time_millis ||= 0
        self.queue_time_millis ||= 0
        self.work_units_generated_count ||= 0
      end
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

    # <p>The permissions granted or revoked on a resource.</p>
    #
    # @!attribute principal
    #   <p>The Data Lake principal to be granted or revoked permissions.</p>
    #
    #   @return [DataLakePrincipal]
    #
    # @!attribute resource
    #   <p>The resource where permissions are to be granted or revoked.</p>
    #
    #   @return [Resource]
    #
    # @!attribute permissions
    #   <p>The permissions to be granted or revoked on the resource.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute permissions_with_grant_option
    #   <p>Indicates whether to grant the ability to grant permissions (as a subset of permissions granted).</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute additional_details
    #   <p>This attribute can be used to return any additional details of <code>PrincipalResourcePermissions</code>. Currently returns only as a RAM resource share ARN.</p>
    #
    #   @return [DetailsMap]
    #
    PrincipalResourcePermissions = ::Struct.new(
      :principal,
      :resource,
      :permissions,
      :permissions_with_grant_option,
      :additional_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #
    #   @return [String]
    #
    # @!attribute data_lake_settings
    #   <p>A structure representing a list of Lake Formation principals designated as data lake administrators.</p>
    #
    #   @return [DataLakeSettings]
    #
    PutDataLakeSettingsInput = ::Struct.new(
      :catalog_id,
      :data_lake_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutDataLakeSettingsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure containing information about the query plan.</p>
    #
    # @!attribute catalog_id
    #   <p>The ID of the Data Catalog where the partition in question resides. If none is provided, the Amazon Web Services account ID is used by default.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The database containing the table.</p>
    #
    #   @return [String]
    #
    # @!attribute query_as_of_time
    #   <p>The time as of when to read the table contents. If not set, the most recent transaction commit time will be used. Cannot be specified along with <code>TransactionId</code>.</p>
    #
    #   @return [Time]
    #
    # @!attribute query_parameters
    #   <p>A map consisting of key-value pairs.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute transaction_id
    #   <p>The transaction ID at which to read the table contents. If this transaction is not committed, the read will be treated as part of that transaction and will see its writes. If this transaction has aborted, an error will be returned. If not set, defaults to the most recent committed transaction. Cannot be specified along with <code>QueryAsOfTime</code>.</p>
    #
    #   @return [String]
    #
    QueryPlanningContext = ::Struct.new(
      :catalog_id,
      :database_name,
      :query_as_of_time,
      :query_parameters,
      :transaction_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for QueryStateString
    #
    module QueryStateString
      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      WORKUNITS_AVAILABLE = "WORKUNITS_AVAILABLE"

      # No documentation available.
      #
      ERROR = "ERROR"

      # No documentation available.
      #
      FINISHED = "FINISHED"

      # No documentation available.
      #
      EXPIRED = "EXPIRED"
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to register.</p>
    #
    #   @return [String]
    #
    # @!attribute use_service_linked_role
    #   <p>Designates an Identity and Access Management (IAM) service-linked role by registering this role with the Data Catalog. A service-linked role is a unique type of IAM role that is linked directly to Lake Formation.</p>
    #
    #            <p>For more information, see <a href="https://docs-aws.amazon.com/lake-formation/latest/dg/service-linked-roles.html">Using Service-Linked Roles for Lake Formation</a>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute role_arn
    #   <p>The identifier for the role that registers the resource.</p>
    #
    #   @return [String]
    #
    RegisterResourceInput = ::Struct.new(
      :resource_arn,
      :use_service_linked_role,
      :role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    RegisterResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #
    #   @return [String]
    #
    # @!attribute resource
    #   <p>The database, table, or column resource where you want to remove an LF-tag.</p>
    #
    #   @return [Resource]
    #
    # @!attribute lf_tags
    #   <p>The LF-tags to be removed from the resource.</p>
    #
    #   @return [Array<LFTagPair>]
    #
    RemoveLFTagsFromResourceInput = ::Struct.new(
      :catalog_id,
      :resource,
      :lf_tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute failures
    #   <p>A list of failures to untag a resource.</p>
    #
    #   @return [Array<LFTagError>]
    #
    RemoveLFTagsFromResourceOutput = ::Struct.new(
      :failures,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure for the resource.</p>
    #
    # @!attribute catalog
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #
    #   @return [CatalogResource]
    #
    # @!attribute database
    #   <p>The database for the resource. Unique to the Data Catalog. A database is a set of associated table definitions organized into a logical group. You can Grant and Revoke database permissions to a principal. </p>
    #
    #   @return [DatabaseResource]
    #
    # @!attribute table
    #   <p>The table for the resource. A table is a metadata definition that represents your data. You can Grant and Revoke table privileges to a principal. </p>
    #
    #   @return [TableResource]
    #
    # @!attribute table_with_columns
    #   <p>The table with columns for the resource. A principal with permissions to this resource can select metadata from the columns of a table in the Data Catalog and the underlying data in Amazon S3.</p>
    #
    #   @return [TableWithColumnsResource]
    #
    # @!attribute data_location
    #   <p>The location of an Amazon S3 path where permissions are granted or revoked. </p>
    #
    #   @return [DataLocationResource]
    #
    # @!attribute data_cells_filter
    #   <p>A data cell filter.</p>
    #
    #   @return [DataCellsFilterResource]
    #
    # @!attribute lf_tag
    #   <p>The LF-tag key and values attached to a resource.</p>
    #
    #   @return [LFTagKeyResource]
    #
    # @!attribute lf_tag_policy
    #   <p>A list of LF-tag conditions that define a resource's LF-tag policy.</p>
    #
    #   @return [LFTagPolicyResource]
    #
    Resource = ::Struct.new(
      :catalog,
      :database,
      :table,
      :table_with_columns,
      :data_location,
      :data_cells_filter,
      :lf_tag,
      :lf_tag_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure containing information about an Lake Formation resource.</p>
    #
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The IAM role that registered a resource.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified
    #   <p>The date and time the resource was last modified.</p>
    #
    #   @return [Time]
    #
    ResourceInfo = ::Struct.new(
      :resource_arn,
      :role_arn,
      :last_modified,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains details about an error related to a resource which is not ready for a transaction.</p>
    #
    # @!attribute message
    #   <p>A message describing the error.</p>
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
      DATABASE = "DATABASE"

      # No documentation available.
      #
      TABLE = "TABLE"
    end

    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #
    #   @return [String]
    #
    # @!attribute principal
    #   <p>The principal to be revoked permissions on the resource.</p>
    #
    #   @return [DataLakePrincipal]
    #
    # @!attribute resource
    #   <p>The resource to which permissions are to be revoked.</p>
    #
    #   @return [Resource]
    #
    # @!attribute permissions
    #   <p>The permissions revoked to the principal on the resource. For information about permissions, see <a href="https://docs-aws.amazon.com/lake-formation/latest/dg/security-data-access.html">Security
    #         and Access Control to Metadata and Data</a>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute permissions_with_grant_option
    #   <p>Indicates a list of permissions for which to revoke the grant option allowing the principal to pass permissions to other principals.</p>
    #
    #   @return [Array<String>]
    #
    RevokePermissionsInput = ::Struct.new(
      :catalog_id,
      :principal,
      :resource,
      :permissions,
      :permissions_with_grant_option,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    RevokePermissionsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A PartiQL predicate.</p>
    #
    # @!attribute filter_expression
    #   <p>A filter expression.</p>
    #
    #   @return [String]
    #
    # @!attribute all_rows_wildcard
    #   <p>A wildcard for all rows.</p>
    #
    #   @return [AllRowsWildcard]
    #
    RowFilter = ::Struct.new(
      :filter_expression,
      :all_rows_wildcard,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A continuation token, if this is not the first call to retrieve this list.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #
    #   @return [String]
    #
    # @!attribute expression
    #   <p>A list of conditions (<code>LFTag</code> structures) to search for in database resources.</p>
    #
    #   @return [Array<LFTag>]
    #
    SearchDatabasesByLFTagsInput = ::Struct.new(
      :next_token,
      :max_results,
      :catalog_id,
      :expression,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A continuation token, present if the current list segment is not the last.</p>
    #
    #   @return [String]
    #
    # @!attribute database_list
    #   <p>A list of databases that meet the LF-tag conditions.</p>
    #
    #   @return [Array<TaggedDatabase>]
    #
    SearchDatabasesByLFTagsOutput = ::Struct.new(
      :next_token,
      :database_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A continuation token, if this is not the first call to retrieve this list.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #
    #   @return [String]
    #
    # @!attribute expression
    #   <p>A list of conditions (<code>LFTag</code> structures) to search for in table resources.</p>
    #
    #   @return [Array<LFTag>]
    #
    SearchTablesByLFTagsInput = ::Struct.new(
      :next_token,
      :max_results,
      :catalog_id,
      :expression,
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
    #   <p>A list of tables that meet the LF-tag conditions.</p>
    #
    #   @return [Array<TaggedTable>]
    #
    SearchTablesByLFTagsOutput = ::Struct.new(
      :next_token,
      :table_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute query_planning_context
    #   <p>A structure containing information about the query plan.</p>
    #
    #   @return [QueryPlanningContext]
    #
    # @!attribute query_string
    #   <p>A PartiQL query statement used as an input to the planner service.</p>
    #
    #   @return [String]
    #
    StartQueryPlanningInput = ::Struct.new(
      :query_planning_context,
      :query_string,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::LakeFormation::Types::StartQueryPlanningInput "\
          "query_planning_context=#{query_planning_context || 'nil'}, "\
          "query_string=\"[SENSITIVE]\">"
      end
    end

    # <p>A structure for the output.</p>
    #
    # @!attribute query_id
    #   <p>The ID of the plan query operation can be used to fetch the actual work unit descriptors that are produced as the result of the operation. The ID is also used to get the query state and as an input to the <code>Execute</code> operation.</p>
    #
    #   @return [String]
    #
    StartQueryPlanningOutput = ::Struct.new(
      :query_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute transaction_type
    #   <p>Indicates whether this transaction should be read only or read and write. Writes made using a read-only transaction ID will be rejected. Read-only transactions do not need to be committed. </p>
    #
    #   Enum, one of: ["READ_AND_WRITE", "READ_ONLY"]
    #
    #   @return [String]
    #
    StartTransactionInput = ::Struct.new(
      :transaction_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute transaction_id
    #   <p>An opaque identifier for the transaction.</p>
    #
    #   @return [String]
    #
    StartTransactionOutput = ::Struct.new(
      :transaction_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains details about an error related to statistics not being ready.</p>
    #
    # @!attribute message
    #   <p>A message describing the error.</p>
    #
    #   @return [String]
    #
    StatisticsNotReadyYetException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure describing the configuration and details of a storage optimizer.</p>
    #
    # @!attribute storage_optimizer_type
    #   <p>The specific type of storage optimizer. The supported value is <code>compaction</code>.</p>
    #
    #   Enum, one of: ["COMPACTION", "GARBAGE_COLLECTION", "ALL"]
    #
    #   @return [String]
    #
    # @!attribute config
    #   <p>A map of the storage optimizer configuration. Currently contains only one key-value pair: <code>is_enabled</code> indicates true or false for acceleration.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute error_message
    #   <p>A message that contains information about any error (if present).</p>
    #   	
    #   	        <p>When an acceleration result has an enabled status, the error message is empty.</p>
    #   	        <p>When an acceleration result has a disabled status, the message describes an error or simply indicates "disabled by the user".</p>
    #
    #   @return [String]
    #
    # @!attribute warnings
    #   <p>A message that contains information about any warnings (if present).</p>
    #
    #   @return [String]
    #
    # @!attribute last_run_details
    #   <p>When an acceleration result has an enabled status, contains the details of the last job run.</p>
    #
    #   @return [String]
    #
    StorageOptimizer = ::Struct.new(
      :storage_optimizer_type,
      :config,
      :error_message,
      :warnings,
      :last_run_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the details of a governed table.</p>
    #
    # @!attribute uri
    #   <p>The Amazon S3 location of the object.</p>
    #
    #   @return [String]
    #
    # @!attribute e_tag
    #   <p>The Amazon S3 ETag of the object. Returned by <code>GetTableObjects</code> for validation and used to identify changes to the underlying data.</p>
    #
    #   @return [String]
    #
    # @!attribute size
    #   <p>The size of the Amazon S3 object in bytes.</p>
    #
    #   @return [Integer]
    #
    TableObject = ::Struct.new(
      :uri,
      :e_tag,
      :size,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.size ||= 0
      end
    end

    # <p>A structure for the table object. A table is a metadata definition that represents your data. You can Grant and Revoke table privileges to a principal. </p>
    #
    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, it is the account ID of the caller.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The name of the database for the table. Unique to a Data Catalog. A database is a set of associated table definitions organized into a logical group. You can Grant and Revoke database privileges to a principal. </p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the table.</p>
    #
    #   @return [String]
    #
    # @!attribute table_wildcard
    #   <p>A wildcard object representing every table under a database.</p>
    #
    #            <p>At least one of <code>TableResource$Name</code> or <code>TableResource$TableWildcard</code> is required.</p>
    #
    #   @return [TableWildcard]
    #
    TableResource = ::Struct.new(
      :catalog_id,
      :database_name,
      :name,
      :table_wildcard,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A wildcard object representing every table under a database.</p>
    #
    TableWildcard = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure for a table with columns object. This object is only used when granting a SELECT permission.</p>
    # 	        <p>This object must take a value for at least one of <code>ColumnsNames</code>, <code>ColumnsIndexes</code>, or <code>ColumnsWildcard</code>.</p>
    #
    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, it is the account ID of the caller.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The name of the database for the table with columns resource. Unique to the Data Catalog. A database is a set of associated table definitions organized into a logical group. You can Grant and Revoke database privileges to a principal. </p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the table resource. A table is a metadata definition that represents your data. You can Grant and Revoke table privileges to a principal. </p>
    #
    #   @return [String]
    #
    # @!attribute column_names
    #   <p>The list of column names for the table. At least one of <code>ColumnNames</code> or <code>ColumnWildcard</code> is required.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute column_wildcard
    #   <p>A wildcard specified by a <code>ColumnWildcard</code> object. At least one of <code>ColumnNames</code> or <code>ColumnWildcard</code> is required.</p>
    #
    #   @return [ColumnWildcard]
    #
    TableWithColumnsResource = ::Struct.new(
      :catalog_id,
      :database_name,
      :name,
      :column_names,
      :column_wildcard,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure describing a database resource with LF-tags.</p>
    #
    # @!attribute database
    #   <p>A database that has LF-tags attached to it.</p>
    #
    #   @return [DatabaseResource]
    #
    # @!attribute lf_tags
    #   <p>A list of LF-tags attached to the database.</p>
    #
    #   @return [Array<LFTagPair>]
    #
    TaggedDatabase = ::Struct.new(
      :database,
      :lf_tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure describing a table resource with LF-tags.</p>
    #
    # @!attribute table
    #   <p>A table that has LF-tags attached to it.</p>
    #
    #   @return [TableResource]
    #
    # @!attribute lf_tag_on_database
    #   <p>A list of LF-tags attached to the database where the table resides.</p>
    #
    #   @return [Array<LFTagPair>]
    #
    # @!attribute lf_tags_on_table
    #   <p>A list of LF-tags attached to the table.</p>
    #
    #   @return [Array<LFTagPair>]
    #
    # @!attribute lf_tags_on_columns
    #   <p>A list of LF-tags attached to columns in the table.</p>
    #
    #   @return [Array<ColumnLFTag>]
    #
    TaggedTable = ::Struct.new(
      :table,
      :lf_tag_on_database,
      :lf_tags_on_table,
      :lf_tags_on_columns,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains details about an error where the query request was throttled.</p>
    #
    # @!attribute message
    #   <p>A message describing the error.</p>
    #
    #   @return [String]
    #
    ThrottledException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains details about an error related to a transaction that was cancelled.</p>
    #
    # @!attribute message
    #   <p>A message describing the error.</p>
    #
    #   @return [String]
    #
    TransactionCanceledException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains details about an error related to a transaction commit that was in progress.</p>
    #
    # @!attribute message
    #   <p>A message describing the error.</p>
    #
    #   @return [String]
    #
    TransactionCommitInProgressException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains details about an error where the specified transaction has already been committed and cannot be used for <code>UpdateTableObjects</code>.</p>
    #
    # @!attribute message
    #   <p>A message describing the error.</p>
    #
    #   @return [String]
    #
    TransactionCommittedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure that contains information about a transaction.</p>
    #
    # @!attribute transaction_id
    #   <p>The ID of the transaction.</p>
    #
    #   @return [String]
    #
    # @!attribute transaction_status
    #   <p>A status of ACTIVE, COMMITTED, or ABORTED.</p>
    #
    #   Enum, one of: ["ACTIVE", "COMMITTED", "ABORTED", "COMMIT_IN_PROGRESS"]
    #
    #   @return [String]
    #
    # @!attribute transaction_start_time
    #   <p>The time when the transaction started.</p>
    #
    #   @return [Time]
    #
    # @!attribute transaction_end_time
    #   <p>The time when the transaction committed or aborted, if it is not currently active.</p>
    #
    #   @return [Time]
    #
    TransactionDescription = ::Struct.new(
      :transaction_id,
      :transaction_status,
      :transaction_start_time,
      :transaction_end_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TransactionStatus
    #
    module TransactionStatus
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      COMMITTED = "COMMITTED"

      # No documentation available.
      #
      ABORTED = "ABORTED"

      # No documentation available.
      #
      COMMIT_IN_PROGRESS = "COMMIT_IN_PROGRESS"
    end

    # Includes enum constants for TransactionStatusFilter
    #
    module TransactionStatusFilter
      # No documentation available.
      #
      ALL = "ALL"

      # No documentation available.
      #
      COMPLETED = "COMPLETED"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      COMMITTED = "COMMITTED"

      # No documentation available.
      #
      ABORTED = "ABORTED"
    end

    # Includes enum constants for TransactionType
    #
    module TransactionType
      # No documentation available.
      #
      READ_AND_WRITE = "READ_AND_WRITE"

      # No documentation available.
      #
      READ_ONLY = "READ_ONLY"
    end

    # @!attribute catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #
    #   @return [String]
    #
    # @!attribute tag_key
    #   <p>The key-name for the LF-tag for which to add or delete values.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_values_to_delete
    #   <p>A list of LF-tag values to delete from the LF-tag.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tag_values_to_add
    #   <p>A list of LF-tag values to add from the LF-tag.</p>
    #
    #   @return [Array<String>]
    #
    UpdateLFTagInput = ::Struct.new(
      :catalog_id,
      :tag_key,
      :tag_values_to_delete,
      :tag_values_to_add,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateLFTagOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute role_arn
    #   <p>The new role to use for the given resource registered in Lake Formation.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_arn
    #   <p>The resource ARN.</p>
    #
    #   @return [String]
    #
    UpdateResourceInput = ::Struct.new(
      :role_arn,
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The catalog containing the governed table to update. Defaults to the caller’s account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The database containing the governed table to update.</p>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>The governed table to update.</p>
    #
    #   @return [String]
    #
    # @!attribute transaction_id
    #   <p>The transaction at which to do the write.</p>
    #
    #   @return [String]
    #
    # @!attribute write_operations
    #   <p>A list of <code>WriteOperation</code> objects that define an object to add to or delete from the manifest for a governed table.</p>
    #
    #   @return [Array<WriteOperation>]
    #
    UpdateTableObjectsInput = ::Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :transaction_id,
      :write_operations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateTableObjectsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute catalog_id
    #   <p>The Catalog ID of the table.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>Name of the database where the table is present.</p>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>Name of the table for which to enable the storage optimizer.</p>
    #
    #   @return [String]
    #
    # @!attribute storage_optimizer_config
    #   <p>Name of the table for which to enable the storage optimizer.</p>
    #
    #   @return [Hash<String, Hash<String, String>>]
    #
    UpdateTableStorageOptimizerInput = ::Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :storage_optimizer_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute result
    #   <p>A response indicating the success of failure of the operation.</p>
    #
    #   @return [String]
    #
    UpdateTableStorageOptimizerOutput = ::Struct.new(
      :result,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that defines an Amazon S3 object to be deleted if a transaction cancels, provided that
    #       <code>VirtualPut</code> was called before writing the object.</p>
    #
    # @!attribute uri
    #   <p>The path to the Amazon S3 object. Must start with s3://</p>
    #
    #   @return [String]
    #
    # @!attribute e_tag
    #   <p>The ETag of the Amazon S3 object.</p>
    #
    #   @return [String]
    #
    VirtualObject = ::Struct.new(
      :uri,
      :e_tag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Defines the valid range of work unit IDs for querying the execution service.</p>
    #
    # @!attribute work_unit_id_max
    #   <p>Defines the maximum work unit ID in the range. The maximum value is inclusive.</p>
    #
    #   @return [Integer]
    #
    # @!attribute work_unit_id_min
    #   <p>Defines the minimum work unit ID in the range.</p>
    #
    #   @return [Integer]
    #
    # @!attribute work_unit_token
    #   <p>A work token used to query the execution service.</p>
    #
    #   @return [String]
    #
    WorkUnitRange = ::Struct.new(
      :work_unit_id_max,
      :work_unit_id_min,
      :work_unit_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.work_unit_id_max ||= 0
        self.work_unit_id_min ||= 0
      end
    end

    # <p>Contains details about an error related to work units not being ready.</p>
    #
    # @!attribute message
    #   <p>A message describing the error.</p>
    #
    #   @return [String]
    #
    WorkUnitsNotReadyYetException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Defines an object to add to or delete from a governed table.</p>
    #
    # @!attribute add_object
    #   <p>A new object to add to the governed table.</p>
    #
    #   @return [AddObjectInput]
    #
    # @!attribute delete_object
    #   <p>An object to delete from the governed table.</p>
    #
    #   @return [DeleteObjectInput]
    #
    WriteOperation = ::Struct.new(
      :add_object,
      :delete_object,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
