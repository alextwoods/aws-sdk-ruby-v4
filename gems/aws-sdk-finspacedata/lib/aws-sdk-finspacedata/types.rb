# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::FinspaceData
  module Types

    # <p>You do not have sufficient access to perform this action.</p>
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

    # Includes enum constants for ApiAccess
    #
    module ApiAccess
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # Includes enum constants for ApplicationPermission
    #
    module ApplicationPermission
      # No documentation available.
      #
      CreateDataset = "CreateDataset"

      # No documentation available.
      #
      ManageClusters = "ManageClusters"

      # No documentation available.
      #
      ManageUsersAndGroups = "ManageUsersAndGroups"

      # No documentation available.
      #
      ManageAttributeSets = "ManageAttributeSets"

      # No documentation available.
      #
      ViewAuditData = "ViewAuditData"

      # No documentation available.
      #
      AccessNotebooks = "AccessNotebooks"

      # No documentation available.
      #
      GetTemporaryCredentials = "GetTemporaryCredentials"
    end

    # Includes enum constants for ChangeType
    #
    module ChangeType
      # No documentation available.
      #
      REPLACE = "REPLACE"

      # No documentation available.
      #
      APPEND = "APPEND"

      # No documentation available.
      #
      MODIFY = "MODIFY"
    end

    # <p>The structure with error messages.</p>
    #
    # @!attribute error_message
    #   <p>The text of the error message.</p>
    #
    #   @return [String]
    #
    # @!attribute error_category
    #   <p>The category of the error.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>VALIDATION</code> – The inputs to this request are invalid.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SERVICE_QUOTA_EXCEEDED</code> – Service quotas have been exceeded. Please
    #             contact AWS support to increase quotas.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACCESS_DENIED</code> – Missing required permission to perform this
    #             request.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RESOURCE_NOT_FOUND</code> – One or more inputs to this request were not
    #             found.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>THROTTLING</code> – The system temporarily lacks sufficient resources to process
    #             the request.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INTERNAL_SERVICE_EXCEPTION</code> – An internal service error has
    #             occurred.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CANCELLED</code> – Cancelled.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>USER_RECOVERABLE</code> – A user recoverable error has occurred.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["VALIDATION", "SERVICE_QUOTA_EXCEEDED", "ACCESS_DENIED", "RESOURCE_NOT_FOUND", "THROTTLING", "INTERNAL_SERVICE_EXCEPTION", "CANCELLED", "USER_RECOVERABLE"]
    #
    #   @return [String]
    #
    ChangesetErrorInfo = ::Struct.new(
      :error_message,
      :error_category,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A Changeset is unit of data in a Dataset.</p>
    #
    # @!attribute changeset_id
    #   <p>The unique identifier for a Changeset.</p>
    #
    #   @return [String]
    #
    # @!attribute changeset_arn
    #   <p>The ARN identifier of the Changeset.</p>
    #
    #   @return [String]
    #
    # @!attribute dataset_id
    #   <p>The unique identifier for the FinSpace Dataset in which the Changeset is created.</p>
    #
    #   @return [String]
    #
    # @!attribute change_type
    #   <p>Type that indicates how a Changeset is applied to a Dataset.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>REPLACE</code> – Changeset is considered as a replacement to all prior loaded
    #             Changesets.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>APPEND</code> – Changeset is considered as an addition to the end of all prior
    #             loaded Changesets.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MODIFY</code> – Changeset is considered as a replacement to a specific prior
    #             ingested Changeset.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["REPLACE", "APPEND", "MODIFY"]
    #
    #   @return [String]
    #
    # @!attribute source_params
    #   <p>Options that define the location of the data being ingested.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute format_params
    #   <p>Options that define the structure of the source file(s).</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute create_time
    #   <p>The timestamp at which the Changeset was created in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>
    #
    #   @return [Integer]
    #
    # @!attribute status
    #   <p>Status of the Changeset ingestion.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PENDING</code> – Changeset is pending creation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> – Changeset creation has failed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SUCCESS</code> – Changeset creation has succeeded.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RUNNING</code> – Changeset creation is running.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STOP_REQUESTED</code> – User requested Changeset creation to stop.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["PENDING", "FAILED", "SUCCESS", "RUNNING", "STOP_REQUESTED"]
    #
    #   @return [String]
    #
    # @!attribute error_info
    #   <p>The structure with error messages.</p>
    #
    #   @return [ChangesetErrorInfo]
    #
    # @!attribute active_until_timestamp
    #   <p>Time until which the Changeset is active. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>
    #
    #   @return [Integer]
    #
    # @!attribute active_from_timestamp
    #   <p>Beginning time from which the Changeset is active. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>
    #
    #   @return [Integer]
    #
    # @!attribute updates_changeset_id
    #   <p>The unique identifier of the Changeset that is updated.</p>
    #
    #   @return [String]
    #
    # @!attribute updated_by_changeset_id
    #   <p>The unique identifier of the updated Changeset.</p>
    #
    #   @return [String]
    #
    ChangesetSummary = ::Struct.new(
      :changeset_id,
      :changeset_arn,
      :dataset_id,
      :change_type,
      :source_params,
      :format_params,
      :create_time,
      :status,
      :error_info,
      :active_until_timestamp,
      :active_from_timestamp,
      :updates_changeset_id,
      :updated_by_changeset_id,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.create_time ||= 0
      end

    end

    # Includes enum constants for ColumnDataType
    #
    module ColumnDataType
      # No documentation available.
      #
      STRING = "STRING"

      # No documentation available.
      #
      CHAR = "CHAR"

      # No documentation available.
      #
      INTEGER = "INTEGER"

      # No documentation available.
      #
      TINYINT = "TINYINT"

      # No documentation available.
      #
      SMALLINT = "SMALLINT"

      # No documentation available.
      #
      BIGINT = "BIGINT"

      # No documentation available.
      #
      FLOAT = "FLOAT"

      # No documentation available.
      #
      DOUBLE = "DOUBLE"

      # No documentation available.
      #
      DATE = "DATE"

      # No documentation available.
      #
      DATETIME = "DATETIME"

      # No documentation available.
      #
      BOOLEAN = "BOOLEAN"

      # No documentation available.
      #
      BINARY = "BINARY"
    end

    # <p>The definition of a column in a tabular Dataset.</p>
    #
    # @!attribute data_type
    #   <p>Data type of a column.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>STRING</code> – A String data type.</p>
    #                  <p>
    #                     <code>CHAR</code> – A char data type.</p>
    #                  <p>
    #                     <code>INTEGER</code> – An integer data type.</p>
    #                  <p>
    #                     <code>TINYINT</code> – A tinyint data type.</p>
    #                  <p>
    #                     <code>SMALLINT</code> – A smallint data type.</p>
    #                  <p>
    #                     <code>BIGINT</code> – A bigint data type.</p>
    #                  <p>
    #                     <code>FLOAT</code> – A float data type.</p>
    #                  <p>
    #                     <code>DOUBLE</code> – A double data type.</p>
    #                  <p>
    #                     <code>DATE</code> – A date data type.</p>
    #                  <p>
    #                     <code>DATETIME</code> – A datetime data type.</p>
    #                  <p>
    #                     <code>BOOLEAN</code> – A boolean data type.</p>
    #                  <p>
    #                     <code>BINARY</code> – A binary data type.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["STRING", "CHAR", "INTEGER", "TINYINT", "SMALLINT", "BIGINT", "FLOAT", "DOUBLE", "DATE", "DATETIME", "BOOLEAN", "BINARY"]
    #
    #   @return [String]
    #
    # @!attribute column_name
    #   <p>The name of a column.</p>
    #
    #   @return [String]
    #
    # @!attribute column_description
    #   <p>Description for a column.</p>
    #
    #   @return [String]
    #
    ColumnDefinition = ::Struct.new(
      :data_type,
      :column_name,
      :column_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request conflicts with an existing resource.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute reason
    #
    #   @return [String]
    #
    ConflictException = ::Struct.new(
      :message,
      :reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # The request for a CreateChangeset operation.
    #
    # @!attribute client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    #
    #   @return [String]
    #
    # @!attribute dataset_id
    #   <p>The unique identifier for the FinSpace Dataset where the Changeset will be created.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute change_type
    #   <p>The option to indicate how a Changeset will be applied to a Dataset.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>REPLACE</code> – Changeset will be considered as a replacement to all prior
    #             loaded Changesets.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>APPEND</code> – Changeset will be considered as an addition to the end of all
    #             prior loaded Changesets.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MODIFY</code> – Changeset is considered as a replacement to a specific prior ingested Changeset.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["REPLACE", "APPEND", "MODIFY"]
    #
    #   @return [String]
    #
    # @!attribute source_params
    #   <p>Options that define the location of the data being ingested (<code>s3SourcePath</code>) and the source of the changeset (<code>sourceType</code>).</p>
    #            <p>Both <code>s3SourcePath</code> and <code>sourceType</code> are required attributes.</p>
    #            <p>Here is an example of how you could specify the <code>sourceParams</code>:</p>
    #            <p>
    #               <code>
    #           "sourceParams":
    #           {
    #           "s3SourcePath": "s3://finspace-landing-us-east-2-bk7gcfvitndqa6ebnvys4d/scratch/wr5hh8pwkpqqkxa4sxrmcw/ingestion/equity.csv",
    #           "sourceType": "S3"
    #           }
    #         </code>
    #            </p>
    #            <p>The S3 path that you specify must allow the FinSpace role access. To do that, you first need to configure the IAM policy on S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/finspace/latest/data-api/fs-using-the-finspace-api.html access-s3-buckets">Loading data from an Amazon S3 Bucket using the FinSpace API</a> section.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute format_params
    #   <p>Options that define the structure of the source file(s) including the format type (<code>formatType</code>), header row (<code>withHeader</code>), data separation character (<code>separator</code>) and the type of compression (<code>compression</code>).
    #       </p>
    #            <p>
    #               <code>formatType</code> is a required attribute and can have the following values:
    #       </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PARQUET</code> – Parquet source file format.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CSV</code> – CSV source file format.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>JSON</code> – JSON source file format.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>XML</code> – XML source file format.</p>
    #               </li>
    #            </ul>
    #
    #            <p>Here is an example of how you could specify the <code>formatParams</code>:</p>
    #            <p>
    #               <code>
    #             "formatParams":
    #           {
    #            "formatType": "CSV",
    #            "withHeader": "true",
    #            "separator": ",",
    #            "compression":"None"
    #            }
    #         </code>
    #            </p>
    #            <p>Note that if you only provide <code>formatType</code> as <code>CSV</code>, the rest of the attributes will automatically default to CSV values as following:</p>
    #            <p>
    #               <code>
    #             {
    #             "withHeader": "true",
    #             "separator": ","
    #              }
    #           </code>
    #            </p>
    #            <p> For more information about supported file formats, see <a href="https://docs.aws.amazon.com/finspace/latest/userguide/supported-data-types.html">Supported Data Types and File Formats</a> in the FinSpace User Guide.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateChangesetInput = ::Struct.new(
      :client_token,
      :dataset_id,
      :change_type,
      :source_params,
      :format_params,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # The response from a CreateChangeset operation.
    #
    # @!attribute dataset_id
    #   <p>The unique identifier for the FinSpace Dataset where the Changeset is created.</p>
    #
    #   @return [String]
    #
    # @!attribute changeset_id
    #   <p>The unique identifier of the Changeset that is created.</p>
    #
    #   @return [String]
    #
    CreateChangesetOutput = ::Struct.new(
      :dataset_id,
      :changeset_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Request for creating a data view.
    #
    # @!attribute client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    #
    #   @return [String]
    #
    # @!attribute dataset_id
    #   <p>The unique Dataset identifier that is used to create a Dataview.</p>
    #
    #   @return [String]
    #
    # @!attribute auto_update
    #   <p>Flag to indicate Dataview should be updated automatically.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute sort_columns
    #   <p>Columns to be used for sorting the data.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute partition_columns
    #   <p>Ordered set of column names used to partition data.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute as_of_timestamp
    #   <p>Beginning time to use for the Dataview. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>
    #
    #   @return [Integer]
    #
    # @!attribute destination_type_params
    #   <p>Options that define the destination type for the Dataview.</p>
    #
    #   @return [DataViewDestinationTypeParams]
    #
    CreateDataViewInput = ::Struct.new(
      :client_token,
      :dataset_id,
      :auto_update,
      :sort_columns,
      :partition_columns,
      :as_of_timestamp,
      :destination_type_params,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.auto_update ||= false
      end

    end

    # Response for creating a data view.
    #
    # @!attribute dataset_id
    #   <p>The unique identifier of the Dataset used for the Dataview.</p>
    #
    #   @return [String]
    #
    # @!attribute data_view_id
    #   <p>The unique identifier for the created Dataview.</p>
    #
    #   @return [String]
    #
    CreateDataViewOutput = ::Struct.new(
      :dataset_id,
      :data_view_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # The request for a CreateDataset operation
    #
    # @!attribute client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    #
    #   @return [String]
    #
    # @!attribute dataset_title
    #   <p>Display title for a FinSpace Dataset.</p>
    #
    #   @return [String]
    #
    # @!attribute kind
    #   <p>The format in which Dataset data is structured.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>TABULAR</code> – Data is structured in a tabular format.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NON_TABULAR</code> – Data is structured in a non-tabular format.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["TABULAR", "NON_TABULAR"]
    #
    #   @return [String]
    #
    # @!attribute dataset_description
    #   <p>Description of a Dataset.</p>
    #
    #   @return [String]
    #
    # @!attribute owner_info
    #   <p>Contact information for a Dataset owner.</p>
    #
    #   @return [DatasetOwnerInfo]
    #
    # @!attribute permission_group_params
    #   <p>Permission group parameters for Dataset permissions.</p>
    #
    #   @return [PermissionGroupParams]
    #
    # @!attribute alias
    #   <p>The unique resource identifier for a Dataset.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_definition
    #   <p>Definition for a schema on a tabular Dataset.</p>
    #
    #   @return [SchemaUnion]
    #
    CreateDatasetInput = ::Struct.new(
      :client_token,
      :dataset_title,
      :kind,
      :dataset_description,
      :owner_info,
      :permission_group_params,
      :alias,
      :schema_definition,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # The response from a CreateDataset operation
    #
    # @!attribute dataset_id
    #   <p>The unique identifier for the created Dataset.</p>
    #
    #   @return [String]
    #
    CreateDatasetOutput = ::Struct.new(
      :dataset_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the permission group.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A brief description for the permission group.</p>
    #
    #   @return [String]
    #
    # @!attribute application_permissions
    #   <p>The option to indicate FinSpace application permissions that are granted to a specific group.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CreateDataset</code> – Group members can create new datasets.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ManageClusters</code> – Group members can manage Apache Spark clusters from FinSpace notebooks.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ManageUsersAndGroups</code> – Group members can manage users and permission groups.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ManageAttributeSets</code> – Group members can manage attribute sets.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ViewAuditData</code> – Group members can view audit data.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AccessNotebooks</code> – Group members will have access to FinSpace notebooks.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GetTemporaryCredentials</code> – Group members can get temporary API credentials.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    # @!attribute client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    #
    #   @return [String]
    #
    CreatePermissionGroupInput = ::Struct.new(
      :name,
      :description,
      :application_permissions,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::FinspaceData::Types::CreatePermissionGroupInput "\
          "name=\"[SENSITIVE]\", "\
          "description=\"[SENSITIVE]\", "\
          "application_permissions=#{application_permissions || 'nil'}, "\
          "client_token=#{client_token || 'nil'}>"
      end
    end

    # @!attribute permission_group_id
    #   <p>The unique identifier for the permission group.</p>
    #
    #   @return [String]
    #
    CreatePermissionGroupOutput = ::Struct.new(
      :permission_group_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute email_address
    #   <p>The email address of the user that you want to register. The email address serves as a uniquer identifier for each user and cannot be changed after it's created.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The option to indicate the type of user. Use one of the following options to specify this parameter:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SUPER_USER</code> – A user with permission to all the functionality and data in FinSpace.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>APP_USER</code> – A user with specific permissions in FinSpace. The users are assigned permissions by adding them to a permission group.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["SUPER_USER", "APP_USER"]
    #
    #   @return [String]
    #
    # @!attribute first_name
    #   <p>The first name of the user that you want to register.</p>
    #
    #   @return [String]
    #
    # @!attribute last_name
    #   <p>The last name of the user that you want to register.</p>
    #
    #   @return [String]
    #
    # @!attribute api_access
    #   <p>The option to indicate whether the user can use the <code>GetProgrammaticAccessCredentials</code> API to obtain credentials that can then be used to access other FinSpace Data API operations.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ENABLED</code> – The user has permissions to use the APIs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLED</code> – The user does not have permissions to use any APIs.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute api_access_principal_arn
    #   <p>The ARN identifier of an AWS user or role that is allowed to call the <code>GetProgrammaticAccessCredentials</code> API to obtain a credentials token for a specific FinSpace user. This must be an IAM role within your FinSpace account.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    #
    #   @return [String]
    #
    CreateUserInput = ::Struct.new(
      :email_address,
      :type,
      :first_name,
      :last_name,
      :api_access,
      :api_access_principal_arn,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::FinspaceData::Types::CreateUserInput "\
          "email_address=\"[SENSITIVE]\", "\
          "type=#{type || 'nil'}, "\
          "first_name=\"[SENSITIVE]\", "\
          "last_name=\"[SENSITIVE]\", "\
          "api_access=#{api_access || 'nil'}, "\
          "api_access_principal_arn=#{api_access_principal_arn || 'nil'}, "\
          "client_token=#{client_token || 'nil'}>"
      end
    end

    # @!attribute user_id
    #   <p>The unique identifier for the user.</p>
    #
    #   @return [String]
    #
    CreateUserOutput = ::Struct.new(
      :user_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Short term API credentials.</p>
    #
    # @!attribute access_key_id
    #   <p>The access key identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute secret_access_key
    #   <p>The access key.</p>
    #
    #   @return [String]
    #
    # @!attribute session_token
    #   <p>The session token.</p>
    #
    #   @return [String]
    #
    Credentials = ::Struct.new(
      :access_key_id,
      :secret_access_key,
      :session_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Structure for the Dataview destination type parameters.</p>
    #
    # @!attribute destination_type
    #   <p>Destination type for a Dataview.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>GLUE_TABLE</code> – Glue table destination type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>S3</code> – S3 destination type.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute s3_destination_export_file_format
    #   <p>Data view export file format.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PARQUET</code> – Parquet export file format.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELIMITED_TEXT</code> – Delimited text export file format.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["PARQUET", "DELIMITED_TEXT"]
    #
    #   @return [String]
    #
    # @!attribute s3_destination_export_file_format_options
    #   <p>Format Options for S3 Destination type.</p>
    #            <p>Here is an example of how you could specify the <code>s3DestinationExportFileFormatOptions</code>
    #            </p>
    #            <p>
    #               <code>
    #           {
    #           "header": "true",
    #           "delimiter": ",",
    #           "compression": "gzip"
    #           }</code>
    #            </p>
    #
    #   @return [Hash<String, String>]
    #
    DataViewDestinationTypeParams = ::Struct.new(
      :destination_type,
      :s3_destination_export_file_format,
      :s3_destination_export_file_format_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The structure with error messages.</p>
    #
    # @!attribute error_message
    #   <p>The text of the error message.</p>
    #
    #   @return [String]
    #
    # @!attribute error_category
    #   <p>The category of the error.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>VALIDATION</code> – The inputs to this request are invalid.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SERVICE_QUOTA_EXCEEDED</code> – Service quotas have been exceeded. Please
    #             contact AWS support to increase quotas.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACCESS_DENIED</code> – Missing required permission to perform this
    #             request.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RESOURCE_NOT_FOUND</code> – One or more inputs to this request were not
    #             found.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>THROTTLING</code> – The system temporarily lacks sufficient resources to process
    #             the request.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INTERNAL_SERVICE_EXCEPTION</code> – An internal service error has
    #             occurred.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CANCELLED</code> – Cancelled.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>USER_RECOVERABLE</code> – A user recoverable error has occurred.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["VALIDATION", "SERVICE_QUOTA_EXCEEDED", "ACCESS_DENIED", "RESOURCE_NOT_FOUND", "THROTTLING", "INTERNAL_SERVICE_EXCEPTION", "CANCELLED", "USER_RECOVERABLE"]
    #
    #   @return [String]
    #
    DataViewErrorInfo = ::Struct.new(
      :error_message,
      :error_category,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DataViewStatus
    #
    module DataViewStatus
      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      STARTING = "STARTING"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      CANCELLED = "CANCELLED"

      # No documentation available.
      #
      TIMEOUT = "TIMEOUT"

      # No documentation available.
      #
      SUCCESS = "SUCCESS"

      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      FAILED_CLEANUP_FAILED = "FAILED_CLEANUP_FAILED"
    end

    # <p>Structure for the summary of a Dataview.</p>
    #
    # @!attribute data_view_id
    #   <p>The unique identifier for the Dataview.</p>
    #
    #   @return [String]
    #
    # @!attribute data_view_arn
    #   <p>The ARN identifier of the Dataview.</p>
    #
    #   @return [String]
    #
    # @!attribute dataset_id
    #   <p>Th unique identifier for the Dataview Dataset.</p>
    #
    #   @return [String]
    #
    # @!attribute as_of_timestamp
    #   <p>Time range to use for the Dataview. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>
    #
    #   @return [Integer]
    #
    # @!attribute partition_columns
    #   <p>Ordered set of column names used to partition data.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute sort_columns
    #   <p>Columns to be used for sorting the data.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute status
    #   <p>The status of a Dataview creation.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>RUNNING</code> – Dataview creation is running.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STARTING</code> – Dataview creation is starting.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> – Dataview creation has failed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CANCELLED</code> – Dataview creation has been cancelled.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TIMEOUT</code> – Dataview creation has timed out.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SUCCESS</code> – Dataview creation has succeeded.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PENDING</code> – Dataview creation is pending.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED_CLEANUP_FAILED</code> – Dataview creation failed and resource cleanup failed.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["RUNNING", "STARTING", "FAILED", "CANCELLED", "TIMEOUT", "SUCCESS", "PENDING", "FAILED_CLEANUP_FAILED"]
    #
    #   @return [String]
    #
    # @!attribute error_info
    #   <p>The structure with error messages.</p>
    #
    #   @return [DataViewErrorInfo]
    #
    # @!attribute destination_type_properties
    #   <p>Information about the Dataview destination.</p>
    #
    #   @return [DataViewDestinationTypeParams]
    #
    # @!attribute auto_update
    #   <p>The flag to indicate Dataview should be updated automatically.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute create_time
    #   <p>The timestamp at which the Dataview was created in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>
    #
    #   @return [Integer]
    #
    # @!attribute last_modified_time
    #   <p>The last time that a Dataview was modified. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>
    #
    #   @return [Integer]
    #
    DataViewSummary = ::Struct.new(
      :data_view_id,
      :data_view_arn,
      :dataset_id,
      :as_of_timestamp,
      :partition_columns,
      :sort_columns,
      :status,
      :error_info,
      :destination_type_properties,
      :auto_update,
      :create_time,
      :last_modified_time,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.auto_update ||= false
        self.create_time ||= 0
        self.last_modified_time ||= 0
      end

    end

    # <p>The structure for a Dataset.</p>
    #
    # @!attribute dataset_id
    #   <p>An identifier for a Dataset.</p>
    #
    #   @return [String]
    #
    # @!attribute dataset_arn
    #   <p>The ARN identifier of the Dataset.</p>
    #
    #   @return [String]
    #
    # @!attribute dataset_title
    #   <p>Display title for a Dataset.</p>
    #
    #   @return [String]
    #
    # @!attribute kind
    #   <p>The format in which Dataset data is structured.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>TABULAR</code> – Data is structured in a tabular format.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NON_TABULAR</code> – Data is structured in a non-tabular format.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["TABULAR", "NON_TABULAR"]
    #
    #   @return [String]
    #
    # @!attribute dataset_description
    #   <p>Description for a Dataset.</p>
    #
    #   @return [String]
    #
    # @!attribute owner_info
    #   <p>Contact information for a Dataset owner.</p>
    #
    #   @return [DatasetOwnerInfo]
    #
    # @!attribute create_time
    #   <p>The timestamp at which the Dataset was created in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>
    #
    #   @return [Integer]
    #
    # @!attribute last_modified_time
    #   <p>The last time that the Dataset was modified. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>
    #
    #   @return [Integer]
    #
    # @!attribute schema_definition
    #   <p>Definition for a schema on a tabular Dataset.</p>
    #
    #   @return [SchemaUnion]
    #
    # @!attribute alias
    #   <p>The unique resource identifier for a Dataset.</p>
    #
    #   @return [String]
    #
    Dataset = ::Struct.new(
      :dataset_id,
      :dataset_arn,
      :dataset_title,
      :kind,
      :dataset_description,
      :owner_info,
      :create_time,
      :last_modified_time,
      :schema_definition,
      :alias,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.create_time ||= 0
        self.last_modified_time ||= 0
      end

    end

    # Includes enum constants for DatasetKind
    #
    module DatasetKind
      # No documentation available.
      #
      TABULAR = "TABULAR"

      # No documentation available.
      #
      NON_TABULAR = "NON_TABULAR"
    end

    # <p>A structure for Dataset owner info.</p>
    #
    # @!attribute name
    #   <p>The name of the Dataset owner.</p>
    #
    #   @return [String]
    #
    # @!attribute phone_number
    #   <p>Phone number for the Dataset owner.</p>
    #
    #   @return [String]
    #
    # @!attribute email
    #   <p>Email address for the Dataset owner.</p>
    #
    #   @return [String]
    #
    DatasetOwnerInfo = ::Struct.new(
      :name,
      :phone_number,
      :email,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::FinspaceData::Types::DatasetOwnerInfo "\
          "name=#{name || 'nil'}, "\
          "phone_number=#{phone_number || 'nil'}, "\
          "email=\"[SENSITIVE]\">"
      end
    end

    # Includes enum constants for DatasetStatus
    #
    module DatasetStatus
      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      SUCCESS = "SUCCESS"

      # No documentation available.
      #
      RUNNING = "RUNNING"
    end

    # The request for a DeleteDataset operation.
    #
    # @!attribute client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    #
    #   @return [String]
    #
    # @!attribute dataset_id
    #   <p>The unique identifier of the Dataset to be deleted.</p>
    #
    #   @return [String]
    #
    DeleteDatasetInput = ::Struct.new(
      :client_token,
      :dataset_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # The response from an DeleteDataset operation
    #
    # @!attribute dataset_id
    #   <p>The unique identifier for the deleted Dataset.</p>
    #
    #   @return [String]
    #
    DeleteDatasetOutput = ::Struct.new(
      :dataset_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute permission_group_id
    #   <p>The unique identifier for the permission group that you want to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    #
    #   @return [String]
    #
    DeletePermissionGroupInput = ::Struct.new(
      :permission_group_id,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute permission_group_id
    #   <p>The unique identifier for the deleted permission group.</p>
    #
    #   @return [String]
    #
    DeletePermissionGroupOutput = ::Struct.new(
      :permission_group_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_id
    #   <p>The unique identifier for the user account that you want to disable.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    #
    #   @return [String]
    #
    DisableUserInput = ::Struct.new(
      :user_id,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_id
    #   <p>The unique identifier for the disabled user account.</p>
    #
    #   @return [String]
    #
    DisableUserOutput = ::Struct.new(
      :user_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_id
    #   <p>The unique identifier for the user account that you want to enable.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    #
    #   @return [String]
    #
    EnableUserInput = ::Struct.new(
      :user_id,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_id
    #   <p>The unique identifier for the enabled user account.</p>
    #
    #   @return [String]
    #
    EnableUserOutput = ::Struct.new(
      :user_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ErrorCategory
    #
    module ErrorCategory
      # No documentation available.
      #
      VALIDATION = "VALIDATION"

      # No documentation available.
      #
      SERVICE_QUOTA_EXCEEDED = "SERVICE_QUOTA_EXCEEDED"

      # No documentation available.
      #
      ACCESS_DENIED = "ACCESS_DENIED"

      # No documentation available.
      #
      RESOURCE_NOT_FOUND = "RESOURCE_NOT_FOUND"

      # No documentation available.
      #
      THROTTLING = "THROTTLING"

      # No documentation available.
      #
      INTERNAL_SERVICE_EXCEPTION = "INTERNAL_SERVICE_EXCEPTION"

      # No documentation available.
      #
      CANCELLED = "CANCELLED"

      # No documentation available.
      #
      USER_RECOVERABLE = "USER_RECOVERABLE"
    end

    # Includes enum constants for ExportFileFormat
    #
    module ExportFileFormat
      # No documentation available.
      #
      PARQUET = "PARQUET"

      # No documentation available.
      #
      DELIMITED_TEXT = "DELIMITED_TEXT"
    end

    # Request to describe a changeset.
    #
    # @!attribute dataset_id
    #   <p>The unique identifier for the FinSpace Dataset where the Changeset is created.</p>
    #
    #   @return [String]
    #
    # @!attribute changeset_id
    #   <p>The unique identifier of the Changeset for which to get data.</p>
    #
    #   @return [String]
    #
    GetChangesetInput = ::Struct.new(
      :dataset_id,
      :changeset_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # The response from a describe changeset operation
    #
    # @!attribute changeset_id
    #   <p>The unique identifier for a Changeset.</p>
    #
    #   @return [String]
    #
    # @!attribute changeset_arn
    #   <p>The ARN identifier of the Changeset.</p>
    #
    #   @return [String]
    #
    # @!attribute dataset_id
    #   <p>The unique identifier for the FinSpace Dataset where the Changeset is created.</p>
    #
    #   @return [String]
    #
    # @!attribute change_type
    #   <p>Type that indicates how a Changeset is applied to a Dataset.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>REPLACE</code> – Changeset is considered as a replacement to all prior loaded Changesets.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>APPEND</code> – Changeset is considered as an addition to the end of all prior loaded Changesets.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MODIFY</code> – Changeset is considered as a replacement to a specific prior ingested Changeset.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["REPLACE", "APPEND", "MODIFY"]
    #
    #   @return [String]
    #
    # @!attribute source_params
    #   <p>Options that define the location of the data being ingested.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute format_params
    #   <p>Structure of the source file(s).</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute create_time
    #   <p>The timestamp at which the Changeset was created in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>
    #
    #   @return [Integer]
    #
    # @!attribute status
    #   <p>The status of Changeset creation operation.</p>
    #
    #   Enum, one of: ["PENDING", "FAILED", "SUCCESS", "RUNNING", "STOP_REQUESTED"]
    #
    #   @return [String]
    #
    # @!attribute error_info
    #   <p>The structure with error messages.</p>
    #
    #   @return [ChangesetErrorInfo]
    #
    # @!attribute active_until_timestamp
    #   <p>Time until which the Changeset is active. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>
    #
    #   @return [Integer]
    #
    # @!attribute active_from_timestamp
    #   <p>Beginning time from which the Changeset is active. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>
    #
    #   @return [Integer]
    #
    # @!attribute updates_changeset_id
    #   <p>The unique identifier of the Changeset that is being updated.</p>
    #
    #   @return [String]
    #
    # @!attribute updated_by_changeset_id
    #   <p>The unique identifier of the updated Changeset.</p>
    #
    #   @return [String]
    #
    GetChangesetOutput = ::Struct.new(
      :changeset_id,
      :changeset_arn,
      :dataset_id,
      :change_type,
      :source_params,
      :format_params,
      :create_time,
      :status,
      :error_info,
      :active_until_timestamp,
      :active_from_timestamp,
      :updates_changeset_id,
      :updated_by_changeset_id,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.create_time ||= 0
      end

    end

    # Request for retrieving a data view detail. Grouped / accessible within a dataset by its dataset id.
    #
    # @!attribute data_view_id
    #   <p>The unique identifier for the Dataview.</p>
    #
    #   @return [String]
    #
    # @!attribute dataset_id
    #   <p>The unique identifier for the Dataset used in the Dataview.</p>
    #
    #   @return [String]
    #
    GetDataViewInput = ::Struct.new(
      :data_view_id,
      :dataset_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Response from retrieving a dataview, which includes details on the target database and table name
    #
    # @!attribute auto_update
    #   <p>Flag to indicate Dataview should be updated automatically.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute partition_columns
    #   <p>Ordered set of column names used to partition data.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute dataset_id
    #   <p>The unique identifier for the Dataset used in the Dataview.</p>
    #
    #   @return [String]
    #
    # @!attribute as_of_timestamp
    #   <p>Time range to use for the Dataview. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>
    #
    #   @return [Integer]
    #
    # @!attribute error_info
    #   <p>Information about an error that occurred for the Dataview.</p>
    #
    #   @return [DataViewErrorInfo]
    #
    # @!attribute last_modified_time
    #   <p>The last time that a Dataview was modified. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>
    #
    #   @return [Integer]
    #
    # @!attribute create_time
    #   <p>The timestamp at which the Dataview was created in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>
    #
    #   @return [Integer]
    #
    # @!attribute sort_columns
    #   <p>Columns to be used for sorting the data.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute data_view_id
    #   <p>The unique identifier for the Dataview.</p>
    #
    #   @return [String]
    #
    # @!attribute data_view_arn
    #   <p>The ARN identifier of the Dataview.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_type_params
    #   <p>Options that define the destination type for the Dataview.</p>
    #
    #   @return [DataViewDestinationTypeParams]
    #
    # @!attribute status
    #   <p>The status of a Dataview creation.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>RUNNING</code> – Dataview creation is running.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STARTING</code> – Dataview creation is starting.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> – Dataview creation has failed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CANCELLED</code> – Dataview creation has been cancelled.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TIMEOUT</code> – Dataview creation has timed out.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SUCCESS</code> – Dataview creation has succeeded.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PENDING</code> – Dataview creation is pending.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED_CLEANUP_FAILED</code> – Dataview creation failed and resource cleanup failed.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["RUNNING", "STARTING", "FAILED", "CANCELLED", "TIMEOUT", "SUCCESS", "PENDING", "FAILED_CLEANUP_FAILED"]
    #
    #   @return [String]
    #
    GetDataViewOutput = ::Struct.new(
      :auto_update,
      :partition_columns,
      :dataset_id,
      :as_of_timestamp,
      :error_info,
      :last_modified_time,
      :create_time,
      :sort_columns,
      :data_view_id,
      :data_view_arn,
      :destination_type_params,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.auto_update ||= false
        self.last_modified_time ||= 0
        self.create_time ||= 0
      end

    end

    # Request for the GetDataset operation.
    #
    # @!attribute dataset_id
    #   <p>The unique identifier for a Dataset.</p>
    #
    #   @return [String]
    #
    GetDatasetInput = ::Struct.new(
      :dataset_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Response for the GetDataset operation
    #
    # @!attribute dataset_id
    #   <p>The unique identifier for a Dataset.</p>
    #
    #   @return [String]
    #
    # @!attribute dataset_arn
    #   <p>The ARN identifier of the Dataset.</p>
    #
    #   @return [String]
    #
    # @!attribute dataset_title
    #   <p>Display title for a Dataset.</p>
    #
    #   @return [String]
    #
    # @!attribute kind
    #   <p>The format in which Dataset data is structured.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>TABULAR</code> – Data is structured in a tabular format.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NON_TABULAR</code> – Data is structured in a non-tabular format.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["TABULAR", "NON_TABULAR"]
    #
    #   @return [String]
    #
    # @!attribute dataset_description
    #   <p>A description of the Dataset.</p>
    #
    #   @return [String]
    #
    # @!attribute create_time
    #   <p>The timestamp at which the Dataset was created in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>
    #
    #   @return [Integer]
    #
    # @!attribute last_modified_time
    #   <p>The last time that the Dataset was modified. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>
    #
    #   @return [Integer]
    #
    # @!attribute schema_definition
    #   <p>Definition for a schema on a tabular Dataset.</p>
    #
    #   @return [SchemaUnion]
    #
    # @!attribute alias
    #   <p>The unique resource identifier for a Dataset.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Status of the Dataset creation.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PENDING</code> – Dataset is pending creation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> – Dataset creation has failed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SUCCESS</code> – Dataset creation has succeeded.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RUNNING</code> – Dataset creation is running.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["PENDING", "FAILED", "SUCCESS", "RUNNING"]
    #
    #   @return [String]
    #
    GetDatasetOutput = ::Struct.new(
      :dataset_id,
      :dataset_arn,
      :dataset_title,
      :kind,
      :dataset_description,
      :create_time,
      :last_modified_time,
      :schema_definition,
      :alias,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.create_time ||= 0
        self.last_modified_time ||= 0
      end

    end

    # Request for GetProgrammaticAccessCredentials operation
    #
    # @!attribute duration_in_minutes
    #   <p>The time duration in which the credentials remain valid. </p>
    #
    #   @return [Integer]
    #
    # @!attribute environment_id
    #   <p>The FinSpace environment identifier.</p>
    #
    #   @return [String]
    #
    GetProgrammaticAccessCredentialsInput = ::Struct.new(
      :duration_in_minutes,
      :environment_id,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.duration_in_minutes ||= 0
      end

    end

    # Response for GetProgrammaticAccessCredentials operation
    #
    # @!attribute credentials
    #   <p>Returns the programmatic credentials.</p>
    #
    #   @return [Credentials]
    #
    # @!attribute duration_in_minutes
    #   <p>Returns the duration in which the credentials will remain valid.</p>
    #
    #   @return [Integer]
    #
    GetProgrammaticAccessCredentialsOutput = ::Struct.new(
      :credentials,
      :duration_in_minutes,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.duration_in_minutes ||= 0
      end

    end

    # @!attribute user_id
    #   <p>The unique identifier of the user to get data for.</p>
    #
    #   @return [String]
    #
    GetUserInput = ::Struct.new(
      :user_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_id
    #   <p>The unique identifier for the user account that is retrieved.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the user account. </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATING</code> – The user account creation is in progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ENABLED</code> – The user account is created and is currently active.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLED</code> – The user account is currently inactive.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["CREATING", "ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute first_name
    #   <p>The first name of the user.</p>
    #
    #   @return [String]
    #
    # @!attribute last_name
    #   <p>The last name of the user.</p>
    #
    #   @return [String]
    #
    # @!attribute email_address
    #   <p>The email address that is associated with the user.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>Indicates the type of user.  </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SUPER_USER</code> – A user with permission to all the functionality and data in FinSpace.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>APP_USER</code> – A user with specific permissions in FinSpace. The users are assigned permissions by adding them to a permissions group.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["SUPER_USER", "APP_USER"]
    #
    #   @return [String]
    #
    # @!attribute api_access
    #   <p>Indicates whether the user can use the <code>GetProgrammaticAccessCredentials</code> API to obtain credentials that can then be used to access other FinSpace Data API operations. </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ENABLED</code> – The user has permissions to use the APIs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLED</code> – The user does not have permissions to use any APIs.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute api_access_principal_arn
    #   <p>The ARN identifier of an AWS user or role that is allowed to call the <code>GetProgrammaticAccessCredentials</code> API to obtain a credentials token for a specific FinSpace user. This must be an IAM role within your FinSpace account.</p>
    #
    #   @return [String]
    #
    # @!attribute create_time
    #   <p>The timestamp at which the user account was created in FinSpace. The value is determined as epoch time in milliseconds. </p>
    #
    #   @return [Integer]
    #
    # @!attribute last_enabled_time
    #   <p>Describes the last time the user account was enabled. The value is determined as epoch time in milliseconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute last_disabled_time
    #   <p>Describes the last time the user account was disabled. The value is determined as epoch time in milliseconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute last_modified_time
    #   <p>Describes the last time the user account was updated. The value is determined as epoch time in milliseconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute last_login_time
    #   <p>Describes the last time that the user logged into their account. The value is determined as epoch time in milliseconds.</p>
    #
    #   @return [Integer]
    #
    GetUserOutput = ::Struct.new(
      :user_id,
      :status,
      :first_name,
      :last_name,
      :email_address,
      :type,
      :api_access,
      :api_access_principal_arn,
      :create_time,
      :last_enabled_time,
      :last_disabled_time,
      :last_modified_time,
      :last_login_time,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.create_time ||= 0
        self.last_enabled_time ||= 0
        self.last_disabled_time ||= 0
        self.last_modified_time ||= 0
        self.last_login_time ||= 0
      end

      def to_s
        "#<struct AWS::SDK::FinspaceData::Types::GetUserOutput "\
          "user_id=#{user_id || 'nil'}, "\
          "status=#{status || 'nil'}, "\
          "first_name=\"[SENSITIVE]\", "\
          "last_name=\"[SENSITIVE]\", "\
          "email_address=\"[SENSITIVE]\", "\
          "type=#{type || 'nil'}, "\
          "api_access=#{api_access || 'nil'}, "\
          "api_access_principal_arn=#{api_access_principal_arn || 'nil'}, "\
          "create_time=#{create_time || 'nil'}, "\
          "last_enabled_time=#{last_enabled_time || 'nil'}, "\
          "last_disabled_time=#{last_disabled_time || 'nil'}, "\
          "last_modified_time=#{last_modified_time || 'nil'}, "\
          "last_login_time=#{last_login_time || 'nil'}>"
      end
    end

    # @!attribute location_type
    #   <p>Specify the type of the working location.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SAGEMAKER</code> – Use the Amazon S3 location as a temporary location to store data content when
    #             working with FinSpace Notebooks that run on SageMaker studio.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INGESTION</code> – Use the Amazon S3 location as a staging location to copy your
    #             data content and then use the location with the Changeset creation operation.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["INGESTION", "SAGEMAKER"]
    #
    #   @return [String]
    #
    GetWorkingLocationInput = ::Struct.new(
      :location_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute s3_uri
    #   <p>Returns the Amazon S3 URI for the working location.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_path
    #   <p>Returns the Amazon S3 Path for the working location.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_bucket
    #   <p>Returns the Amazon S3 bucket name for the working location.</p>
    #
    #   @return [String]
    #
    GetWorkingLocationOutput = ::Struct.new(
      :s3_uri,
      :s3_path,
      :s3_bucket,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for IngestionStatus
    #
    module IngestionStatus
      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      SUCCESS = "SUCCESS"

      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      STOP_REQUESTED = "STOP_REQUESTED"
    end

    # <p>The request processing has failed because of an unknown error, exception or
    #       failure.</p>
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

    # <p>A limit has exceeded.</p>
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

    # Request to ListChangesetsRequest. It exposes minimal query filters.
    #
    # @!attribute dataset_id
    #   <p>The unique identifier for the FinSpace Dataset to which the Changeset belongs.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results per page.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A token that indicates where a results page should begin.</p>
    #
    #   @return [String]
    #
    ListChangesetsInput = ::Struct.new(
      :dataset_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Response to ListChangesetsResponse. This returns a list of dataset changesets that match the query criteria.
    #
    # @!attribute changesets
    #   <p>List of Changesets found.</p>
    #
    #   @return [Array<ChangesetSummary>]
    #
    # @!attribute next_token
    #   <p>A token that indicates where a results page should begin.</p>
    #
    #   @return [String]
    #
    ListChangesetsOutput = ::Struct.new(
      :changesets,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Request for a list data views.
    #
    # @!attribute dataset_id
    #   <p>The unique identifier of the Dataset for which to retrieve Dataviews.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A token that indicates where a results page should begin.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results per page.</p>
    #
    #   @return [Integer]
    #
    ListDataViewsInput = ::Struct.new(
      :dataset_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates where a results page should begin.</p>
    #
    #   @return [String]
    #
    # @!attribute data_views
    #   <p>A list of Dataviews.</p>
    #
    #   @return [Array<DataViewSummary>]
    #
    ListDataViewsOutput = ::Struct.new(
      :next_token,
      :data_views,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Request for the ListDatasets operation.
    #
    # @!attribute next_token
    #   <p>A token that indicates where a results page should begin.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results per page.</p>
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

    # Response for the ListDatasets operation
    #
    # @!attribute datasets
    #   <p>List of Datasets.</p>
    #
    #   @return [Array<Dataset>]
    #
    # @!attribute next_token
    #   <p>A token that indicates where a results page should begin.</p>
    #
    #   @return [String]
    #
    ListDatasetsOutput = ::Struct.new(
      :datasets,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates where a results page should begin.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results per page.</p>
    #
    #   @return [Integer]
    #
    ListPermissionGroupsInput = ::Struct.new(
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

    # @!attribute permission_groups
    #   <p>A list of all the permission groups.</p>
    #
    #   @return [Array<PermissionGroup>]
    #
    # @!attribute next_token
    #   <p>A token that indicates where a results page should begin.</p>
    #
    #   @return [String]
    #
    ListPermissionGroupsOutput = ::Struct.new(
      :permission_groups,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates where a results page should begin.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results per page.</p>
    #
    #   @return [Integer]
    #
    ListUsersInput = ::Struct.new(
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

    # @!attribute users
    #   <p>A list of all the user accounts.</p>
    #
    #   @return [Array<User>]
    #
    # @!attribute next_token
    #   <p>A token that indicates where a results page should begin.</p>
    #
    #   @return [String]
    #
    ListUsersOutput = ::Struct.new(
      :users,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The structure for a permission group.</p>
    #
    # @!attribute permission_group_id
    #   <p> The unique identifier for the permission group.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the permission group.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p> A brief description for the permission group.</p>
    #
    #   @return [String]
    #
    # @!attribute application_permissions
    #   <p>Indicates the permissions that are granted to a specific group for accessing the FinSpace application.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CreateDataset</code> – Group members can create new datasets.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ManageClusters</code> – Group members can manage Apache Spark clusters from FinSpace notebooks.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ManageUsersAndGroups</code> – Group members can manage users and permission groups.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ManageAttributeSets</code> – Group members can manage attribute sets.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ViewAuditData</code> – Group members can view audit data.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AccessNotebooks</code> – Group members will have access to FinSpace notebooks.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GetTemporaryCredentials</code> – Group members can get temporary API credentials.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    # @!attribute create_time
    #   <p>The timestamp at which the group was created in FinSpace. The value is determined as epoch time in milliseconds.
    #       </p>
    #
    #   @return [Integer]
    #
    # @!attribute last_modified_time
    #   <p>Describes the last time the permission group was updated. The value is determined as epoch time in milliseconds.
    #       </p>
    #
    #   @return [Integer]
    #
    PermissionGroup = ::Struct.new(
      :permission_group_id,
      :name,
      :description,
      :application_permissions,
      :create_time,
      :last_modified_time,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.create_time ||= 0
        self.last_modified_time ||= 0
      end

      def to_s
        "#<struct AWS::SDK::FinspaceData::Types::PermissionGroup "\
          "permission_group_id=#{permission_group_id || 'nil'}, "\
          "name=\"[SENSITIVE]\", "\
          "description=\"[SENSITIVE]\", "\
          "application_permissions=#{application_permissions || 'nil'}, "\
          "create_time=#{create_time || 'nil'}, "\
          "last_modified_time=#{last_modified_time || 'nil'}>"
      end
    end

    # <p>Permission group parameters for Dataset permissions.</p>
    #          <p>Here is an example of how you could specify the <code>PermissionGroupParams</code>:</p>
    #          <p>
    #             <code>
    #         {
    #         "permissionGroupId": "0r6fCRtSTUk4XPfXQe3M0g",
    #         "datasetPermissions": [
    #         {"permission": "ViewDatasetDetails"},
    #         {"permission": "AddDatasetData"},
    #         {"permission": "EditDatasetMetadata"},
    #         {"permission": "DeleteDataset"}
    #         ]
    #         }
    #       </code>
    #          </p>
    #
    # @!attribute permission_group_id
    #   <p>The unique identifier for the <code>PermissionGroup</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute dataset_permissions
    #   <p>List of resource permissions.</p>
    #
    #   @return [Array<ResourcePermission>]
    #
    PermissionGroupParams = ::Struct.new(
      :permission_group_id,
      :dataset_permissions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_id
    #   <p>The unique identifier of the user that a temporary password is requested for.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    #
    #   @return [String]
    #
    ResetUserPasswordInput = ::Struct.new(
      :user_id,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_id
    #   <p>The unique identifier of the user that a new password is generated for.</p>
    #
    #   @return [String]
    #
    # @!attribute temporary_password
    #   <p>A randomly generated temporary password for the requested user account. This password expires in 7 days.</p>
    #
    #   @return [String]
    #
    ResetUserPasswordOutput = ::Struct.new(
      :user_id,
      :temporary_password,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::FinspaceData::Types::ResetUserPasswordOutput "\
          "user_id=#{user_id || 'nil'}, "\
          "temporary_password=\"[SENSITIVE]\">"
      end
    end

    # <p>One or more resources can't be found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute reason
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      :reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Resource permission for a dataset. When you create a dataset, all the other members of the same user group inherit access to the dataset. You can only create a dataset if your user group has application permission for Create Datasets.</p>
    #          <p>The following is a list of valid dataset permissions that you can apply:
    #
    #   </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>ViewDatasetDetails</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ReadDatasetDetails</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>AddDatasetData</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>CreateDataView</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>EditDatasetMetadata</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>DeleteDataset</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>For more information on the dataset permissions, see <a href="https://docs.aws.amazon.com/finspace/latest/userguide/managing-user-permissions.html#supported-dataset-permissions">Supported Dataset Permissions</a> in the FinSpace User Guide.</p>
    #
    # @!attribute permission
    #   <p>Permission for a resource.</p>
    #
    #   @return [String]
    #
    ResourcePermission = ::Struct.new(
      :permission,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Definition for a schema on a tabular Dataset.</p>
    #
    # @!attribute columns
    #   <p>List of column definitions.</p>
    #
    #   @return [Array<ColumnDefinition>]
    #
    # @!attribute primary_key_columns
    #   <p>List of column names used for primary key.</p>
    #
    #   @return [Array<String>]
    #
    SchemaDefinition = ::Struct.new(
      :columns,
      :primary_key_columns,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A union of schema types.</p>
    #
    # @!attribute tabular_schema_config
    #   <p>The configuration for a schema on a tabular Dataset.</p>
    #
    #   @return [SchemaDefinition]
    #
    SchemaUnion = ::Struct.new(
      :tabular_schema_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was denied due to request throttling.</p>
    #
    ThrottlingException = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Request to update an existing changeset.
    #
    # @!attribute client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    #
    #   @return [String]
    #
    # @!attribute dataset_id
    #   <p>The unique identifier for the FinSpace Dataset in which the Changeset is created.</p>
    #
    #   @return [String]
    #
    # @!attribute changeset_id
    #   <p>The unique identifier for the Changeset to update.</p>
    #
    #   @return [String]
    #
    # @!attribute source_params
    #   <p>Options that define the location of the data being ingested (<code>s3SourcePath</code>) and the source of the changeset (<code>sourceType</code>).</p>
    #            <p>Both <code>s3SourcePath</code> and <code>sourceType</code> are required attributes.</p>
    #            <p>Here is an example of how you could specify the <code>sourceParams</code>:</p>
    #            <p>
    #               <code>
    #           "sourceParams":
    #           {
    #           "s3SourcePath": "s3://finspace-landing-us-east-2-bk7gcfvitndqa6ebnvys4d/scratch/wr5hh8pwkpqqkxa4sxrmcw/ingestion/equity.csv",
    #           "sourceType": "S3"
    #           }
    #         </code>
    #            </p>
    #            <p>The S3 path that you specify must allow the FinSpace role access. To do that, you first need to configure the IAM policy on S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/finspace/latest/data-api/fs-using-the-finspace-api.html access-s3-buckets">Loading data from an Amazon S3 Bucket using the FinSpace API</a>section.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute format_params
    #   <p>Options that define the structure of the source file(s) including the format type (<code>formatType</code>), header row (<code>withHeader</code>), data separation character (<code>separator</code>) and the type of compression (<code>compression</code>).
    #       </p>
    #            <p>
    #               <code>formatType</code> is a required attribute and can have the following values:
    #       </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PARQUET</code> – Parquet source file format.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CSV</code> – CSV source file format.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>JSON</code> – JSON source file format.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>XML</code> – XML source file format.</p>
    #               </li>
    #            </ul>
    #
    #            <p>Here is an example of how you could specify the <code>formatParams</code>:</p>
    #            <p>
    #               <code>
    #           "formatParams":
    #           {
    #           "formatType": "CSV",
    #           "withHeader": "true",
    #           "separator": ",",
    #           "compression":"None"
    #           }
    #         </code>
    #            </p>
    #            <p>Note that if you only provide <code>formatType</code> as <code>CSV</code>, the rest of the attributes will automatically default to CSV values as following:</p>
    #            <p>
    #               <code>
    #           {
    #           "withHeader": "true",
    #           "separator": ","
    #           }
    #           </code>
    #            </p>
    #            <p> For more information about supported file formats, see <a href="https://docs.aws.amazon.com/finspace/latest/userguide/supported-data-types.html">Supported Data Types and File Formats</a> in the FinSpace User Guide.</p>
    #
    #   @return [Hash<String, String>]
    #
    UpdateChangesetInput = ::Struct.new(
      :client_token,
      :dataset_id,
      :changeset_id,
      :source_params,
      :format_params,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # The response from a update changeset operation.
    #
    # @!attribute changeset_id
    #   <p>The unique identifier for the Changeset to update.</p>
    #
    #   @return [String]
    #
    # @!attribute dataset_id
    #   <p>The unique identifier for the FinSpace Dataset in which the Changeset is created.</p>
    #
    #   @return [String]
    #
    UpdateChangesetOutput = ::Struct.new(
      :changeset_id,
      :dataset_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # The request for an UpdateDataset operation
    #
    # @!attribute client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    #
    #   @return [String]
    #
    # @!attribute dataset_id
    #   <p>The unique identifier for the Dataset to update.</p>
    #
    #   @return [String]
    #
    # @!attribute dataset_title
    #   <p>A display title for the Dataset.</p>
    #
    #   @return [String]
    #
    # @!attribute kind
    #   <p>The format in which the Dataset data is structured.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>TABULAR</code> – Data is structured in a tabular format.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NON_TABULAR</code> – Data is structured in a non-tabular format.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["TABULAR", "NON_TABULAR"]
    #
    #   @return [String]
    #
    # @!attribute dataset_description
    #   <p>A description for the Dataset.</p>
    #
    #   @return [String]
    #
    # @!attribute alias
    #   <p>The unique resource identifier for a Dataset.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_definition
    #   <p>Definition for a schema on a tabular Dataset.</p>
    #
    #   @return [SchemaUnion]
    #
    UpdateDatasetInput = ::Struct.new(
      :client_token,
      :dataset_id,
      :dataset_title,
      :kind,
      :dataset_description,
      :alias,
      :schema_definition,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # The response from an UpdateDataset operation
    #
    # @!attribute dataset_id
    #   <p>The unique identifier for updated Dataset.</p>
    #
    #   @return [String]
    #
    UpdateDatasetOutput = ::Struct.new(
      :dataset_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute permission_group_id
    #   <p>The unique identifier for the permission group to update.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the permission group.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A brief description for the permission group.</p>
    #
    #   @return [String]
    #
    # @!attribute application_permissions
    #   <p>The permissions that are granted to a specific group for accessing the FinSpace application.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CreateDataset</code> – Group members can create new datasets.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ManageClusters</code> – Group members can manage Apache Spark clusters from FinSpace notebooks.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ManageUsersAndGroups</code> – Group members can manage users and permission groups.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ManageAttributeSets</code> – Group members can manage attribute sets.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ViewAuditData</code> – Group members can view audit data.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AccessNotebooks</code> – Group members will have access to FinSpace notebooks.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GetTemporaryCredentials</code> – Group members can get temporary API credentials.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    # @!attribute client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    #
    #   @return [String]
    #
    UpdatePermissionGroupInput = ::Struct.new(
      :permission_group_id,
      :name,
      :description,
      :application_permissions,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::FinspaceData::Types::UpdatePermissionGroupInput "\
          "permission_group_id=#{permission_group_id || 'nil'}, "\
          "name=\"[SENSITIVE]\", "\
          "description=\"[SENSITIVE]\", "\
          "application_permissions=#{application_permissions || 'nil'}, "\
          "client_token=#{client_token || 'nil'}>"
      end
    end

    # @!attribute permission_group_id
    #   <p>The unique identifier for the updated permission group.</p>
    #
    #   @return [String]
    #
    UpdatePermissionGroupOutput = ::Struct.new(
      :permission_group_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_id
    #   <p>The unique identifier for the user account to update.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The option to indicate the type of user.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SUPER_USER</code>– A user with permission to all the functionality and data in FinSpace.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>APP_USER</code> – A user with specific permissions in FinSpace. The users are assigned permissions by adding them to a permissions group.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["SUPER_USER", "APP_USER"]
    #
    #   @return [String]
    #
    # @!attribute first_name
    #   <p>The first name of the user.</p>
    #
    #   @return [String]
    #
    # @!attribute last_name
    #   <p>The last name of the user.</p>
    #
    #   @return [String]
    #
    # @!attribute api_access
    #   <p>The option to indicate whether the user can use the <code>GetProgrammaticAccessCredentials</code> API to obtain credentials that can then be used to access other FinSpace Data API operations.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ENABLED</code> – The user has permissions to use the APIs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLED</code> – The user does not have permissions to use any APIs.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute api_access_principal_arn
    #   <p>The ARN identifier of an AWS user or role that is allowed to call the <code>GetProgrammaticAccessCredentials</code> API to obtain a credentials token for a specific FinSpace user. This must be an IAM role within your FinSpace account.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    #
    #   @return [String]
    #
    UpdateUserInput = ::Struct.new(
      :user_id,
      :type,
      :first_name,
      :last_name,
      :api_access,
      :api_access_principal_arn,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::FinspaceData::Types::UpdateUserInput "\
          "user_id=#{user_id || 'nil'}, "\
          "type=#{type || 'nil'}, "\
          "first_name=\"[SENSITIVE]\", "\
          "last_name=\"[SENSITIVE]\", "\
          "api_access=#{api_access || 'nil'}, "\
          "api_access_principal_arn=#{api_access_principal_arn || 'nil'}, "\
          "client_token=#{client_token || 'nil'}>"
      end
    end

    # @!attribute user_id
    #   <p>The unique identifier of the updated user account.</p>
    #
    #   @return [String]
    #
    UpdateUserOutput = ::Struct.new(
      :user_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The details of the user account.</p>
    #
    # @!attribute user_id
    #   <p>The unique identifier for the user.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the user account. </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATING</code> – The user account creation is in progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ENABLED</code> – The user account is created and is currently active.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLED</code> – The user account is currently inactive.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["CREATING", "ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute first_name
    #   <p>The first name of the user.</p>
    #
    #   @return [String]
    #
    # @!attribute last_name
    #   <p> The last name of the user.</p>
    #
    #   @return [String]
    #
    # @!attribute email_address
    #   <p>The email address of the user. The email address serves as a uniquer identifier for each user and cannot be changed after it's created.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p> Indicates the type of user.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SUPER_USER</code> – A user with permission to all the functionality and data in FinSpace.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>APP_USER</code> – A user with specific permissions in FinSpace. The users are assigned permissions by adding them to a permissions group.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["SUPER_USER", "APP_USER"]
    #
    #   @return [String]
    #
    # @!attribute api_access
    #   <p>Indicates whether the user can use the <code>GetProgrammaticAccessCredentials</code> API to obtain credentials that can then be used to access other FinSpace Data API operations.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ENABLED</code> – The user has permissions to use the APIs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLED</code> – The user does not have permissions to use any APIs.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute api_access_principal_arn
    #   <p>The ARN identifier of an AWS user or role that is allowed to call the <code>GetProgrammaticAccessCredentials</code> API to obtain a credentials token for a specific FinSpace user. This must be an IAM role within your FinSpace account.</p>
    #
    #   @return [String]
    #
    # @!attribute create_time
    #   <p>The timestamp at which the user account was created in FinSpace. The value is determined as epoch time in milliseconds. </p>
    #
    #   @return [Integer]
    #
    # @!attribute last_enabled_time
    #   <p> Describes the last time the user account was enabled. The value is determined as epoch time in milliseconds.
    #       </p>
    #
    #   @return [Integer]
    #
    # @!attribute last_disabled_time
    #   <p>Describes the last time the user account was disabled. The value is determined as epoch time in milliseconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute last_modified_time
    #   <p>Describes the last time the user account was updated. The value is determined as epoch time in milliseconds.
    #       </p>
    #
    #   @return [Integer]
    #
    # @!attribute last_login_time
    #   <p>Describes the last time that the user logged into their account. The value is determined as epoch time in milliseconds.
    #       </p>
    #
    #   @return [Integer]
    #
    User = ::Struct.new(
      :user_id,
      :status,
      :first_name,
      :last_name,
      :email_address,
      :type,
      :api_access,
      :api_access_principal_arn,
      :create_time,
      :last_enabled_time,
      :last_disabled_time,
      :last_modified_time,
      :last_login_time,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.create_time ||= 0
        self.last_enabled_time ||= 0
        self.last_disabled_time ||= 0
        self.last_modified_time ||= 0
        self.last_login_time ||= 0
      end

      def to_s
        "#<struct AWS::SDK::FinspaceData::Types::User "\
          "user_id=#{user_id || 'nil'}, "\
          "status=#{status || 'nil'}, "\
          "first_name=\"[SENSITIVE]\", "\
          "last_name=\"[SENSITIVE]\", "\
          "email_address=\"[SENSITIVE]\", "\
          "type=#{type || 'nil'}, "\
          "api_access=#{api_access || 'nil'}, "\
          "api_access_principal_arn=#{api_access_principal_arn || 'nil'}, "\
          "create_time=#{create_time || 'nil'}, "\
          "last_enabled_time=#{last_enabled_time || 'nil'}, "\
          "last_disabled_time=#{last_disabled_time || 'nil'}, "\
          "last_modified_time=#{last_modified_time || 'nil'}, "\
          "last_login_time=#{last_login_time || 'nil'}>"
      end
    end

    # Includes enum constants for UserStatus
    #
    module UserStatus
      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # Includes enum constants for UserType
    #
    module UserType
      # No documentation available.
      #
      SUPER_USER = "SUPER_USER"

      # No documentation available.
      #
      APP_USER = "APP_USER"
    end

    # <p>The input fails to satisfy the constraints specified by an AWS service.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute reason
    #
    #   @return [String]
    #
    ValidationException = ::Struct.new(
      :message,
      :reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for LocationType
    #
    module LocationType
      # No documentation available.
      #
      INGESTION = "INGESTION"

      # No documentation available.
      #
      SAGEMAKER = "SAGEMAKER"
    end

  end
end
