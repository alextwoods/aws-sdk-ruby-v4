# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::QuickSight
  module Types

    # <p>You don't have access to this item. The provided credentials couldn't be
    # 			validated. You might not be authorized to carry out the request. Make sure that your
    # 			account is authorized to use the Amazon QuickSight service, that your policies have the
    # 			correct permissions, and that you are using the correct access keys.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this request.</p>
    #
    #   @return [String]
    #
    AccessDeniedException = ::Struct.new(
      :message,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The Amazon QuickSight customizations associated with your Amazon Web Services account or a QuickSight namespace in a specific Amazon Web Services Region.</p>
    #
    # @!attribute default_theme
    #   <p>The default theme for this Amazon QuickSight subscription.</p>
    #
    #   @return [String]
    #
    # @!attribute default_email_customization_template
    #   <p>The default email customization template.</p>
    #
    #   @return [String]
    #
    AccountCustomization = ::Struct.new(
      :default_theme,
      :default_email_customization_template,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The Amazon QuickSight settings associated with your Amazon Web Services account.</p>
    #
    # @!attribute account_name
    #   <p>The "account name" you provided for the Amazon QuickSight subscription in your Amazon Web Services account.
    #               You create this name when you sign up for Amazon QuickSight. It is unique in all of Amazon Web Services and
    #               it appears only when users sign in.</p>
    #
    #   @return [String]
    #
    # @!attribute edition
    #   <p>The edition of Amazon QuickSight that you're currently subscribed to:
    #           Enterprise edition or Standard edition.</p>
    #
    #   Enum, one of: ["STANDARD", "ENTERPRISE"]
    #
    #   @return [String]
    #
    # @!attribute default_namespace
    #   <p>The default Amazon QuickSight namespace for your Amazon Web Services account. </p>
    #
    #   @return [String]
    #
    # @!attribute notification_email
    #   <p>The main notification email for your Amazon QuickSight subscription.</p>
    #
    #   @return [String]
    #
    # @!attribute public_sharing_enabled
    #   <p>A boolean that indicates whether or not public sharing is enabled on an Amazon QuickSight account. For more information about enabling public sharing, see <a href="https://docs.aws.amazon.com/quicksight/latest/APIReference/API_UpdatePublicSharingSettings.html">UpdatePublicSharingSettings</a>.</p>
    #
    #   @return [Boolean]
    #
    AccountSettings = ::Struct.new(
      :account_name,
      :edition,
      :default_namespace,
      :notification_email,
      :public_sharing_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.public_sharing_enabled ||= false
      end
    end

    # <p>The active Identity and Access Management (IAM) policy assignment.</p>
    #
    # @!attribute assignment_name
    #   <p>A name for the IAM policy assignment.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    #   @return [String]
    #
    ActiveIAMPolicyAssignment = ::Struct.new(
      :assignment_name,
      :policy_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Ad hoc (one-time) filtering option.</p>
    #
    # @!attribute availability_status
    #   <p>Availability status.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    AdHocFilteringOption = ::Struct.new(
      :availability_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The parameters for OpenSearch.</p>
    #
    # @!attribute domain
    #   <p>The OpenSearch domain.</p>
    #
    #   @return [String]
    #
    AmazonElasticsearchParameters = ::Struct.new(
      :domain,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The parameters for OpenSearch.</p>
    #
    # @!attribute domain
    #   <p>The OpenSearch domain.</p>
    #
    #   @return [String]
    #
    AmazonOpenSearchParameters = ::Struct.new(
      :domain,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Metadata structure for an analysis in Amazon QuickSight</p>
    #
    # @!attribute analysis_id
    #   <p>The ID of the analysis.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the analysis.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The descriptive name of the analysis.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Status associated with the analysis.</p>
    #
    #   Enum, one of: ["CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute errors
    #   <p>Errors associated with the analysis.</p>
    #
    #   @return [Array<AnalysisError>]
    #
    # @!attribute data_set_arns
    #   <p>The ARNs of the datasets of the analysis.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute theme_arn
    #   <p>The ARN of the theme of the analysis.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>The time that the analysis was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_time
    #   <p>The time that the analysis was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute sheets
    #   <p>A list of the associated sheets with the unique identifier and name of each sheet.</p>
    #
    #   @return [Array<Sheet>]
    #
    Analysis = ::Struct.new(
      :analysis_id,
      :arn,
      :name,
      :status,
      :errors,
      :data_set_arns,
      :theme_arn,
      :created_time,
      :last_updated_time,
      :sheets,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Analysis error.</p>
    #
    # @!attribute type
    #   <p>The type of the analysis error.</p>
    #
    #   Enum, one of: ["ACCESS_DENIED", "SOURCE_NOT_FOUND", "DATA_SET_NOT_FOUND", "INTERNAL_FAILURE", "PARAMETER_VALUE_INCOMPATIBLE", "PARAMETER_TYPE_INVALID", "PARAMETER_NOT_FOUND", "COLUMN_TYPE_MISMATCH", "COLUMN_GEOGRAPHIC_ROLE_MISMATCH", "COLUMN_REPLACEMENT_MISSING"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The message associated with the analysis error.</p>
    #
    #   @return [String]
    #
    AnalysisError = ::Struct.new(
      :type,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AnalysisErrorType
    #
    module AnalysisErrorType
      # No documentation available.
      #
      ACCESS_DENIED = "ACCESS_DENIED"

      # No documentation available.
      #
      SOURCE_NOT_FOUND = "SOURCE_NOT_FOUND"

      # No documentation available.
      #
      DATA_SET_NOT_FOUND = "DATA_SET_NOT_FOUND"

      # No documentation available.
      #
      INTERNAL_FAILURE = "INTERNAL_FAILURE"

      # No documentation available.
      #
      PARAMETER_VALUE_INCOMPATIBLE = "PARAMETER_VALUE_INCOMPATIBLE"

      # No documentation available.
      #
      PARAMETER_TYPE_INVALID = "PARAMETER_TYPE_INVALID"

      # No documentation available.
      #
      PARAMETER_NOT_FOUND = "PARAMETER_NOT_FOUND"

      # No documentation available.
      #
      COLUMN_TYPE_MISMATCH = "COLUMN_TYPE_MISMATCH"

      # No documentation available.
      #
      COLUMN_GEOGRAPHIC_ROLE_MISMATCH = "COLUMN_GEOGRAPHIC_ROLE_MISMATCH"

      # No documentation available.
      #
      COLUMN_REPLACEMENT_MISSING = "COLUMN_REPLACEMENT_MISSING"
    end

    # Includes enum constants for AnalysisFilterAttribute
    #
    module AnalysisFilterAttribute
      # No documentation available.
      #
      QUICKSIGHT_USER = "QUICKSIGHT_USER"
    end

    # <p>A filter that you apply when searching for one or more analyses.</p>
    #
    # @!attribute operator
    #   <p>The comparison operator that you want to use as a filter, for example
    #                   <code>"Operator": "StringEquals"</code>.</p>
    #
    #   Enum, one of: ["StringEquals"]
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the value that you want to use as a filter, for example <code>"Name":
    #                   "QUICKSIGHT_USER"</code>.</p>
    #
    #   Enum, one of: ["QUICKSIGHT_USER"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the named item, in this case <code>QUICKSIGHT_USER</code>, that you want
    #               to use as a filter, for example <code>"Value"</code>. An example is
    #                   <code>"arn:aws:quicksight:us-east-1:1:user/default/UserName1"</code>.</p>
    #
    #   @return [String]
    #
    AnalysisSearchFilter = ::Struct.new(
      :operator,
      :name,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The source entity of an analysis.</p>
    #
    # @!attribute source_template
    #   <p>The source template for the source entity of the analysis.</p>
    #
    #   @return [AnalysisSourceTemplate]
    #
    AnalysisSourceEntity = ::Struct.new(
      :source_template,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The source template of an analysis.</p>
    #
    # @!attribute data_set_references
    #   <p>The dataset references of the source template of an analysis.</p>
    #
    #   @return [Array<DataSetReference>]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the source template of an analysis.</p>
    #
    #   @return [String]
    #
    AnalysisSourceTemplate = ::Struct.new(
      :data_set_references,
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The summary metadata that describes an analysis.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) for the analysis.</p>
    #
    #   @return [String]
    #
    # @!attribute analysis_id
    #   <p>The ID of the analysis. This ID displays in the URL.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the analysis. This name is displayed in the Amazon QuickSight console.
    #               </p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The last known status for the analysis.</p>
    #
    #   Enum, one of: ["CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>The time that the analysis was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_time
    #   <p>The time that the analysis was last updated.</p>
    #
    #   @return [Time]
    #
    AnalysisSummary = ::Struct.new(
      :arn,
      :analysis_id,
      :name,
      :status,
      :created_time,
      :last_updated_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the dashboard that you want to embed.</p>
    #
    # @!attribute initial_dashboard_id
    #   <p>The dashboard ID for the dashboard that you want the user to see first. This ID is included in the output URL. When the URL in response is accessed, Amazon QuickSight renders this dashboard.</p>
    #           <p>The Amazon Resource Name (ARN) of this dashboard must be included in the <code>AuthorizedResourceArns</code> parameter. Otherwise, the request will fail with <code>InvalidParameterValueException</code>.</p>
    #
    #   @return [String]
    #
    AnonymousUserDashboardEmbeddingConfiguration = ::Struct.new(
      :initial_dashboard_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The type of experience you want to embed. For anonymous users, you can embed Amazon QuickSight dashboards.</p>
    #
    # @!attribute dashboard
    #   <p>The type of embedding experience. In this case, Amazon QuickSight dashboards.</p>
    #
    #   @return [AnonymousUserDashboardEmbeddingConfiguration]
    #
    AnonymousUserEmbeddingExperienceConfiguration = ::Struct.new(
      :dashboard,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AssignmentStatus
    #
    module AssignmentStatus
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DRAFT = "DRAFT"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # <p>Parameters for Amazon Athena.</p>
    #
    # @!attribute work_group
    #   <p>The workgroup that Amazon Athena uses.</p>
    #
    #   @return [String]
    #
    AthenaParameters = ::Struct.new(
      :work_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Parameters for Amazon Aurora.</p>
    #
    # @!attribute host
    #   <p>Host.</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>Port.</p>
    #
    #   @return [Integer]
    #
    # @!attribute database
    #   <p>Database.</p>
    #
    #   @return [String]
    #
    AuroraParameters = ::Struct.new(
      :host,
      :port,
      :database,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.port ||= 0
      end
    end

    # <p>Parameters for Amazon Aurora PostgreSQL-Compatible Edition.</p>
    #
    # @!attribute host
    #   <p>The Amazon Aurora PostgreSQL-Compatible host to connect to.</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>The port that Amazon Aurora PostgreSQL is listening on.</p>
    #
    #   @return [Integer]
    #
    # @!attribute database
    #   <p>The Amazon Aurora PostgreSQL database to connect to.</p>
    #
    #   @return [String]
    #
    AuroraPostgreSqlParameters = ::Struct.new(
      :host,
      :port,
      :database,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.port ||= 0
      end
    end

    # <p>The parameters for IoT Analytics.</p>
    #
    # @!attribute data_set_name
    #   <p>Dataset name.</p>
    #
    #   @return [String]
    #
    AwsIotAnalyticsParameters = ::Struct.new(
      :data_set_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The display options for tile borders for visuals.</p>
    #
    # @!attribute show
    #   <p>The option to enable display of borders for visuals.</p>
    #
    #   @return [Boolean]
    #
    BorderStyle = ::Struct.new(
      :show,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A calculated column for a dataset.</p>
    #
    # @!attribute column_name
    #   <p>Column name.</p>
    #
    #   @return [String]
    #
    # @!attribute column_id
    #   <p>A unique ID to identify a calculated column. During a dataset update, if the column ID
    #               of a calculated column matches that of an existing calculated column, Amazon QuickSight
    #               preserves the existing calculated column.</p>
    #
    #   @return [String]
    #
    # @!attribute expression
    #   <p>An expression that defines the calculated column.</p>
    #
    #   @return [String]
    #
    CalculatedColumn = ::Struct.new(
      :column_name,
      :column_id,
      :expression,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute aws_account_id
    #   <p>The Amazon Web Services account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute data_set_id
    #   <p>The ID of the dataset used in the ingestion.</p>
    #
    #   @return [String]
    #
    # @!attribute ingestion_id
    #   <p>An ID for the ingestion.</p>
    #
    #   @return [String]
    #
    CancelIngestionInput = ::Struct.new(
      :aws_account_id,
      :data_set_id,
      :ingestion_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) for the data ingestion.</p>
    #
    #   @return [String]
    #
    # @!attribute ingestion_id
    #   <p>An ID for the ingestion.</p>
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    CancelIngestionOutput = ::Struct.new(
      :arn,
      :ingestion_id,
      :request_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # <p>A transform operation that casts a column to a different type.</p>
    #
    # @!attribute column_name
    #   <p>Column name.</p>
    #
    #   @return [String]
    #
    # @!attribute new_column_type
    #   <p>New column data type.</p>
    #
    #   Enum, one of: ["STRING", "INTEGER", "DECIMAL", "DATETIME"]
    #
    #   @return [String]
    #
    # @!attribute format
    #   <p>When casting a column from string to datetime type, you can supply a string in a
    #               format supported by Amazon QuickSight to denote the source data format.</p>
    #
    #   @return [String]
    #
    CastColumnTypeOperation = ::Struct.new(
      :column_name,
      :new_column_type,
      :format,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ColumnDataType
    #
    module ColumnDataType
      # No documentation available.
      #
      STRING = "STRING"

      # No documentation available.
      #
      INTEGER = "INTEGER"

      # No documentation available.
      #
      DECIMAL = "DECIMAL"

      # No documentation available.
      #
      DATETIME = "DATETIME"
    end

    # <p>Metadata that contains a description for a column.</p>
    #
    # @!attribute text
    #   <p>The text of a description for a column.</p>
    #
    #   @return [String]
    #
    ColumnDescription = ::Struct.new(
      :text,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Groupings of columns that work together in certain Amazon QuickSight features. This is
    #             a variant type structure. For this structure to be valid, only one of the attributes can
    #             be non-null.</p>
    #
    # @!attribute geo_spatial_column_group
    #   <p>Geospatial column group that denotes a hierarchy.</p>
    #
    #   @return [GeoSpatialColumnGroup]
    #
    ColumnGroup = ::Struct.new(
      :geo_spatial_column_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure describing the name, data type, and geographic role of the columns.</p>
    #
    # @!attribute name
    #   <p>The name of the column group's column schema.</p>
    #
    #   @return [String]
    #
    ColumnGroupColumnSchema = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The column group schema.</p>
    #
    # @!attribute name
    #   <p>The name of the column group schema.</p>
    #
    #   @return [String]
    #
    # @!attribute column_group_column_schema_list
    #   <p>A structure containing the list of schemas for column group columns.</p>
    #
    #   @return [Array<ColumnGroupColumnSchema>]
    #
    ColumnGroupSchema = ::Struct.new(
      :name,
      :column_group_column_schema_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A rule defined to grant access on one or more restricted columns.
    #             Each dataset can have multiple rules.
    #             To create a restricted column, you add it to one or more rules.
    #             Each rule must contain at least one column and at least one user or group.
    #             To be able to see a restricted column, a user or group needs to be added
    #             to a rule for that column.</p>
    #
    # @!attribute principals
    #   <p>An array of Amazon Resource Names (ARNs) for Amazon QuickSight users or groups.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute column_names
    #   <p>An array of column names.</p>
    #
    #   @return [Array<String>]
    #
    ColumnLevelPermissionRule = ::Struct.new(
      :principals,
      :column_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The column schema.</p>
    #
    # @!attribute name
    #   <p>The name of the column schema.</p>
    #
    #   @return [String]
    #
    # @!attribute data_type
    #   <p>The data type of the column schema.</p>
    #
    #   @return [String]
    #
    # @!attribute geographic_role
    #   <p>The geographic role of the column schema.</p>
    #
    #   @return [String]
    #
    ColumnSchema = ::Struct.new(
      :name,
      :data_type,
      :geographic_role,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A tag for a column in a
    #             <code>
    #                <a href="https://docs.aws.amazon.com/quicksight/latest/APIReference/API_TagColumnOperation.html">TagColumnOperation</a>
    #             </code>
    #             structure. This is a
    #             variant type structure. For this structure to be valid, only one of the attributes can
    #             be non-null.</p>
    #
    # @!attribute column_geographic_role
    #   <p>A geospatial role for a column.</p>
    #
    #   Enum, one of: ["COUNTRY", "STATE", "COUNTY", "CITY", "POSTCODE", "LONGITUDE", "LATITUDE"]
    #
    #   @return [String]
    #
    # @!attribute column_description
    #   <p>A description for a column.</p>
    #
    #   @return [ColumnDescription]
    #
    ColumnTag = ::Struct.new(
      :column_geographic_role,
      :column_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ColumnTagName
    #
    module ColumnTagName
      # No documentation available.
      #
      COLUMN_GEOGRAPHIC_ROLE = "COLUMN_GEOGRAPHIC_ROLE"

      # No documentation available.
      #
      COLUMN_DESCRIPTION = "COLUMN_DESCRIPTION"
    end

    # <p>A resource is already in a state that indicates an operation is happening that must complete
    # 			before a new update can be applied.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute request_id
    #
    #   @return [String]
    #
    ConcurrentUpdatingException = ::Struct.new(
      :message,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Updating or deleting a resource can cause an inconsistent state.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this request.</p>
    #
    #   @return [String]
    #
    ConflictException = ::Struct.new(
      :message,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute aws_account_id
    #   <p>The ID for the Amazon Web Services account that you want to customize Amazon QuickSight for.</p>
    #
    #   @return [String]
    #
    # @!attribute namespace
    #   <p>The Amazon QuickSight namespace that you want to add customizations to.</p>
    #
    #   @return [String]
    #
    # @!attribute account_customization
    #   <p>The Amazon QuickSight customizations you're adding in the current Amazon Web Services Region. You can add
    #               these to an Amazon Web Services account and a QuickSight namespace. </p>
    #           <p>For example, you can add a default theme by setting <code>AccountCustomization</code>
    #               to the midnight theme: <code>"AccountCustomization": { "DefaultTheme":
    #                   "arn:aws:quicksight::aws:theme/MIDNIGHT" }</code>. Or, you can add a custom theme by
    #               specifying <code>"AccountCustomization": { "DefaultTheme":
    #                   "arn:aws:quicksight:us-west-2:111122223333:theme/bdb844d0-0fe9-4d9d-b520-0fe602d93639"
    #                   }</code>. </p>
    #
    #   @return [AccountCustomization]
    #
    # @!attribute tags
    #   <p>A list of the tags that you want to attach to this resource.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateAccountCustomizationInput = ::Struct.new(
      :aws_account_id,
      :namespace,
      :account_customization,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) for the customization that you created for this Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_account_id
    #   <p>The ID for the Amazon Web Services account that you want to customize Amazon QuickSight for.</p>
    #
    #   @return [String]
    #
    # @!attribute namespace
    #   <p>The namespace associated with the customization you're creating. </p>
    #
    #   @return [String]
    #
    # @!attribute account_customization
    #   <p>The Amazon QuickSight customizations you're adding in the current Amazon Web Services Region. </p>
    #
    #   @return [AccountCustomization]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    CreateAccountCustomizationOutput = ::Struct.new(
      :arn,
      :aws_account_id,
      :namespace,
      :account_customization,
      :request_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID of the Amazon Web Services account where you are creating an analysis.</p>
    #
    #   @return [String]
    #
    # @!attribute analysis_id
    #   <p>The ID for the analysis that you're creating. This ID displays in the URL of the
    #               analysis.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A descriptive name for the analysis that you're creating. This name displays for the
    #               analysis in the Amazon QuickSight console. </p>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>The parameter names and override values that you want to use. An analysis can have
    #               any parameter type, and some parameters might accept multiple values. </p>
    #
    #   @return [Parameters]
    #
    # @!attribute permissions
    #   <p>A structure that describes the principals and the resource-level permissions on an
    #               analysis. You can use the <code>Permissions</code> structure to grant permissions by
    #               providing a list of Identity and Access Management (IAM) action information for each
    #               principal listed by Amazon Resource Name (ARN). </p>
    #
    #           <p>To specify no permissions, omit <code>Permissions</code>.</p>
    #
    #   @return [Array<ResourcePermission>]
    #
    # @!attribute source_entity
    #   <p>A source entity to use for the analysis that you're creating. This metadata structure
    #               contains details that describe a source template and one or more datasets.</p>
    #
    #   @return [AnalysisSourceEntity]
    #
    # @!attribute theme_arn
    #   <p>The ARN for the theme to apply to the analysis that you're creating. To see the theme
    #               in the Amazon QuickSight console, make sure that you have access to it.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Contains a map of the key-value pairs for the resource tag or tags assigned to the
    #               analysis.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateAnalysisInput = ::Struct.new(
      :aws_account_id,
      :analysis_id,
      :name,
      :parameters,
      :permissions,
      :source_entity,
      :theme_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The ARN for the analysis.</p>
    #
    #   @return [String]
    #
    # @!attribute analysis_id
    #   <p>The ID of the analysis.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_status
    #   <p>The status of the creation of the analysis. </p>
    #
    #   Enum, one of: ["CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    CreateAnalysisOutput = ::Struct.new(
      :arn,
      :analysis_id,
      :creation_status,
      :status,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # <p>A transform operation that creates calculated columns. Columns created in one such
    #             operation form a lexical closure.</p>
    #
    # @!attribute columns
    #   <p>Calculated columns to create.</p>
    #
    #   @return [Array<CalculatedColumn>]
    #
    CreateColumnsOperation = ::Struct.new(
      :columns,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute aws_account_id
    #   <p>The ID of the Amazon Web Services account where you want to create the dashboard.</p>
    #
    #   @return [String]
    #
    # @!attribute dashboard_id
    #   <p>The ID for the dashboard, also added to the IAM policy.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The display name of the dashboard.</p>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>The parameters for the creation of the dashboard, which you want to use to override
    #               the default settings. A dashboard can have any type of parameters, and some parameters
    #               might accept multiple values. </p>
    #
    #   @return [Parameters]
    #
    # @!attribute permissions
    #   <p>A structure that contains the permissions of the dashboard. You can use this structure
    #               for granting permissions by providing a list of IAM action information for each
    #               principal ARN. </p>
    #
    #           <p>To specify no permissions, omit the permissions list.</p>
    #
    #   @return [Array<ResourcePermission>]
    #
    # @!attribute source_entity
    #   <p>The entity that you are using as a source when you create the dashboard. In
    #               <code>SourceEntity</code>, you specify the type of object you're using as source. You
    #               can only create a dashboard from a template, so you use a <code>SourceTemplate</code>
    #               entity. If you need to create a dashboard from an analysis, first convert the analysis
    #               to a template by using the <code>
    #                  <a href="https://docs.aws.amazon.com/quicksight/latest/APIReference/API_CreateTemplate.html">CreateTemplate</a>
    #               </code>
    #               API operation. For
    #               <code>SourceTemplate</code>, specify the Amazon Resource Name (ARN) of the source
    #               template. The <code>SourceTemplate</code>ARN can contain any Amazon Web Services account and any
    #               Amazon QuickSight-supported Amazon Web Services Region. </p>
    #           <p>Use the <code>DataSetReferences</code> entity within <code>SourceTemplate</code> to
    #               list the replacement datasets for the placeholders listed in the original. The schema in
    #               each dataset must match its placeholder. </p>
    #
    #   @return [DashboardSourceEntity]
    #
    # @!attribute tags
    #   <p>Contains a map of the key-value pairs for the resource tag or tags assigned to the
    #               dashboard.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute version_description
    #   <p>A description for the first version of the dashboard being created.</p>
    #
    #   @return [String]
    #
    # @!attribute dashboard_publish_options
    #   <p>Options for publishing the dashboard when you create it:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>AvailabilityStatus</code> for <code>AdHocFilteringOption</code> - This
    #                       status can be either <code>ENABLED</code> or <code>DISABLED</code>. When this is
    #                       set to <code>DISABLED</code>, Amazon QuickSight disables the left filter pane on the
    #                       published dashboard, which can be used for ad hoc (one-time) filtering. This
    #                       option is <code>ENABLED</code> by default. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>AvailabilityStatus</code> for <code>ExportToCSVOption</code> - This
    #                       status can be either <code>ENABLED</code> or <code>DISABLED</code>. The visual
    #                       option to export data to .CSV format isn't enabled when this is set to
    #                       <code>DISABLED</code>. This option is <code>ENABLED</code> by default. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>VisibilityState</code> for <code>SheetControlsOption</code> - This
    #                       visibility state can be either <code>COLLAPSED</code> or <code>EXPANDED</code>.
    #                       This option is <code>COLLAPSED</code> by default. </p>
    #               </li>
    #            </ul>
    #
    #   @return [DashboardPublishOptions]
    #
    # @!attribute theme_arn
    #   <p>The Amazon Resource Name (ARN) of the theme that is being used for this dashboard. If
    #               you add a value for this field, it overrides the value that is used in the source
    #               entity. The theme ARN must exist in the same Amazon Web Services account where you create the
    #               dashboard.</p>
    #
    #   @return [String]
    #
    CreateDashboardInput = ::Struct.new(
      :aws_account_id,
      :dashboard_id,
      :name,
      :parameters,
      :permissions,
      :source_entity,
      :tags,
      :version_description,
      :dashboard_publish_options,
      :theme_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the dashboard.</p>
    #
    #   @return [String]
    #
    # @!attribute version_arn
    #   <p>The ARN of the dashboard, including the version number of the first version that is
    #               created.</p>
    #
    #   @return [String]
    #
    # @!attribute dashboard_id
    #   <p>The ID for the dashboard.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_status
    #   <p>The status of the dashboard creation request.</p>
    #
    #   Enum, one of: ["CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    CreateDashboardOutput = ::Struct.new(
      :arn,
      :version_arn,
      :dashboard_id,
      :creation_status,
      :status,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The Amazon Web Services account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute data_set_id
    #   <p>An ID for the dataset that you want to create. This ID is unique per Amazon Web Services Region for each Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The display name for the dataset.</p>
    #
    #   @return [String]
    #
    # @!attribute physical_table_map
    #   <p>Declares the physical tables that are available in the underlying data sources.</p>
    #
    #   @return [Hash<String, PhysicalTable>]
    #
    # @!attribute logical_table_map
    #   <p>Configures the combination and transformation of the data from the physical tables.</p>
    #
    #   @return [Hash<String, LogicalTable>]
    #
    # @!attribute import_mode
    #   <p>Indicates whether you want to import the data into SPICE.</p>
    #
    #   Enum, one of: ["SPICE", "DIRECT_QUERY"]
    #
    #   @return [String]
    #
    # @!attribute column_groups
    #   <p>Groupings of columns that work together in certain Amazon QuickSight features. Currently, only geospatial hierarchy is supported.</p>
    #
    #   @return [Array<ColumnGroup>]
    #
    # @!attribute field_folders
    #   <p>The folder that contains fields and nested subfolders for your dataset.</p>
    #
    #   @return [Hash<String, FieldFolder>]
    #
    # @!attribute permissions
    #   <p>A list of resource permissions on the dataset.</p>
    #
    #   @return [Array<ResourcePermission>]
    #
    # @!attribute row_level_permission_data_set
    #   <p>The row-level security configuration for the data that you want to create.</p>
    #
    #   @return [RowLevelPermissionDataSet]
    #
    # @!attribute row_level_permission_tag_configuration
    #   <p>The configuration of tags on a dataset to set row-level security. Row-level security tags are currently supported for anonymous embedding only.</p>
    #
    #   @return [RowLevelPermissionTagConfiguration]
    #
    # @!attribute column_level_permission_rules
    #   <p>A set of one or more definitions of a <code>
    #                  <a href="https://docs.aws.amazon.com/quicksight/latest/APIReference/API_ColumnLevelPermissionRule.html">ColumnLevelPermissionRule</a>
    #               </code>.</p>
    #
    #   @return [Array<ColumnLevelPermissionRule>]
    #
    # @!attribute tags
    #   <p>Contains a map of the key-value pairs for the resource tag or tags assigned to the dataset.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute data_set_usage_configuration
    #   <p>The usage configuration to apply to child datasets that reference this dataset as a source.</p>
    #
    #   @return [DataSetUsageConfiguration]
    #
    CreateDataSetInput = ::Struct.new(
      :aws_account_id,
      :data_set_id,
      :name,
      :physical_table_map,
      :logical_table_map,
      :import_mode,
      :column_groups,
      :field_folders,
      :permissions,
      :row_level_permission_data_set,
      :row_level_permission_tag_configuration,
      :column_level_permission_rules,
      :tags,
      :data_set_usage_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the dataset.</p>
    #
    #   @return [String]
    #
    # @!attribute data_set_id
    #   <p>The ID for the dataset that you want to create. This ID is unique per Amazon Web Services Region for each Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute ingestion_arn
    #   <p>The ARN for the ingestion, which is triggered as a result of dataset creation if the import
    #   			mode is SPICE.</p>
    #
    #   @return [String]
    #
    # @!attribute ingestion_id
    #   <p>The ID of the ingestion, which is triggered as a result of dataset creation if the import
    #   			mode is SPICE.</p>
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    CreateDataSetOutput = ::Struct.new(
      :arn,
      :data_set_id,
      :ingestion_arn,
      :ingestion_id,
      :request_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The Amazon Web Services account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute data_source_id
    #   <p>An ID for the data source. This ID is unique per Amazon Web Services Region for each Amazon Web Services account. </p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A display name for the data source.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of the data source. To return a
    #   			list of all data sources, use <code>ListDataSources</code>.</p>
    #   		       <p>Use <code>AMAZON_ELASTICSEARCH</code> for Amazon OpenSearch Service.</p>
    #
    #   Enum, one of: ["ADOBE_ANALYTICS", "AMAZON_ELASTICSEARCH", "ATHENA", "AURORA", "AURORA_POSTGRESQL", "AWS_IOT_ANALYTICS", "GITHUB", "JIRA", "MARIADB", "MYSQL", "ORACLE", "POSTGRESQL", "PRESTO", "REDSHIFT", "S3", "SALESFORCE", "SERVICENOW", "SNOWFLAKE", "SPARK", "SQLSERVER", "TERADATA", "TWITTER", "TIMESTREAM", "AMAZON_OPENSEARCH", "EXASOL"]
    #
    #   @return [String]
    #
    # @!attribute data_source_parameters
    #   <p>The parameters that Amazon QuickSight uses to connect to your underlying source.</p>
    #
    #   @return [DataSourceParameters]
    #
    # @!attribute credentials
    #   <p>The credentials Amazon QuickSight that uses to connect to your underlying source. Currently, only
    #   			credentials based on user name and password are supported.</p>
    #
    #   @return [DataSourceCredentials]
    #
    # @!attribute permissions
    #   <p>A list of resource permissions on the data source.</p>
    #
    #   @return [Array<ResourcePermission>]
    #
    # @!attribute vpc_connection_properties
    #   <p>Use this parameter only when you want Amazon QuickSight to use a VPC connection when connecting to
    #   			your underlying source.</p>
    #
    #   @return [VpcConnectionProperties]
    #
    # @!attribute ssl_properties
    #   <p>Secure Socket Layer (SSL) properties that apply when Amazon QuickSight connects to your underlying source.</p>
    #
    #   @return [SslProperties]
    #
    # @!attribute tags
    #   <p>Contains a map of the key-value pairs for the resource tag or tags assigned to the data source.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateDataSourceInput = ::Struct.new(
      :aws_account_id,
      :data_source_id,
      :name,
      :type,
      :data_source_parameters,
      :credentials,
      :permissions,
      :vpc_connection_properties,
      :ssl_properties,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::QuickSight::Types::CreateDataSourceInput "\
          "aws_account_id=#{aws_account_id || 'nil'}, "\
          "data_source_id=#{data_source_id || 'nil'}, "\
          "name=#{name || 'nil'}, "\
          "type=#{type || 'nil'}, "\
          "data_source_parameters=#{data_source_parameters || 'nil'}, "\
          "credentials=\"[SENSITIVE]\", "\
          "permissions=#{permissions || 'nil'}, "\
          "vpc_connection_properties=#{vpc_connection_properties || 'nil'}, "\
          "ssl_properties=#{ssl_properties || 'nil'}, "\
          "tags=#{tags || 'nil'}>"
      end
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the data source.</p>
    #
    #   @return [String]
    #
    # @!attribute data_source_id
    #   <p>The ID of the data source. This ID is unique per Amazon Web Services Region for each Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_status
    #   <p>The status of creating the data source.</p>
    #
    #   Enum, one of: ["CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    CreateDataSourceOutput = ::Struct.new(
      :arn,
      :data_source_id,
      :creation_status,
      :request_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID for the Amazon Web Services account where you want to create the folder.</p>
    #
    #   @return [String]
    #
    # @!attribute folder_id
    #   <p>The ID of the folder.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the folder.</p>
    #
    #   @return [String]
    #
    # @!attribute folder_type
    #   <p>The type of folder. By default, <code>folderType</code> is <code>SHARED</code>.</p>
    #
    #   Enum, one of: ["SHARED"]
    #
    #   @return [String]
    #
    # @!attribute parent_folder_arn
    #   <p>The Amazon Resource Name (ARN) for the parent folder.</p>
    #           <p>
    #               <code>ParentFolderArn</code> can be null. An empty <code>parentFolderArn</code> creates a root-level folder.</p>
    #
    #   @return [String]
    #
    # @!attribute permissions
    #   <p>A structure that describes the principals and the resource-level permissions of a folder.</p>
    #           <p>To specify no permissions, omit <code>Permissions</code>.</p>
    #
    #   @return [Array<ResourcePermission>]
    #
    # @!attribute tags
    #   <p>Tags for the folder.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateFolderInput = ::Struct.new(
      :aws_account_id,
      :folder_id,
      :name,
      :folder_type,
      :parent_folder_arn,
      :permissions,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute aws_account_id
    #   <p>The ID for the Amazon Web Services account that contains the folder.</p>
    #
    #   @return [String]
    #
    # @!attribute folder_id
    #   <p>The ID of the folder.</p>
    #
    #   @return [String]
    #
    # @!attribute member_id
    #   <p>The ID of the asset (the dashboard, analysis, or dataset).</p>
    #
    #   @return [String]
    #
    # @!attribute member_type
    #   <p>The type of the member, including <code>DASHBOARD</code>, <code>ANALYSIS</code>, and <code>DATASET</code>.</p>
    #
    #   Enum, one of: ["DASHBOARD", "ANALYSIS", "DATASET"]
    #
    #   @return [String]
    #
    CreateFolderMembershipInput = ::Struct.new(
      :aws_account_id,
      :folder_id,
      :member_id,
      :member_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute folder_member
    #   <p>Information about the member in the folder.</p>
    #
    #   @return [FolderMember]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    CreateFolderMembershipOutput = ::Struct.new(
      :status,
      :folder_member,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) for the newly created folder.</p>
    #
    #   @return [String]
    #
    # @!attribute folder_id
    #   <p>The folder ID for the newly created folder.</p>
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The request ID for the newly created folder.</p>
    #
    #   @return [String]
    #
    CreateFolderOutput = ::Struct.new(
      :status,
      :arn,
      :folder_id,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # <p>The request object for this operation. </p>
    #
    # @!attribute group_name
    #   <p>A name for the group that you want to create.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description for the group that you want to create.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_account_id
    #   <p>The ID for the Amazon Web Services account that the group is in. Currently, you use the ID for the
    #   			Amazon Web Services account that contains your Amazon QuickSight account.</p>
    #
    #   @return [String]
    #
    # @!attribute namespace
    #   <p>The namespace that you want the group to be a part of.</p>
    #
    #   @return [String]
    #
    CreateGroupInput = ::Struct.new(
      :group_name,
      :description,
      :aws_account_id,
      :namespace,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute member_name
    #   <p>The name of the user that you want to add to the group membership.</p>
    #
    #   @return [String]
    #
    # @!attribute group_name
    #   <p>The name of the group that you want to add the user to.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_account_id
    #   <p>The ID for the Amazon Web Services account that the group is in. Currently, you use the ID for the
    #   			Amazon Web Services account that contains your Amazon QuickSight account.</p>
    #
    #   @return [String]
    #
    # @!attribute namespace
    #   <p>The namespace that you want the user to be a part of.</p>
    #
    #   @return [String]
    #
    CreateGroupMembershipInput = ::Struct.new(
      :member_name,
      :group_name,
      :aws_account_id,
      :namespace,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute group_member
    #   <p>The group member.</p>
    #
    #   @return [GroupMember]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    CreateGroupMembershipOutput = ::Struct.new(
      :group_member,
      :request_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # <p>The response object for this operation.</p>
    #
    # @!attribute group
    #   <p>The name of the group.</p>
    #
    #   @return [Group]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    CreateGroupOutput = ::Struct.new(
      :group,
      :request_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID of the Amazon Web Services account where you want to assign an IAM policy to Amazon QuickSight users or
    #   			groups.</p>
    #
    #   @return [String]
    #
    # @!attribute assignment_name
    #   <p>The name of the assignment, also called a rule. It must be unique within an Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute assignment_status
    #   <p>The status of the assignment. Possible values are as follows:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <code>ENABLED</code> - Anything specified in this assignment is used when creating the data
    #   					source.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLED</code> - This assignment isn't used when creating the data source.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DRAFT</code> - This assignment is an unfinished draft and isn't used when creating the
    #   					data source.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ENABLED", "DRAFT", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute policy_arn
    #   <p>The ARN for the IAM policy to apply to the Amazon QuickSight users and groups
    #   			specified in this assignment.</p>
    #
    #   @return [String]
    #
    # @!attribute identities
    #   <p>The Amazon QuickSight users, groups, or both that you want to assign the policy to.</p>
    #
    #   @return [Hash<String, Array<String>>]
    #
    # @!attribute namespace
    #   <p>The namespace that contains the assignment.</p>
    #
    #   @return [String]
    #
    CreateIAMPolicyAssignmentInput = ::Struct.new(
      :aws_account_id,
      :assignment_name,
      :assignment_status,
      :policy_arn,
      :identities,
      :namespace,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute assignment_name
    #   <p>The name of the assignment. This name must be unique within the Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute assignment_id
    #   <p>The ID for the assignment.</p>
    #
    #   @return [String]
    #
    # @!attribute assignment_status
    #   <p>The status of the assignment. Possible values are as follows:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <code>ENABLED</code> - Anything specified in this assignment is used when creating the data
    #   				source.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLED</code> - This assignment isn't used when creating the data source.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DRAFT</code> - This assignment is an unfinished draft and isn't used when creating the
    #   				data source.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ENABLED", "DRAFT", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute policy_arn
    #   <p>The ARN for the IAM policy that is applied to the Amazon QuickSight users and groups specified in this assignment.</p>
    #
    #   @return [String]
    #
    # @!attribute identities
    #   <p>The Amazon QuickSight users, groups, or both that the IAM policy is assigned to.</p>
    #
    #   @return [Hash<String, Array<String>>]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    CreateIAMPolicyAssignmentOutput = ::Struct.new(
      :assignment_name,
      :assignment_id,
      :assignment_status,
      :policy_arn,
      :identities,
      :request_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute data_set_id
    #   <p>The ID of the dataset used in the ingestion.</p>
    #
    #   @return [String]
    #
    # @!attribute ingestion_id
    #   <p>An ID for the ingestion.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_account_id
    #   <p>The Amazon Web Services account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute ingestion_type
    #   <p>The type of ingestion that you want to create.</p>
    #
    #   Enum, one of: ["INCREMENTAL_REFRESH", "FULL_REFRESH"]
    #
    #   @return [String]
    #
    CreateIngestionInput = ::Struct.new(
      :data_set_id,
      :ingestion_id,
      :aws_account_id,
      :ingestion_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) for the data ingestion.</p>
    #
    #   @return [String]
    #
    # @!attribute ingestion_id
    #   <p>An ID for the ingestion.</p>
    #
    #   @return [String]
    #
    # @!attribute ingestion_status
    #   <p>The ingestion status.</p>
    #
    #   Enum, one of: ["INITIALIZED", "QUEUED", "RUNNING", "FAILED", "COMPLETED", "CANCELLED"]
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    CreateIngestionOutput = ::Struct.new(
      :arn,
      :ingestion_id,
      :ingestion_status,
      :request_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID for the Amazon Web Services account that you want to create the Amazon QuickSight namespace in.</p>
    #
    #   @return [String]
    #
    # @!attribute namespace
    #   <p>The name that you want to use to describe the new namespace.</p>
    #
    #   @return [String]
    #
    # @!attribute identity_store
    #   <p>Specifies the type of your user identity directory. Currently, this supports users
    #               with an identity type of <code>QUICKSIGHT</code>.</p>
    #
    #   Enum, one of: ["QUICKSIGHT"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags that you want to associate with the namespace that you're creating.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateNamespaceInput = ::Struct.new(
      :aws_account_id,
      :namespace,
      :identity_store,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the Amazon QuickSight namespace you created. </p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the new namespace that you created.</p>
    #
    #   @return [String]
    #
    # @!attribute capacity_region
    #   <p>The Amazon Web Services Region; that you want to use for the free SPICE capacity for the new namespace.
    #               This is set to the region that you run CreateNamespace in. </p>
    #
    #   @return [String]
    #
    # @!attribute creation_status
    #   <p>The status of the creation of the namespace. This is an asynchronous process. A status
    #               of <code>CREATED</code> means that your namespace is ready to use. If an error occurs,
    #               it indicates if the process is <code>retryable</code> or <code>non-retryable</code>. In
    #               the case of a non-retryable error, refer to the error message for follow-up
    #               tasks.</p>
    #
    #   Enum, one of: ["CREATED", "CREATING", "DELETING", "RETRYABLE_FAILURE", "NON_RETRYABLE_FAILURE"]
    #
    #   @return [String]
    #
    # @!attribute identity_store
    #   <p>Specifies the type of your user identity directory. Currently, this supports users
    #               with an identity type of <code>QUICKSIGHT</code>.</p>
    #
    #   Enum, one of: ["QUICKSIGHT"]
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    CreateNamespaceOutput = ::Struct.new(
      :arn,
      :name,
      :capacity_region,
      :creation_status,
      :identity_store,
      :request_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the template that you creating an alias for.</p>
    #
    #   @return [String]
    #
    # @!attribute template_id
    #   <p>An ID for the template.</p>
    #
    #   @return [String]
    #
    # @!attribute alias_name
    #   <p>The name that you want to give to the template alias that you're creating. Don't start the
    #   			alias name with the <code>$</code> character. Alias names that start with <code>$</code>
    #   			are reserved by Amazon QuickSight. </p>
    #
    #   @return [String]
    #
    # @!attribute template_version_number
    #   <p>The version number of the template.</p>
    #
    #   @return [Integer]
    #
    CreateTemplateAliasInput = ::Struct.new(
      :aws_account_id,
      :template_id,
      :alias_name,
      :template_version_number,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute template_alias
    #   <p>Information about the template alias.</p>
    #
    #   @return [TemplateAlias]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    CreateTemplateAliasOutput = ::Struct.new(
      :template_alias,
      :status,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID for the Amazon Web Services account that the group is in. You use the ID for the Amazon Web Services account that contains your Amazon QuickSight account.</p>
    #
    #   @return [String]
    #
    # @!attribute template_id
    #   <p>An ID for the template that you want to create. This template is unique per Amazon Web Services Region; in
    #   			each Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A display name for the template.</p>
    #
    #   @return [String]
    #
    # @!attribute permissions
    #   <p>A list of resource permissions to be set on the template. </p>
    #
    #   @return [Array<ResourcePermission>]
    #
    # @!attribute source_entity
    #   <p>The entity that you are using as a source when you create the template. In
    #   			<code>SourceEntity</code>, you specify the type of object you're using as source:
    #   			<code>SourceTemplate</code> for a template or <code>SourceAnalysis</code> for an
    #   			analysis. Both of these require an Amazon Resource Name (ARN). For
    #   			<code>SourceTemplate</code>, specify the ARN of the source template. For
    #   			<code>SourceAnalysis</code>, specify the ARN of the source analysis. The <code>SourceTemplate</code>
    #   			ARN can contain any Amazon Web Services account and any Amazon QuickSight-supported Amazon Web Services Region. </p>
    #   		       <p>Use the <code>DataSetReferences</code> entity within <code>SourceTemplate</code> or
    #   			<code>SourceAnalysis</code> to list the replacement datasets for the placeholders listed
    #   			in the original. The schema in each dataset must match its placeholder. </p>
    #
    #   @return [TemplateSourceEntity]
    #
    # @!attribute tags
    #   <p>Contains a map of the key-value pairs for the resource tag or tags assigned to the resource.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute version_description
    #   <p>A description of the current template version being created. This API operation creates the
    #   			first version of the template. Every time <code>UpdateTemplate</code> is called, a new
    #   			version is created. Each version of the template maintains a description of the version
    #   			in the <code>VersionDescription</code> field.</p>
    #
    #   @return [String]
    #
    CreateTemplateInput = ::Struct.new(
      :aws_account_id,
      :template_id,
      :name,
      :permissions,
      :source_entity,
      :tags,
      :version_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The ARN for the template.</p>
    #
    #   @return [String]
    #
    # @!attribute version_arn
    #   <p>The ARN for the template, including the version information of
    #   			the first version.</p>
    #
    #   @return [String]
    #
    # @!attribute template_id
    #   <p>The ID of the template.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_status
    #   <p>The template creation status.</p>
    #
    #   Enum, one of: ["CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    CreateTemplateOutput = ::Struct.new(
      :arn,
      :version_arn,
      :template_id,
      :creation_status,
      :status,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the theme for the new theme alias.</p>
    #
    #   @return [String]
    #
    # @!attribute theme_id
    #   <p>An ID for the theme alias.</p>
    #
    #   @return [String]
    #
    # @!attribute alias_name
    #   <p>The name that you want to give to the theme alias that you are creating. The
    #   			alias name can't begin with a <code>$</code>. Alias names that start with <code>$</code>
    #   			are reserved by Amazon QuickSight. </p>
    #
    #   @return [String]
    #
    # @!attribute theme_version_number
    #   <p>The version number of the theme.</p>
    #
    #   @return [Integer]
    #
    CreateThemeAliasInput = ::Struct.new(
      :aws_account_id,
      :theme_id,
      :alias_name,
      :theme_version_number,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute theme_alias
    #   <p>Information about the theme alias.</p>
    #
    #   @return [ThemeAlias]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    CreateThemeAliasOutput = ::Struct.new(
      :theme_alias,
      :status,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID of the Amazon Web Services account where you want to store the new theme. </p>
    #
    #   @return [String]
    #
    # @!attribute theme_id
    #   <p>An ID for the theme that you want to create. The theme ID is unique per Amazon Web Services Region in
    #   			each Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A display name for the theme.</p>
    #
    #   @return [String]
    #
    # @!attribute base_theme_id
    #   <p>The ID of the theme that a custom theme will inherit from. All themes inherit from one of
    #   			the starting themes defined by Amazon QuickSight. For a list of the starting themes, use
    #   				<code>ListThemes</code> or choose <b>Themes</b> from
    #   			within an analysis. </p>
    #
    #   @return [String]
    #
    # @!attribute version_description
    #   <p>A description of the first version of the theme that you're creating. Every time
    #   				<code>UpdateTheme</code> is called, a new version is created. Each version of the
    #   			theme has a description of the version in the <code>VersionDescription</code>
    #   			field.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration
    #   <p>The theme configuration, which contains the theme display properties.</p>
    #
    #   @return [ThemeConfiguration]
    #
    # @!attribute permissions
    #   <p>A valid grouping of resource permissions to apply to the new theme.
    #   			</p>
    #
    #   @return [Array<ResourcePermission>]
    #
    # @!attribute tags
    #   <p>A map of the key-value pairs for the resource tag or tags that you want to add to the
    #   			resource.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateThemeInput = ::Struct.new(
      :aws_account_id,
      :theme_id,
      :name,
      :base_theme_id,
      :version_description,
      :configuration,
      :permissions,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) for the theme.</p>
    #
    #   @return [String]
    #
    # @!attribute version_arn
    #   <p>The Amazon Resource Name (ARN) for the new theme.</p>
    #
    #   @return [String]
    #
    # @!attribute theme_id
    #   <p>The ID of the theme.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_status
    #   <p>The theme creation status.</p>
    #
    #   Enum, one of: ["CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    CreateThemeOutput = ::Struct.new(
      :arn,
      :version_arn,
      :theme_id,
      :creation_status,
      :status,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # <p>The combination of user name and password that are used as credentials.</p>
    #
    # @!attribute username
    #   <p>User name.</p>
    #
    #   @return [String]
    #
    # @!attribute password
    #   <p>Password.</p>
    #
    #   @return [String]
    #
    # @!attribute alternate_data_source_parameters
    #   <p>A set of alternate data source parameters that you want to share for these
    #               credentials. The credentials are applied in tandem with the data source parameters when
    #               you copy a data source by using a create or update request. The API operation compares
    #               the <code>DataSourceParameters</code> structure that's in the request with the
    #               structures in the <code>AlternateDataSourceParameters</code> allow list. If the
    #               structures are an exact match, the request is allowed to use the new data source with
    #               the existing credentials. If the <code>AlternateDataSourceParameters</code> list is
    #               null, the <code>DataSourceParameters</code> originally used with these
    #                   <code>Credentials</code> is automatically allowed.</p>
    #
    #   @return [Array<DataSourceParameters>]
    #
    CredentialPair = ::Struct.new(
      :username,
      :password,
      :alternate_data_source_parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A physical table type built from the results of the custom SQL query.</p>
    #
    # @!attribute data_source_arn
    #   <p>The Amazon Resource Name (ARN) of the data source.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A display name for the SQL query result.</p>
    #
    #   @return [String]
    #
    # @!attribute sql_query
    #   <p>The SQL query.</p>
    #
    #   @return [String]
    #
    # @!attribute columns
    #   <p>The column schema from the SQL query result set.</p>
    #
    #   @return [Array<InputColumn>]
    #
    CustomSql = ::Struct.new(
      :data_source_arn,
      :name,
      :sql_query,
      :columns,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Dashboard.</p>
    #
    # @!attribute dashboard_id
    #   <p>Dashboard ID.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A display name for the dashboard.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>Version.</p>
    #
    #   @return [DashboardVersion]
    #
    # @!attribute created_time
    #   <p>The time that this dataset was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_published_time
    #   <p>The last time that this dataset was published.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_time
    #   <p>The last time that this dataset was updated.</p>
    #
    #   @return [Time]
    #
    Dashboard = ::Struct.new(
      :dashboard_id,
      :arn,
      :name,
      :version,
      :created_time,
      :last_published_time,
      :last_updated_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DashboardBehavior
    #
    module DashboardBehavior
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # <p>Dashboard error.</p>
    #
    # @!attribute type
    #   <p>Type.</p>
    #
    #   Enum, one of: ["ACCESS_DENIED", "SOURCE_NOT_FOUND", "DATA_SET_NOT_FOUND", "INTERNAL_FAILURE", "PARAMETER_VALUE_INCOMPATIBLE", "PARAMETER_TYPE_INVALID", "PARAMETER_NOT_FOUND", "COLUMN_TYPE_MISMATCH", "COLUMN_GEOGRAPHIC_ROLE_MISMATCH", "COLUMN_REPLACEMENT_MISSING"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>Message.</p>
    #
    #   @return [String]
    #
    DashboardError = ::Struct.new(
      :type,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DashboardErrorType
    #
    module DashboardErrorType
      # No documentation available.
      #
      ACCESS_DENIED = "ACCESS_DENIED"

      # No documentation available.
      #
      SOURCE_NOT_FOUND = "SOURCE_NOT_FOUND"

      # No documentation available.
      #
      DATA_SET_NOT_FOUND = "DATA_SET_NOT_FOUND"

      # No documentation available.
      #
      INTERNAL_FAILURE = "INTERNAL_FAILURE"

      # No documentation available.
      #
      PARAMETER_VALUE_INCOMPATIBLE = "PARAMETER_VALUE_INCOMPATIBLE"

      # No documentation available.
      #
      PARAMETER_TYPE_INVALID = "PARAMETER_TYPE_INVALID"

      # No documentation available.
      #
      PARAMETER_NOT_FOUND = "PARAMETER_NOT_FOUND"

      # No documentation available.
      #
      COLUMN_TYPE_MISMATCH = "COLUMN_TYPE_MISMATCH"

      # No documentation available.
      #
      COLUMN_GEOGRAPHIC_ROLE_MISMATCH = "COLUMN_GEOGRAPHIC_ROLE_MISMATCH"

      # No documentation available.
      #
      COLUMN_REPLACEMENT_MISSING = "COLUMN_REPLACEMENT_MISSING"
    end

    # Includes enum constants for DashboardFilterAttribute
    #
    module DashboardFilterAttribute
      # No documentation available.
      #
      QUICKSIGHT_USER = "QUICKSIGHT_USER"
    end

    # <p>Dashboard publish options.</p>
    #
    # @!attribute ad_hoc_filtering_option
    #   <p>Ad hoc (one-time) filtering option.</p>
    #
    #   @return [AdHocFilteringOption]
    #
    # @!attribute export_to_csv_option
    #   <p>Export to .csv option.</p>
    #
    #   @return [ExportToCSVOption]
    #
    # @!attribute sheet_controls_option
    #   <p>Sheet controls option.</p>
    #
    #   @return [SheetControlsOption]
    #
    DashboardPublishOptions = ::Struct.new(
      :ad_hoc_filtering_option,
      :export_to_csv_option,
      :sheet_controls_option,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A filter that you apply when searching for dashboards. </p>
    #
    # @!attribute operator
    #   <p>The comparison operator that you want to use as a filter, for example,
    #               <code>"Operator": "StringEquals"</code>.</p>
    #
    #   Enum, one of: ["StringEquals"]
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the value that you want to use as a filter, for example, <code>"Name":
    #               "QUICKSIGHT_USER"</code>. </p>
    #
    #   Enum, one of: ["QUICKSIGHT_USER"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the named item, in this case <code>QUICKSIGHT_USER</code>, that you want
    #               to use as a filter, for example, <code>"Value":
    #               "arn:aws:quicksight:us-east-1:1:user/default/UserName1"</code>. </p>
    #
    #   @return [String]
    #
    DashboardSearchFilter = ::Struct.new(
      :operator,
      :name,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Dashboard source entity.</p>
    #
    # @!attribute source_template
    #   <p>Source template.</p>
    #
    #   @return [DashboardSourceTemplate]
    #
    DashboardSourceEntity = ::Struct.new(
      :source_template,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Dashboard source template.</p>
    #
    # @!attribute data_set_references
    #   <p>Dataset references.</p>
    #
    #   @return [Array<DataSetReference>]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    #   @return [String]
    #
    DashboardSourceTemplate = ::Struct.new(
      :data_set_references,
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Dashboard summary.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute dashboard_id
    #   <p>Dashboard ID.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A display name for the dashboard.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>The time that this dashboard was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_time
    #   <p>The last time that this dashboard was updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute published_version_number
    #   <p>Published version number.</p>
    #
    #   @return [Integer]
    #
    # @!attribute last_published_time
    #   <p>The last time that this dashboard was published.</p>
    #
    #   @return [Time]
    #
    DashboardSummary = ::Struct.new(
      :arn,
      :dashboard_id,
      :name,
      :created_time,
      :last_updated_time,
      :published_version_number,
      :last_published_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DashboardUIState
    #
    module DashboardUIState
      # No documentation available.
      #
      EXPANDED = "EXPANDED"

      # No documentation available.
      #
      COLLAPSED = "COLLAPSED"
    end

    # <p>Dashboard version.</p>
    #
    # @!attribute created_time
    #   <p>The time that this dashboard version was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute errors
    #   <p>Errors associated with this dashboard version.</p>
    #
    #   @return [Array<DashboardError>]
    #
    # @!attribute version_number
    #   <p>Version number for this version of the dashboard.</p>
    #
    #   @return [Integer]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   Enum, one of: ["CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute source_entity_arn
    #   <p>Source entity ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute data_set_arns
    #   <p>The Amazon Resource Numbers (ARNs) for the datasets that are associated with this
    #               version of the dashboard.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute description
    #   <p>Description.</p>
    #
    #   @return [String]
    #
    # @!attribute theme_arn
    #   <p>The ARN of the theme associated with a version of the dashboard.</p>
    #
    #   @return [String]
    #
    # @!attribute sheets
    #   <p>A list of the associated sheets with the unique identifier and name of each sheet.</p>
    #
    #   @return [Array<Sheet>]
    #
    DashboardVersion = ::Struct.new(
      :created_time,
      :errors,
      :version_number,
      :status,
      :arn,
      :source_entity_arn,
      :data_set_arns,
      :description,
      :theme_arn,
      :sheets,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Dashboard version summary.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>The time that this dashboard version was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute version_number
    #   <p>Version number.</p>
    #
    #   @return [Integer]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   Enum, one of: ["CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute source_entity_arn
    #   <p>Source entity ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>Description.</p>
    #
    #   @return [String]
    #
    DashboardVersionSummary = ::Struct.new(
      :arn,
      :created_time,
      :version_number,
      :status,
      :source_entity_arn,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The theme colors that are used for data colors in charts. The colors description is a
    #             hexadecimal color code that consists of six alphanumerical characters, prefixed with
    #                 <code>#</code>, for example #37BFF5. </p>
    #
    # @!attribute colors
    #   <p>The hexadecimal codes for the colors.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute min_max_gradient
    #   <p>The minimum and maximum hexadecimal codes that describe a color gradient. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute empty_fill_color
    #   <p>The hexadecimal code of a color that applies to charts where a lack of data is
    #               highlighted.</p>
    #
    #   @return [String]
    #
    DataColorPalette = ::Struct.new(
      :colors,
      :min_max_gradient,
      :empty_fill_color,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Dataset.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute data_set_id
    #   <p>The ID of the dataset.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A display name for the dataset.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>The time that this dataset was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_time
    #   <p>The last time that this dataset was updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute physical_table_map
    #   <p>Declares the physical tables that are available in the underlying data sources.</p>
    #
    #   @return [Hash<String, PhysicalTable>]
    #
    # @!attribute logical_table_map
    #   <p>Configures the combination and transformation of the data from the physical
    #               tables.</p>
    #
    #   @return [Hash<String, LogicalTable>]
    #
    # @!attribute output_columns
    #   <p>The list of columns after all transforms. These columns are available in templates,
    #               analyses, and dashboards.</p>
    #
    #   @return [Array<OutputColumn>]
    #
    # @!attribute import_mode
    #   <p>A value that indicates whether you want to import the data into SPICE.</p>
    #
    #   Enum, one of: ["SPICE", "DIRECT_QUERY"]
    #
    #   @return [String]
    #
    # @!attribute consumed_spice_capacity_in_bytes
    #   <p>The amount of SPICE capacity used by this dataset. This is 0 if the dataset isn't
    #               imported into SPICE.</p>
    #
    #   @return [Integer]
    #
    # @!attribute column_groups
    #   <p>Groupings of columns that work together in certain Amazon QuickSight features.
    #               Currently, only geospatial hierarchy is supported.</p>
    #
    #   @return [Array<ColumnGroup>]
    #
    # @!attribute field_folders
    #   <p>The folder that contains fields and nested subfolders for your dataset.</p>
    #
    #   @return [Hash<String, FieldFolder>]
    #
    # @!attribute row_level_permission_data_set
    #   <p>The row-level security configuration for the dataset.</p>
    #
    #   @return [RowLevelPermissionDataSet]
    #
    # @!attribute row_level_permission_tag_configuration
    #   <p>The element you can use to define tags for row-level security.</p>
    #
    #   @return [RowLevelPermissionTagConfiguration]
    #
    # @!attribute column_level_permission_rules
    #   <p>A set of one or more definitions of a <code>
    #                  <a href="https://docs.aws.amazon.com/quicksight/latest/APIReference/API_ColumnLevelPermissionRule.html">ColumnLevelPermissionRule</a>
    #               </code>.</p>
    #
    #   @return [Array<ColumnLevelPermissionRule>]
    #
    # @!attribute data_set_usage_configuration
    #   <p>The usage configuration to apply to child datasets that reference this dataset as a source.</p>
    #
    #   @return [DataSetUsageConfiguration]
    #
    DataSet = ::Struct.new(
      :arn,
      :data_set_id,
      :name,
      :created_time,
      :last_updated_time,
      :physical_table_map,
      :logical_table_map,
      :output_columns,
      :import_mode,
      :consumed_spice_capacity_in_bytes,
      :column_groups,
      :field_folders,
      :row_level_permission_data_set,
      :row_level_permission_tag_configuration,
      :column_level_permission_rules,
      :data_set_usage_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.consumed_spice_capacity_in_bytes ||= 0
      end
    end

    # <p>Dataset configuration.</p>
    #
    # @!attribute placeholder
    #   <p>Placeholder.</p>
    #
    #   @return [String]
    #
    # @!attribute data_set_schema
    #   <p>Dataset schema.</p>
    #
    #   @return [DataSetSchema]
    #
    # @!attribute column_group_schema_list
    #   <p>A structure containing the list of column group schemas.</p>
    #
    #   @return [Array<ColumnGroupSchema>]
    #
    DataSetConfiguration = ::Struct.new(
      :placeholder,
      :data_set_schema,
      :column_group_schema_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DataSetImportMode
    #
    module DataSetImportMode
      # No documentation available.
      #
      SPICE = "SPICE"

      # No documentation available.
      #
      DIRECT_QUERY = "DIRECT_QUERY"
    end

    # <p>Dataset reference.</p>
    #
    # @!attribute data_set_placeholder
    #   <p>Dataset placeholder.</p>
    #
    #   @return [String]
    #
    # @!attribute data_set_arn
    #   <p>Dataset Amazon Resource Name (ARN).</p>
    #
    #   @return [String]
    #
    DataSetReference = ::Struct.new(
      :data_set_placeholder,
      :data_set_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Dataset schema.</p>
    #
    # @!attribute column_schema_list
    #   <p>A structure containing the list of column schemas.</p>
    #
    #   @return [Array<ColumnSchema>]
    #
    DataSetSchema = ::Struct.new(
      :column_schema_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Dataset summary.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the dataset.</p>
    #
    #   @return [String]
    #
    # @!attribute data_set_id
    #   <p>The ID of the dataset.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A display name for the dataset.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>The time that this dataset was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_time
    #   <p>The last time that this dataset was updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute import_mode
    #   <p>A value that indicates whether you want to import the data into SPICE.</p>
    #
    #   Enum, one of: ["SPICE", "DIRECT_QUERY"]
    #
    #   @return [String]
    #
    # @!attribute row_level_permission_data_set
    #   <p>The row-level security configuration for the dataset.</p>
    #
    #   @return [RowLevelPermissionDataSet]
    #
    # @!attribute row_level_permission_tag_configuration_applied
    #   <p>Whether or not the row level permission tags are applied.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute column_level_permission_rules_applied
    #   <p>A value that indicates if the dataset has column level permission configured.</p>
    #
    #   @return [Boolean]
    #
    DataSetSummary = ::Struct.new(
      :arn,
      :data_set_id,
      :name,
      :created_time,
      :last_updated_time,
      :import_mode,
      :row_level_permission_data_set,
      :row_level_permission_tag_configuration_applied,
      :column_level_permission_rules_applied,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.row_level_permission_tag_configuration_applied ||= false
        self.column_level_permission_rules_applied ||= false
      end
    end

    # <p>The usage configuration to apply to child datasets that reference this dataset as a source.</p>
    #
    # @!attribute disable_use_as_direct_query_source
    #   <p>An option that controls whether a child dataset of a direct query can use this dataset as a source.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute disable_use_as_imported_source
    #   <p>An option that controls whether a child dataset that's stored in QuickSight can use this dataset as a source.</p>
    #
    #   @return [Boolean]
    #
    DataSetUsageConfiguration = ::Struct.new(
      :disable_use_as_direct_query_source,
      :disable_use_as_imported_source,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.disable_use_as_direct_query_source ||= false
        self.disable_use_as_imported_source ||= false
      end
    end

    # <p>The structure of a data source.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the data source.</p>
    #
    #   @return [String]
    #
    # @!attribute data_source_id
    #   <p>The ID of the data source. This ID is unique per Amazon Web Services Region for each
    #               Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A display name for the data source.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of the data source. This type indicates which database engine the data source
    #               connects to.</p>
    #
    #   Enum, one of: ["ADOBE_ANALYTICS", "AMAZON_ELASTICSEARCH", "ATHENA", "AURORA", "AURORA_POSTGRESQL", "AWS_IOT_ANALYTICS", "GITHUB", "JIRA", "MARIADB", "MYSQL", "ORACLE", "POSTGRESQL", "PRESTO", "REDSHIFT", "S3", "SALESFORCE", "SERVICENOW", "SNOWFLAKE", "SPARK", "SQLSERVER", "TERADATA", "TWITTER", "TIMESTREAM", "AMAZON_OPENSEARCH", "EXASOL"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   Enum, one of: ["CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>The time that this data source was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_time
    #   <p>The last time that this data source was updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute data_source_parameters
    #   <p>The parameters that Amazon QuickSight uses to connect to your underlying source. This
    #               is a variant type structure. For this structure to be valid, only one of the attributes
    #               can be non-null.</p>
    #
    #   @return [DataSourceParameters]
    #
    # @!attribute alternate_data_source_parameters
    #   <p>A set of alternate data source parameters that you want to share for the credentials
    #               stored with this data source. The credentials are applied in tandem with the data source
    #               parameters when you copy a data source by using a create or update request. The API
    #               operation compares the <code>DataSourceParameters</code> structure that's in the request
    #               with the structures in the <code>AlternateDataSourceParameters</code> allow list. If the
    #               structures are an exact match, the request is allowed to use the credentials from this
    #               existing data source. If the <code>AlternateDataSourceParameters</code> list is null,
    #               the <code>Credentials</code> originally used with this <code>DataSourceParameters</code>
    #               are automatically allowed.</p>
    #
    #   @return [Array<DataSourceParameters>]
    #
    # @!attribute vpc_connection_properties
    #   <p>The VPC connection information. You need to use this parameter only when you want
    #               Amazon QuickSight to use a VPC connection when connecting to your underlying source.</p>
    #
    #   @return [VpcConnectionProperties]
    #
    # @!attribute ssl_properties
    #   <p>Secure Socket Layer (SSL) properties that apply when Amazon QuickSight connects to your
    #               underlying source.</p>
    #
    #   @return [SslProperties]
    #
    # @!attribute error_info
    #   <p>Error information from the last update or the creation of the data source.</p>
    #
    #   @return [DataSourceErrorInfo]
    #
    DataSource = ::Struct.new(
      :arn,
      :data_source_id,
      :name,
      :type,
      :status,
      :created_time,
      :last_updated_time,
      :data_source_parameters,
      :alternate_data_source_parameters,
      :vpc_connection_properties,
      :ssl_properties,
      :error_info,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Data source credentials. This is a variant type structure. For this structure to be
    #             valid, only one of the attributes can be non-null.</p>
    #
    # @note
    #   This shape is sensitive and must be handled with care.
    #
    # @!attribute credential_pair
    #   <p>Credential pair. For more information, see
    #               <code>
    #                  <a href="https://docs.aws.amazon.com/quicksight/latest/APIReference/API_CredentialPair.html">CredentialPair</a>
    #               </code>.</p>
    #
    #   @return [CredentialPair]
    #
    # @!attribute copy_source_arn
    #   <p>The Amazon Resource Name (ARN) of a data source that has the credential pair that you
    #               want to use. When <code>CopySourceArn</code> is not null, the credential pair from the
    #               data source in the ARN is used as the credentials for the
    #               <code>DataSourceCredentials</code> structure.</p>
    #
    #   @return [String]
    #
    DataSourceCredentials = ::Struct.new(
      :credential_pair,
      :copy_source_arn,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::QuickSight::Types::DataSourceCredentials [SENSITIVE]>"
      end
    end

    # <p>Error information for the data source creation or update.</p>
    #
    # @!attribute type
    #   <p>Error type.</p>
    #
    #   Enum, one of: ["ACCESS_DENIED", "COPY_SOURCE_NOT_FOUND", "TIMEOUT", "ENGINE_VERSION_NOT_SUPPORTED", "UNKNOWN_HOST", "GENERIC_SQL_FAILURE", "CONFLICT", "UNKNOWN"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>Error message.</p>
    #
    #   @return [String]
    #
    DataSourceErrorInfo = ::Struct.new(
      :type,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DataSourceErrorInfoType
    #
    module DataSourceErrorInfoType
      # No documentation available.
      #
      ACCESS_DENIED = "ACCESS_DENIED"

      # No documentation available.
      #
      COPY_SOURCE_NOT_FOUND = "COPY_SOURCE_NOT_FOUND"

      # No documentation available.
      #
      TIMEOUT = "TIMEOUT"

      # No documentation available.
      #
      ENGINE_VERSION_NOT_SUPPORTED = "ENGINE_VERSION_NOT_SUPPORTED"

      # No documentation available.
      #
      UNKNOWN_HOST = "UNKNOWN_HOST"

      # No documentation available.
      #
      GENERIC_SQL_FAILURE = "GENERIC_SQL_FAILURE"

      # No documentation available.
      #
      CONFLICT = "CONFLICT"

      # No documentation available.
      #
      UNKNOWN = "UNKNOWN"
    end

    # <p>The parameters that Amazon QuickSight uses to connect to your underlying data source.
    #             This is a variant type structure. For this structure to be valid, only one of the
    #             attributes can be non-null.</p>
    #
    class DataSourceParameters < Hearth::Union
      # <p>The parameters for OpenSearch.</p>
      #
      class AmazonElasticsearchParameters < DataSourceParameters
        def to_h
          { amazon_elasticsearch_parameters: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::QuickSight::Types::AmazonElasticsearchParameters #{__getobj__ || 'nil'}>"
        end
      end

      # <p>The parameters for Amazon Athena.</p>
      #
      class AthenaParameters < DataSourceParameters
        def to_h
          { athena_parameters: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::QuickSight::Types::AthenaParameters #{__getobj__ || 'nil'}>"
        end
      end

      # <p>The parameters for Amazon Aurora MySQL.</p>
      #
      class AuroraParameters < DataSourceParameters
        def to_h
          { aurora_parameters: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::QuickSight::Types::AuroraParameters #{__getobj__ || 'nil'}>"
        end
      end

      # <p>The parameters for Amazon Aurora.</p>
      #
      class AuroraPostgreSqlParameters < DataSourceParameters
        def to_h
          { aurora_postgre_sql_parameters: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::QuickSight::Types::AuroraPostgreSqlParameters #{__getobj__ || 'nil'}>"
        end
      end

      # <p>The parameters for IoT Analytics.</p>
      #
      class AwsIotAnalyticsParameters < DataSourceParameters
        def to_h
          { aws_iot_analytics_parameters: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::QuickSight::Types::AwsIotAnalyticsParameters #{__getobj__ || 'nil'}>"
        end
      end

      # <p>The parameters for Jira.</p>
      #
      class JiraParameters < DataSourceParameters
        def to_h
          { jira_parameters: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::QuickSight::Types::JiraParameters #{__getobj__ || 'nil'}>"
        end
      end

      # <p>The parameters for MariaDB.</p>
      #
      class MariaDbParameters < DataSourceParameters
        def to_h
          { maria_db_parameters: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::QuickSight::Types::MariaDbParameters #{__getobj__ || 'nil'}>"
        end
      end

      # <p>The parameters for MySQL.</p>
      #
      class MySqlParameters < DataSourceParameters
        def to_h
          { my_sql_parameters: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::QuickSight::Types::MySqlParameters #{__getobj__ || 'nil'}>"
        end
      end

      # <p>The parameters for Oracle.</p>
      #
      class OracleParameters < DataSourceParameters
        def to_h
          { oracle_parameters: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::QuickSight::Types::OracleParameters #{__getobj__ || 'nil'}>"
        end
      end

      # <p>The parameters for PostgreSQL.</p>
      #
      class PostgreSqlParameters < DataSourceParameters
        def to_h
          { postgre_sql_parameters: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::QuickSight::Types::PostgreSqlParameters #{__getobj__ || 'nil'}>"
        end
      end

      # <p>The parameters for Presto.</p>
      #
      class PrestoParameters < DataSourceParameters
        def to_h
          { presto_parameters: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::QuickSight::Types::PrestoParameters #{__getobj__ || 'nil'}>"
        end
      end

      # <p>The parameters for Amazon RDS.</p>
      #
      class RdsParameters < DataSourceParameters
        def to_h
          { rds_parameters: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::QuickSight::Types::RdsParameters #{__getobj__ || 'nil'}>"
        end
      end

      # <p>The parameters for Amazon Redshift.</p>
      #
      class RedshiftParameters < DataSourceParameters
        def to_h
          { redshift_parameters: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::QuickSight::Types::RedshiftParameters #{__getobj__ || 'nil'}>"
        end
      end

      # <p>The parameters for S3.</p>
      #
      class S3Parameters < DataSourceParameters
        def to_h
          { s3_parameters: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::QuickSight::Types::S3Parameters #{__getobj__ || 'nil'}>"
        end
      end

      # <p>The parameters for ServiceNow.</p>
      #
      class ServiceNowParameters < DataSourceParameters
        def to_h
          { service_now_parameters: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::QuickSight::Types::ServiceNowParameters #{__getobj__ || 'nil'}>"
        end
      end

      # <p>The parameters for Snowflake.</p>
      #
      class SnowflakeParameters < DataSourceParameters
        def to_h
          { snowflake_parameters: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::QuickSight::Types::SnowflakeParameters #{__getobj__ || 'nil'}>"
        end
      end

      # <p>The parameters for Spark.</p>
      #
      class SparkParameters < DataSourceParameters
        def to_h
          { spark_parameters: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::QuickSight::Types::SparkParameters #{__getobj__ || 'nil'}>"
        end
      end

      # <p>The parameters for SQL Server.</p>
      #
      class SqlServerParameters < DataSourceParameters
        def to_h
          { sql_server_parameters: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::QuickSight::Types::SqlServerParameters #{__getobj__ || 'nil'}>"
        end
      end

      # <p>The parameters for Teradata.</p>
      #
      class TeradataParameters < DataSourceParameters
        def to_h
          { teradata_parameters: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::QuickSight::Types::TeradataParameters #{__getobj__ || 'nil'}>"
        end
      end

      # <p>The parameters for Twitter.</p>
      #
      class TwitterParameters < DataSourceParameters
        def to_h
          { twitter_parameters: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::QuickSight::Types::TwitterParameters #{__getobj__ || 'nil'}>"
        end
      end

      # <p>The parameters for OpenSearch.</p>
      #
      class AmazonOpenSearchParameters < DataSourceParameters
        def to_h
          { amazon_open_search_parameters: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::QuickSight::Types::AmazonOpenSearchParameters #{__getobj__ || 'nil'}>"
        end
      end

      # <p>The parameters for Exasol.</p>
      #
      class ExasolParameters < DataSourceParameters
        def to_h
          { exasol_parameters: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::QuickSight::Types::ExasolParameters #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < DataSourceParameters
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::QuickSight::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # Includes enum constants for DataSourceType
    #
    module DataSourceType
      # No documentation available.
      #
      ADOBE_ANALYTICS = "ADOBE_ANALYTICS"

      # No documentation available.
      #
      AMAZON_ELASTICSEARCH = "AMAZON_ELASTICSEARCH"

      # No documentation available.
      #
      ATHENA = "ATHENA"

      # No documentation available.
      #
      AURORA = "AURORA"

      # No documentation available.
      #
      AURORA_POSTGRESQL = "AURORA_POSTGRESQL"

      # No documentation available.
      #
      AWS_IOT_ANALYTICS = "AWS_IOT_ANALYTICS"

      # No documentation available.
      #
      GITHUB = "GITHUB"

      # No documentation available.
      #
      JIRA = "JIRA"

      # No documentation available.
      #
      MARIADB = "MARIADB"

      # No documentation available.
      #
      MYSQL = "MYSQL"

      # No documentation available.
      #
      ORACLE = "ORACLE"

      # No documentation available.
      #
      POSTGRESQL = "POSTGRESQL"

      # No documentation available.
      #
      PRESTO = "PRESTO"

      # No documentation available.
      #
      REDSHIFT = "REDSHIFT"

      # No documentation available.
      #
      S3 = "S3"

      # No documentation available.
      #
      SALESFORCE = "SALESFORCE"

      # No documentation available.
      #
      SERVICENOW = "SERVICENOW"

      # No documentation available.
      #
      SNOWFLAKE = "SNOWFLAKE"

      # No documentation available.
      #
      SPARK = "SPARK"

      # No documentation available.
      #
      SQLSERVER = "SQLSERVER"

      # No documentation available.
      #
      TERADATA = "TERADATA"

      # No documentation available.
      #
      TWITTER = "TWITTER"

      # No documentation available.
      #
      TIMESTREAM = "TIMESTREAM"

      # No documentation available.
      #
      AMAZON_OPENSEARCH = "AMAZON_OPENSEARCH"

      # No documentation available.
      #
      EXASOL = "EXASOL"
    end

    # <p>A date-time parameter.</p>
    #
    # @!attribute name
    #   <p>A display name for the date-time parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The values for the date-time parameter.</p>
    #
    #   @return [Array<Time>]
    #
    DateTimeParameter = ::Struct.new(
      :name,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A decimal parameter.</p>
    #
    # @!attribute name
    #   <p>A display name for the decimal parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The values for the decimal parameter.</p>
    #
    #   @return [Array<Float>]
    #
    DecimalParameter = ::Struct.new(
      :name,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute aws_account_id
    #   <p>The ID for the Amazon Web Services account that you want to delete Amazon QuickSight customizations from in
    #               this Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute namespace
    #   <p>The Amazon QuickSight namespace that you're deleting the customizations from.</p>
    #
    #   @return [String]
    #
    DeleteAccountCustomizationInput = ::Struct.new(
      :aws_account_id,
      :namespace,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    DeleteAccountCustomizationOutput = ::Struct.new(
      :request_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID of the Amazon Web Services account where you want to delete an analysis.</p>
    #
    #   @return [String]
    #
    # @!attribute analysis_id
    #   <p>The ID of the analysis that you're deleting.</p>
    #
    #   @return [String]
    #
    # @!attribute recovery_window_in_days
    #   <p>A value that specifies the number of days that Amazon QuickSight waits before it deletes the
    #               analysis. You can't use this parameter with the <code>ForceDeleteWithoutRecovery</code>
    #               option in the same API call. The default value is 30.</p>
    #
    #   @return [Integer]
    #
    # @!attribute force_delete_without_recovery
    #   <p>This option defaults to the value <code>NoForceDeleteWithoutRecovery</code>. To
    #               immediately delete the analysis, add the <code>ForceDeleteWithoutRecovery</code> option.
    #               You can't restore an analysis after it's deleted. </p>
    #
    #   @return [Boolean]
    #
    DeleteAnalysisInput = ::Struct.new(
      :aws_account_id,
      :analysis_id,
      :recovery_window_in_days,
      :force_delete_without_recovery,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.force_delete_without_recovery ||= false
      end
    end

    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the deleted analysis.</p>
    #
    #   @return [String]
    #
    # @!attribute analysis_id
    #   <p>The ID of the deleted analysis.</p>
    #
    #   @return [String]
    #
    # @!attribute deletion_time
    #   <p>The date and time that the analysis is scheduled to be deleted.</p>
    #
    #   @return [Time]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    DeleteAnalysisOutput = ::Struct.new(
      :status,
      :arn,
      :analysis_id,
      :deletion_time,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the dashboard that you're
    #               deleting.</p>
    #
    #   @return [String]
    #
    # @!attribute dashboard_id
    #   <p>The ID for the dashboard.</p>
    #
    #   @return [String]
    #
    # @!attribute version_number
    #   <p>The version number of the dashboard. If the version number property is provided, only
    #               the specified version of the dashboard is deleted.</p>
    #
    #   @return [Integer]
    #
    DeleteDashboardInput = ::Struct.new(
      :aws_account_id,
      :dashboard_id,
      :version_number,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute arn
    #   <p>The Secure Socket Layer (SSL) properties that apply for the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute dashboard_id
    #   <p>The ID of the dashboard.</p>
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    DeleteDashboardOutput = ::Struct.new(
      :status,
      :arn,
      :dashboard_id,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The Amazon Web Services account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute data_set_id
    #   <p>The ID for the dataset that you want to create. This ID is unique per Amazon Web Services Region for each Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    DeleteDataSetInput = ::Struct.new(
      :aws_account_id,
      :data_set_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the dataset.</p>
    #
    #   @return [String]
    #
    # @!attribute data_set_id
    #   <p>The ID for the dataset that you want to create. This ID is unique per Amazon Web Services Region for each Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    DeleteDataSetOutput = ::Struct.new(
      :arn,
      :data_set_id,
      :request_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The Amazon Web Services account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute data_source_id
    #   <p>The ID of the data source. This ID is unique per Amazon Web Services Region for each Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    DeleteDataSourceInput = ::Struct.new(
      :aws_account_id,
      :data_source_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the data source that you deleted.</p>
    #
    #   @return [String]
    #
    # @!attribute data_source_id
    #   <p>The ID of the data source. This ID is unique per Amazon Web Services Region for each Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    DeleteDataSourceOutput = ::Struct.new(
      :arn,
      :data_source_id,
      :request_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID for the Amazon Web Services account that contains the folder.</p>
    #
    #   @return [String]
    #
    # @!attribute folder_id
    #   <p>The ID of the folder.</p>
    #
    #   @return [String]
    #
    DeleteFolderInput = ::Struct.new(
      :aws_account_id,
      :folder_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute aws_account_id
    #   <p>The ID for the Amazon Web Services account that contains the folder.</p>
    #
    #   @return [String]
    #
    # @!attribute folder_id
    #   <p>The Folder ID.</p>
    #
    #   @return [String]
    #
    # @!attribute member_id
    #   <p>The ID of the asset (the dashboard, analysis, or dataset) that you want to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute member_type
    #   <p>The type of the member, including <code>DASHBOARD</code>, <code>ANALYSIS</code>, and <code>DATASET</code>
    #            </p>
    #
    #   Enum, one of: ["DASHBOARD", "ANALYSIS", "DATASET"]
    #
    #   @return [String]
    #
    DeleteFolderMembershipInput = ::Struct.new(
      :aws_account_id,
      :folder_id,
      :member_id,
      :member_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    DeleteFolderMembershipOutput = ::Struct.new(
      :status,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name of the deleted folder.</p>
    #
    #   @return [String]
    #
    # @!attribute folder_id
    #   <p>The ID of the folder.</p>
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    DeleteFolderOutput = ::Struct.new(
      :status,
      :arn,
      :folder_id,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute group_name
    #   <p>The name of the group that you want to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_account_id
    #   <p>The ID for the Amazon Web Services account that the group is in. Currently, you use the ID for the
    #   			Amazon Web Services account that contains your Amazon QuickSight account.</p>
    #
    #   @return [String]
    #
    # @!attribute namespace
    #   <p>The namespace of the group that you want to delete.</p>
    #
    #   @return [String]
    #
    DeleteGroupInput = ::Struct.new(
      :group_name,
      :aws_account_id,
      :namespace,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute member_name
    #   <p>The name of the user that you want to delete from the group membership.</p>
    #
    #   @return [String]
    #
    # @!attribute group_name
    #   <p>The name of the group that you want to delete the user from.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_account_id
    #   <p>The ID for the Amazon Web Services account that the group is in. Currently, you use the ID for the
    #   			Amazon Web Services account that contains your Amazon QuickSight account.</p>
    #
    #   @return [String]
    #
    # @!attribute namespace
    #   <p>The namespace of the group that you want to remove a user from.</p>
    #
    #   @return [String]
    #
    DeleteGroupMembershipInput = ::Struct.new(
      :member_name,
      :group_name,
      :aws_account_id,
      :namespace,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    DeleteGroupMembershipOutput = ::Struct.new(
      :request_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    DeleteGroupOutput = ::Struct.new(
      :request_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The Amazon Web Services account ID where you want to delete the IAM policy assignment.</p>
    #
    #   @return [String]
    #
    # @!attribute assignment_name
    #   <p>The name of the assignment. </p>
    #
    #   @return [String]
    #
    # @!attribute namespace
    #   <p>The namespace that contains the assignment.</p>
    #
    #   @return [String]
    #
    DeleteIAMPolicyAssignmentInput = ::Struct.new(
      :aws_account_id,
      :assignment_name,
      :namespace,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute assignment_name
    #   <p>The name of the assignment. </p>
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    DeleteIAMPolicyAssignmentOutput = ::Struct.new(
      :assignment_name,
      :request_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID for the Amazon Web Services account that you want to delete the Amazon QuickSight namespace from.</p>
    #
    #   @return [String]
    #
    # @!attribute namespace
    #   <p>The namespace that you want to delete.</p>
    #
    #   @return [String]
    #
    DeleteNamespaceInput = ::Struct.new(
      :aws_account_id,
      :namespace,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    DeleteNamespaceOutput = ::Struct.new(
      :request_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the item to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute template_id
    #   <p>The ID for the template that the specified alias is for.</p>
    #
    #   @return [String]
    #
    # @!attribute alias_name
    #   <p>The name for the template alias. To delete a specific alias, you delete the version that the
    #   			alias points to. You can specify the alias name, or specify the latest version of the
    #   			template by providing the keyword <code>$LATEST</code> in the <code>AliasName</code>
    #   			parameter. </p>
    #
    #   @return [String]
    #
    DeleteTemplateAliasInput = ::Struct.new(
      :aws_account_id,
      :template_id,
      :alias_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute template_id
    #   <p>An ID for the template associated with the deletion.</p>
    #
    #   @return [String]
    #
    # @!attribute alias_name
    #   <p>The name for the template alias.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the template you want to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    DeleteTemplateAliasOutput = ::Struct.new(
      :status,
      :template_id,
      :alias_name,
      :arn,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the template that you're deleting.</p>
    #
    #   @return [String]
    #
    # @!attribute template_id
    #   <p>An ID for the template you want to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute version_number
    #   <p>Specifies the version of the template that you want to delete.
    #   			If you don't provide a version number, <code>DeleteTemplate</code> deletes all versions of the template.
    #   	 </p>
    #
    #   @return [Integer]
    #
    DeleteTemplateInput = ::Struct.new(
      :aws_account_id,
      :template_id,
      :version_number,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute template_id
    #   <p>An ID for the template.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    DeleteTemplateOutput = ::Struct.new(
      :request_id,
      :arn,
      :template_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the theme alias to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute theme_id
    #   <p>The ID for the theme that the specified alias is for.</p>
    #
    #   @return [String]
    #
    # @!attribute alias_name
    #   <p>The unique name for the theme alias to delete.</p>
    #
    #   @return [String]
    #
    DeleteThemeAliasInput = ::Struct.new(
      :aws_account_id,
      :theme_id,
      :alias_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute alias_name
    #   <p>The name for the theme alias.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the theme resource using the deleted alias.</p>
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute theme_id
    #   <p>An ID for the theme associated with the deletion.</p>
    #
    #   @return [String]
    #
    DeleteThemeAliasOutput = ::Struct.new(
      :alias_name,
      :arn,
      :request_id,
      :status,
      :theme_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the theme that you're deleting.</p>
    #
    #   @return [String]
    #
    # @!attribute theme_id
    #   <p>An ID for the theme that you want to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute version_number
    #   <p>The version of the theme that you want to delete. </p>
    #   		       <p>
    #               <b>Note:</b> If you don't provide a version number, you're
    #   			using this call to <code>DeleteTheme</code> to delete all versions of the theme.</p>
    #
    #   @return [Integer]
    #
    DeleteThemeInput = ::Struct.new(
      :aws_account_id,
      :theme_id,
      :version_number,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute theme_id
    #   <p>An ID for the theme.</p>
    #
    #   @return [String]
    #
    DeleteThemeOutput = ::Struct.new(
      :arn,
      :request_id,
      :status,
      :theme_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # <p></p>
    #
    # @!attribute principal_id
    #   <p>The principal ID of the user.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_account_id
    #   <p>The ID for the Amazon Web Services account that the user is in. Currently, you use the ID for the
    #   			Amazon Web Services account that contains your Amazon QuickSight account.</p>
    #
    #   @return [String]
    #
    # @!attribute namespace
    #   <p>The namespace. Currently, you should set this to <code>default</code>.</p>
    #
    #   @return [String]
    #
    DeleteUserByPrincipalIdInput = ::Struct.new(
      :principal_id,
      :aws_account_id,
      :namespace,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    DeleteUserByPrincipalIdOutput = ::Struct.new(
      :request_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute user_name
    #   <p>The name of the user that you want to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_account_id
    #   <p>The ID for the Amazon Web Services account that the user is in. Currently, you use the ID for the
    #   			Amazon Web Services account that contains your Amazon QuickSight account.</p>
    #
    #   @return [String]
    #
    # @!attribute namespace
    #   <p>The namespace. Currently, you should set this to <code>default</code>.</p>
    #
    #   @return [String]
    #
    DeleteUserInput = ::Struct.new(
      :user_name,
      :aws_account_id,
      :namespace,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    DeleteUserOutput = ::Struct.new(
      :request_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID for the Amazon Web Services account that you want to describe Amazon QuickSight customizations
    #               for.</p>
    #
    #   @return [String]
    #
    # @!attribute namespace
    #   <p>The Amazon QuickSight namespace that you want to describe Amazon QuickSight customizations
    #               for.</p>
    #
    #   @return [String]
    #
    # @!attribute resolved
    #   <p>The <code>Resolved</code> flag works with the other parameters to determine which view
    #               of Amazon QuickSight customizations is returned. You can add this flag to your command to use
    #               the same view that Amazon QuickSight uses to identify which customizations to apply to the
    #               console. Omit this flag, or set it to <code>no-resolved</code>, to reveal customizations
    #               that are configured at different levels. </p>
    #
    #   @return [Boolean]
    #
    DescribeAccountCustomizationInput = ::Struct.new(
      :aws_account_id,
      :namespace,
      :resolved,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.resolved ||= false
      end
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the customization that's associated with this Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_account_id
    #   <p>The ID for the Amazon Web Services account that you're describing.</p>
    #
    #   @return [String]
    #
    # @!attribute namespace
    #   <p>The Amazon QuickSight namespace that you're describing. </p>
    #
    #   @return [String]
    #
    # @!attribute account_customization
    #   <p>The Amazon QuickSight customizations that exist in the current Amazon Web Services Region. </p>
    #
    #   @return [AccountCustomization]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    DescribeAccountCustomizationOutput = ::Struct.new(
      :arn,
      :aws_account_id,
      :namespace,
      :account_customization,
      :request_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID for the Amazon Web Services account that contains the settings that you want to list.</p>
    #
    #   @return [String]
    #
    DescribeAccountSettingsInput = ::Struct.new(
      :aws_account_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_settings
    #   <p>The Amazon QuickSight settings for this Amazon Web Services account. This information includes the edition of Amazon
    #               Amazon QuickSight that you subscribed to (Standard or Enterprise) and the notification email for the
    #               Amazon QuickSight subscription. In the QuickSight console, the Amazon QuickSight subscription is sometimes
    #               referred to as a QuickSight "account" even though it's technically not an account
    #               by itself. Instead, it's a subscription to the Amazon QuickSight service for your Amazon Web Services account. The
    #               edition that you subscribe to applies to Amazon QuickSight in every Amazon Web Services Region where you use it.</p>
    #
    #   @return [AccountSettings]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    DescribeAccountSettingsOutput = ::Struct.new(
      :account_settings,
      :request_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the analysis. You must be using the
    #               Amazon Web Services account that the analysis is in.</p>
    #
    #   @return [String]
    #
    # @!attribute analysis_id
    #   <p>The ID of the analysis that you're describing. The ID is part of the URL of the
    #               analysis.</p>
    #
    #   @return [String]
    #
    DescribeAnalysisInput = ::Struct.new(
      :aws_account_id,
      :analysis_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute analysis
    #   <p>A metadata structure that contains summary information for the analysis that you're
    #               describing.</p>
    #
    #   @return [Analysis]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    DescribeAnalysisOutput = ::Struct.new(
      :analysis,
      :status,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the analysis whose permissions you're
    #               describing. You must be using the Amazon Web Services account that the analysis is in.</p>
    #
    #   @return [String]
    #
    # @!attribute analysis_id
    #   <p>The ID of the analysis whose permissions you're describing. The ID is part of the
    #               analysis URL.</p>
    #
    #   @return [String]
    #
    DescribeAnalysisPermissionsInput = ::Struct.new(
      :aws_account_id,
      :analysis_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute analysis_id
    #   <p>The ID of the analysis whose permissions you're describing.</p>
    #
    #   @return [String]
    #
    # @!attribute analysis_arn
    #   <p>The Amazon Resource Name (ARN) of the analysis whose permissions you're
    #               describing.</p>
    #
    #   @return [String]
    #
    # @!attribute permissions
    #   <p>A structure that describes the principals and the resource-level permissions on an
    #               analysis.</p>
    #
    #   @return [Array<ResourcePermission>]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    DescribeAnalysisPermissionsOutput = ::Struct.new(
      :analysis_id,
      :analysis_arn,
      :permissions,
      :status,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the dashboard that you're
    #               describing.</p>
    #
    #   @return [String]
    #
    # @!attribute dashboard_id
    #   <p>The ID for the dashboard.</p>
    #
    #   @return [String]
    #
    # @!attribute version_number
    #   <p>The version number for the dashboard. If a version number isn't passed, the
    #               latest published dashboard version is described. </p>
    #
    #   @return [Integer]
    #
    # @!attribute alias_name
    #   <p>The alias name.</p>
    #
    #   @return [String]
    #
    DescribeDashboardInput = ::Struct.new(
      :aws_account_id,
      :dashboard_id,
      :version_number,
      :alias_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute dashboard
    #   <p>Information about the dashboard.</p>
    #
    #   @return [Dashboard]
    #
    # @!attribute status
    #   <p>The HTTP status of this request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    DescribeDashboardOutput = ::Struct.new(
      :dashboard,
      :status,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the dashboard that you're describing
    #               permissions for.</p>
    #
    #   @return [String]
    #
    # @!attribute dashboard_id
    #   <p>The ID for the dashboard, also added to the IAM policy.</p>
    #
    #   @return [String]
    #
    DescribeDashboardPermissionsInput = ::Struct.new(
      :aws_account_id,
      :dashboard_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute dashboard_id
    #   <p>The ID for the dashboard.</p>
    #
    #   @return [String]
    #
    # @!attribute dashboard_arn
    #   <p>The Amazon Resource Name (ARN) of the dashboard.</p>
    #
    #   @return [String]
    #
    # @!attribute permissions
    #   <p>A structure that contains the permissions for the dashboard.</p>
    #
    #   @return [Array<ResourcePermission>]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute link_sharing_configuration
    #   <p>A structure that contains the configuration of a shareable link that grants access to
    #               the dashboard. Your users can use the link to view and interact with the dashboard, if
    #               the dashboard has been shared with them. For more information about sharing dashboards,
    #               see <a href="https://docs.aws.amazon.com/quicksight/latest/user/sharing-a-dashboard.html">Sharing Dashboards</a>.</p>
    #
    #   @return [LinkSharingConfiguration]
    #
    DescribeDashboardPermissionsOutput = ::Struct.new(
      :dashboard_id,
      :dashboard_arn,
      :permissions,
      :status,
      :request_id,
      :link_sharing_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The Amazon Web Services account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute data_set_id
    #   <p>The ID for the dataset that you want to create. This ID is unique per Amazon Web Services Region for each Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    DescribeDataSetInput = ::Struct.new(
      :aws_account_id,
      :data_set_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute data_set
    #   <p>Information on the dataset.</p>
    #
    #   @return [DataSet]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    DescribeDataSetOutput = ::Struct.new(
      :data_set,
      :request_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The Amazon Web Services account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute data_set_id
    #   <p>The ID for the dataset that you want to create. This ID is unique per Amazon Web Services Region for each Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    DescribeDataSetPermissionsInput = ::Struct.new(
      :aws_account_id,
      :data_set_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute data_set_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset.</p>
    #
    #   @return [String]
    #
    # @!attribute data_set_id
    #   <p>The ID for the dataset that you want to create. This ID is unique per Amazon Web Services Region for each Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute permissions
    #   <p>A list of resource permissions on the dataset.</p>
    #
    #   @return [Array<ResourcePermission>]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    DescribeDataSetPermissionsOutput = ::Struct.new(
      :data_set_arn,
      :data_set_id,
      :permissions,
      :request_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The Amazon Web Services account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute data_source_id
    #   <p>The ID of the data source. This ID is unique per Amazon Web Services Region for each Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    DescribeDataSourceInput = ::Struct.new(
      :aws_account_id,
      :data_source_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute data_source
    #   <p>The information on the data source.</p>
    #
    #   @return [DataSource]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    DescribeDataSourceOutput = ::Struct.new(
      :data_source,
      :request_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The Amazon Web Services account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute data_source_id
    #   <p>The ID of the data source. This ID is unique per Amazon Web Services Region for each Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    DescribeDataSourcePermissionsInput = ::Struct.new(
      :aws_account_id,
      :data_source_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute data_source_arn
    #   <p>The Amazon Resource Name (ARN) of the data source.</p>
    #
    #   @return [String]
    #
    # @!attribute data_source_id
    #   <p>The ID of the data source. This ID is unique per Amazon Web Services Region for each Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute permissions
    #   <p>A list of resource permissions on the data source.</p>
    #
    #   @return [Array<ResourcePermission>]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    DescribeDataSourcePermissionsOutput = ::Struct.new(
      :data_source_arn,
      :data_source_id,
      :permissions,
      :request_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID for the Amazon Web Services account that contains the folder.</p>
    #
    #   @return [String]
    #
    # @!attribute folder_id
    #   <p>The ID of the folder.</p>
    #
    #   @return [String]
    #
    DescribeFolderInput = ::Struct.new(
      :aws_account_id,
      :folder_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute folder
    #   <p>Information about the folder.</p>
    #
    #   @return [Folder]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    DescribeFolderOutput = ::Struct.new(
      :status,
      :folder,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID for the Amazon Web Services account that contains the folder.</p>
    #
    #   @return [String]
    #
    # @!attribute folder_id
    #   <p>The ID of the folder.</p>
    #
    #   @return [String]
    #
    DescribeFolderPermissionsInput = ::Struct.new(
      :aws_account_id,
      :folder_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute folder_id
    #   <p>The ID of the folder.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) for the folder.</p>
    #
    #   @return [String]
    #
    # @!attribute permissions
    #   <p>Information about the permissions on the folder.</p>
    #
    #   @return [Array<ResourcePermission>]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    DescribeFolderPermissionsOutput = ::Struct.new(
      :status,
      :folder_id,
      :arn,
      :permissions,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID for the Amazon Web Services account that contains the folder.</p>
    #
    #   @return [String]
    #
    # @!attribute folder_id
    #   <p>The ID of the folder.</p>
    #
    #   @return [String]
    #
    DescribeFolderResolvedPermissionsInput = ::Struct.new(
      :aws_account_id,
      :folder_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute folder_id
    #   <p>The ID of the folder.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the folder.</p>
    #
    #   @return [String]
    #
    # @!attribute permissions
    #   <p>Information about the permissions for the folder.</p>
    #
    #   @return [Array<ResourcePermission>]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    DescribeFolderResolvedPermissionsOutput = ::Struct.new(
      :status,
      :folder_id,
      :arn,
      :permissions,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute group_name
    #   <p>The name of the group that you want to describe.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_account_id
    #   <p>The ID for the Amazon Web Services account that the group is in. Currently, you use the ID for the
    #   			Amazon Web Services account that contains your Amazon QuickSight account.</p>
    #
    #   @return [String]
    #
    # @!attribute namespace
    #   <p>The namespace of the group that you want described.</p>
    #
    #   @return [String]
    #
    DescribeGroupInput = ::Struct.new(
      :group_name,
      :aws_account_id,
      :namespace,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute member_name
    #   <p>The user name of the user that you want to search for.</p>
    #
    #   @return [String]
    #
    # @!attribute group_name
    #   <p>The name of the group that you want to search.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_account_id
    #   <p>The ID for the Amazon Web Services account that the group is in. Currently, you use the ID for the
    #            Amazon Web Services account that contains your Amazon QuickSight account.</p>
    #
    #   @return [String]
    #
    # @!attribute namespace
    #   <p>The namespace that includes the group you are searching within.</p>
    #
    #   @return [String]
    #
    DescribeGroupMembershipInput = ::Struct.new(
      :member_name,
      :group_name,
      :aws_account_id,
      :namespace,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute group_member
    #   <p>A member of an Amazon QuickSight group. Currently, group members must be users. Groups
    #               can't be members of another group. .</p>
    #
    #   @return [GroupMember]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    DescribeGroupMembershipOutput = ::Struct.new(
      :group_member,
      :request_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute group
    #   <p>The name of the group.</p>
    #
    #   @return [Group]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    DescribeGroupOutput = ::Struct.new(
      :group,
      :request_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the assignment that you want to describe.</p>
    #
    #   @return [String]
    #
    # @!attribute assignment_name
    #   <p>The name of the assignment, also called a rule.</p>
    #
    #   @return [String]
    #
    # @!attribute namespace
    #   <p>The namespace that contains the assignment.</p>
    #
    #   @return [String]
    #
    DescribeIAMPolicyAssignmentInput = ::Struct.new(
      :aws_account_id,
      :assignment_name,
      :namespace,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute iam_policy_assignment
    #   <p>Information describing the IAM policy assignment.</p>
    #
    #   @return [IAMPolicyAssignment]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    DescribeIAMPolicyAssignmentOutput = ::Struct.new(
      :iam_policy_assignment,
      :request_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The Amazon Web Services account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute data_set_id
    #   <p>The ID of the dataset used in the ingestion.</p>
    #
    #   @return [String]
    #
    # @!attribute ingestion_id
    #   <p>An ID for the ingestion.</p>
    #
    #   @return [String]
    #
    DescribeIngestionInput = ::Struct.new(
      :aws_account_id,
      :data_set_id,
      :ingestion_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute ingestion
    #   <p>Information about the ingestion.</p>
    #
    #   @return [Ingestion]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    DescribeIngestionOutput = ::Struct.new(
      :ingestion,
      :request_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the IP rules.</p>
    #
    #   @return [String]
    #
    DescribeIpRestrictionInput = ::Struct.new(
      :aws_account_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the IP rules.</p>
    #
    #   @return [String]
    #
    # @!attribute ip_restriction_rule_map
    #   <p>A map that describes the IP rules with CIDR range and description.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute enabled
    #   <p>A value that specifies whether IP rules are turned on.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request. </p>
    #
    #   @return [Integer]
    #
    DescribeIpRestrictionOutput = ::Struct.new(
      :aws_account_id,
      :ip_restriction_rule_map,
      :enabled,
      :request_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID for the Amazon Web Services account that contains the Amazon QuickSight namespace that you want to describe.</p>
    #
    #   @return [String]
    #
    # @!attribute namespace
    #   <p>The namespace that you want to describe.</p>
    #
    #   @return [String]
    #
    DescribeNamespaceInput = ::Struct.new(
      :aws_account_id,
      :namespace,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute namespace
    #   <p>The information about the namespace that you're describing. The response includes
    #           the namespace ARN, name, Amazon Web Services Region, creation status, and identity store. <code>DescribeNamespace</code> also
    #           works for namespaces that are in the process of being created. For incomplete namespaces,
    #           this API operation lists the namespace error types and messages associated with the creation process.</p>
    #
    #   @return [NamespaceInfoV2]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    DescribeNamespaceOutput = ::Struct.new(
      :namespace,
      :request_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the template alias that you're
    #   			describing.</p>
    #
    #   @return [String]
    #
    # @!attribute template_id
    #   <p>The ID for the template.</p>
    #
    #   @return [String]
    #
    # @!attribute alias_name
    #   <p>The name of the template alias that you want to describe. If you name a specific alias, you
    #   			describe the version that the alias points to. You can specify the latest version of the
    #   			template by providing the keyword <code>$LATEST</code> in the <code>AliasName</code>
    #   			parameter. The keyword <code>$PUBLISHED</code> doesn't apply to templates.</p>
    #
    #   @return [String]
    #
    DescribeTemplateAliasInput = ::Struct.new(
      :aws_account_id,
      :template_id,
      :alias_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute template_alias
    #   <p>Information about the template alias.</p>
    #
    #   @return [TemplateAlias]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    DescribeTemplateAliasOutput = ::Struct.new(
      :template_alias,
      :status,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the template that you're describing.</p>
    #
    #   @return [String]
    #
    # @!attribute template_id
    #   <p>The ID for the template.</p>
    #
    #   @return [String]
    #
    # @!attribute version_number
    #   <p>(Optional) The number for the version to describe. If a <code>VersionNumber</code> parameter
    #   			value isn't provided, the latest version of the template is described.</p>
    #
    #   @return [Integer]
    #
    # @!attribute alias_name
    #   <p>The alias of the template that you want to describe. If you name a specific alias, you
    #   			describe the version that the alias points to. You can specify the latest version of the
    #   			template by providing the keyword <code>$LATEST</code> in the <code>AliasName</code>
    #   			parameter. The keyword <code>$PUBLISHED</code> doesn't apply to templates.</p>
    #
    #   @return [String]
    #
    DescribeTemplateInput = ::Struct.new(
      :aws_account_id,
      :template_id,
      :version_number,
      :alias_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute template
    #   <p>The template structure for the object you want to describe.</p>
    #
    #   @return [Template]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    DescribeTemplateOutput = ::Struct.new(
      :template,
      :status,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the template that you're describing.</p>
    #
    #   @return [String]
    #
    # @!attribute template_id
    #   <p>The ID for the template.</p>
    #
    #   @return [String]
    #
    DescribeTemplatePermissionsInput = ::Struct.new(
      :aws_account_id,
      :template_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute template_id
    #   <p>The ID for the template.</p>
    #
    #   @return [String]
    #
    # @!attribute template_arn
    #   <p>The Amazon Resource Name (ARN) of the template.</p>
    #
    #   @return [String]
    #
    # @!attribute permissions
    #   <p>A list of resource permissions to be set on the template. </p>
    #
    #   @return [Array<ResourcePermission>]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    DescribeTemplatePermissionsOutput = ::Struct.new(
      :template_id,
      :template_arn,
      :permissions,
      :request_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the theme alias that you're
    #   			describing.</p>
    #
    #   @return [String]
    #
    # @!attribute theme_id
    #   <p>The ID for the theme.</p>
    #
    #   @return [String]
    #
    # @!attribute alias_name
    #   <p>The name of the theme alias that you want to describe.</p>
    #
    #   @return [String]
    #
    DescribeThemeAliasInput = ::Struct.new(
      :aws_account_id,
      :theme_id,
      :alias_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute theme_alias
    #   <p>Information about the theme alias.</p>
    #
    #   @return [ThemeAlias]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    DescribeThemeAliasOutput = ::Struct.new(
      :theme_alias,
      :status,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the theme that you're describing.</p>
    #
    #   @return [String]
    #
    # @!attribute theme_id
    #   <p>The ID for the theme.</p>
    #
    #   @return [String]
    #
    # @!attribute version_number
    #   <p>The version number for the version to describe. If a <code>VersionNumber</code> parameter
    #   			value isn't provided, the latest version of the theme is described.</p>
    #
    #   @return [Integer]
    #
    # @!attribute alias_name
    #   <p>The alias of the theme that you want to describe. If you name a specific alias, you
    #   			describe the version that the alias points to. You can specify the latest version of the
    #   			theme by providing the keyword <code>$LATEST</code> in the <code>AliasName</code>
    #   			parameter. The keyword <code>$PUBLISHED</code> doesn't apply to themes.</p>
    #
    #   @return [String]
    #
    DescribeThemeInput = ::Struct.new(
      :aws_account_id,
      :theme_id,
      :version_number,
      :alias_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute theme
    #   <p>The information about the theme that you are describing.</p>
    #
    #   @return [Theme]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    DescribeThemeOutput = ::Struct.new(
      :theme,
      :status,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the theme that you're describing.</p>
    #
    #   @return [String]
    #
    # @!attribute theme_id
    #   <p>The ID for the theme that you want to describe permissions for.</p>
    #
    #   @return [String]
    #
    DescribeThemePermissionsInput = ::Struct.new(
      :aws_account_id,
      :theme_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute theme_id
    #   <p>The ID for the theme.</p>
    #
    #   @return [String]
    #
    # @!attribute theme_arn
    #   <p>The Amazon Resource Name (ARN) of the theme.</p>
    #
    #   @return [String]
    #
    # @!attribute permissions
    #   <p>A list of resource permissions set on the theme. </p>
    #
    #   @return [Array<ResourcePermission>]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    DescribeThemePermissionsOutput = ::Struct.new(
      :theme_id,
      :theme_arn,
      :permissions,
      :request_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute user_name
    #   <p>The name of the user that you want to describe.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_account_id
    #   <p>The ID for the Amazon Web Services account that the user is in. Currently, you use the ID for the
    #   			Amazon Web Services account that contains your Amazon QuickSight account.</p>
    #
    #   @return [String]
    #
    # @!attribute namespace
    #   <p>The namespace. Currently, you should set this to <code>default</code>.</p>
    #
    #   @return [String]
    #
    DescribeUserInput = ::Struct.new(
      :user_name,
      :aws_account_id,
      :namespace,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user
    #   <p>The user name.</p>
    #
    #   @return [User]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    DescribeUserOutput = ::Struct.new(
      :user,
      :request_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # <p>The domain specified isn't on the allow list. All domains for embedded dashboards must be
    # 			added to the approved list by an Amazon QuickSight admin.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this request.</p>
    #
    #   @return [String]
    #
    DomainNotWhitelistedException = ::Struct.new(
      :message,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Edition
    #
    module Edition
      # No documentation available.
      #
      STANDARD = "STANDARD"

      # No documentation available.
      #
      ENTERPRISE = "ENTERPRISE"
    end

    # Includes enum constants for EmbeddingIdentityType
    #
    module EmbeddingIdentityType
      # No documentation available.
      #
      IAM = "IAM"

      # No documentation available.
      #
      QUICKSIGHT = "QUICKSIGHT"

      # No documentation available.
      #
      ANONYMOUS = "ANONYMOUS"
    end

    # <p>Error information for the SPICE ingestion of a dataset.</p>
    #
    # @!attribute type
    #   <p>Error type.</p>
    #
    #   Enum, one of: ["FAILURE_TO_ASSUME_ROLE", "INGESTION_SUPERSEDED", "INGESTION_CANCELED", "DATA_SET_DELETED", "DATA_SET_NOT_SPICE", "S3_UPLOADED_FILE_DELETED", "S3_MANIFEST_ERROR", "DATA_TOLERANCE_EXCEPTION", "SPICE_TABLE_NOT_FOUND", "DATA_SET_SIZE_LIMIT_EXCEEDED", "ROW_SIZE_LIMIT_EXCEEDED", "ACCOUNT_CAPACITY_LIMIT_EXCEEDED", "CUSTOMER_ERROR", "DATA_SOURCE_NOT_FOUND", "IAM_ROLE_NOT_AVAILABLE", "CONNECTION_FAILURE", "SQL_TABLE_NOT_FOUND", "PERMISSION_DENIED", "SSL_CERTIFICATE_VALIDATION_FAILURE", "OAUTH_TOKEN_FAILURE", "SOURCE_API_LIMIT_EXCEEDED_FAILURE", "PASSWORD_AUTHENTICATION_FAILURE", "SQL_SCHEMA_MISMATCH_ERROR", "INVALID_DATE_FORMAT", "INVALID_DATAPREP_SYNTAX", "SOURCE_RESOURCE_LIMIT_EXCEEDED", "SQL_INVALID_PARAMETER_VALUE", "QUERY_TIMEOUT", "SQL_NUMERIC_OVERFLOW", "UNRESOLVABLE_HOST", "UNROUTABLE_HOST", "SQL_EXCEPTION", "S3_FILE_INACCESSIBLE", "IOT_FILE_NOT_FOUND", "IOT_DATA_SET_FILE_EMPTY", "INVALID_DATA_SOURCE_CONFIG", "DATA_SOURCE_AUTH_FAILED", "DATA_SOURCE_CONNECTION_FAILED", "FAILURE_TO_PROCESS_JSON_FILE", "INTERNAL_SERVICE_ERROR", "REFRESH_SUPPRESSED_BY_EDIT", "PERMISSION_NOT_FOUND", "ELASTICSEARCH_CURSOR_NOT_ENABLED", "CURSOR_NOT_ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>Error message.</p>
    #
    #   @return [String]
    #
    ErrorInfo = ::Struct.new(
      :type,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The required parameters for connecting to an Exasol data source.</p>
    #
    # @!attribute host
    #   <p>The hostname or IP address of the Exasol data source.</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>The port for the Exasol data source.</p>
    #
    #   @return [Integer]
    #
    ExasolParameters = ::Struct.new(
      :host,
      :port,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.port ||= 0
      end
    end

    # Includes enum constants for ExceptionResourceType
    #
    module ExceptionResourceType
      # No documentation available.
      #
      USER = "USER"

      # No documentation available.
      #
      GROUP = "GROUP"

      # No documentation available.
      #
      NAMESPACE = "NAMESPACE"

      # No documentation available.
      #
      ACCOUNT_SETTINGS = "ACCOUNT_SETTINGS"

      # No documentation available.
      #
      IAMPOLICY_ASSIGNMENT = "IAMPOLICY_ASSIGNMENT"

      # No documentation available.
      #
      DATA_SOURCE = "DATA_SOURCE"

      # No documentation available.
      #
      DATA_SET = "DATA_SET"

      # No documentation available.
      #
      VPC_CONNECTION = "VPC_CONNECTION"

      # No documentation available.
      #
      INGESTION = "INGESTION"
    end

    # <p>Export to .csv option.</p>
    #
    # @!attribute availability_status
    #   <p>Availability status.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    ExportToCSVOption = ::Struct.new(
      :availability_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A FieldFolder element is a folder that contains fields and nested subfolders.</p>
    #
    # @!attribute description
    #   <p>The description for a field folder.</p>
    #
    #   @return [String]
    #
    # @!attribute columns
    #   <p>A folder has a list of columns. A column can only be in one folder.</p>
    #
    #   @return [Array<String>]
    #
    FieldFolder = ::Struct.new(
      :description,
      :columns,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FileFormat
    #
    module FileFormat
      # No documentation available.
      #
      CSV = "CSV"

      # No documentation available.
      #
      TSV = "TSV"

      # No documentation available.
      #
      CLF = "CLF"

      # No documentation available.
      #
      ELF = "ELF"

      # No documentation available.
      #
      XLSX = "XLSX"

      # No documentation available.
      #
      JSON = "JSON"
    end

    # <p>A transform operation that filters rows based on a condition.</p>
    #
    # @!attribute condition_expression
    #   <p>An expression that must evaluate to a Boolean value. Rows for which the expression
    #               evaluates to true are kept in the dataset.</p>
    #
    #   @return [String]
    #
    FilterOperation = ::Struct.new(
      :condition_expression,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FilterOperator
    #
    module FilterOperator
      # No documentation available.
      #
      StringEquals = "StringEquals"
    end

    # <p>A folder in Amazon QuickSight.</p>
    #
    # @!attribute folder_id
    #   <p>The ID of the folder.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) for the folder.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A display name for the folder.</p>
    #
    #   @return [String]
    #
    # @!attribute folder_type
    #   <p>The type of folder it is.</p>
    #
    #   Enum, one of: ["SHARED"]
    #
    #   @return [String]
    #
    # @!attribute folder_path
    #   <p>An array of ancestor ARN strings for the folder.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute created_time
    #   <p>The time that the folder was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_time
    #   <p>The time that the folder was last updated.</p>
    #
    #   @return [Time]
    #
    Folder = ::Struct.new(
      :folder_id,
      :arn,
      :name,
      :folder_type,
      :folder_path,
      :created_time,
      :last_updated_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FolderFilterAttribute
    #
    module FolderFilterAttribute
      # No documentation available.
      #
      PARENT_FOLDER_ARN = "PARENT_FOLDER_ARN"
    end

    # <p>An asset in a Amazon QuickSight folder, such as a dashboard, analysis, or dataset.</p>
    #
    # @!attribute member_id
    #   <p>The ID of an asset in the folder.</p>
    #
    #   @return [String]
    #
    # @!attribute member_type
    #   <p>The type of asset that it is.</p>
    #
    #   Enum, one of: ["DASHBOARD", "ANALYSIS", "DATASET"]
    #
    #   @return [String]
    #
    FolderMember = ::Struct.new(
      :member_id,
      :member_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A filter to use to search a Amazon QuickSight folder.</p>
    #
    # @!attribute operator
    #   <p>The comparison operator that you want to use in the filter. For example, <code>"Operator": "StringEquals"</code>.</p>
    #
    #   Enum, one of: ["StringEquals"]
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of a value that you want to use in the filter. For example, <code>"Name": "PARENT_FOLDER_ARN"</code>.</p>
    #
    #   Enum, one of: ["PARENT_FOLDER_ARN"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the named item (in this example, <code>PARENT_FOLDER_ARN</code>), that you want to use as a filter. For example, <code>"Value": "arn:aws:quicksight:us-east-1:1:folder/folderId"</code>.</p>
    #
    #   @return [String]
    #
    FolderSearchFilter = ::Struct.new(
      :operator,
      :name,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A summary of information about an existing Amazon QuickSight folder. </p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the folder.</p>
    #
    #   @return [String]
    #
    # @!attribute folder_id
    #   <p>The ID of the folder.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The display name of the folder.</p>
    #
    #   @return [String]
    #
    # @!attribute folder_type
    #   <p>The type of folder.</p>
    #
    #   Enum, one of: ["SHARED"]
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>The time that the folder was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_time
    #   <p>The time that the folder was last updated.</p>
    #
    #   @return [Time]
    #
    FolderSummary = ::Struct.new(
      :arn,
      :folder_id,
      :name,
      :folder_type,
      :created_time,
      :last_updated_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FolderType
    #
    module FolderType
      # No documentation available.
      #
      SHARED = "SHARED"
    end

    # @!attribute aws_account_id
    #   <p>The ID for the Amazon Web Services account that contains the dashboard that you're embedding.</p>
    #
    #   @return [String]
    #
    # @!attribute session_lifetime_in_minutes
    #   <p>How many minutes the session is valid. The session lifetime must be in [15-600] minutes range.</p>
    #
    #   @return [Integer]
    #
    # @!attribute namespace
    #   <p>The Amazon QuickSight namespace that the anonymous user virtually belongs to. If you are not using an Amazon QuickSight custom namespace, set this to <code>default</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute session_tags
    #   <p>The session tags used for row-level security. Before you use this parameter, make sure that
    #     you have configured the relevant datasets using the <code>DataSet$RowLevelPermissionTagConfiguration</code> parameter so that session tags can be used to provide row-level security.</p>
    #           <p>These are not the tags used for the Amazon Web Services resource tagging feature. For more information, see <a href="https://docs.aws.amazon.com/quicksight/latest/user/quicksight-dev-rls-tags.html">Using Row-Level Security (RLS) with Tags</a>.</p>
    #
    #   @return [Array<SessionTag>]
    #
    # @!attribute authorized_resource_arns
    #   <p>The Amazon Resource Names for the Amazon QuickSight resources that the user is authorized to access during the lifetime of the session. If you choose <code>Dashboard</code> embedding experience, pass the list of dashboard ARNs in the account that you want the user to be able to view. Currently, you can pass up to 25 dashboard ARNs in each API call.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute experience_configuration
    #   <p>The configuration of the experience you are embedding.</p>
    #
    #   @return [AnonymousUserEmbeddingExperienceConfiguration]
    #
    GenerateEmbedUrlForAnonymousUserInput = ::Struct.new(
      :aws_account_id,
      :session_lifetime_in_minutes,
      :namespace,
      :session_tags,
      :authorized_resource_arns,
      :experience_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute embed_url
    #   <p>The embed URL for the dashboard.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    GenerateEmbedUrlForAnonymousUserOutput = ::Struct.new(
      :embed_url,
      :status,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end

      def to_s
        "#<struct AWS::SDK::QuickSight::Types::GenerateEmbedUrlForAnonymousUserOutput "\
          "embed_url=\"[SENSITIVE]\", "\
          "status=#{status || 'nil'}, "\
          "request_id=#{request_id || 'nil'}>"
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID for the Amazon Web Services account that contains the dashboard that you're embedding.</p>
    #
    #   @return [String]
    #
    # @!attribute session_lifetime_in_minutes
    #   <p>How many minutes the session is valid. The session lifetime must be in [15-600] minutes range.</p>
    #
    #   @return [Integer]
    #
    # @!attribute user_arn
    #   <p>The Amazon Resource Name for the registered user.</p>
    #
    #   @return [String]
    #
    # @!attribute experience_configuration
    #   <p>The experience you are embedding. For registered users, you can embed Amazon QuickSight dashboards or the entire Amazon QuickSight console.</p>
    #
    #   @return [RegisteredUserEmbeddingExperienceConfiguration]
    #
    GenerateEmbedUrlForRegisteredUserInput = ::Struct.new(
      :aws_account_id,
      :session_lifetime_in_minutes,
      :user_arn,
      :experience_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute embed_url
    #   <p>The embed URL for the Amazon QuickSight dashboard or console.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    GenerateEmbedUrlForRegisteredUserOutput = ::Struct.new(
      :embed_url,
      :status,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end

      def to_s
        "#<struct AWS::SDK::QuickSight::Types::GenerateEmbedUrlForRegisteredUserOutput "\
          "embed_url=\"[SENSITIVE]\", "\
          "status=#{status || 'nil'}, "\
          "request_id=#{request_id || 'nil'}>"
      end
    end

    # <p>Geospatial column group that denotes a hierarchy.</p>
    #
    # @!attribute name
    #   <p>A display name for the hierarchy.</p>
    #
    #   @return [String]
    #
    # @!attribute country_code
    #   <p>Country code.</p>
    #
    #   Enum, one of: ["US"]
    #
    #   @return [String]
    #
    # @!attribute columns
    #   <p>Columns in this hierarchy.</p>
    #
    #   @return [Array<String>]
    #
    GeoSpatialColumnGroup = ::Struct.new(
      :name,
      :country_code,
      :columns,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for GeoSpatialCountryCode
    #
    module GeoSpatialCountryCode
      # No documentation available.
      #
      US = "US"
    end

    # Includes enum constants for GeoSpatialDataRole
    #
    module GeoSpatialDataRole
      # No documentation available.
      #
      COUNTRY = "COUNTRY"

      # No documentation available.
      #
      STATE = "STATE"

      # No documentation available.
      #
      COUNTY = "COUNTY"

      # No documentation available.
      #
      CITY = "CITY"

      # No documentation available.
      #
      POSTCODE = "POSTCODE"

      # No documentation available.
      #
      LONGITUDE = "LONGITUDE"

      # No documentation available.
      #
      LATITUDE = "LATITUDE"
    end

    # @!attribute aws_account_id
    #   <p>The ID for the Amazon Web Services account that contains the dashboard that you're embedding.</p>
    #
    #   @return [String]
    #
    # @!attribute dashboard_id
    #   <p>The ID for the dashboard, also added to the Identity and Access Management (IAM)
    #               policy.</p>
    #
    #   @return [String]
    #
    # @!attribute identity_type
    #   <p>The authentication method that the user uses to sign in.</p>
    #
    #   Enum, one of: ["IAM", "QUICKSIGHT", "ANONYMOUS"]
    #
    #   @return [String]
    #
    # @!attribute session_lifetime_in_minutes
    #   <p>How many minutes the session is valid. The session lifetime must be 15-600 minutes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute undo_redo_disabled
    #   <p>Remove the undo/redo button on the embedded dashboard. The default is FALSE, which enables
    #   			the undo/redo button.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute reset_disabled
    #   <p>Remove the reset button on the embedded dashboard. The default is FALSE, which enables the
    #   			reset button.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute state_persistence_enabled
    #   <p>Adds persistence of state for the user session in an embedded dashboard. Persistence
    #               applies to the sheet and the parameter settings. These are control settings that the
    #               dashboard subscriber (Amazon QuickSight reader) chooses while viewing the dashboard. If this is
    #               set to <code>TRUE</code>, the settings are the same when the subscriber reopens the same
    #               dashboard URL. The state is stored in Amazon QuickSight, not in a browser cookie. If this is
    #               set to FALSE, the state of the user session is not persisted. The default is
    #                   <code>FALSE</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute user_arn
    #   <p>The Amazon QuickSight user's Amazon Resource Name (ARN), for use with <code>QUICKSIGHT</code> identity type.
    #   			You can use this for any Amazon QuickSight users in your account (readers, authors, or
    #   			admins) authenticated as one of the following:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>Active Directory (AD) users or group members</p>
    #   			         </li>
    #               <li>
    #   				           <p>Invited nonfederated users</p>
    #   			         </li>
    #               <li>
    #   				           <p>IAM users and IAM role-based sessions authenticated through Federated Single Sign-On using
    #   					SAML, OpenID Connect, or IAM federation.</p>
    #   			         </li>
    #            </ul>
    #            <p>Omit this parameter for users in the third group – IAM users and IAM
    #               role-based sessions.</p>
    #
    #   @return [String]
    #
    # @!attribute namespace
    #   <p>The Amazon QuickSight namespace that contains the dashboard IDs in this request.
    #       	   If you're not using a custom namespace, set <code>Namespace = default</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute additional_dashboard_ids
    #   <p>A list of one or more dashboard IDs that you want to add to a session that includes
    #               anonymous users. The <code>IdentityType</code> parameter must be set to
    #                   <code>ANONYMOUS</code> for this to work, because other identity types authenticate
    #               as Amazon QuickSight or IAM users. For example, if you set "<code>--dashboard-id dash_id1
    #                   --dashboard-id dash_id2 dash_id3 identity-type ANONYMOUS</code>", the session
    #               can access all three dashboards. </p>
    #
    #   @return [Array<String>]
    #
    GetDashboardEmbedUrlInput = ::Struct.new(
      :aws_account_id,
      :dashboard_id,
      :identity_type,
      :session_lifetime_in_minutes,
      :undo_redo_disabled,
      :reset_disabled,
      :state_persistence_enabled,
      :user_arn,
      :namespace,
      :additional_dashboard_ids,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.undo_redo_disabled ||= false
        self.reset_disabled ||= false
        self.state_persistence_enabled ||= false
      end
    end

    # <p>Output returned from the <code>GetDashboardEmbedUrl</code> operation.</p>
    #
    # @!attribute embed_url
    #   <p>A single-use URL that you can put into your server-side webpage to embed your
    #   			dashboard. This URL is valid for 5 minutes. The API operation provides the URL with an
    #   			<code>auth_code</code> value that enables one (and only one) sign-on to a user session
    #   			that is valid for 10 hours. </p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    GetDashboardEmbedUrlOutput = ::Struct.new(
      :embed_url,
      :status,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end

      def to_s
        "#<struct AWS::SDK::QuickSight::Types::GetDashboardEmbedUrlOutput "\
          "embed_url=\"[SENSITIVE]\", "\
          "status=#{status || 'nil'}, "\
          "request_id=#{request_id || 'nil'}>"
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID for the Amazon Web Services account associated with your Amazon QuickSight subscription.</p>
    #
    #   @return [String]
    #
    # @!attribute entry_point
    #   <p>The URL you use to access the embedded session. The entry point URL is constrained to
    #             the following paths:</p>
    #            <ul>
    #               <li>
    #                   <p>
    #                     <code>/start</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>/start/analyses</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>/start/dashboards</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>/start/favorites</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>/dashboards/<i>DashboardId</i>
    #                     </code> - where <code>DashboardId</code> is the actual ID key from the Amazon QuickSight console URL of the dashboard</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>/analyses/<i>AnalysisId</i>
    #                     </code> - where <code>AnalysisId</code> is the actual ID key from the Amazon QuickSight console URL of the analysis</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute session_lifetime_in_minutes
    #   <p>How many minutes the session is valid. The session lifetime must be 15-600 minutes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute user_arn
    #   <p>The Amazon QuickSight user's Amazon Resource Name (ARN), for use with <code>QUICKSIGHT</code> identity type.
    #   			You can use this for any type of Amazon QuickSight users in your account (readers, authors, or
    #   			admins). They need to be authenticated as one of the following:</p>
    #   		       <ol>
    #               <li>
    #   				           <p>Active Directory (AD) users or group members</p>
    #   			         </li>
    #               <li>
    #   				           <p>Invited nonfederated users</p>
    #   			         </li>
    #               <li>
    #   				           <p>Identity and Access Management (IAM) users and IAM role-based sessions authenticated
    #                       through Federated Single Sign-On using SAML, OpenID Connect, or IAM
    #                       federation</p>
    #   			         </li>
    #            </ol>
    #            <p>Omit this parameter for users in the third group, IAM users and IAM role-based
    #               sessions.</p>
    #
    #   @return [String]
    #
    GetSessionEmbedUrlInput = ::Struct.new(
      :aws_account_id,
      :entry_point,
      :session_lifetime_in_minutes,
      :user_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute embed_url
    #   <p>A single-use URL that you can put into your server-side web page to embed your
    #   			Amazon QuickSight session. This URL is valid for 5 minutes. The API operation provides the URL with an
    #   			<code>auth_code</code> value that enables one (and only one) sign-on to a user session
    #   			that is valid for 10 hours. </p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    GetSessionEmbedUrlOutput = ::Struct.new(
      :embed_url,
      :status,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end

      def to_s
        "#<struct AWS::SDK::QuickSight::Types::GetSessionEmbedUrlOutput "\
          "embed_url=\"[SENSITIVE]\", "\
          "status=#{status || 'nil'}, "\
          "request_id=#{request_id || 'nil'}>"
      end
    end

    # <p>A <i>group</i> in Amazon QuickSight consists of a set of users. You can
    #             use groups to make it easier to manage access and security. </p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) for the group.</p>
    #
    #   @return [String]
    #
    # @!attribute group_name
    #   <p>The name of the group.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The group description.</p>
    #
    #   @return [String]
    #
    # @!attribute principal_id
    #   <p>The principal ID of the group.</p>
    #
    #   @return [String]
    #
    Group = ::Struct.new(
      :arn,
      :group_name,
      :description,
      :principal_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for GroupFilterAttribute
    #
    module GroupFilterAttribute
      # No documentation available.
      #
      GROUP_NAME = "GROUP_NAME"
    end

    # Includes enum constants for GroupFilterOperator
    #
    module GroupFilterOperator
      # No documentation available.
      #
      StartsWith = "StartsWith"
    end

    # <p>A member of an Amazon QuickSight group. Currently, group members must be users. Groups
    #             can't be members of another group. .</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) for the group member (user).</p>
    #
    #   @return [String]
    #
    # @!attribute member_name
    #   <p>The name of the group member (user).</p>
    #
    #   @return [String]
    #
    GroupMember = ::Struct.new(
      :arn,
      :member_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A <code>GroupSearchFilter</code> object that you want to apply to your search.</p>
    #
    # @!attribute operator
    #   <p>The comparison operator that you want to use as a filter, for example <code>"Operator":
    #                   "StartsWith"</code>. Currently, the only supported operator is
    #                   <code>StartsWith</code>.</p>
    #
    #   Enum, one of: ["StartsWith"]
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the value that you want to use as a filter, for example <code>"Name":
    #                   "GROUP_NAME"</code>. Currently, the only supported name is
    #               <code>GROUP_NAME</code>.</p>
    #
    #   Enum, one of: ["GROUP_NAME"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the named item, in this case <code>GROUP_NAME</code>, that you want to use as a filter.</p>
    #
    #   @return [String]
    #
    GroupSearchFilter = ::Struct.new(
      :operator,
      :name,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The display options for gutter spacing between tiles on a sheet.</p>
    #
    # @!attribute show
    #   <p>This Boolean value controls whether to display a gutter space between sheet tiles.
    #           </p>
    #
    #   @return [Boolean]
    #
    GutterStyle = ::Struct.new(
      :show,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An Identity and Access Management (IAM) policy assignment.</p>
    #
    # @!attribute aws_account_id
    #   <p>The Amazon Web Services account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute assignment_id
    #   <p>Assignment ID.</p>
    #
    #   @return [String]
    #
    # @!attribute assignment_name
    #   <p>Assignment name.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) for the IAM policy.</p>
    #
    #   @return [String]
    #
    # @!attribute identities
    #   <p>Identities.</p>
    #
    #   @return [Hash<String, Array<String>>]
    #
    # @!attribute assignment_status
    #   <p>Assignment status.</p>
    #
    #   Enum, one of: ["ENABLED", "DRAFT", "DISABLED"]
    #
    #   @return [String]
    #
    IAMPolicyAssignment = ::Struct.new(
      :aws_account_id,
      :assignment_id,
      :assignment_name,
      :policy_arn,
      :identities,
      :assignment_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>IAM policy assignment summary.</p>
    #
    # @!attribute assignment_name
    #   <p>Assignment name.</p>
    #
    #   @return [String]
    #
    # @!attribute assignment_status
    #   <p>Assignment status.</p>
    #
    #   Enum, one of: ["ENABLED", "DRAFT", "DISABLED"]
    #
    #   @return [String]
    #
    IAMPolicyAssignmentSummary = ::Struct.new(
      :assignment_name,
      :assignment_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for IdentityStore
    #
    module IdentityStore
      # No documentation available.
      #
      QUICKSIGHT = "QUICKSIGHT"
    end

    # Includes enum constants for IdentityType
    #
    module IdentityType
      # No documentation available.
      #
      IAM = "IAM"

      # No documentation available.
      #
      QUICKSIGHT = "QUICKSIGHT"
    end

    # <p>The identity type specified isn't supported. Supported identity types include
    # 				<code>IAM</code> and <code>QUICKSIGHT</code>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this request.</p>
    #
    #   @return [String]
    #
    IdentityTypeNotSupportedException = ::Struct.new(
      :message,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the SPICE ingestion for a dataset.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute ingestion_id
    #   <p>Ingestion ID.</p>
    #
    #   @return [String]
    #
    # @!attribute ingestion_status
    #   <p>Ingestion status.</p>
    #
    #   Enum, one of: ["INITIALIZED", "QUEUED", "RUNNING", "FAILED", "COMPLETED", "CANCELLED"]
    #
    #   @return [String]
    #
    # @!attribute error_info
    #   <p>Error information for this ingestion.</p>
    #
    #   @return [ErrorInfo]
    #
    # @!attribute row_info
    #   <p>Information about rows for a data set SPICE ingestion.</p>
    #
    #   @return [RowInfo]
    #
    # @!attribute queue_info
    #   <p>Information about a queued dataset SPICE ingestion.</p>
    #
    #   @return [QueueInfo]
    #
    # @!attribute created_time
    #   <p>The time that this ingestion started.</p>
    #
    #   @return [Time]
    #
    # @!attribute ingestion_time_in_seconds
    #   <p>The time that this ingestion took, measured in seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute ingestion_size_in_bytes
    #   <p>The size of the data ingested, in bytes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute request_source
    #   <p>Event source for this ingestion.</p>
    #
    #   Enum, one of: ["MANUAL", "SCHEDULED"]
    #
    #   @return [String]
    #
    # @!attribute request_type
    #   <p>Type of this ingestion.</p>
    #
    #   Enum, one of: ["INITIAL_INGESTION", "EDIT", "INCREMENTAL_REFRESH", "FULL_REFRESH"]
    #
    #   @return [String]
    #
    Ingestion = ::Struct.new(
      :arn,
      :ingestion_id,
      :ingestion_status,
      :error_info,
      :row_info,
      :queue_info,
      :created_time,
      :ingestion_time_in_seconds,
      :ingestion_size_in_bytes,
      :request_source,
      :request_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for IngestionErrorType
    #
    module IngestionErrorType
      # No documentation available.
      #
      FAILURE_TO_ASSUME_ROLE = "FAILURE_TO_ASSUME_ROLE"

      # No documentation available.
      #
      INGESTION_SUPERSEDED = "INGESTION_SUPERSEDED"

      # No documentation available.
      #
      INGESTION_CANCELED = "INGESTION_CANCELED"

      # No documentation available.
      #
      DATA_SET_DELETED = "DATA_SET_DELETED"

      # No documentation available.
      #
      DATA_SET_NOT_SPICE = "DATA_SET_NOT_SPICE"

      # No documentation available.
      #
      S3_UPLOADED_FILE_DELETED = "S3_UPLOADED_FILE_DELETED"

      # No documentation available.
      #
      S3_MANIFEST_ERROR = "S3_MANIFEST_ERROR"

      # No documentation available.
      #
      DATA_TOLERANCE_EXCEPTION = "DATA_TOLERANCE_EXCEPTION"

      # No documentation available.
      #
      SPICE_TABLE_NOT_FOUND = "SPICE_TABLE_NOT_FOUND"

      # No documentation available.
      #
      DATA_SET_SIZE_LIMIT_EXCEEDED = "DATA_SET_SIZE_LIMIT_EXCEEDED"

      # No documentation available.
      #
      ROW_SIZE_LIMIT_EXCEEDED = "ROW_SIZE_LIMIT_EXCEEDED"

      # No documentation available.
      #
      ACCOUNT_CAPACITY_LIMIT_EXCEEDED = "ACCOUNT_CAPACITY_LIMIT_EXCEEDED"

      # No documentation available.
      #
      CUSTOMER_ERROR = "CUSTOMER_ERROR"

      # No documentation available.
      #
      DATA_SOURCE_NOT_FOUND = "DATA_SOURCE_NOT_FOUND"

      # No documentation available.
      #
      IAM_ROLE_NOT_AVAILABLE = "IAM_ROLE_NOT_AVAILABLE"

      # No documentation available.
      #
      CONNECTION_FAILURE = "CONNECTION_FAILURE"

      # No documentation available.
      #
      SQL_TABLE_NOT_FOUND = "SQL_TABLE_NOT_FOUND"

      # No documentation available.
      #
      PERMISSION_DENIED = "PERMISSION_DENIED"

      # No documentation available.
      #
      SSL_CERTIFICATE_VALIDATION_FAILURE = "SSL_CERTIFICATE_VALIDATION_FAILURE"

      # No documentation available.
      #
      OAUTH_TOKEN_FAILURE = "OAUTH_TOKEN_FAILURE"

      # No documentation available.
      #
      SOURCE_API_LIMIT_EXCEEDED_FAILURE = "SOURCE_API_LIMIT_EXCEEDED_FAILURE"

      # No documentation available.
      #
      PASSWORD_AUTHENTICATION_FAILURE = "PASSWORD_AUTHENTICATION_FAILURE"

      # No documentation available.
      #
      SQL_SCHEMA_MISMATCH_ERROR = "SQL_SCHEMA_MISMATCH_ERROR"

      # No documentation available.
      #
      INVALID_DATE_FORMAT = "INVALID_DATE_FORMAT"

      # No documentation available.
      #
      INVALID_DATAPREP_SYNTAX = "INVALID_DATAPREP_SYNTAX"

      # No documentation available.
      #
      SOURCE_RESOURCE_LIMIT_EXCEEDED = "SOURCE_RESOURCE_LIMIT_EXCEEDED"

      # No documentation available.
      #
      SQL_INVALID_PARAMETER_VALUE = "SQL_INVALID_PARAMETER_VALUE"

      # No documentation available.
      #
      QUERY_TIMEOUT = "QUERY_TIMEOUT"

      # No documentation available.
      #
      SQL_NUMERIC_OVERFLOW = "SQL_NUMERIC_OVERFLOW"

      # No documentation available.
      #
      UNRESOLVABLE_HOST = "UNRESOLVABLE_HOST"

      # No documentation available.
      #
      UNROUTABLE_HOST = "UNROUTABLE_HOST"

      # No documentation available.
      #
      SQL_EXCEPTION = "SQL_EXCEPTION"

      # No documentation available.
      #
      S3_FILE_INACCESSIBLE = "S3_FILE_INACCESSIBLE"

      # No documentation available.
      #
      IOT_FILE_NOT_FOUND = "IOT_FILE_NOT_FOUND"

      # No documentation available.
      #
      IOT_DATA_SET_FILE_EMPTY = "IOT_DATA_SET_FILE_EMPTY"

      # No documentation available.
      #
      INVALID_DATA_SOURCE_CONFIG = "INVALID_DATA_SOURCE_CONFIG"

      # No documentation available.
      #
      DATA_SOURCE_AUTH_FAILED = "DATA_SOURCE_AUTH_FAILED"

      # No documentation available.
      #
      DATA_SOURCE_CONNECTION_FAILED = "DATA_SOURCE_CONNECTION_FAILED"

      # No documentation available.
      #
      FAILURE_TO_PROCESS_JSON_FILE = "FAILURE_TO_PROCESS_JSON_FILE"

      # No documentation available.
      #
      INTERNAL_SERVICE_ERROR = "INTERNAL_SERVICE_ERROR"

      # No documentation available.
      #
      REFRESH_SUPPRESSED_BY_EDIT = "REFRESH_SUPPRESSED_BY_EDIT"

      # No documentation available.
      #
      PERMISSION_NOT_FOUND = "PERMISSION_NOT_FOUND"

      # No documentation available.
      #
      ELASTICSEARCH_CURSOR_NOT_ENABLED = "ELASTICSEARCH_CURSOR_NOT_ENABLED"

      # No documentation available.
      #
      CURSOR_NOT_ENABLED = "CURSOR_NOT_ENABLED"
    end

    # Includes enum constants for IngestionRequestSource
    #
    module IngestionRequestSource
      # No documentation available.
      #
      MANUAL = "MANUAL"

      # No documentation available.
      #
      SCHEDULED = "SCHEDULED"
    end

    # Includes enum constants for IngestionRequestType
    #
    module IngestionRequestType
      # No documentation available.
      #
      INITIAL_INGESTION = "INITIAL_INGESTION"

      # No documentation available.
      #
      EDIT = "EDIT"

      # No documentation available.
      #
      INCREMENTAL_REFRESH = "INCREMENTAL_REFRESH"

      # No documentation available.
      #
      FULL_REFRESH = "FULL_REFRESH"
    end

    # Includes enum constants for IngestionStatus
    #
    module IngestionStatus
      # No documentation available.
      #
      INITIALIZED = "INITIALIZED"

      # No documentation available.
      #
      QUEUED = "QUEUED"

      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      COMPLETED = "COMPLETED"

      # No documentation available.
      #
      CANCELLED = "CANCELLED"
    end

    # Includes enum constants for IngestionType
    #
    module IngestionType
      # No documentation available.
      #
      INCREMENTAL_REFRESH = "INCREMENTAL_REFRESH"

      # No documentation available.
      #
      FULL_REFRESH = "FULL_REFRESH"
    end

    # <p>Metadata for a column that is used as the input of a transform operation.</p>
    #
    # @!attribute name
    #   <p>The name of this column in the underlying data source.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The data type of the column.</p>
    #
    #   Enum, one of: ["STRING", "INTEGER", "DECIMAL", "DATETIME", "BIT", "BOOLEAN", "JSON"]
    #
    #   @return [String]
    #
    InputColumn = ::Struct.new(
      :name,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for InputColumnDataType
    #
    module InputColumnDataType
      # No documentation available.
      #
      STRING = "STRING"

      # No documentation available.
      #
      INTEGER = "INTEGER"

      # No documentation available.
      #
      DECIMAL = "DECIMAL"

      # No documentation available.
      #
      DATETIME = "DATETIME"

      # No documentation available.
      #
      BIT = "BIT"

      # No documentation available.
      #
      BOOLEAN = "BOOLEAN"

      # No documentation available.
      #
      JSON = "JSON"
    end

    # <p>An integer parameter.</p>
    #
    # @!attribute name
    #   <p>The name of the integer parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The values for the integer parameter.</p>
    #
    #   @return [Array<Integer>]
    #
    IntegerParameter = ::Struct.new(
      :name,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An internal failure occurred.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this request.</p>
    #
    #   @return [String]
    #
    InternalFailureException = ::Struct.new(
      :message,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The <code>NextToken</code> value isn't valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this request.</p>
    #
    #   @return [String]
    #
    InvalidNextTokenException = ::Struct.new(
      :message,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>One or more parameters has a value that isn't valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this request.</p>
    #
    #   @return [String]
    #
    InvalidParameterValueException = ::Struct.new(
      :message,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The parameters for Jira.</p>
    #
    # @!attribute site_base_url
    #   <p>The base URL of the Jira site.</p>
    #
    #   @return [String]
    #
    JiraParameters = ::Struct.new(
      :site_base_url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The instructions associated with a join. </p>
    #
    # @!attribute left_operand
    #   <p>The operand on the left side of a join.</p>
    #
    #   @return [String]
    #
    # @!attribute right_operand
    #   <p>The operand on the right side of a join.</p>
    #
    #   @return [String]
    #
    # @!attribute left_join_key_properties
    #   <p>Join key properties of the left operand.</p>
    #
    #   @return [JoinKeyProperties]
    #
    # @!attribute right_join_key_properties
    #   <p>Join key properties of the right operand.</p>
    #
    #   @return [JoinKeyProperties]
    #
    # @!attribute type
    #   <p>The type of join that it is.</p>
    #
    #   Enum, one of: ["INNER", "OUTER", "LEFT", "RIGHT"]
    #
    #   @return [String]
    #
    # @!attribute on_clause
    #   <p>The join instructions provided in the <code>ON</code> clause of a join.</p>
    #
    #   @return [String]
    #
    JoinInstruction = ::Struct.new(
      :left_operand,
      :right_operand,
      :left_join_key_properties,
      :right_join_key_properties,
      :type,
      :on_clause,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Properties associated with the columns participating in a join.</p>
    #
    # @!attribute unique_key
    #   <p>A value that indicates that a row in a table is uniquely identified by the columns in
    #               a join key. This is used by Amazon QuickSight to optimize query performance.</p>
    #
    #   @return [Boolean]
    #
    JoinKeyProperties = ::Struct.new(
      :unique_key,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for JoinType
    #
    module JoinType
      # No documentation available.
      #
      INNER = "INNER"

      # No documentation available.
      #
      OUTER = "OUTER"

      # No documentation available.
      #
      LEFT = "LEFT"

      # No documentation available.
      #
      RIGHT = "RIGHT"
    end

    # <p>A limit is exceeded.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>Limit exceeded.</p>
    #
    #   Enum, one of: ["USER", "GROUP", "NAMESPACE", "ACCOUNT_SETTINGS", "IAMPOLICY_ASSIGNMENT", "DATA_SOURCE", "DATA_SET", "VPC_CONNECTION", "INGESTION"]
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this request.</p>
    #
    #   @return [String]
    #
    LimitExceededException = ::Struct.new(
      :message,
      :resource_type,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure that contains the configuration of a shareable link to the dashboard.</p>
    #
    # @!attribute permissions
    #   <p>A structure that contains the permissions of a shareable link.</p>
    #
    #   @return [Array<ResourcePermission>]
    #
    LinkSharingConfiguration = ::Struct.new(
      :permissions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the analyses.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A pagination token that can be used in a subsequent request.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #
    #   @return [Integer]
    #
    ListAnalysesInput = ::Struct.new(
      :aws_account_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute analysis_summary_list
    #   <p>Metadata describing each of the analyses that are listed.</p>
    #
    #   @return [Array<AnalysisSummary>]
    #
    # @!attribute next_token
    #   <p>A pagination token that can be used in a subsequent request.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    ListAnalysesOutput = ::Struct.new(
      :analysis_summary_list,
      :next_token,
      :status,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the dashboard that you're listing versions
    #               for.</p>
    #
    #   @return [String]
    #
    # @!attribute dashboard_id
    #   <p>The ID for the dashboard.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to be returned per request.</p>
    #
    #   @return [Integer]
    #
    ListDashboardVersionsInput = ::Struct.new(
      :aws_account_id,
      :dashboard_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute dashboard_version_summary_list
    #   <p>A structure that contains information about each version of the dashboard.</p>
    #
    #   @return [Array<DashboardVersionSummary>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    ListDashboardVersionsOutput = ::Struct.new(
      :dashboard_version_summary_list,
      :next_token,
      :status,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the dashboards that you're
    #               listing.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to be returned per request.</p>
    #
    #   @return [Integer]
    #
    ListDashboardsInput = ::Struct.new(
      :aws_account_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute dashboard_summary_list
    #   <p>A structure that contains all of the dashboards in your Amazon Web Services account. This structure
    #               provides basic information about the dashboards.</p>
    #
    #   @return [Array<DashboardSummary>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    ListDashboardsOutput = ::Struct.new(
      :dashboard_summary_list,
      :next_token,
      :status,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The Amazon Web Services account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to be returned per request.</p>
    #
    #   @return [Integer]
    #
    ListDataSetsInput = ::Struct.new(
      :aws_account_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute data_set_summaries
    #   <p>The list of dataset summaries.</p>
    #
    #   @return [Array<DataSetSummary>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    ListDataSetsOutput = ::Struct.new(
      :data_set_summaries,
      :next_token,
      :request_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The Amazon Web Services account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to be returned per request.</p>
    #
    #   @return [Integer]
    #
    ListDataSourcesInput = ::Struct.new(
      :aws_account_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute data_sources
    #   <p>A list of data sources.</p>
    #
    #   @return [Array<DataSource>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    ListDataSourcesOutput = ::Struct.new(
      :data_sources,
      :next_token,
      :request_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID for the Amazon Web Services account that contains the folder.</p>
    #
    #   @return [String]
    #
    # @!attribute folder_id
    #   <p>The ID of the folder.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to be returned per request.</p>
    #
    #   @return [Integer]
    #
    ListFolderMembersInput = ::Struct.new(
      :aws_account_id,
      :folder_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute folder_member_list
    #   <p>A structure that contains all of the folder members (dashboards, analyses, and datasets) in the folder.</p>
    #
    #   @return [Array<MemberIdArnPair>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    ListFolderMembersOutput = ::Struct.new(
      :status,
      :folder_member_list,
      :next_token,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID for the Amazon Web Services account that contains the folder.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to be returned per request.</p>
    #
    #   @return [Integer]
    #
    ListFoldersInput = ::Struct.new(
      :aws_account_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute folder_summary_list
    #   <p>A structure that contains all of the folders in the Amazon Web Services account. This structure provides basic information about the folders.</p>
    #
    #   @return [Array<FolderSummary>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    ListFoldersOutput = ::Struct.new(
      :status,
      :folder_summary_list,
      :next_token,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute group_name
    #   <p>The name of the group that you want to see a membership list of.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A pagination token that can be used in a subsequent request.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return from this request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute aws_account_id
    #   <p>The ID for the Amazon Web Services account that the group is in. Currently, you use the ID for the
    #   			Amazon Web Services account that contains your Amazon QuickSight account.</p>
    #
    #   @return [String]
    #
    # @!attribute namespace
    #   <p>The namespace of the group that you want a list of users from.</p>
    #
    #   @return [String]
    #
    ListGroupMembershipsInput = ::Struct.new(
      :group_name,
      :next_token,
      :max_results,
      :aws_account_id,
      :namespace,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute group_member_list
    #   <p>The list of the members of the group.</p>
    #
    #   @return [Array<GroupMember>]
    #
    # @!attribute next_token
    #   <p>A pagination token that can be used in a subsequent request.</p>
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    ListGroupMembershipsOutput = ::Struct.new(
      :group_member_list,
      :next_token,
      :request_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID for the Amazon Web Services account that the group is in. Currently, you use the ID for the
    #   			Amazon Web Services account that contains your Amazon QuickSight account.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A pagination token that can be used in a subsequent request.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute namespace
    #   <p>The namespace that you want a list of groups from.</p>
    #
    #   @return [String]
    #
    ListGroupsInput = ::Struct.new(
      :aws_account_id,
      :next_token,
      :max_results,
      :namespace,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute group_list
    #   <p>The list of the groups.</p>
    #
    #   @return [Array<Group>]
    #
    # @!attribute next_token
    #   <p>A pagination token that can be used in a subsequent request.</p>
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    ListGroupsOutput = ::Struct.new(
      :group_list,
      :next_token,
      :request_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the assignments.</p>
    #
    #   @return [String]
    #
    # @!attribute user_name
    #   <p>The name of the user.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to be returned per request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute namespace
    #   <p>The namespace of the assignment.</p>
    #
    #   @return [String]
    #
    ListIAMPolicyAssignmentsForUserInput = ::Struct.new(
      :aws_account_id,
      :user_name,
      :next_token,
      :max_results,
      :namespace,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute active_assignments
    #   <p>The active assignments for this user.</p>
    #
    #   @return [Array<ActiveIAMPolicyAssignment>]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    ListIAMPolicyAssignmentsForUserOutput = ::Struct.new(
      :active_assignments,
      :request_id,
      :next_token,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains these IAM policy assignments.</p>
    #
    #   @return [String]
    #
    # @!attribute assignment_status
    #   <p>The status of the assignments.</p>
    #
    #   Enum, one of: ["ENABLED", "DRAFT", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute namespace
    #   <p>The namespace for the assignments.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to be returned per request.</p>
    #
    #   @return [Integer]
    #
    ListIAMPolicyAssignmentsInput = ::Struct.new(
      :aws_account_id,
      :assignment_status,
      :namespace,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute iam_policy_assignments
    #   <p>Information describing the IAM policy assignments.</p>
    #
    #   @return [Array<IAMPolicyAssignmentSummary>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    ListIAMPolicyAssignmentsOutput = ::Struct.new(
      :iam_policy_assignments,
      :next_token,
      :request_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute data_set_id
    #   <p>The ID of the dataset used in the ingestion.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_account_id
    #   <p>The Amazon Web Services account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to be returned per request.</p>
    #
    #   @return [Integer]
    #
    ListIngestionsInput = ::Struct.new(
      :data_set_id,
      :next_token,
      :aws_account_id,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute ingestions
    #   <p>A list of the ingestions.</p>
    #
    #   @return [Array<Ingestion>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    ListIngestionsOutput = ::Struct.new(
      :ingestions,
      :next_token,
      :request_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID for the Amazon Web Services account that contains the Amazon QuickSight namespaces that you want to list.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A pagination token that can be used in a subsequent request.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #
    #   @return [Integer]
    #
    ListNamespacesInput = ::Struct.new(
      :aws_account_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute namespaces
    #   <p>The information about the namespaces in this Amazon Web Services account. The response includes
    #           the namespace ARN, name, Amazon Web Services Region, notification email address, creation status, and
    #           identity store.</p>
    #
    #   @return [Array<NamespaceInfoV2>]
    #
    # @!attribute next_token
    #   <p>A pagination token that can be used in a subsequent request.</p>
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    ListNamespacesOutput = ::Struct.new(
      :namespaces,
      :next_token,
      :request_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want a list of tags for.</p>
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
    #   <p>Contains a map of the key-value pairs for the resource tag or tags assigned to the
    #   			resource.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      :request_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the template aliases that you're listing.</p>
    #
    #   @return [String]
    #
    # @!attribute template_id
    #   <p>The ID for the template.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to be returned per request.</p>
    #
    #   @return [Integer]
    #
    ListTemplateAliasesInput = ::Struct.new(
      :aws_account_id,
      :template_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute template_alias_list
    #   <p>A structure containing the list of the template's aliases.</p>
    #
    #   @return [Array<TemplateAlias>]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    #   @return [String]
    #
    ListTemplateAliasesOutput = ::Struct.new(
      :template_alias_list,
      :status,
      :request_id,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the templates that you're listing.</p>
    #
    #   @return [String]
    #
    # @!attribute template_id
    #   <p>The ID for the template.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to be returned per request.</p>
    #
    #   @return [Integer]
    #
    ListTemplateVersionsInput = ::Struct.new(
      :aws_account_id,
      :template_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute template_version_summary_list
    #   <p>A structure containing a list of all the versions of the specified template.</p>
    #
    #   @return [Array<TemplateVersionSummary>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    ListTemplateVersionsOutput = ::Struct.new(
      :template_version_summary_list,
      :next_token,
      :status,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the templates that you're listing.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to be returned per request.</p>
    #
    #   @return [Integer]
    #
    ListTemplatesInput = ::Struct.new(
      :aws_account_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute template_summary_list
    #   <p>A structure containing information about the templates in the list.</p>
    #
    #   @return [Array<TemplateSummary>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    ListTemplatesOutput = ::Struct.new(
      :template_summary_list,
      :next_token,
      :status,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the theme aliases that you're listing.</p>
    #
    #   @return [String]
    #
    # @!attribute theme_id
    #   <p>The ID for the theme.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to be returned per request.</p>
    #
    #   @return [Integer]
    #
    ListThemeAliasesInput = ::Struct.new(
      :aws_account_id,
      :theme_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute theme_alias_list
    #   <p>A structure containing the list of the theme's aliases.</p>
    #
    #   @return [Array<ThemeAlias>]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    #   @return [String]
    #
    ListThemeAliasesOutput = ::Struct.new(
      :theme_alias_list,
      :status,
      :request_id,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the themes that you're listing.</p>
    #
    #   @return [String]
    #
    # @!attribute theme_id
    #   <p>The ID for the theme.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to be returned per request.</p>
    #
    #   @return [Integer]
    #
    ListThemeVersionsInput = ::Struct.new(
      :aws_account_id,
      :theme_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute theme_version_summary_list
    #   <p>A structure containing a list of all the versions of the specified theme.</p>
    #
    #   @return [Array<ThemeVersionSummary>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    ListThemeVersionsOutput = ::Struct.new(
      :theme_version_summary_list,
      :next_token,
      :status,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the themes that you're listing.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to be returned per request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute type
    #   <p>The type of themes that you want to list. Valid options include the following:</p>
    #       	    <ul>
    #               <li>
    #                  <p>
    #                     <code>ALL (default)</code>- Display all existing themes.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CUSTOM</code> - Display only the themes created by people using Amazon QuickSight.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>QUICKSIGHT</code> - Display only the starting themes defined by Amazon QuickSight.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["QUICKSIGHT", "CUSTOM", "ALL"]
    #
    #   @return [String]
    #
    ListThemesInput = ::Struct.new(
      :aws_account_id,
      :next_token,
      :max_results,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute theme_summary_list
    #   <p>Information about the themes in the list.</p>
    #
    #   @return [Array<ThemeSummary>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    ListThemesOutput = ::Struct.new(
      :theme_summary_list,
      :next_token,
      :status,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute user_name
    #   <p>The Amazon QuickSight user name that you want to list group memberships for.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_account_id
    #   <p>The Amazon Web Services account ID that the user is in. Currently, you use the ID for the Amazon Web Services account
    #   			that contains your Amazon QuickSight account.</p>
    #
    #   @return [String]
    #
    # @!attribute namespace
    #   <p>The namespace. Currently, you should set this to <code>default</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A pagination token that can be used in a subsequent request.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return from this request.</p>
    #
    #   @return [Integer]
    #
    ListUserGroupsInput = ::Struct.new(
      :user_name,
      :aws_account_id,
      :namespace,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute group_list
    #   <p>The list of groups the user is a member of.</p>
    #
    #   @return [Array<Group>]
    #
    # @!attribute next_token
    #   <p>A pagination token that can be used in a subsequent request.</p>
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    ListUserGroupsOutput = ::Struct.new(
      :group_list,
      :next_token,
      :request_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID for the Amazon Web Services account that the user is in. Currently, you use the ID for the
    #   			Amazon Web Services account that contains your Amazon QuickSight account.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A pagination token that can be used in a subsequent request.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return from this request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute namespace
    #   <p>The namespace. Currently, you should set this to <code>default</code>.</p>
    #
    #   @return [String]
    #
    ListUsersInput = ::Struct.new(
      :aws_account_id,
      :next_token,
      :max_results,
      :namespace,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_list
    #   <p>The list of users.</p>
    #
    #   @return [Array<User>]
    #
    # @!attribute next_token
    #   <p>A pagination token that can be used in a subsequent request.</p>
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    ListUsersOutput = ::Struct.new(
      :user_list,
      :next_token,
      :request_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # <p>A <i>logical table</i> is a unit that joins and that data
    #             transformations operate on. A logical table has a source, which can be either a physical
    #             table or result of a join. When a logical table points to a physical table, the logical
    #             table acts as a mutable copy of that physical table through transform operations.</p>
    #
    # @!attribute alias
    #   <p>A display name for the logical table.</p>
    #
    #   @return [String]
    #
    # @!attribute data_transforms
    #   <p>Transform operations that act on this logical table.</p>
    #
    #   @return [Array<TransformOperation>]
    #
    # @!attribute source
    #   <p>Source of this logical table.</p>
    #
    #   @return [LogicalTableSource]
    #
    LogicalTable = ::Struct.new(
      :alias,
      :data_transforms,
      :source,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the source of a logical table. This is a variant type structure. For
    #             this structure to be valid, only one of the attributes can be non-null.</p>
    #
    # @!attribute join_instruction
    #   <p>Specifies the result of a join of two logical tables.</p>
    #
    #   @return [JoinInstruction]
    #
    # @!attribute physical_table_id
    #   <p>Physical table ID.</p>
    #
    #   @return [String]
    #
    # @!attribute data_set_arn
    #   <p>The Amazon Resource Number (ARN) of the parent dataset.</p>
    #
    #   @return [String]
    #
    LogicalTableSource = ::Struct.new(
      :join_instruction,
      :physical_table_id,
      :data_set_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Amazon S3 manifest file location.</p>
    #
    # @!attribute bucket
    #   <p>Amazon S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>Amazon S3 key that identifies an object.</p>
    #
    #   @return [String]
    #
    ManifestFileLocation = ::Struct.new(
      :bucket,
      :key,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The display options for margins around the outside edge of sheets.</p>
    #
    # @!attribute show
    #   <p>This Boolean value controls whether to display sheet margins.</p>
    #
    #   @return [Boolean]
    #
    MarginStyle = ::Struct.new(
      :show,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The parameters for MariaDB.</p>
    #
    # @!attribute host
    #   <p>Host.</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>Port.</p>
    #
    #   @return [Integer]
    #
    # @!attribute database
    #   <p>Database.</p>
    #
    #   @return [String]
    #
    MariaDbParameters = ::Struct.new(
      :host,
      :port,
      :database,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.port ||= 0
      end
    end

    # <p>An object that consists of a member Amazon Resource Name (ARN) and a member ID.</p>
    #
    # @!attribute member_id
    #   <p>The ID of the member.</p>
    #
    #   @return [String]
    #
    # @!attribute member_arn
    #   <p>The Amazon Resource Name (ARN) of the member.</p>
    #
    #   @return [String]
    #
    MemberIdArnPair = ::Struct.new(
      :member_id,
      :member_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for MemberType
    #
    module MemberType
      # No documentation available.
      #
      DASHBOARD = "DASHBOARD"

      # No documentation available.
      #
      ANALYSIS = "ANALYSIS"

      # No documentation available.
      #
      DATASET = "DATASET"
    end

    # <p>The parameters for MySQL.</p>
    #
    # @!attribute host
    #   <p>Host.</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>Port.</p>
    #
    #   @return [Integer]
    #
    # @!attribute database
    #   <p>Database.</p>
    #
    #   @return [String]
    #
    MySqlParameters = ::Struct.new(
      :host,
      :port,
      :database,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.port ||= 0
      end
    end

    # <p>Errors that occur during namespace creation.</p>
    #
    # @!attribute type
    #   <p>The error type.</p>
    #
    #   Enum, one of: ["PERMISSION_DENIED", "INTERNAL_SERVICE_ERROR"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The message for the error.</p>
    #
    #   @return [String]
    #
    NamespaceError = ::Struct.new(
      :type,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for NamespaceErrorType
    #
    module NamespaceErrorType
      # No documentation available.
      #
      PERMISSION_DENIED = "PERMISSION_DENIED"

      # No documentation available.
      #
      INTERNAL_SERVICE_ERROR = "INTERNAL_SERVICE_ERROR"
    end

    # <p>The error type.</p>
    #
    # @!attribute name
    #   <p>The name of the error.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The namespace ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute capacity_region
    #   <p>The namespace Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_status
    #   <p>The creation status of a namespace that is not yet completely created.</p>
    #
    #   Enum, one of: ["CREATED", "CREATING", "DELETING", "RETRYABLE_FAILURE", "NON_RETRYABLE_FAILURE"]
    #
    #   @return [String]
    #
    # @!attribute identity_store
    #   <p>The identity store used for the namespace.</p>
    #
    #   Enum, one of: ["QUICKSIGHT"]
    #
    #   @return [String]
    #
    # @!attribute namespace_error
    #   <p>An error that occurred when the namespace was created.</p>
    #
    #   @return [NamespaceError]
    #
    NamespaceInfoV2 = ::Struct.new(
      :name,
      :arn,
      :capacity_region,
      :creation_status,
      :identity_store,
      :namespace_error,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for NamespaceStatus
    #
    module NamespaceStatus
      # No documentation available.
      #
      CREATED = "CREATED"

      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      RETRYABLE_FAILURE = "RETRYABLE_FAILURE"

      # No documentation available.
      #
      NON_RETRYABLE_FAILURE = "NON_RETRYABLE_FAILURE"
    end

    # <p>The parameters for Oracle.</p>
    #
    # @!attribute host
    #   <p>An Oracle host.</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>Port.</p>
    #
    #   @return [Integer]
    #
    # @!attribute database
    #   <p>Database.</p>
    #
    #   @return [String]
    #
    OracleParameters = ::Struct.new(
      :host,
      :port,
      :database,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.port ||= 0
      end
    end

    # <p>Output column.</p>
    #
    # @!attribute name
    #   <p>A display name for the dataset.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description for a column.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>Type.</p>
    #
    #   Enum, one of: ["STRING", "INTEGER", "DECIMAL", "DATETIME"]
    #
    #   @return [String]
    #
    OutputColumn = ::Struct.new(
      :name,
      :description,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A list of Amazon QuickSight parameters and the list's override values.</p>
    #
    # @!attribute string_parameters
    #   <p>The parameters that have a data type of string.</p>
    #
    #   @return [Array<StringParameter>]
    #
    # @!attribute integer_parameters
    #   <p>The parameters that have a data type of integer.</p>
    #
    #   @return [Array<IntegerParameter>]
    #
    # @!attribute decimal_parameters
    #   <p>The parameters that have a data type of decimal.</p>
    #
    #   @return [Array<DecimalParameter>]
    #
    # @!attribute date_time_parameters
    #   <p>The parameters that have a data type of date-time.</p>
    #
    #   @return [Array<DateTimeParameter>]
    #
    Parameters = ::Struct.new(
      :string_parameters,
      :integer_parameters,
      :decimal_parameters,
      :date_time_parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A view of a data source that contains information about the shape of the data in the
    #             underlying source. This is a variant type structure. For this structure to be valid,
    #             only one of the attributes can be non-null.</p>
    #
    class PhysicalTable < Hearth::Union
      # <p>A physical table type for relational data sources.</p>
      #
      class RelationalTable < PhysicalTable
        def to_h
          { relational_table: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::QuickSight::Types::RelationalTable #{__getobj__ || 'nil'}>"
        end
      end

      # <p>A physical table type built from the results of the custom SQL query.</p>
      #
      class CustomSql < PhysicalTable
        def to_h
          { custom_sql: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::QuickSight::Types::CustomSql #{__getobj__ || 'nil'}>"
        end
      end

      # <p>A physical table type for as S3 data source.</p>
      #
      class S3Source < PhysicalTable
        def to_h
          { s3_source: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::QuickSight::Types::S3Source #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < PhysicalTable
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::QuickSight::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p>The parameters for PostgreSQL.</p>
    #
    # @!attribute host
    #   <p>Host.</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>Port.</p>
    #
    #   @return [Integer]
    #
    # @!attribute database
    #   <p>Database.</p>
    #
    #   @return [String]
    #
    PostgreSqlParameters = ::Struct.new(
      :host,
      :port,
      :database,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.port ||= 0
      end
    end

    # <p>One or more preconditions aren't met.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this request.</p>
    #
    #   @return [String]
    #
    PreconditionNotMetException = ::Struct.new(
      :message,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The parameters for Presto.</p>
    #
    # @!attribute host
    #   <p>Host.</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>Port.</p>
    #
    #   @return [Integer]
    #
    # @!attribute catalog
    #   <p>Catalog.</p>
    #
    #   @return [String]
    #
    PrestoParameters = ::Struct.new(
      :host,
      :port,
      :catalog,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.port ||= 0
      end
    end

    # <p>A transform operation that projects columns. Operations that come after a projection
    #             can only refer to projected columns.</p>
    #
    # @!attribute projected_columns
    #   <p>Projected columns.</p>
    #
    #   @return [Array<String>]
    #
    ProjectOperation = ::Struct.new(
      :projected_columns,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a queued dataset SPICE ingestion.</p>
    #
    # @!attribute waiting_on_ingestion
    #   <p>The ID of the queued ingestion.</p>
    #
    #   @return [String]
    #
    # @!attribute queued_ingestion
    #   <p>The ID of the ongoing ingestion. The queued ingestion is waiting for the ongoing
    #               ingestion to complete.</p>
    #
    #   @return [String]
    #
    QueueInfo = ::Struct.new(
      :waiting_on_ingestion,
      :queued_ingestion,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The user with the provided name isn't found. This error can happen in any operation
    # 			that requires finding a user based on a provided user name, such as
    # 				<code>DeleteUser</code>, <code>DescribeUser</code>, and so on.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this request.</p>
    #
    #   @return [String]
    #
    QuickSightUserNotFoundException = ::Struct.new(
      :message,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The parameters for Amazon RDS.</p>
    #
    # @!attribute instance_id
    #   <p>Instance ID.</p>
    #
    #   @return [String]
    #
    # @!attribute database
    #   <p>Database.</p>
    #
    #   @return [String]
    #
    RdsParameters = ::Struct.new(
      :instance_id,
      :database,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The parameters for Amazon Redshift. The <code>ClusterId</code> field can be blank if
    #             <code>Host</code> and <code>Port</code> are both set. The <code>Host</code> and
    #             <code>Port</code> fields can be blank if the <code>ClusterId</code> field is set.</p>
    #
    # @!attribute host
    #   <p>Host. This field can be blank if <code>ClusterId</code> is provided.</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>Port. This field can be blank if the <code>ClusterId</code> is provided.</p>
    #
    #   @return [Integer]
    #
    # @!attribute database
    #   <p>Database.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_id
    #   <p>Cluster ID. This field can be blank if the <code>Host</code> and <code>Port</code> are
    #               provided.</p>
    #
    #   @return [String]
    #
    RedshiftParameters = ::Struct.new(
      :host,
      :port,
      :database,
      :cluster_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.port ||= 0
      end
    end

    # @!attribute identity_type
    #   <p>Amazon QuickSight supports several ways of managing the identity of users. This
    #   			parameter accepts two values:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>
    #                     <code>IAM</code>: A user whose identity maps to an existing IAM user or role.
    #   				</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>QUICKSIGHT</code>: A user whose identity is owned and managed internally by
    #   					Amazon QuickSight. </p>
    #   			         </li>
    #            </ul>
    #
    #   Enum, one of: ["IAM", "QUICKSIGHT"]
    #
    #   @return [String]
    #
    # @!attribute email
    #   <p>The email address of the user that you want to register.</p>
    #
    #   @return [String]
    #
    # @!attribute user_role
    #   <p>The Amazon QuickSight role for the user. The user role can be one of the
    #   			following:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>
    #                     <code>READER</code>: A user who has read-only access to dashboards.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>AUTHOR</code>: A user who can create data sources, datasets, analyses, and
    #   					dashboards.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>ADMIN</code>: A user who is an author, who can also manage Amazon QuickSight
    #   					settings.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>RESTRICTED_READER</code>: This role isn't currently available for
    #   					use.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>RESTRICTED_AUTHOR</code>: This role isn't currently available for
    #   					use.</p>
    #   			         </li>
    #            </ul>
    #
    #   Enum, one of: ["ADMIN", "AUTHOR", "READER", "RESTRICTED_AUTHOR", "RESTRICTED_READER"]
    #
    #   @return [String]
    #
    # @!attribute iam_arn
    #   <p>The ARN of the IAM user or role that you are registering with Amazon QuickSight. </p>
    #
    #   @return [String]
    #
    # @!attribute session_name
    #   <p>You need to use this parameter only when you register one or more users using an assumed
    #   			IAM role. You don't need to provide the session name for other scenarios, for example when
    #   			you are registering an IAM user or an Amazon QuickSight user. You can register multiple
    #   			users using the same IAM role if each user has a different session name. For more
    #   			information on assuming IAM roles, see <a href="https://docs.aws.amazon.com/cli/latest/reference/sts/assume-role.html">
    #                  <code>assume-role</code>
    #               </a> in the <i>CLI Reference.</i>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute aws_account_id
    #   <p>The ID for the Amazon Web Services account that the user is in. Currently, you use the ID for the
    #   			Amazon Web Services account that contains your Amazon QuickSight account.</p>
    #
    #   @return [String]
    #
    # @!attribute namespace
    #   <p>The namespace. Currently, you should set this to <code>default</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute user_name
    #   <p>The Amazon QuickSight user name that you want to create for the user you are
    #   			registering.</p>
    #
    #   @return [String]
    #
    # @!attribute custom_permissions_name
    #   <p>(Enterprise edition only) The name of the custom permissions profile that you want to
    #               assign to this user. Customized permissions allows you to control a user's access by
    #               restricting access the following operations:</p>
    #           <ul>
    #               <li>
    #                   <p>Create and update data sources</p>
    #               </li>
    #               <li>
    #                   <p>Create and update datasets</p>
    #               </li>
    #               <li>
    #                   <p>Create and update email reports</p>
    #               </li>
    #               <li>
    #                   <p>Subscribe to email reports</p>
    #               </li>
    #            </ul>
    #           <p>To add custom permissions to an existing user, use <code>
    #                  <a href="https://docs.aws.amazon.com/quicksight/latest/APIReference/API_UpdateUser.html">UpdateUser</a>
    #               </code> instead.</p>
    #           <p>A set of custom permissions includes any combination of these restrictions. Currently,
    #               you need to create the profile names for custom permission sets by using the Amazon QuickSight
    #               console. Then, you use the <code>RegisterUser</code> API operation to assign the named set of
    #               permissions to a Amazon QuickSight user. </p>
    #           <p>Amazon QuickSight custom permissions are applied through IAM policies. Therefore, they
    #               override the permissions typically granted by assigning Amazon QuickSight users to one of the
    #               default security cohorts in Amazon QuickSight (admin, author, reader).</p>
    #           <p>This feature is available only to Amazon QuickSight Enterprise edition subscriptions.</p>
    #
    #   @return [String]
    #
    # @!attribute external_login_federation_provider_type
    #   <p>The type of supported external login provider that provides identity to let a user federate into Amazon QuickSight with an associated Identity and Access Management(IAM) role. The type of supported external login provider can be one of the following.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>COGNITO</code>: Amazon Cognito. The provider URL is cognito-identity.amazonaws.com. When choosing the <code>COGNITO</code> provider type, don’t use the "CustomFederationProviderUrl" parameter which is only needed when the external provider is custom.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CUSTOM_OIDC</code>: Custom OpenID Connect (OIDC) provider. When choosing <code>CUSTOM_OIDC</code> type, use the <code>CustomFederationProviderUrl</code> parameter to provide the custom OIDC provider URL.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute custom_federation_provider_url
    #   <p>The URL of the custom OpenID Connect (OIDC) provider that provides identity to let a user federate
    #            into Amazon QuickSight with an associated Identity and Access Management(IAM) role. This parameter should
    #            only be used when <code>ExternalLoginFederationProviderType</code> parameter is set to <code>CUSTOM_OIDC</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute external_login_id
    #   <p>The identity ID for a user in the external login provider.</p>
    #
    #   @return [String]
    #
    RegisterUserInput = ::Struct.new(
      :identity_type,
      :email,
      :user_role,
      :iam_arn,
      :session_name,
      :aws_account_id,
      :namespace,
      :user_name,
      :custom_permissions_name,
      :external_login_federation_provider_type,
      :custom_federation_provider_url,
      :external_login_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user
    #   <p>The user's user name.</p>
    #
    #   @return [User]
    #
    # @!attribute user_invitation_url
    #   <p>The URL the user visits to complete registration and provide a password. This is
    #   			returned only for users with an identity type of <code>QUICKSIGHT</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    RegisterUserOutput = ::Struct.new(
      :user,
      :user_invitation_url,
      :request_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # <p>Information about the dashboard you want to embed.</p>
    #
    # @!attribute initial_dashboard_id
    #   <p>The dashboard ID for the dashboard that you want the user to see first. This ID is included in the output URL. When the URL in response is accessed, Amazon QuickSight renders this dashboard if the user has permissions to view it.</p>
    #            <p>If the user does not have permission to view this dashboard, they see a permissions error message.</p>
    #
    #   @return [String]
    #
    RegisteredUserDashboardEmbeddingConfiguration = ::Struct.new(
      :initial_dashboard_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The type of experience you want to embed. For registered users, you can embed Amazon QuickSight dashboards or the Amazon QuickSight console.</p>
    #          <note>
    #             <p>Exactly one of the experience configurations is required. You can choose
    #                     <code>Dashboard</code> or <code>QuickSightConsole</code>. You cannot choose more
    #                 than one experience configuration.</p>
    #          </note>
    #
    # @!attribute dashboard
    #   <p>The configuration details for providing a dashboard embedding experience.</p>
    #
    #   @return [RegisteredUserDashboardEmbeddingConfiguration]
    #
    # @!attribute quick_sight_console
    #   <p>The configuration details for providing each Amazon QuickSight console embedding experience. This can be used along with custom permissions to restrict access to certain features. For more information, see <a href="https://docs.aws.amazon.com/quicksight/latest/user/customizing-permissions-to-the-quicksight-console.html">Customizing Access to the Amazon QuickSight Console</a> in the <i>Amazon QuickSight User
    #               Guide</i>.</p>
    #           <p>Use <code>
    #                  <a href="https://docs.aws.amazon.com/quicksight/latest/APIReference/API_GenerateEmbedUrlForRegisteredUser.html">GenerateEmbedUrlForRegisteredUser</a>
    #               </code>
    #               where
    #               you want to provide an authoring portal that allows users to create data sources,
    #               datasets, analyses, and dashboards. The users who accesses an embedded Amazon QuickSight console
    #               needs to belong to the author or admin security cohort. If you want to restrict permissions
    #               to some of these features, add a custom permissions profile to the user with the
    #               <code>
    #                  <a href="https://docs.aws.amazon.com/quicksight/latest/APIReference/API_UpdateUser.html">UpdateUser</a>
    #               </code> API operation. Use the <code>
    #                  <a href="https://docs.aws.amazon.com/quicksight/latest/APIReference/API_RegisterUser.html">RegisterUser</a>
    #               </code> API operation to add a new user with a custom permission profile attached. For more
    #               information, see the following sections in the <i>Amazon QuickSight User
    #               Guide</i>:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <a href="https://docs.aws.amazon.com/quicksight/latest/user/embedded-analytics-full-console-for-authenticated-users.html">Embedding the Full Functionality of the Amazon QuickSight Console for Authenticated Users</a>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <a href="https://docs.aws.amazon.com/quicksight/latest/user/customizing-permissions-to-the-quicksight-console.html">Customizing Access to the Amazon QuickSight Console</a>
    #                  </p>
    #               </li>
    #            </ul>
    #           <p>For more information about the high-level steps for embedding and for an interactive demo of the ways you can customize embedding, visit the <a href="https://docs.aws.amazon.com/quicksight/latest/user/quicksight-dev-portal.html">Amazon QuickSight Developer Portal</a>.</p>
    #
    #   @return [RegisteredUserQuickSightConsoleEmbeddingConfiguration]
    #
    # @!attribute q_search_bar
    #   <p>The configuration details for embedding the Q search bar.</p>
    #            <p>For more information about embedding the Q search bar, see
    #         <a href="https://docs.aws.amazon.com/quicksight/latest/user/embedding-overview.html">Embedding Overview</a>.</p>
    #
    #   @return [RegisteredUserQSearchBarEmbeddingConfiguration]
    #
    RegisteredUserEmbeddingExperienceConfiguration = ::Struct.new(
      :dashboard,
      :quick_sight_console,
      :q_search_bar,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the Q search bar embedding experience.</p>
    #
    # @!attribute initial_topic_id
    #   <p>The ID of the Q topic that you want to make the starting topic in the Q search bar.
    #         You can find a topic ID by navigating to the Topics pane in the Amazon QuickSight application and opening
    #         a topic. The ID is in the URL for the topic that you open.</p>
    #            <p>If you don't specify an initial topic, a list of all shared topics is shown in the Q bar
    #         for your readers. When you select an initial topic, you can specify whether or not readers
    #         are allowed to select other topics from the available ones in the list.</p>
    #
    #   @return [String]
    #
    RegisteredUserQSearchBarEmbeddingConfiguration = ::Struct.new(
      :initial_topic_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the Amazon QuickSight console that you want to embed.</p>
    #
    # @!attribute initial_path
    #   <p>The initial URL path for the Amazon QuickSight console. <code>InitialPath</code> is required.</p>
    #            <p>The entry point URL is constrained to the following paths:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>/start</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/start/analyses</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/start/dashboards</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/start/favorites</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/dashboards/DashboardId</code>. <i>DashboardId</i> is the actual ID key from the Amazon QuickSight console URL of the dashboard.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/analyses/AnalysisId</code>. <i>AnalysisId</i> is the actual ID key from the Amazon QuickSight console URL of the analysis.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    RegisteredUserQuickSightConsoleEmbeddingConfiguration = ::Struct.new(
      :initial_path,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A physical table type for relational data sources.</p>
    #
    # @!attribute data_source_arn
    #   <p>The Amazon Resource Name (ARN) for the data source.</p>
    #
    #   @return [String]
    #
    # @!attribute catalog
    #   <p>The catalog associated with a table.</p>
    #
    #   @return [String]
    #
    # @!attribute schema
    #   <p>The schema name. This name applies to certain relational database engines.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the relational table.</p>
    #
    #   @return [String]
    #
    # @!attribute input_columns
    #   <p>The column schema of the table.</p>
    #
    #   @return [Array<InputColumn>]
    #
    RelationalTable = ::Struct.new(
      :data_source_arn,
      :catalog,
      :schema,
      :name,
      :input_columns,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A transform operation that renames a column.</p>
    #
    # @!attribute column_name
    #   <p>The name of the column to be renamed.</p>
    #
    #   @return [String]
    #
    # @!attribute new_column_name
    #   <p>The new name for the column.</p>
    #
    #   @return [String]
    #
    RenameColumnOperation = ::Struct.new(
      :column_name,
      :new_column_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The resource specified already exists. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The resource type for this request.</p>
    #
    #   Enum, one of: ["USER", "GROUP", "NAMESPACE", "ACCOUNT_SETTINGS", "IAMPOLICY_ASSIGNMENT", "DATA_SOURCE", "DATA_SET", "VPC_CONNECTION", "INGESTION"]
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this request.</p>
    #
    #   @return [String]
    #
    ResourceExistsException = ::Struct.new(
      :message,
      :resource_type,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>One or more resources can't be found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The resource type for this request.</p>
    #
    #   Enum, one of: ["USER", "GROUP", "NAMESPACE", "ACCOUNT_SETTINGS", "IAMPOLICY_ASSIGNMENT", "DATA_SOURCE", "DATA_SET", "VPC_CONNECTION", "INGESTION"]
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this request.</p>
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      :resource_type,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Permission for the resource.</p>
    #
    # @!attribute principal
    #   <p>The Amazon Resource Name (ARN) of the principal. This can be one of the
    #               following:</p>
    #           <ul>
    #               <li>
    #                   <p>The ARN of an Amazon QuickSight user or group associated with a data source or dataset. (This is common.)</p>
    #               </li>
    #               <li>
    #                   <p>The ARN of an Amazon QuickSight user, group, or namespace associated with an analysis, dashboard, template, or theme. (This is common.)</p>
    #               </li>
    #               <li>
    #                   <p>The ARN of an Amazon Web Services account root: This is an IAM ARN rather than a QuickSight
    #                       ARN. Use this option only to share resources (templates) across Amazon Web Services accounts.
    #                       (This is less common.) </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute actions
    #   <p>The IAM action to grant or revoke permissions on.</p>
    #
    #   @return [Array<String>]
    #
    ResourcePermission = ::Struct.new(
      :principal,
      :actions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ResourceStatus
    #
    module ResourceStatus
      # No documentation available.
      #
      CREATION_IN_PROGRESS = "CREATION_IN_PROGRESS"

      # No documentation available.
      #
      CREATION_SUCCESSFUL = "CREATION_SUCCESSFUL"

      # No documentation available.
      #
      CREATION_FAILED = "CREATION_FAILED"

      # No documentation available.
      #
      UPDATE_IN_PROGRESS = "UPDATE_IN_PROGRESS"

      # No documentation available.
      #
      UPDATE_SUCCESSFUL = "UPDATE_SUCCESSFUL"

      # No documentation available.
      #
      UPDATE_FAILED = "UPDATE_FAILED"

      # No documentation available.
      #
      DELETED = "DELETED"
    end

    # <p>This resource is currently unavailable.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The resource type for this request.</p>
    #
    #   Enum, one of: ["USER", "GROUP", "NAMESPACE", "ACCOUNT_SETTINGS", "IAMPOLICY_ASSIGNMENT", "DATA_SOURCE", "DATA_SET", "VPC_CONNECTION", "INGESTION"]
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this request.</p>
    #
    #   @return [String]
    #
    ResourceUnavailableException = ::Struct.new(
      :message,
      :resource_type,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the analysis.</p>
    #
    #   @return [String]
    #
    # @!attribute analysis_id
    #   <p>The ID of the analysis that you're restoring.</p>
    #
    #   @return [String]
    #
    RestoreAnalysisInput = ::Struct.new(
      :aws_account_id,
      :analysis_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the analysis that you're restoring.</p>
    #
    #   @return [String]
    #
    # @!attribute analysis_id
    #   <p>The ID of the analysis that you're restoring.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    RestoreAnalysisOutput = ::Struct.new(
      :status,
      :arn,
      :analysis_id,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # <p>Information about rows for a data set SPICE ingestion.</p>
    #
    # @!attribute rows_ingested
    #   <p>The number of rows that were ingested.</p>
    #
    #   @return [Integer]
    #
    # @!attribute rows_dropped
    #   <p>The number of rows that were not ingested.</p>
    #
    #   @return [Integer]
    #
    # @!attribute total_rows_in_dataset
    #   <p>The total number of rows in the dataset.</p>
    #
    #   @return [Integer]
    #
    RowInfo = ::Struct.new(
      :rows_ingested,
      :rows_dropped,
      :total_rows_in_dataset,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a dataset that contains permissions for row-level security (RLS).
    #             The permissions dataset maps fields to users or groups. For more information, see
    #             <a href="https://docs.aws.amazon.com/quicksight/latest/user/restrict-access-to-a-data-set-using-row-level-security.html">Using Row-Level Security (RLS) to Restrict Access to a Dataset</a> in the <i>Amazon QuickSight User
    #                 Guide</i>.</p>
    #             <p>The option to deny permissions by setting <code>PermissionPolicy</code> to <code>DENY_ACCESS</code> is
    #             not supported for new RLS datasets.</p>
    #
    # @!attribute namespace
    #   <p>The namespace associated with the dataset that contains permissions for RLS.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the dataset that contains permissions for RLS.</p>
    #
    #   @return [String]
    #
    # @!attribute permission_policy
    #   <p>The type of permissions to use when interpreting the permissions for RLS. <code>DENY_ACCESS</code>
    #           is included for backward compatibility only.</p>
    #
    #   Enum, one of: ["GRANT_ACCESS", "DENY_ACCESS"]
    #
    #   @return [String]
    #
    # @!attribute format_version
    #   <p>The user or group rules associated with the dataset that contains permissions for RLS.</p>
    #            <p>By default, <code>FormatVersion</code> is <code>VERSION_1</code>. When <code>FormatVersion</code> is <code>VERSION_1</code>, <code>UserName</code> and <code>GroupName</code> are required. When <code>FormatVersion</code> is <code>VERSION_2</code>, <code>UserARN</code> and <code>GroupARN</code> are required, and <code>Namespace</code> must not exist.</p>
    #
    #   Enum, one of: ["VERSION_1", "VERSION_2"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the row-level security permission dataset. If enabled, the status is <code>ENABLED</code>. If disabled, the status is <code>DISABLED</code>.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    RowLevelPermissionDataSet = ::Struct.new(
      :namespace,
      :arn,
      :permission_policy,
      :format_version,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RowLevelPermissionFormatVersion
    #
    module RowLevelPermissionFormatVersion
      # No documentation available.
      #
      VERSION_1 = "VERSION_1"

      # No documentation available.
      #
      VERSION_2 = "VERSION_2"
    end

    # Includes enum constants for RowLevelPermissionPolicy
    #
    module RowLevelPermissionPolicy
      # No documentation available.
      #
      GRANT_ACCESS = "GRANT_ACCESS"

      # No documentation available.
      #
      DENY_ACCESS = "DENY_ACCESS"
    end

    # <p>The configuration of tags on a dataset to set row-level security. </p>
    #
    # @!attribute status
    #   <p>The status of row-level security tags. If enabled, the status is <code>ENABLED</code>. If disabled, the status is <code>DISABLED</code>.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute tag_rules
    #   <p>A set of rules associated with row-level security, such as the tag names and columns that they are assigned to.</p>
    #
    #   @return [Array<RowLevelPermissionTagRule>]
    #
    RowLevelPermissionTagConfiguration = ::Struct.new(
      :status,
      :tag_rules,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A set of rules associated with a tag.</p>
    #
    # @!attribute tag_key
    #   <p>The unique key for a tag.</p>
    #
    #   @return [String]
    #
    # @!attribute column_name
    #   <p>The column name that a tag key is assigned to.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_multi_value_delimiter
    #   <p>A string that you want to use to delimit the values when you pass the values at run time. For example, you can delimit the values with a comma.</p>
    #
    #   @return [String]
    #
    # @!attribute match_all_value
    #   <p>A string that you want to use to filter by all the values in a column in the dataset and don’t want to list the values one by one. For example, you can use an asterisk as your match all value.</p>
    #
    #   @return [String]
    #
    RowLevelPermissionTagRule = ::Struct.new(
      :tag_key,
      :column_name,
      :tag_multi_value_delimiter,
      :match_all_value,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::QuickSight::Types::RowLevelPermissionTagRule "\
          "tag_key=#{tag_key || 'nil'}, "\
          "column_name=#{column_name || 'nil'}, "\
          "tag_multi_value_delimiter=#{tag_multi_value_delimiter || 'nil'}, "\
          "match_all_value=\"[SENSITIVE]\">"
      end
    end

    # <p>The parameters for S3.</p>
    #
    # @!attribute manifest_file_location
    #   <p>Location of the Amazon S3 manifest file. This is NULL if the manifest file was
    #               uploaded into Amazon QuickSight.</p>
    #
    #   @return [ManifestFileLocation]
    #
    S3Parameters = ::Struct.new(
      :manifest_file_location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A physical table type for an S3 data source.</p>
    #
    # @!attribute data_source_arn
    #   <p>The Amazon Resource Name (ARN) for the data source.</p>
    #
    #   @return [String]
    #
    # @!attribute upload_settings
    #   <p>Information about the format for the S3 source file or files.</p>
    #
    #   @return [UploadSettings]
    #
    # @!attribute input_columns
    #   <p>A physical table type for an S3 data source.</p>
    #           <note>
    #               <p>For files that aren't JSON, only <code>STRING</code> data types are supported in input columns.</p>
    #           </note>
    #
    #   @return [Array<InputColumn>]
    #
    S3Source = ::Struct.new(
      :data_source_arn,
      :upload_settings,
      :input_columns,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the analyses that you're searching
    #               for.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>The structure for the search filters that you want to apply to your search. </p>
    #
    #   @return [Array<AnalysisSearchFilter>]
    #
    # @!attribute next_token
    #   <p>A pagination token that can be used in a subsequent request.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #
    #   @return [Integer]
    #
    SearchAnalysesInput = ::Struct.new(
      :aws_account_id,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute analysis_summary_list
    #   <p>Metadata describing the analyses that you searched for.</p>
    #
    #   @return [Array<AnalysisSummary>]
    #
    # @!attribute next_token
    #   <p>A pagination token that can be used in a subsequent request.
    #               </p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    SearchAnalysesOutput = ::Struct.new(
      :analysis_summary_list,
      :next_token,
      :status,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the user whose dashboards you're searching
    #               for. </p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>The filters to apply to the search. Currently, you can search only by user name, for
    #               example, <code>"Filters": [ { "Name": "QUICKSIGHT_USER", "Operator": "StringEquals",
    #               "Value": "arn:aws:quicksight:us-east-1:1:user/default/UserName1" } ]</code>
    #            </p>
    #
    #   @return [Array<DashboardSearchFilter>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to be returned per request.</p>
    #
    #   @return [Integer]
    #
    SearchDashboardsInput = ::Struct.new(
      :aws_account_id,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute dashboard_summary_list
    #   <p>The list of dashboards owned by the user specified in <code>Filters</code> in your
    #               request.</p>
    #
    #   @return [Array<DashboardSummary>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    SearchDashboardsOutput = ::Struct.new(
      :dashboard_summary_list,
      :next_token,
      :status,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID for the Amazon Web Services account that contains the folder.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>The filters to apply to the search. Currently, you can search only by the parent folder ARN. For example, <code>"Filters": [ { "Name": "PARENT_FOLDER_ARN", "Operator": "StringEquals", "Value": "arn:aws:quicksight:us-east-1:1:folder/folderId" } ]</code>.</p>
    #
    #   @return [Array<FolderSearchFilter>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to be returned per request.</p>
    #
    #   @return [Integer]
    #
    SearchFoldersInput = ::Struct.new(
      :aws_account_id,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute folder_summary_list
    #   <p>A structure that contains all of the folders in the Amazon Web Services account. This structure provides basic information about the folders.</p>
    #
    #   @return [Array<FolderSummary>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    SearchFoldersOutput = ::Struct.new(
      :status,
      :folder_summary_list,
      :next_token,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID for the Amazon Web Services account that the group is in. Currently, you use the ID for the
    #             Amazon Web Services account that contains your Amazon QuickSight account.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A pagination token that can be used in a subsequent request.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return from this request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute namespace
    #   <p>The namespace that you want to search.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>The structure for the search filters that you want to apply to your search.</p>
    #
    #   @return [Array<GroupSearchFilter>]
    #
    SearchGroupsInput = ::Struct.new(
      :aws_account_id,
      :next_token,
      :max_results,
      :namespace,
      :filters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute group_list
    #   <p>A list of groups in a specified namespace that match the filters you set in your <code>SearchGroups</code> request.</p>
    #
    #   @return [Array<Group>]
    #
    # @!attribute next_token
    #   <p>A pagination token that can be used in a subsequent request.</p>
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    SearchGroupsOutput = ::Struct.new(
      :group_list,
      :next_token,
      :request_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # <p>The parameters for ServiceNow.</p>
    #
    # @!attribute site_base_url
    #   <p>URL of the base site.</p>
    #
    #   @return [String]
    #
    ServiceNowParameters = ::Struct.new(
      :site_base_url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The number of minutes specified for the lifetime of a session isn't valid. The session
    # 			lifetime must be 15-600 minutes.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this request.</p>
    #
    #   @return [String]
    #
    SessionLifetimeInMinutesInvalidException = ::Struct.new(
      :message,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The key-value pair used for the row-level security tags feature.</p>
    #
    # @!attribute key
    #   <p>The key for the tag.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value that you want to assign the tag.</p>
    #
    #   @return [String]
    #
    SessionTag = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::QuickSight::Types::SessionTag "\
          "key=#{key || 'nil'}, "\
          "value=\"[SENSITIVE]\">"
      end
    end

    # <p>A <i>sheet</i>, which is an object that contains a set of visuals that
    #             are viewed together on one page in Amazon QuickSight. Every analysis and dashboard
    #             contains at least one sheet. Each sheet contains at least one visualization widget, for
    #             example a chart, pivot table, or narrative insight. Sheets can be associated with other
    #             components, such as controls, filters, and so on.</p>
    #
    # @!attribute sheet_id
    #   <p>The unique identifier associated with a sheet.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of a sheet. This name is displayed on the sheet's tab in the Amazon QuickSight
    #               console.</p>
    #
    #   @return [String]
    #
    Sheet = ::Struct.new(
      :sheet_id,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Sheet controls option.</p>
    #
    # @!attribute visibility_state
    #   <p>Visibility state.</p>
    #
    #   Enum, one of: ["EXPANDED", "COLLAPSED"]
    #
    #   @return [String]
    #
    SheetControlsOption = ::Struct.new(
      :visibility_state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The theme display options for sheets. </p>
    #
    # @!attribute tile
    #   <p>The display options for tiles.</p>
    #
    #   @return [TileStyle]
    #
    # @!attribute tile_layout
    #   <p>The layout options for tiles.</p>
    #
    #   @return [TileLayoutStyle]
    #
    SheetStyle = ::Struct.new(
      :tile,
      :tile_layout,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The parameters for Snowflake.</p>
    #
    # @!attribute host
    #   <p>Host.</p>
    #
    #   @return [String]
    #
    # @!attribute database
    #   <p>Database.</p>
    #
    #   @return [String]
    #
    # @!attribute warehouse
    #   <p>Warehouse.</p>
    #
    #   @return [String]
    #
    SnowflakeParameters = ::Struct.new(
      :host,
      :database,
      :warehouse,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The parameters for Spark.</p>
    #
    # @!attribute host
    #   <p>Host.</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>Port.</p>
    #
    #   @return [Integer]
    #
    SparkParameters = ::Struct.new(
      :host,
      :port,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.port ||= 0
      end
    end

    # <p>The parameters for SQL Server.</p>
    #
    # @!attribute host
    #   <p>Host.</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>Port.</p>
    #
    #   @return [Integer]
    #
    # @!attribute database
    #   <p>Database.</p>
    #
    #   @return [String]
    #
    SqlServerParameters = ::Struct.new(
      :host,
      :port,
      :database,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.port ||= 0
      end
    end

    # <p>Secure Socket Layer (SSL) properties that apply when Amazon QuickSight connects to your
    #             underlying data source.</p>
    #
    # @!attribute disable_ssl
    #   <p>A Boolean option to control whether SSL should be disabled.</p>
    #
    #   @return [Boolean]
    #
    SslProperties = ::Struct.new(
      :disable_ssl,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.disable_ssl ||= false
      end
    end

    # Includes enum constants for Status
    #
    module Status
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # <p>A string parameter.</p>
    #
    # @!attribute name
    #   <p>A display name for a string parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The values of a string parameter.</p>
    #
    #   @return [Array<String>]
    #
    StringParameter = ::Struct.new(
      :name,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The key or keys of the key-value pairs for the resource tag or tags assigned to the
    #             resource.</p>
    #
    # @!attribute key
    #   <p>Tag key.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>Tag value.</p>
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

    # <p>A transform operation that tags a column with additional information.</p>
    #
    # @!attribute column_name
    #   <p>The column that this operation acts on.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The dataset column tag, currently only used for geospatial type tagging.</p>
    #           <note>
    #               <p>This is not tags for the Amazon Web Services tagging feature.</p>
    #           </note>
    #
    #   @return [Array<ColumnTag>]
    #
    TagColumnOperation = ::Struct.new(
      :column_name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to tag.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Contains a map of the key-value pairs for the resource tag or tags assigned to the resource.</p>
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

    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    TagResourceOutput = ::Struct.new(
      :request_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # <p>A template object. A <i>template</i> is an entity in Amazon QuickSight that
    #             encapsulates the metadata required to create an analysis and that you can use to create
    #             a dashboard. A template adds a layer of abstraction by using placeholders to replace the
    #             dataset associated with an analysis. You can use templates to create dashboards by
    #             replacing dataset placeholders with datasets that follow the same schema that was used
    #             to create the source analysis and template.</p>
    #         <p>You can share templates across Amazon Web Services accounts by allowing users in other Amazon Web Services accounts to
    #             create a template or a dashboard from an existing template.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the template.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The display name of the template.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>A structure describing the versions of the template.</p>
    #
    #   @return [TemplateVersion]
    #
    # @!attribute template_id
    #   <p>The ID for the template. This is unique per Amazon Web Services Region for each Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute last_updated_time
    #   <p>Time when this was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute created_time
    #   <p>Time when this was created.</p>
    #
    #   @return [Time]
    #
    Template = ::Struct.new(
      :arn,
      :name,
      :version,
      :template_id,
      :last_updated_time,
      :created_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The template alias.</p>
    #
    # @!attribute alias_name
    #   <p>The display name of the template alias.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the template alias.</p>
    #
    #   @return [String]
    #
    # @!attribute template_version_number
    #   <p>The version number of the template alias.</p>
    #
    #   @return [Integer]
    #
    TemplateAlias = ::Struct.new(
      :alias_name,
      :arn,
      :template_version_number,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>List of errors that occurred when the template version creation failed.</p>
    #
    # @!attribute type
    #   <p>Type of error.</p>
    #
    #   Enum, one of: ["SOURCE_NOT_FOUND", "DATA_SET_NOT_FOUND", "INTERNAL_FAILURE", "ACCESS_DENIED"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>Description of the error type.</p>
    #
    #   @return [String]
    #
    TemplateError = ::Struct.new(
      :type,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TemplateErrorType
    #
    module TemplateErrorType
      # No documentation available.
      #
      SOURCE_NOT_FOUND = "SOURCE_NOT_FOUND"

      # No documentation available.
      #
      DATA_SET_NOT_FOUND = "DATA_SET_NOT_FOUND"

      # No documentation available.
      #
      INTERNAL_FAILURE = "INTERNAL_FAILURE"

      # No documentation available.
      #
      ACCESS_DENIED = "ACCESS_DENIED"
    end

    # <p>The source analysis of the template.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute data_set_references
    #   <p>A structure containing information about the dataset references used as placeholders
    #               in the template.</p>
    #
    #   @return [Array<DataSetReference>]
    #
    TemplateSourceAnalysis = ::Struct.new(
      :arn,
      :data_set_references,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The source entity of the template.</p>
    #
    # @!attribute source_analysis
    #   <p>The source analysis, if it is based on an analysis.</p>
    #
    #   @return [TemplateSourceAnalysis]
    #
    # @!attribute source_template
    #   <p>The source template, if it is based on an template.</p>
    #
    #   @return [TemplateSourceTemplate]
    #
    TemplateSourceEntity = ::Struct.new(
      :source_analysis,
      :source_template,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The source template of the template.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    #   @return [String]
    #
    TemplateSourceTemplate = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The template summary.</p>
    #
    # @!attribute arn
    #   <p>A summary of a template.</p>
    #
    #   @return [String]
    #
    # @!attribute template_id
    #   <p>The ID of the template. This ID is unique per Amazon Web Services Region for each Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A display name for the template.</p>
    #
    #   @return [String]
    #
    # @!attribute latest_version_number
    #   <p>A structure containing a list of version numbers for the template summary.</p>
    #
    #   @return [Integer]
    #
    # @!attribute created_time
    #   <p>The last time that this template was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_time
    #   <p>The last time that this template was updated.</p>
    #
    #   @return [Time]
    #
    TemplateSummary = ::Struct.new(
      :arn,
      :template_id,
      :name,
      :latest_version_number,
      :created_time,
      :last_updated_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A version of a template.</p>
    #
    # @!attribute created_time
    #   <p>The time that this template version was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute errors
    #   <p>Errors associated with this template version.</p>
    #
    #   @return [Array<TemplateError>]
    #
    # @!attribute version_number
    #   <p>The version number of the template version.</p>
    #
    #   @return [Integer]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   Enum, one of: ["CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute data_set_configurations
    #   <p>Schema of the dataset identified by the placeholder. Any dashboard created from this
    #               template should be bound to new datasets matching the same schema described through this
    #               API operation.</p>
    #
    #   @return [Array<DataSetConfiguration>]
    #
    # @!attribute description
    #   <p>The description of the template.</p>
    #
    #   @return [String]
    #
    # @!attribute source_entity_arn
    #   <p>The Amazon Resource Name (ARN) of an analysis or template that was used to create this
    #               template.</p>
    #
    #   @return [String]
    #
    # @!attribute theme_arn
    #   <p>The ARN of the theme associated with this version of the template.</p>
    #
    #   @return [String]
    #
    # @!attribute sheets
    #   <p>A list of the associated sheets with the unique identifier and name of each sheet.</p>
    #
    #   @return [Array<Sheet>]
    #
    TemplateVersion = ::Struct.new(
      :created_time,
      :errors,
      :version_number,
      :status,
      :data_set_configurations,
      :description,
      :source_entity_arn,
      :theme_arn,
      :sheets,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The template version.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the template version.</p>
    #
    #   @return [String]
    #
    # @!attribute version_number
    #   <p>The version number of the template version.</p>
    #
    #   @return [Integer]
    #
    # @!attribute created_time
    #   <p>The time that this template version was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>The status of the template version.</p>
    #
    #   Enum, one of: ["CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the template version.</p>
    #
    #   @return [String]
    #
    TemplateVersionSummary = ::Struct.new(
      :arn,
      :version_number,
      :created_time,
      :status,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The parameters for Teradata.</p>
    #
    # @!attribute host
    #   <p>Host.</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>Port.</p>
    #
    #   @return [Integer]
    #
    # @!attribute database
    #   <p>Database.</p>
    #
    #   @return [String]
    #
    TeradataParameters = ::Struct.new(
      :host,
      :port,
      :database,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.port ||= 0
      end
    end

    # Includes enum constants for TextQualifier
    #
    module TextQualifier
      # No documentation available.
      #
      DOUBLE_QUOTE = "DOUBLE_QUOTE"

      # No documentation available.
      #
      SINGLE_QUOTE = "SINGLE_QUOTE"
    end

    # <p>Summary information about a theme.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the theme.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name that the user gives to the theme.</p>
    #
    #   @return [String]
    #
    # @!attribute theme_id
    #   <p>The identifier that the user gives to the theme.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>A version of a theme.</p>
    #
    #   @return [ThemeVersion]
    #
    # @!attribute created_time
    #   <p>The date and time that the theme was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_time
    #   <p>The date and time that the theme was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute type
    #   <p>The type of theme, based on how it was created. Valid values include:
    #               <code>QUICKSIGHT</code> and <code>CUSTOM</code>.</p>
    #
    #   Enum, one of: ["QUICKSIGHT", "CUSTOM", "ALL"]
    #
    #   @return [String]
    #
    Theme = ::Struct.new(
      :arn,
      :name,
      :theme_id,
      :version,
      :created_time,
      :last_updated_time,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An alias for a theme.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the theme alias.</p>
    #
    #   @return [String]
    #
    # @!attribute alias_name
    #   <p>The display name of the theme alias.</p>
    #
    #   @return [String]
    #
    # @!attribute theme_version_number
    #   <p>The version number of the theme alias.</p>
    #
    #   @return [Integer]
    #
    ThemeAlias = ::Struct.new(
      :arn,
      :alias_name,
      :theme_version_number,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The theme configuration. This configuration contains all of the display properties for
    #             a theme.</p>
    #
    # @!attribute data_color_palette
    #   <p>Color properties that apply to chart data colors.</p>
    #
    #   @return [DataColorPalette]
    #
    # @!attribute ui_color_palette
    #   <p>Color properties that apply to the UI and to charts, excluding the colors that apply
    #               to data. </p>
    #
    #   @return [UIColorPalette]
    #
    # @!attribute sheet
    #   <p>Display options related to sheets.</p>
    #
    #   @return [SheetStyle]
    #
    ThemeConfiguration = ::Struct.new(
      :data_color_palette,
      :ui_color_palette,
      :sheet,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Theme error.</p>
    #
    # @!attribute type
    #   <p>The type of error.</p>
    #
    #   Enum, one of: ["INTERNAL_FAILURE"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The error message.</p>
    #
    #   @return [String]
    #
    ThemeError = ::Struct.new(
      :type,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ThemeErrorType
    #
    module ThemeErrorType
      # No documentation available.
      #
      INTERNAL_FAILURE = "INTERNAL_FAILURE"
    end

    # <p>The theme summary.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>the display name for the theme.</p>
    #
    #   @return [String]
    #
    # @!attribute theme_id
    #   <p>The ID of the theme. This ID is unique per Amazon Web Services Region for each Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute latest_version_number
    #   <p>The latest version number for the theme. </p>
    #
    #   @return [Integer]
    #
    # @!attribute created_time
    #   <p>The date and time that this theme was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_time
    #   <p>The last date and time that this theme was updated.</p>
    #
    #   @return [Time]
    #
    ThemeSummary = ::Struct.new(
      :arn,
      :name,
      :theme_id,
      :latest_version_number,
      :created_time,
      :last_updated_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ThemeType
    #
    module ThemeType
      # No documentation available.
      #
      QUICKSIGHT = "QUICKSIGHT"

      # No documentation available.
      #
      CUSTOM = "CUSTOM"

      # No documentation available.
      #
      ALL = "ALL"
    end

    # <p>A version of a theme.</p>
    #
    # @!attribute version_number
    #   <p>The version number of the theme.</p>
    #
    #   @return [Integer]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the theme.</p>
    #
    #   @return [String]
    #
    # @!attribute base_theme_id
    #   <p>The Amazon QuickSight-defined ID of the theme that a custom theme inherits from. All
    #               themes initially inherit from a default Amazon QuickSight theme.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>The date and time that this theme version was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute configuration
    #   <p>The theme configuration, which contains all the theme display properties.</p>
    #
    #   @return [ThemeConfiguration]
    #
    # @!attribute errors
    #   <p>Errors associated with the theme.</p>
    #
    #   @return [Array<ThemeError>]
    #
    # @!attribute status
    #   <p>The status of the theme version.</p>
    #
    #   Enum, one of: ["CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"]
    #
    #   @return [String]
    #
    ThemeVersion = ::Struct.new(
      :version_number,
      :arn,
      :description,
      :base_theme_id,
      :created_time,
      :configuration,
      :errors,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The theme version.</p>
    #
    # @!attribute version_number
    #   <p>The version number of the theme version.</p>
    #
    #   @return [Integer]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the theme version.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the theme version.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>The date and time that this theme version was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>The status of the theme version.</p>
    #
    #   Enum, one of: ["CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"]
    #
    #   @return [String]
    #
    ThemeVersionSummary = ::Struct.new(
      :version_number,
      :arn,
      :description,
      :created_time,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Access is throttled.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this request.</p>
    #
    #   @return [String]
    #
    ThrottlingException = ::Struct.new(
      :message,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The display options for the layout of tiles on a sheet.</p>
    #
    # @!attribute gutter
    #   <p>The gutter settings that apply between tiles. </p>
    #
    #   @return [GutterStyle]
    #
    # @!attribute margin
    #   <p>The margin settings that apply around the outside edge of sheets.</p>
    #
    #   @return [MarginStyle]
    #
    TileLayoutStyle = ::Struct.new(
      :gutter,
      :margin,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Display options related to tiles on a sheet.</p>
    #
    # @!attribute border
    #   <p>The border around a tile.</p>
    #
    #   @return [BorderStyle]
    #
    TileStyle = ::Struct.new(
      :border,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A data transformation on a logical table. This is a variant type structure. For this
    #             structure to be valid, only one of the attributes can be non-null.</p>
    #
    class TransformOperation < Hearth::Union
      # <p>An operation that projects columns. Operations that come after a projection can only
      #             refer to projected columns.</p>
      #
      class ProjectOperation < TransformOperation
        def to_h
          { project_operation: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::QuickSight::Types::ProjectOperation #{__getobj__ || 'nil'}>"
        end
      end

      # <p>An operation that filters rows based on some condition.</p>
      #
      class FilterOperation < TransformOperation
        def to_h
          { filter_operation: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::QuickSight::Types::FilterOperation #{__getobj__ || 'nil'}>"
        end
      end

      # <p>An operation that creates calculated columns. Columns created in one such operation
      #             form a lexical closure.</p>
      #
      class CreateColumnsOperation < TransformOperation
        def to_h
          { create_columns_operation: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::QuickSight::Types::CreateColumnsOperation #{__getobj__ || 'nil'}>"
        end
      end

      # <p>An operation that renames a column.</p>
      #
      class RenameColumnOperation < TransformOperation
        def to_h
          { rename_column_operation: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::QuickSight::Types::RenameColumnOperation #{__getobj__ || 'nil'}>"
        end
      end

      # <p>A transform operation that casts a column to a different type.</p>
      #
      class CastColumnTypeOperation < TransformOperation
        def to_h
          { cast_column_type_operation: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::QuickSight::Types::CastColumnTypeOperation #{__getobj__ || 'nil'}>"
        end
      end

      # <p>An operation that tags a column with additional information.</p>
      #
      class TagColumnOperation < TransformOperation
        def to_h
          { tag_column_operation: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::QuickSight::Types::TagColumnOperation #{__getobj__ || 'nil'}>"
        end
      end

      # <p>A transform operation that removes tags associated with a column.</p>
      #
      class UntagColumnOperation < TransformOperation
        def to_h
          { untag_column_operation: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::QuickSight::Types::UntagColumnOperation #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < TransformOperation
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::QuickSight::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p>The parameters for Twitter.</p>
    #
    # @!attribute query
    #   <p>Twitter query string.</p>
    #
    #   @return [String]
    #
    # @!attribute max_rows
    #   <p>Maximum number of rows to query Twitter.</p>
    #
    #   @return [Integer]
    #
    TwitterParameters = ::Struct.new(
      :query,
      :max_rows,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_rows ||= 0
      end
    end

    # <p>The theme colors that apply to UI and to charts, excluding data colors. The colors
    #             description is a hexadecimal color code that consists of six alphanumerical characters,
    #             prefixed with <code>#</code>, for example #37BFF5. For more information, see <a href="https://docs.aws.amazon.com/quicksight/latest/user/themes-in-quicksight.html">Using Themes in Amazon QuickSight</a> in the <i>Amazon QuickSight User
    #                 Guide.</i>
    #         </p>
    #
    # @!attribute primary_foreground
    #   <p>The color of text and other foreground elements that appear over the primary
    #               background regions, such as grid lines, borders, table banding, icons, and so on.</p>
    #
    #   @return [String]
    #
    # @!attribute primary_background
    #   <p>The background color that applies to visuals and other high emphasis UI.</p>
    #
    #   @return [String]
    #
    # @!attribute secondary_foreground
    #   <p>The foreground color that applies to any sheet title, sheet control text, or UI that
    #               appears over the secondary background.</p>
    #
    #   @return [String]
    #
    # @!attribute secondary_background
    #   <p>The background color that applies to the sheet background and sheet controls.</p>
    #
    #   @return [String]
    #
    # @!attribute accent
    #   <p>This color is that applies to selected states and buttons.</p>
    #
    #   @return [String]
    #
    # @!attribute accent_foreground
    #   <p>The foreground color that applies to any text or other elements that appear over the
    #               accent color.</p>
    #
    #   @return [String]
    #
    # @!attribute danger
    #   <p>The color that applies to error messages.</p>
    #
    #   @return [String]
    #
    # @!attribute danger_foreground
    #   <p>The foreground color that applies to any text or other elements that appear over the
    #               error color.</p>
    #
    #   @return [String]
    #
    # @!attribute warning
    #   <p>This color that applies to warning and informational messages.</p>
    #
    #   @return [String]
    #
    # @!attribute warning_foreground
    #   <p>The foreground color that applies to any text or other elements that appear over the
    #               warning color.</p>
    #
    #   @return [String]
    #
    # @!attribute success
    #   <p>The color that applies to success messages, for example the check mark for a
    #               successful download.</p>
    #
    #   @return [String]
    #
    # @!attribute success_foreground
    #   <p>The foreground color that applies to any text or other elements that appear over the
    #               success color.</p>
    #
    #   @return [String]
    #
    # @!attribute dimension
    #   <p>The color that applies to the names of fields that are identified as
    #               dimensions.</p>
    #
    #   @return [String]
    #
    # @!attribute dimension_foreground
    #   <p>The foreground color that applies to any text or other elements that appear over the
    #               dimension color.</p>
    #
    #   @return [String]
    #
    # @!attribute measure
    #   <p>The color that applies to the names of fields that are identified as measures.</p>
    #
    #   @return [String]
    #
    # @!attribute measure_foreground
    #   <p>The foreground color that applies to any text or other elements that appear over the
    #               measure color.</p>
    #
    #   @return [String]
    #
    UIColorPalette = ::Struct.new(
      :primary_foreground,
      :primary_background,
      :secondary_foreground,
      :secondary_background,
      :accent,
      :accent_foreground,
      :danger,
      :danger_foreground,
      :warning,
      :warning_foreground,
      :success,
      :success_foreground,
      :dimension,
      :dimension_foreground,
      :measure,
      :measure_foreground,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This error indicates that you are calling an embedding operation in Amazon QuickSight
    # 			without the required pricing plan on your Amazon Web Services account. Before you can use embedding
    # 			for anonymous users, a QuickSight administrator needs to add capacity pricing to Amazon QuickSight. You
    # 		    can do this on the <b>Manage Amazon QuickSight</b> page. </p>
    #         <p>After capacity pricing is added, you can use the
    #             <code>
    #                <a href="https://docs.aws.amazon.com/quicksight/latest/APIReference/API_GetDashboardEmbedUrl.html">GetDashboardEmbedUrl</a>
    #             </code> API operation with the
    #             <code>--identity-type ANONYMOUS</code> option.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this request.</p>
    #
    #   @return [String]
    #
    UnsupportedPricingPlanException = ::Struct.new(
      :message,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This error indicates that you are calling an operation on an Amazon QuickSight
    # 			subscription where the edition doesn't include support for that operation. Amazon
    # 			Amazon QuickSight currently has Standard Edition and Enterprise Edition. Not every operation and
    # 			capability is available in every edition.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this request.</p>
    #
    #   @return [String]
    #
    UnsupportedUserEditionException = ::Struct.new(
      :message,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A transform operation that removes tags associated with a column.</p>
    #
    # @!attribute column_name
    #   <p>The column that this operation acts on.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_names
    #   <p>The column tags to remove from this column.</p>
    #
    #   @return [Array<String>]
    #
    UntagColumnOperation = ::Struct.new(
      :column_name,
      :tag_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to untag.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The keys of the key-value pairs for the resource tag or tags assigned to the resource.</p>
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

    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    UntagResourceOutput = ::Struct.new(
      :request_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID for the Amazon Web Services account that you want to update Amazon QuickSight customizations
    #               for.</p>
    #
    #   @return [String]
    #
    # @!attribute namespace
    #   <p>The namespace that you want to update Amazon QuickSight customizations for.</p>
    #
    #   @return [String]
    #
    # @!attribute account_customization
    #   <p>The Amazon QuickSight customizations you're updating in the current Amazon Web Services Region. </p>
    #
    #   @return [AccountCustomization]
    #
    UpdateAccountCustomizationInput = ::Struct.new(
      :aws_account_id,
      :namespace,
      :account_customization,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) for the updated customization for this Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_account_id
    #   <p>The ID for the Amazon Web Services account that you want to update Amazon QuickSight customizations
    #               for.</p>
    #
    #   @return [String]
    #
    # @!attribute namespace
    #   <p>The namespace associated with the customization that you're updating.</p>
    #
    #   @return [String]
    #
    # @!attribute account_customization
    #   <p>The Amazon QuickSight customizations you're updating in the current Amazon Web Services Region. </p>
    #
    #   @return [AccountCustomization]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    UpdateAccountCustomizationOutput = ::Struct.new(
      :arn,
      :aws_account_id,
      :namespace,
      :account_customization,
      :request_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID for the Amazon Web Services account that contains the Amazon QuickSight settings that you want to
    #               list.</p>
    #
    #   @return [String]
    #
    # @!attribute default_namespace
    #   <p>The default namespace for this Amazon Web Services account. Currently, the default is
    #                   <code>default</code>. Identity and Access Management (IAM) users that register
    #               for the first time with Amazon QuickSight provide an email that becomes associated with the
    #               default namespace.</p>
    #
    #   @return [String]
    #
    # @!attribute notification_email
    #   <p>The email address that you want Amazon QuickSight to send notifications to regarding your
    #               Amazon Web Services account or Amazon QuickSight subscription.</p>
    #
    #   @return [String]
    #
    UpdateAccountSettingsInput = ::Struct.new(
      :aws_account_id,
      :default_namespace,
      :notification_email,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    UpdateAccountSettingsOutput = ::Struct.new(
      :request_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the analysis that you're updating.</p>
    #
    #   @return [String]
    #
    # @!attribute analysis_id
    #   <p>The ID for the analysis that you're updating. This ID displays in the URL of the
    #               analysis.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A descriptive name for the analysis that you're updating. This name displays for the
    #               analysis in the Amazon QuickSight console.</p>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>The parameter names and override values that you want to use. An analysis can have
    #               any parameter type, and some parameters might accept multiple values. </p>
    #
    #   @return [Parameters]
    #
    # @!attribute source_entity
    #   <p>A source entity to use for the analysis that you're updating. This metadata structure
    #               contains details that describe a source template and one or more datasets.</p>
    #
    #   @return [AnalysisSourceEntity]
    #
    # @!attribute theme_arn
    #   <p>The Amazon Resource Name (ARN) for the theme to apply to the analysis that you're
    #               creating. To see the theme in the Amazon QuickSight console, make sure that you have access to
    #               it.</p>
    #
    #   @return [String]
    #
    UpdateAnalysisInput = ::Struct.new(
      :aws_account_id,
      :analysis_id,
      :name,
      :parameters,
      :source_entity,
      :theme_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the analysis that you're updating.</p>
    #
    #   @return [String]
    #
    # @!attribute analysis_id
    #   <p>The ID of the analysis.</p>
    #
    #   @return [String]
    #
    # @!attribute update_status
    #   <p>The update status of the last update that was made to the analysis.</p>
    #
    #   Enum, one of: ["CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    UpdateAnalysisOutput = ::Struct.new(
      :arn,
      :analysis_id,
      :update_status,
      :status,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the analysis whose permissions you're
    #               updating. You must be using the Amazon Web Services account that the analysis is in.</p>
    #
    #   @return [String]
    #
    # @!attribute analysis_id
    #   <p>The ID of the analysis whose permissions you're updating. The ID is part of the
    #               analysis URL.</p>
    #
    #   @return [String]
    #
    # @!attribute grant_permissions
    #   <p>A structure that describes the permissions to add and the principal to add them
    #               to.</p>
    #
    #   @return [Array<ResourcePermission>]
    #
    # @!attribute revoke_permissions
    #   <p>A structure that describes the permissions to remove and the principal to remove them
    #               from.</p>
    #
    #   @return [Array<ResourcePermission>]
    #
    UpdateAnalysisPermissionsInput = ::Struct.new(
      :aws_account_id,
      :analysis_id,
      :grant_permissions,
      :revoke_permissions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute analysis_arn
    #   <p>The Amazon Resource Name (ARN) of the analysis that you updated.</p>
    #
    #   @return [String]
    #
    # @!attribute analysis_id
    #   <p>The ID of the analysis that you updated permissions for.</p>
    #
    #   @return [String]
    #
    # @!attribute permissions
    #   <p>A structure that describes the principals and the resource-level permissions on an
    #               analysis.</p>
    #
    #   @return [Array<ResourcePermission>]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    UpdateAnalysisPermissionsOutput = ::Struct.new(
      :analysis_arn,
      :analysis_id,
      :permissions,
      :request_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the dashboard that you're
    #               updating.</p>
    #
    #   @return [String]
    #
    # @!attribute dashboard_id
    #   <p>The ID for the dashboard.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The display name of the dashboard.</p>
    #
    #   @return [String]
    #
    # @!attribute source_entity
    #   <p>The entity that you are using as a source when you update the dashboard. In
    #               <code>SourceEntity</code>, you specify the type of object you're using as source. You
    #               can only update a dashboard from a template, so you use a <code>SourceTemplate</code>
    #               entity. If you need to update a dashboard from an analysis, first convert the analysis
    #               to a template by using the <code>
    #                  <a href="https://docs.aws.amazon.com/quicksight/latest/APIReference/API_CreateTemplate.html">CreateTemplate</a>
    #               </code> API operation. For
    #               <code>SourceTemplate</code>, specify the Amazon Resource Name (ARN) of the source
    #               template. The <code>SourceTemplate</code> ARN can contain any Amazon Web Services account and any
    #               Amazon QuickSight-supported Amazon Web Services Region. </p>
    #           <p>Use the <code>DataSetReferences</code> entity within <code>SourceTemplate</code> to
    #               list the replacement datasets for the placeholders listed in the original. The schema in
    #               each dataset must match its placeholder. </p>
    #
    #   @return [DashboardSourceEntity]
    #
    # @!attribute parameters
    #   <p>A structure that contains the parameters of the dashboard. These are parameter
    #               overrides for a dashboard. A dashboard can have any type of parameters, and some
    #               parameters might accept multiple values.</p>
    #
    #   @return [Parameters]
    #
    # @!attribute version_description
    #   <p>A description for the first version of the dashboard being created.</p>
    #
    #   @return [String]
    #
    # @!attribute dashboard_publish_options
    #   <p>Options for publishing the dashboard when you create it:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>AvailabilityStatus</code> for <code>AdHocFilteringOption</code> - This
    #                       status can be either <code>ENABLED</code> or <code>DISABLED</code>. When this is
    #                       set to <code>DISABLED</code>, Amazon QuickSight disables the left filter pane on the
    #                       published dashboard, which can be used for ad hoc (one-time) filtering. This
    #                       option is <code>ENABLED</code> by default. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>AvailabilityStatus</code> for <code>ExportToCSVOption</code> - This
    #                       status can be either <code>ENABLED</code> or <code>DISABLED</code>. The visual
    #                       option to export data to .CSV format isn't enabled when this is set to
    #                       <code>DISABLED</code>. This option is <code>ENABLED</code> by default. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>VisibilityState</code> for <code>SheetControlsOption</code> - This
    #                       visibility state can be either <code>COLLAPSED</code> or <code>EXPANDED</code>.
    #                       This option is <code>COLLAPSED</code> by default. </p>
    #               </li>
    #            </ul>
    #
    #   @return [DashboardPublishOptions]
    #
    # @!attribute theme_arn
    #   <p>The Amazon Resource Name (ARN) of the theme that is being used for this dashboard. If
    #               you add a value for this field, it overrides the value that was originally associated
    #               with the entity. The theme ARN must exist in the same Amazon Web Services account where you create the
    #               dashboard.</p>
    #
    #   @return [String]
    #
    UpdateDashboardInput = ::Struct.new(
      :aws_account_id,
      :dashboard_id,
      :name,
      :source_entity,
      :parameters,
      :version_description,
      :dashboard_publish_options,
      :theme_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute version_arn
    #   <p>The ARN of the dashboard, including the version number.</p>
    #
    #   @return [String]
    #
    # @!attribute dashboard_id
    #   <p>The ID for the dashboard.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_status
    #   <p>The creation status of the request.</p>
    #
    #   Enum, one of: ["CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    UpdateDashboardOutput = ::Struct.new(
      :arn,
      :version_arn,
      :dashboard_id,
      :creation_status,
      :status,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the dashboard whose permissions you're
    #               updating.</p>
    #
    #   @return [String]
    #
    # @!attribute dashboard_id
    #   <p>The ID for the dashboard.</p>
    #
    #   @return [String]
    #
    # @!attribute grant_permissions
    #   <p>The permissions that you want to grant on this resource.</p>
    #
    #   @return [Array<ResourcePermission>]
    #
    # @!attribute revoke_permissions
    #   <p>The permissions that you want to revoke from this resource.</p>
    #
    #   @return [Array<ResourcePermission>]
    #
    # @!attribute grant_link_permissions
    #   <p>Grants link permissions to all users in a defined namespace.</p>
    #
    #   @return [Array<ResourcePermission>]
    #
    # @!attribute revoke_link_permissions
    #   <p>Revokes link permissions from all users in a defined namespace.</p>
    #
    #   @return [Array<ResourcePermission>]
    #
    UpdateDashboardPermissionsInput = ::Struct.new(
      :aws_account_id,
      :dashboard_id,
      :grant_permissions,
      :revoke_permissions,
      :grant_link_permissions,
      :revoke_link_permissions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute dashboard_arn
    #   <p>The Amazon Resource Name (ARN) of the dashboard.</p>
    #
    #   @return [String]
    #
    # @!attribute dashboard_id
    #   <p>The ID for the dashboard.</p>
    #
    #   @return [String]
    #
    # @!attribute permissions
    #   <p>Information about the permissions on the dashboard.</p>
    #
    #   @return [Array<ResourcePermission>]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute link_sharing_configuration
    #   <p>Updates the permissions of a shared link to an Amazon QuickSight dashboard.</p>
    #
    #   @return [LinkSharingConfiguration]
    #
    UpdateDashboardPermissionsOutput = ::Struct.new(
      :dashboard_arn,
      :dashboard_id,
      :permissions,
      :request_id,
      :status,
      :link_sharing_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the dashboard that you're
    #               updating.</p>
    #
    #   @return [String]
    #
    # @!attribute dashboard_id
    #   <p>The ID for the dashboard.</p>
    #
    #   @return [String]
    #
    # @!attribute version_number
    #   <p>The version number of the dashboard.</p>
    #
    #   @return [Integer]
    #
    UpdateDashboardPublishedVersionInput = ::Struct.new(
      :aws_account_id,
      :dashboard_id,
      :version_number,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute dashboard_id
    #   <p>The ID for the dashboard.</p>
    #
    #   @return [String]
    #
    # @!attribute dashboard_arn
    #   <p>The Amazon Resource Name (ARN) of the dashboard.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    UpdateDashboardPublishedVersionOutput = ::Struct.new(
      :dashboard_id,
      :dashboard_arn,
      :status,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The Amazon Web Services account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute data_set_id
    #   <p>The ID for the dataset that you want to update. This ID is unique per Amazon Web Services Region for each
    #   			Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The display name for the dataset.</p>
    #
    #   @return [String]
    #
    # @!attribute physical_table_map
    #   <p>Declares the physical tables that are available in the underlying data sources.</p>
    #
    #   @return [Hash<String, PhysicalTable>]
    #
    # @!attribute logical_table_map
    #   <p>Configures the combination and transformation of the data from the physical tables.</p>
    #
    #   @return [Hash<String, LogicalTable>]
    #
    # @!attribute import_mode
    #   <p>Indicates whether you want to import the data into SPICE.</p>
    #
    #   Enum, one of: ["SPICE", "DIRECT_QUERY"]
    #
    #   @return [String]
    #
    # @!attribute column_groups
    #   <p>Groupings of columns that work together in certain Amazon QuickSight features. Currently, only geospatial hierarchy is supported.</p>
    #
    #   @return [Array<ColumnGroup>]
    #
    # @!attribute field_folders
    #   <p>The folder that contains fields and nested subfolders for your dataset.</p>
    #
    #   @return [Hash<String, FieldFolder>]
    #
    # @!attribute row_level_permission_data_set
    #   <p>The row-level security configuration for the data you want to create.</p>
    #
    #   @return [RowLevelPermissionDataSet]
    #
    # @!attribute row_level_permission_tag_configuration
    #   <p>The configuration of tags on a dataset to set row-level security. Row-level security tags are currently supported for anonymous embedding only.</p>
    #
    #   @return [RowLevelPermissionTagConfiguration]
    #
    # @!attribute column_level_permission_rules
    #   <p>A set of one or more definitions of a <code>
    #                  <a href="https://docs.aws.amazon.com/quicksight/latest/APIReference/API_ColumnLevelPermissionRule.html">ColumnLevelPermissionRule</a>
    #               </code>.</p>
    #
    #   @return [Array<ColumnLevelPermissionRule>]
    #
    # @!attribute data_set_usage_configuration
    #   <p>The usage configuration to apply to child datasets that reference this dataset as a source.</p>
    #
    #   @return [DataSetUsageConfiguration]
    #
    UpdateDataSetInput = ::Struct.new(
      :aws_account_id,
      :data_set_id,
      :name,
      :physical_table_map,
      :logical_table_map,
      :import_mode,
      :column_groups,
      :field_folders,
      :row_level_permission_data_set,
      :row_level_permission_tag_configuration,
      :column_level_permission_rules,
      :data_set_usage_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the dataset.</p>
    #
    #   @return [String]
    #
    # @!attribute data_set_id
    #   <p>The ID for the dataset that you want to create. This ID is unique per Amazon Web Services Region for each Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute ingestion_arn
    #   <p>The ARN for the ingestion, which is triggered as a result of dataset creation if the import
    #   			mode is SPICE.</p>
    #
    #   @return [String]
    #
    # @!attribute ingestion_id
    #   <p>The ID of the ingestion, which is triggered as a result of dataset creation if the import
    #   			mode is SPICE.</p>
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    UpdateDataSetOutput = ::Struct.new(
      :arn,
      :data_set_id,
      :ingestion_arn,
      :ingestion_id,
      :request_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The Amazon Web Services account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute data_set_id
    #   <p>The ID for the dataset whose permissions you want to update. This ID is unique per
    #   			Amazon Web Services Region for each Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute grant_permissions
    #   <p>The resource permissions that you want to grant to the dataset.</p>
    #
    #   @return [Array<ResourcePermission>]
    #
    # @!attribute revoke_permissions
    #   <p>The resource permissions that you want to revoke from the dataset.</p>
    #
    #   @return [Array<ResourcePermission>]
    #
    UpdateDataSetPermissionsInput = ::Struct.new(
      :aws_account_id,
      :data_set_id,
      :grant_permissions,
      :revoke_permissions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute data_set_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset.</p>
    #
    #   @return [String]
    #
    # @!attribute data_set_id
    #   <p>The ID for the dataset whose permissions you want to update. This ID is unique per
    #   			Amazon Web Services Region for each Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    UpdateDataSetPermissionsOutput = ::Struct.new(
      :data_set_arn,
      :data_set_id,
      :request_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The Amazon Web Services account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute data_source_id
    #   <p>The ID of the data source. This ID is unique per Amazon Web Services Region for each Amazon Web Services account. </p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A display name for the data source.</p>
    #
    #   @return [String]
    #
    # @!attribute data_source_parameters
    #   <p>The parameters that Amazon QuickSight uses to connect to your underlying source.</p>
    #
    #   @return [DataSourceParameters]
    #
    # @!attribute credentials
    #   <p>The credentials that Amazon QuickSight that uses to connect to your underlying source. Currently,
    #   			only credentials based on user name and password are supported.</p>
    #
    #   @return [DataSourceCredentials]
    #
    # @!attribute vpc_connection_properties
    #   <p>Use this parameter only when you want Amazon QuickSight to use a VPC connection when connecting to
    #   			your underlying source.</p>
    #
    #   @return [VpcConnectionProperties]
    #
    # @!attribute ssl_properties
    #   <p>Secure Socket Layer (SSL) properties that apply when Amazon QuickSight connects to your underlying
    #   			source.</p>
    #
    #   @return [SslProperties]
    #
    UpdateDataSourceInput = ::Struct.new(
      :aws_account_id,
      :data_source_id,
      :name,
      :data_source_parameters,
      :credentials,
      :vpc_connection_properties,
      :ssl_properties,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::QuickSight::Types::UpdateDataSourceInput "\
          "aws_account_id=#{aws_account_id || 'nil'}, "\
          "data_source_id=#{data_source_id || 'nil'}, "\
          "name=#{name || 'nil'}, "\
          "data_source_parameters=#{data_source_parameters || 'nil'}, "\
          "credentials=\"[SENSITIVE]\", "\
          "vpc_connection_properties=#{vpc_connection_properties || 'nil'}, "\
          "ssl_properties=#{ssl_properties || 'nil'}>"
      end
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the data source.</p>
    #
    #   @return [String]
    #
    # @!attribute data_source_id
    #   <p>The ID of the data source. This ID is unique per Amazon Web Services Region for each Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute update_status
    #   <p>The update status of the data source's last update.</p>
    #
    #   Enum, one of: ["CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    UpdateDataSourceOutput = ::Struct.new(
      :arn,
      :data_source_id,
      :update_status,
      :request_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The Amazon Web Services account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute data_source_id
    #   <p>The ID of the data source. This ID is unique per Amazon Web Services Region for each Amazon Web Services account. </p>
    #
    #   @return [String]
    #
    # @!attribute grant_permissions
    #   <p>A list of resource permissions that you want to grant on the data source.</p>
    #
    #   @return [Array<ResourcePermission>]
    #
    # @!attribute revoke_permissions
    #   <p>A list of resource permissions that you want to revoke on the data source.</p>
    #
    #   @return [Array<ResourcePermission>]
    #
    UpdateDataSourcePermissionsInput = ::Struct.new(
      :aws_account_id,
      :data_source_id,
      :grant_permissions,
      :revoke_permissions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute data_source_arn
    #   <p>The Amazon Resource Name (ARN) of the data source.</p>
    #
    #   @return [String]
    #
    # @!attribute data_source_id
    #   <p>The ID of the data source. This ID is unique per Amazon Web Services Region for each Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    UpdateDataSourcePermissionsOutput = ::Struct.new(
      :data_source_arn,
      :data_source_id,
      :request_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID for the Amazon Web Services account that contains the folder to update.</p>
    #
    #   @return [String]
    #
    # @!attribute folder_id
    #   <p>The ID of the folder.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the folder.</p>
    #
    #   @return [String]
    #
    UpdateFolderInput = ::Struct.new(
      :aws_account_id,
      :folder_id,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the folder.</p>
    #
    #   @return [String]
    #
    # @!attribute folder_id
    #   <p>The ID of the folder.</p>
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    UpdateFolderOutput = ::Struct.new(
      :status,
      :arn,
      :folder_id,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID for the Amazon Web Services account that contains the folder to update.</p>
    #
    #   @return [String]
    #
    # @!attribute folder_id
    #   <p>The ID of the folder.</p>
    #
    #   @return [String]
    #
    # @!attribute grant_permissions
    #   <p>The permissions that you want to grant on a resource.</p>
    #
    #   @return [Array<ResourcePermission>]
    #
    # @!attribute revoke_permissions
    #   <p>The permissions that you want to revoke from a resource.</p>
    #
    #   @return [Array<ResourcePermission>]
    #
    UpdateFolderPermissionsInput = ::Struct.new(
      :aws_account_id,
      :folder_id,
      :grant_permissions,
      :revoke_permissions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the folder.</p>
    #
    #   @return [String]
    #
    # @!attribute folder_id
    #   <p>The ID of the folder.</p>
    #
    #   @return [String]
    #
    # @!attribute permissions
    #   <p>Information about the permissions for the folder.</p>
    #
    #   @return [Array<ResourcePermission>]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    UpdateFolderPermissionsOutput = ::Struct.new(
      :status,
      :arn,
      :folder_id,
      :permissions,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute group_name
    #   <p>The name of the group that you want to update.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description for the group that you want to update.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_account_id
    #   <p>The ID for the Amazon Web Services account that the group is in. Currently, you use the ID for the
    #   			Amazon Web Services account that contains your Amazon QuickSight account.</p>
    #
    #   @return [String]
    #
    # @!attribute namespace
    #   <p>The namespace of the group that you want to update.</p>
    #
    #   @return [String]
    #
    UpdateGroupInput = ::Struct.new(
      :group_name,
      :description,
      :aws_account_id,
      :namespace,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute group
    #   <p>The name of the group.</p>
    #
    #   @return [Group]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    UpdateGroupOutput = ::Struct.new(
      :group,
      :request_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the IAM policy assignment. </p>
    #
    #   @return [String]
    #
    # @!attribute assignment_name
    #   <p>The name of the assignment, also called a rule. This name must be unique within an Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute namespace
    #   <p>The namespace of the assignment.</p>
    #
    #   @return [String]
    #
    # @!attribute assignment_status
    #   <p>The status of the assignment. Possible values are as follows:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <code>ENABLED</code> - Anything specified in this assignment is used when creating the data
    #   				source.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLED</code> - This assignment isn't used when creating the data source.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DRAFT</code> - This assignment is an unfinished draft and isn't used when creating the
    #   				data source.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ENABLED", "DRAFT", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute policy_arn
    #   <p>The ARN for the IAM policy to apply to the Amazon QuickSight users and groups
    #   			specified in this assignment.</p>
    #
    #   @return [String]
    #
    # @!attribute identities
    #   <p>The Amazon QuickSight users, groups, or both that you want to assign the policy to.</p>
    #
    #   @return [Hash<String, Array<String>>]
    #
    UpdateIAMPolicyAssignmentInput = ::Struct.new(
      :aws_account_id,
      :assignment_name,
      :namespace,
      :assignment_status,
      :policy_arn,
      :identities,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute assignment_name
    #   <p>The name of the assignment or rule.</p>
    #
    #   @return [String]
    #
    # @!attribute assignment_id
    #   <p>The ID of the assignment.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_arn
    #   <p>The ARN for the IAM policy applied to the Amazon QuickSight users and groups specified in this
    #   			assignment.</p>
    #
    #   @return [String]
    #
    # @!attribute identities
    #   <p>The Amazon QuickSight users, groups, or both that the IAM policy is assigned to.</p>
    #
    #   @return [Hash<String, Array<String>>]
    #
    # @!attribute assignment_status
    #   <p>The status of the assignment. Possible values are as follows:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <code>ENABLED</code> - Anything specified in this assignment is used when creating the data
    #   				source.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLED</code> - This assignment isn't used when creating the data source.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DRAFT</code> - This assignment is an unfinished draft and isn't used when creating the
    #   				data source.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ENABLED", "DRAFT", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    UpdateIAMPolicyAssignmentOutput = ::Struct.new(
      :assignment_name,
      :assignment_id,
      :policy_arn,
      :identities,
      :assignment_status,
      :request_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the IP rules.</p>
    #
    #   @return [String]
    #
    # @!attribute ip_restriction_rule_map
    #   <p>A map that describes the updated IP rules with CIDR ranges and descriptions.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute enabled
    #   <p>A value that specifies whether IP rules are turned on.</p>
    #
    #   @return [Boolean]
    #
    UpdateIpRestrictionInput = ::Struct.new(
      :aws_account_id,
      :ip_restriction_rule_map,
      :enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the IP rules.</p>
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request. </p>
    #
    #   @return [Integer]
    #
    UpdateIpRestrictionOutput = ::Struct.new(
      :aws_account_id,
      :request_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The Amazon Web Services account ID associated with your Amazon QuickSight subscription.</p>
    #
    #   @return [String]
    #
    # @!attribute public_sharing_enabled
    #   <p>A boolean that indicates whether or not public sharing is enabled on a Amazon QuickSight account.</p>
    #
    #   @return [Boolean]
    #
    UpdatePublicSharingSettingsInput = ::Struct.new(
      :aws_account_id,
      :public_sharing_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.public_sharing_enabled ||= false
      end
    end

    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    UpdatePublicSharingSettingsOutput = ::Struct.new(
      :request_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the template alias that you're updating.</p>
    #
    #   @return [String]
    #
    # @!attribute template_id
    #   <p>The ID for the template.</p>
    #
    #   @return [String]
    #
    # @!attribute alias_name
    #   <p>The alias of the template that you want to update. If you name a specific alias, you update
    #   			the version that the alias points to. You can specify the latest version of the template
    #   			by providing the keyword <code>$LATEST</code> in the <code>AliasName</code> parameter.
    #   			The keyword <code>$PUBLISHED</code> doesn't apply to templates.</p>
    #
    #   @return [String]
    #
    # @!attribute template_version_number
    #   <p>The version number of the template.</p>
    #
    #   @return [Integer]
    #
    UpdateTemplateAliasInput = ::Struct.new(
      :aws_account_id,
      :template_id,
      :alias_name,
      :template_version_number,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute template_alias
    #   <p>The template alias.</p>
    #
    #   @return [TemplateAlias]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    UpdateTemplateAliasOutput = ::Struct.new(
      :template_alias,
      :status,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the template that you're updating.</p>
    #
    #   @return [String]
    #
    # @!attribute template_id
    #   <p>The ID for the template.</p>
    #
    #   @return [String]
    #
    # @!attribute source_entity
    #   <p>The entity that you are using as a source when you update the template. In
    #   			<code>SourceEntity</code>, you specify the type of object you're using as source:
    #   			<code>SourceTemplate</code> for a template or <code>SourceAnalysis</code> for an
    #   			analysis. Both of these require an Amazon Resource Name (ARN). For
    #   			<code>SourceTemplate</code>, specify the ARN of the source template. For
    #   			<code>SourceAnalysis</code>, specify the ARN of the source analysis. The <code>SourceTemplate</code>
    #   			ARN can contain any Amazon Web Services account and any Amazon QuickSight-supported Amazon Web Services Region;. </p>
    #   		       <p>Use the <code>DataSetReferences</code> entity within <code>SourceTemplate</code> or
    #   			<code>SourceAnalysis</code> to list the replacement datasets for the placeholders listed
    #   			in the original. The schema in each dataset must match its placeholder. </p>
    #
    #   @return [TemplateSourceEntity]
    #
    # @!attribute version_description
    #   <p>A description of the current template version that is being updated. Every time you call
    #   				<code>UpdateTemplate</code>, you create a new version of the template. Each version
    #   			of the template maintains a description of the version in the
    #   				<code>VersionDescription</code> field.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name for the template.</p>
    #
    #   @return [String]
    #
    UpdateTemplateInput = ::Struct.new(
      :aws_account_id,
      :template_id,
      :source_entity,
      :version_description,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute template_id
    #   <p>The ID for the template.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) for the template.</p>
    #
    #   @return [String]
    #
    # @!attribute version_arn
    #   <p>The ARN for the template, including the version information of the first version.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_status
    #   <p>The creation status of the template.</p>
    #
    #   Enum, one of: ["CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    UpdateTemplateOutput = ::Struct.new(
      :template_id,
      :arn,
      :version_arn,
      :creation_status,
      :status,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the template.</p>
    #
    #   @return [String]
    #
    # @!attribute template_id
    #   <p>The ID for the template.</p>
    #
    #   @return [String]
    #
    # @!attribute grant_permissions
    #   <p>A list of resource permissions to be granted on the template. </p>
    #
    #   @return [Array<ResourcePermission>]
    #
    # @!attribute revoke_permissions
    #   <p>A list of resource permissions to be revoked from the template. </p>
    #
    #   @return [Array<ResourcePermission>]
    #
    UpdateTemplatePermissionsInput = ::Struct.new(
      :aws_account_id,
      :template_id,
      :grant_permissions,
      :revoke_permissions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute template_id
    #   <p>The ID for the template.</p>
    #
    #   @return [String]
    #
    # @!attribute template_arn
    #   <p>The Amazon Resource Name (ARN) of the template.</p>
    #
    #   @return [String]
    #
    # @!attribute permissions
    #   <p>A list of resource permissions to be set on the template.</p>
    #
    #   @return [Array<ResourcePermission>]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    UpdateTemplatePermissionsOutput = ::Struct.new(
      :template_id,
      :template_arn,
      :permissions,
      :request_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the theme alias that you're updating.</p>
    #
    #   @return [String]
    #
    # @!attribute theme_id
    #   <p>The ID for the theme.</p>
    #
    #   @return [String]
    #
    # @!attribute alias_name
    #   <p>The name of the theme alias that you want to update.</p>
    #
    #   @return [String]
    #
    # @!attribute theme_version_number
    #   <p>The version number of the theme that the alias should reference.</p>
    #
    #   @return [Integer]
    #
    UpdateThemeAliasInput = ::Struct.new(
      :aws_account_id,
      :theme_id,
      :alias_name,
      :theme_version_number,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute theme_alias
    #   <p>Information about the theme alias.</p>
    #
    #   @return [ThemeAlias]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    UpdateThemeAliasOutput = ::Struct.new(
      :theme_alias,
      :status,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the theme that you're updating.</p>
    #
    #   @return [String]
    #
    # @!attribute theme_id
    #   <p>The ID for the theme.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name for the theme.</p>
    #
    #   @return [String]
    #
    # @!attribute base_theme_id
    #   <p>The theme ID, defined by Amazon QuickSight, that a custom theme inherits from.
    #   		All themes initially inherit from a default Amazon QuickSight theme.</p>
    #
    #   @return [String]
    #
    # @!attribute version_description
    #   <p>A description of the theme version that you're updating Every time that you call
    #   				<code>UpdateTheme</code>, you create a new version of the theme. Each version of the
    #   			theme maintains a description of the version in <code>VersionDescription</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration
    #   <p>The theme configuration, which contains the theme display properties.</p>
    #
    #   @return [ThemeConfiguration]
    #
    UpdateThemeInput = ::Struct.new(
      :aws_account_id,
      :theme_id,
      :name,
      :base_theme_id,
      :version_description,
      :configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute theme_id
    #   <p>The ID for the theme.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) for the theme.</p>
    #
    #   @return [String]
    #
    # @!attribute version_arn
    #   <p>The Amazon Resource Name (ARN) for the new version of the theme.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_status
    #   <p>The creation status of the theme.</p>
    #
    #   Enum, one of: ["CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    UpdateThemeOutput = ::Struct.new(
      :theme_id,
      :arn,
      :version_arn,
      :creation_status,
      :status,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the theme.</p>
    #
    #   @return [String]
    #
    # @!attribute theme_id
    #   <p>The ID for the theme.</p>
    #
    #   @return [String]
    #
    # @!attribute grant_permissions
    #   <p>A list of resource permissions to be granted for the theme.</p>
    #
    #   @return [Array<ResourcePermission>]
    #
    # @!attribute revoke_permissions
    #   <p>A list of resource permissions to be revoked from the theme.</p>
    #
    #   @return [Array<ResourcePermission>]
    #
    UpdateThemePermissionsInput = ::Struct.new(
      :aws_account_id,
      :theme_id,
      :grant_permissions,
      :revoke_permissions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute theme_id
    #   <p>The ID for the theme.</p>
    #
    #   @return [String]
    #
    # @!attribute theme_arn
    #   <p>The Amazon Resource Name (ARN) of the theme.</p>
    #
    #   @return [String]
    #
    # @!attribute permissions
    #   <p>The resulting list of resource permissions for the theme.</p>
    #
    #   @return [Array<ResourcePermission>]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    UpdateThemePermissionsOutput = ::Struct.new(
      :theme_id,
      :theme_arn,
      :permissions,
      :request_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # @!attribute user_name
    #   <p>The Amazon QuickSight user name that you want to update.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_account_id
    #   <p>The ID for the Amazon Web Services account that the user is in. Currently, you use the ID for the
    #   			Amazon Web Services account that contains your Amazon QuickSight account.</p>
    #
    #   @return [String]
    #
    # @!attribute namespace
    #   <p>The namespace. Currently, you should set this to <code>default</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute email
    #   <p>The email address of the user that you want to update.</p>
    #
    #   @return [String]
    #
    # @!attribute role
    #   <p>The Amazon QuickSight role of the user. The role can be one of the
    #   			following default security cohorts:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>
    #                     <code>READER</code>: A user who has read-only access to dashboards.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>AUTHOR</code>: A user who can create data sources, datasets, analyses, and
    #   					dashboards.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>ADMIN</code>: A user who is an author, who can also manage Amazon QuickSight
    #   					settings.</p>
    #   			         </li>
    #            </ul>
    #   	        <p>The name of the Amazon QuickSight role is invisible to the user except for the console
    #   	        screens dealing with permissions.</p>
    #
    #   Enum, one of: ["ADMIN", "AUTHOR", "READER", "RESTRICTED_AUTHOR", "RESTRICTED_READER"]
    #
    #   @return [String]
    #
    # @!attribute custom_permissions_name
    #   <p>(Enterprise edition only) The name of the custom permissions profile that you want to
    #               assign to this user. Customized permissions allows you to control a user's access by
    #               restricting access the following operations:</p>
    #           <ul>
    #               <li>
    #                   <p>Create and update data sources</p>
    #               </li>
    #               <li>
    #                   <p>Create and update datasets</p>
    #               </li>
    #               <li>
    #                   <p>Create and update email reports</p>
    #               </li>
    #               <li>
    #                   <p>Subscribe to email reports</p>
    #               </li>
    #            </ul>
    #           <p>A set of custom permissions includes any combination of these restrictions. Currently,
    #               you need to create the profile names for custom permission sets by using the Amazon QuickSight
    #               console. Then, you use the <code>RegisterUser</code> API operation to assign the named set of
    #               permissions to a Amazon QuickSight user. </p>
    #           <p>Amazon QuickSight custom permissions are applied through IAM policies. Therefore, they
    #               override the permissions typically granted by assigning Amazon QuickSight users to one of the
    #               default security cohorts in Amazon QuickSight (admin, author, reader).</p>
    #           <p>This feature is available only to Amazon QuickSight Enterprise edition subscriptions.</p>
    #
    #   @return [String]
    #
    # @!attribute unapply_custom_permissions
    #   <p>A flag that you use to indicate that you want to remove all custom permissions
    #               from this user. Using this parameter resets the user to the state
    #               it was in before a custom permissions profile was applied. This parameter defaults to
    #               NULL and it doesn't accept any other value.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute external_login_federation_provider_type
    #   <p>The type of supported external login provider that provides identity to let a user federate into Amazon QuickSight with an associated Identity and Access Management(IAM) role. The type of supported external login provider can be one of the following.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>COGNITO</code>: Amazon Cognito. The provider URL is cognito-identity.amazonaws.com. When choosing the <code>COGNITO</code> provider type, don’t use the "CustomFederationProviderUrl" parameter which is only needed when the external provider is custom.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CUSTOM_OIDC</code>: Custom OpenID Connect (OIDC) provider. When choosing <code>CUSTOM_OIDC</code> type, use the <code>CustomFederationProviderUrl</code> parameter to provide the custom OIDC provider URL.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NONE</code>: This clears all the previously saved external login information for a user. Use the
    #             <code>
    #                        <a href="https://docs.aws.amazon.com/quicksight/latest/APIReference/API_DescribeUser.html">DescribeUser</a>
    #                     </code>
    #             API operation to check the external login information.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute custom_federation_provider_url
    #   <p>The URL of the custom OpenID Connect (OIDC) provider that provides identity to let a user federate
    #            into Amazon QuickSight with an associated Identity and Access Management(IAM) role. This parameter should
    #            only be used when <code>ExternalLoginFederationProviderType</code> parameter is set to <code>CUSTOM_OIDC</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute external_login_id
    #   <p>The identity ID for a user in the external login provider.</p>
    #
    #   @return [String]
    #
    UpdateUserInput = ::Struct.new(
      :user_name,
      :aws_account_id,
      :namespace,
      :email,
      :role,
      :custom_permissions_name,
      :unapply_custom_permissions,
      :external_login_federation_provider_type,
      :custom_federation_provider_url,
      :external_login_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.unapply_custom_permissions ||= false
      end
    end

    # @!attribute user
    #   <p>The Amazon QuickSight user.</p>
    #
    #   @return [User]
    #
    # @!attribute request_id
    #   <p>The Amazon Web Services request ID for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The HTTP status of the request.</p>
    #
    #   @return [Integer]
    #
    UpdateUserOutput = ::Struct.new(
      :user,
      :request_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status ||= 0
      end
    end

    # <p>Information about the format for a source file or files.</p>
    #
    # @!attribute format
    #   <p>File format.</p>
    #
    #   Enum, one of: ["CSV", "TSV", "CLF", "ELF", "XLSX", "JSON"]
    #
    #   @return [String]
    #
    # @!attribute start_from_row
    #   <p>A row number to start reading data from.</p>
    #
    #   @return [Integer]
    #
    # @!attribute contains_header
    #   <p>Whether the file has a header row, or the files each have a header row.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute text_qualifier
    #   <p>Text qualifier.</p>
    #
    #   Enum, one of: ["DOUBLE_QUOTE", "SINGLE_QUOTE"]
    #
    #   @return [String]
    #
    # @!attribute delimiter
    #   <p>The delimiter between values in the file.</p>
    #
    #   @return [String]
    #
    UploadSettings = ::Struct.new(
      :format,
      :start_from_row,
      :contains_header,
      :text_qualifier,
      :delimiter,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A registered user of Amazon QuickSight. </p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) for the user.</p>
    #
    #   @return [String]
    #
    # @!attribute user_name
    #   <p>The user's user name. In the output, the value for <code>UserName</code> is
    #                   <code>N/A</code> when the value for <code>IdentityType</code> is <code>IAM</code>
    #               and the corresponding IAM user is deleted.</p>
    #
    #   @return [String]
    #
    # @!attribute email
    #   <p>The user's email address.</p>
    #
    #   @return [String]
    #
    # @!attribute role
    #   <p>The Amazon QuickSight role for the user. The user role can be one of the
    #               following:.</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>READER</code>: A user who has read-only access to dashboards.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>AUTHOR</code>: A user who can create data sources, datasets, analyses,
    #                       and dashboards.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>ADMIN</code>: A user who is an author, who can also manage Amazon
    #                       Amazon QuickSight settings.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>RESTRICTED_READER</code>: This role isn't currently available for
    #                       use.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>RESTRICTED_AUTHOR</code>: This role isn't currently available for
    #                       use.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ADMIN", "AUTHOR", "READER", "RESTRICTED_AUTHOR", "RESTRICTED_READER"]
    #
    #   @return [String]
    #
    # @!attribute identity_type
    #   <p>The type of identity authentication used by the user.</p>
    #
    #   Enum, one of: ["IAM", "QUICKSIGHT"]
    #
    #   @return [String]
    #
    # @!attribute active
    #   <p>The active status of user. When you create an Amazon QuickSight user that’s not an IAM
    #               user or an Active Directory user, that user is inactive until they sign in and provide a
    #               password.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute principal_id
    #   <p>The principal ID of the user.</p>
    #
    #   @return [String]
    #
    # @!attribute custom_permissions_name
    #   <p>The custom permissions profile associated with this user.</p>
    #
    #   @return [String]
    #
    # @!attribute external_login_federation_provider_type
    #   <p>The type of supported external login provider that provides identity to let the user
    #               federate into Amazon QuickSight with an associated IAM role. The type can be one of the following.</p>
    #           <ul>
    #               <li>
    #                       <p>
    #                     <code>COGNITO</code>: Amazon Cognito. The provider URL is cognito-identity.amazonaws.com.</p>
    #                   </li>
    #               <li>
    #                       <p>
    #                     <code>CUSTOM_OIDC</code>: Custom OpenID Connect (OIDC) provider.</p>
    #                   </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute external_login_federation_provider_url
    #   <p>The URL of the external login provider.</p>
    #
    #   @return [String]
    #
    # @!attribute external_login_id
    #   <p>The identity ID for the user in the external login provider.</p>
    #
    #   @return [String]
    #
    User = ::Struct.new(
      :arn,
      :user_name,
      :email,
      :role,
      :identity_type,
      :active,
      :principal_id,
      :custom_permissions_name,
      :external_login_federation_provider_type,
      :external_login_federation_provider_url,
      :external_login_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.active ||= false
      end
    end

    # Includes enum constants for UserRole
    #
    module UserRole
      # No documentation available.
      #
      ADMIN = "ADMIN"

      # No documentation available.
      #
      AUTHOR = "AUTHOR"

      # No documentation available.
      #
      READER = "READER"

      # No documentation available.
      #
      RESTRICTED_AUTHOR = "RESTRICTED_AUTHOR"

      # No documentation available.
      #
      RESTRICTED_READER = "RESTRICTED_READER"
    end

    # <p>VPC connection properties.</p>
    #
    # @!attribute vpc_connection_arn
    #   <p>The Amazon Resource Name (ARN) for the VPC connection.</p>
    #
    #   @return [String]
    #
    VpcConnectionProperties = ::Struct.new(
      :vpc_connection_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
