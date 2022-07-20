# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::DataBrew
  module Types

    # <p>Access to the specified resource was denied.</p>
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

    # <p>Configuration of statistics that are allowed to be run on columns that
    #             contain detected entities. When undefined, no statistics will be computed
    #             on columns that contain detected entities.</p>
    #
    # @!attribute statistics
    #   <p>One or more column statistics to allow for columns that contain detected entities.</p>
    #
    #   @return [Array<String>]
    #
    AllowedStatistics = ::Struct.new(
      :statistics,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AnalyticsMode
    #
    module AnalyticsMode
      # No documentation available.
      #
      ENABLE = "ENABLE"

      # No documentation available.
      #
      DISABLE = "DISABLE"
    end

    # @!attribute name
    #   <p>The name of the recipe whose versions are to be deleted.</p>
    #
    #   @return [String]
    #
    # @!attribute recipe_versions
    #   <p>An array of version identifiers, for the recipe versions to be deleted. You can
    #               specify numeric versions (<code>X.Y</code>) or <code>LATEST_WORKING</code>.
    #                   <code>LATEST_PUBLISHED</code> is not supported.</p>
    #
    #   @return [Array<String>]
    #
    BatchDeleteRecipeVersionInput = ::Struct.new(
      :name,
      :recipe_versions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the recipe that was modified.</p>
    #
    #   @return [String]
    #
    # @!attribute errors
    #   <p>Errors, if any, that occurred while attempting to delete the recipe versions.</p>
    #
    #   @return [Array<RecipeVersionErrorDetail>]
    #
    BatchDeleteRecipeVersionOutput = ::Struct.new(
      :name,
      :errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Selector of a column from a dataset for profile job configuration.
    #             One selector includes either a column name or a regular expression.</p>
    #
    # @!attribute regex
    #   <p>A regular expression for selecting a column from a dataset.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of a column from a dataset.</p>
    #
    #   @return [String]
    #
    ColumnSelector = ::Struct.new(
      :regex,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Configuration for column evaluations for a profile job. ColumnStatisticsConfiguration can be used to select
    #             evaluations and override parameters of evaluations for particular columns.
    #         </p>
    #
    # @!attribute selectors
    #   <p>List of column selectors. Selectors can be used to select columns from the dataset.
    #               When selectors are undefined, configuration will be applied to all supported columns.
    #           </p>
    #
    #   @return [Array<ColumnSelector>]
    #
    # @!attribute statistics
    #   <p>Configuration for evaluations. Statistics can be used to select evaluations and override
    #               parameters of evaluations.
    #           </p>
    #
    #   @return [StatisticsConfiguration]
    #
    ColumnStatisticsConfiguration = ::Struct.new(
      :selectors,
      :statistics,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CompressionFormat
    #
    module CompressionFormat
      # No documentation available.
      #
      GZIP = "GZIP"

      # No documentation available.
      #
      LZ4 = "LZ4"

      # No documentation available.
      #
      SNAPPY = "SNAPPY"

      # No documentation available.
      #
      BZIP2 = "BZIP2"

      # No documentation available.
      #
      DEFLATE = "DEFLATE"

      # No documentation available.
      #
      LZO = "LZO"

      # No documentation available.
      #
      BROTLI = "BROTLI"

      # No documentation available.
      #
      ZSTD = "ZSTD"

      # No documentation available.
      #
      ZLIB = "ZLIB"
    end

    # <p>Represents an individual condition that evaluates to true or false.</p>
    #         <p>Conditions are used with recipe actions. The action is only performed for column values where the
    #             condition evaluates to true.</p>
    #         <p>If a recipe requires more than one condition, then the recipe must specify multiple
    #             <code>ConditionExpression</code> elements. Each condition is applied to the rows in a dataset first, before
    #             the recipe action is performed.</p>
    #
    # @!attribute condition
    #   <p>A specific condition to apply to a recipe action. For more information, see <a href="https://docs.aws.amazon.com/databrew/latest/dg/recipes.html recipes.structure">Recipe
    #               structure</a> in the <i>Glue DataBrew Developer
    #               Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>A value that the condition must evaluate to for the condition to succeed.</p>
    #
    #   @return [String]
    #
    # @!attribute target_column
    #   <p>A column to apply this condition to.</p>
    #
    #   @return [String]
    #
    ConditionExpression = ::Struct.new(
      :condition,
      :value,
      :target_column,
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
    ConflictException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the dataset to be created. Valid characters are alphanumeric (A-Z, a-z,
    #               0-9), hyphen (-), period (.), and space.</p>
    #
    #   @return [String]
    #
    # @!attribute format
    #   <p>The file format of a dataset that is created from an Amazon S3 file or folder.</p>
    #
    #   Enum, one of: ["CSV", "JSON", "PARQUET", "EXCEL", "ORC"]
    #
    #   @return [String]
    #
    # @!attribute format_options
    #   <p>Represents a set of options that define the structure of either comma-separated value (CSV),
    #               Excel, or JSON input.</p>
    #
    #   @return [FormatOptions]
    #
    # @!attribute input
    #   <p>Represents information on how DataBrew can find data, in either the Glue Data Catalog or
    #               Amazon S3.</p>
    #
    #   @return [Input]
    #
    # @!attribute path_options
    #   <p>A set of options that defines how DataBrew interprets an Amazon S3 path of the dataset.</p>
    #
    #   @return [PathOptions]
    #
    # @!attribute tags
    #   <p>Metadata tags to apply to this dataset.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateDatasetInput = ::Struct.new(
      :name,
      :format,
      :format_options,
      :input,
      :path_options,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the dataset that you created.</p>
    #
    #   @return [String]
    #
    CreateDatasetOutput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute dataset_name
    #   <p>The name of the dataset that this job is to act upon.</p>
    #
    #   @return [String]
    #
    # @!attribute encryption_key_arn
    #   <p>The Amazon Resource Name (ARN) of an encryption key that is used to protect the
    #               job.</p>
    #
    #   @return [String]
    #
    # @!attribute encryption_mode
    #   <p>The encryption mode for the job, which can be one of the following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>SSE-KMS</code> - <code>SSE-KMS</code> - Server-side encryption with
    #                       KMS-managed keys.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>SSE-S3</code> - Server-side encryption with keys managed by Amazon S3.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["SSE-KMS", "SSE-S3"]
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the job to be created. Valid characters are alphanumeric (A-Z, a-z, 0-9),
    #               hyphen (-), period (.), and space.</p>
    #
    #   @return [String]
    #
    # @!attribute log_subscription
    #   <p>Enables or disables Amazon CloudWatch logging for the job. If logging is enabled,
    #               CloudWatch writes one log stream for each job run.</p>
    #
    #   Enum, one of: ["ENABLE", "DISABLE"]
    #
    #   @return [String]
    #
    # @!attribute max_capacity
    #   <p>The maximum number of nodes that DataBrew can use when the job processes data.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_retries
    #   <p>The maximum number of times to retry the job after a job run fails.</p>
    #
    #   @return [Integer]
    #
    # @!attribute output_location
    #   <p>Represents an Amazon S3 location (bucket name, bucket owner, and object key) where DataBrew can read
    #               input data, or write output from a job.</p>
    #
    #   @return [S3Location]
    #
    # @!attribute configuration
    #   <p>Configuration for profile jobs. Used to select columns, do evaluations,
    #               and override default parameters of evaluations. When configuration is null, the
    #               profile job will run with default settings.</p>
    #
    #   @return [ProfileConfiguration]
    #
    # @!attribute validation_configurations
    #   <p>List of validation configurations that are applied to the profile job.</p>
    #
    #   @return [Array<ValidationConfiguration>]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role to
    #               be assumed when DataBrew runs the job.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Metadata tags to apply to this job.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute timeout
    #   <p>The job's timeout in minutes. A job that attempts to run longer than this timeout
    #               period ends with a status of <code>TIMEOUT</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute job_sample
    #   <p>Sample configuration for profile jobs only. Determines the number of rows on which the
    #               profile job will be executed. If a JobSample value is not provided, the default value
    #               will be used. The default value is CUSTOM_ROWS for the mode parameter and 20000 for the
    #               size parameter.</p>
    #
    #   @return [JobSample]
    #
    CreateProfileJobInput = ::Struct.new(
      :dataset_name,
      :encryption_key_arn,
      :encryption_mode,
      :name,
      :log_subscription,
      :max_capacity,
      :max_retries,
      :output_location,
      :configuration,
      :validation_configurations,
      :role_arn,
      :tags,
      :timeout,
      :job_sample,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_capacity ||= 0
        self.max_retries ||= 0
        self.timeout ||= 0
      end
    end

    # @!attribute name
    #   <p>The name of the job that was created.</p>
    #
    #   @return [String]
    #
    CreateProfileJobOutput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute dataset_name
    #   <p>The name of an existing dataset to associate this project with.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A unique name for the new project. Valid characters are alphanumeric (A-Z, a-z, 0-9),
    #               hyphen (-), period (.), and space.</p>
    #
    #   @return [String]
    #
    # @!attribute recipe_name
    #   <p>The name of an existing recipe to associate with the project.</p>
    #
    #   @return [String]
    #
    # @!attribute sample
    #   <p>Represents the sample size and sampling type for DataBrew to use for interactive data
    #               analysis.</p>
    #
    #   @return [Sample]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role to
    #               be assumed for this request.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Metadata tags to apply to this project.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateProjectInput = ::Struct.new(
      :dataset_name,
      :name,
      :recipe_name,
      :sample,
      :role_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the project that you created.</p>
    #
    #   @return [String]
    #
    CreateProjectOutput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute description
    #   <p>A description for the recipe.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A unique name for the recipe. Valid characters are alphanumeric (A-Z, a-z, 0-9),
    #               hyphen (-), period (.), and space.</p>
    #
    #   @return [String]
    #
    # @!attribute steps
    #   <p>An array containing the steps to be performed by the recipe. Each recipe step consists
    #               of one recipe action and (optionally) an array of condition expressions.</p>
    #
    #   @return [Array<RecipeStep>]
    #
    # @!attribute tags
    #   <p>Metadata tags to apply to this recipe.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateRecipeInput = ::Struct.new(
      :description,
      :name,
      :steps,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute dataset_name
    #   <p>The name of the dataset that this job processes.</p>
    #
    #   @return [String]
    #
    # @!attribute encryption_key_arn
    #   <p>The Amazon Resource Name (ARN) of an encryption key that is used to protect the
    #               job.</p>
    #
    #   @return [String]
    #
    # @!attribute encryption_mode
    #   <p>The encryption mode for the job, which can be one of the following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>SSE-KMS</code> - Server-side encryption with keys managed by KMS.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>SSE-S3</code> - Server-side encryption with keys managed by Amazon S3.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["SSE-KMS", "SSE-S3"]
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A unique name for the job. Valid characters are alphanumeric (A-Z, a-z, 0-9), hyphen
    #               (-), period (.), and space.</p>
    #
    #   @return [String]
    #
    # @!attribute log_subscription
    #   <p>Enables or disables Amazon CloudWatch logging for the job. If logging is enabled,
    #               CloudWatch writes one log stream for each job run.</p>
    #
    #   Enum, one of: ["ENABLE", "DISABLE"]
    #
    #   @return [String]
    #
    # @!attribute max_capacity
    #   <p>The maximum number of nodes that DataBrew can consume when the job processes
    #               data.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_retries
    #   <p>The maximum number of times to retry the job after a job run fails.</p>
    #
    #   @return [Integer]
    #
    # @!attribute outputs
    #   <p>One or more artifacts that represent the output from running the job.</p>
    #
    #   @return [Array<Output>]
    #
    # @!attribute data_catalog_outputs
    #   <p>One or more artifacts that represent the Glue Data Catalog output from running the job.</p>
    #
    #   @return [Array<DataCatalogOutput>]
    #
    # @!attribute database_outputs
    #   <p>Represents a list of JDBC database output objects which defines the output destination for
    #               a DataBrew recipe job to write to. </p>
    #
    #   @return [Array<DatabaseOutput>]
    #
    # @!attribute project_name
    #   <p>Either the name of an existing project, or a combination of a recipe and a dataset to
    #               associate with the recipe.</p>
    #
    #   @return [String]
    #
    # @!attribute recipe_reference
    #   <p>Represents the name and version of a DataBrew recipe.</p>
    #
    #   @return [RecipeReference]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role to
    #               be assumed when DataBrew runs the job.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Metadata tags to apply to this job.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute timeout
    #   <p>The job's timeout in minutes. A job that attempts to run longer than this timeout
    #               period ends with a status of <code>TIMEOUT</code>.</p>
    #
    #   @return [Integer]
    #
    CreateRecipeJobInput = ::Struct.new(
      :dataset_name,
      :encryption_key_arn,
      :encryption_mode,
      :name,
      :log_subscription,
      :max_capacity,
      :max_retries,
      :outputs,
      :data_catalog_outputs,
      :database_outputs,
      :project_name,
      :recipe_reference,
      :role_arn,
      :tags,
      :timeout,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_capacity ||= 0
        self.max_retries ||= 0
        self.timeout ||= 0
      end
    end

    # @!attribute name
    #   <p>The name of the job that you created.</p>
    #
    #   @return [String]
    #
    CreateRecipeJobOutput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the recipe that you created.</p>
    #
    #   @return [String]
    #
    CreateRecipeOutput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the ruleset to be created. Valid characters are alphanumeric
    #               (A-Z, a-z, 0-9), hyphen (-), period (.), and space.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the ruleset.</p>
    #
    #   @return [String]
    #
    # @!attribute target_arn
    #   <p>The Amazon Resource Name (ARN) of a resource (dataset) that the
    #               ruleset is associated with.</p>
    #
    #   @return [String]
    #
    # @!attribute rules
    #   <p>A list of rules that are defined with the ruleset. A rule includes
    #               one or more checks to be validated on a DataBrew dataset.</p>
    #
    #   @return [Array<Rule>]
    #
    # @!attribute tags
    #   <p>Metadata tags to apply to the ruleset.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateRulesetInput = ::Struct.new(
      :name,
      :description,
      :target_arn,
      :rules,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The unique name of the created ruleset.</p>
    #
    #   @return [String]
    #
    CreateRulesetOutput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_names
    #   <p>The name or names of one or more jobs to be run.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute cron_expression
    #   <p>The date or dates and time or times when the jobs are to be run. For more information,
    #               see <a href="https://docs.aws.amazon.com/databrew/latest/dg/jobs.cron.html">Cron
    #                   expressions</a> in the <i>Glue DataBrew Developer
    #               Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Metadata tags to apply to this schedule.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute name
    #   <p>A unique name for the schedule. Valid characters are alphanumeric (A-Z, a-z, 0-9),
    #               hyphen (-), period (.), and space.</p>
    #
    #   @return [String]
    #
    CreateScheduleInput = ::Struct.new(
      :job_names,
      :cron_expression,
      :tags,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the schedule that was created.</p>
    #
    #   @return [String]
    #
    CreateScheduleOutput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a set of options that define how DataBrew will read a
    #             comma-separated value (CSV) file when creating a dataset from that file.</p>
    #
    # @!attribute delimiter
    #   <p>A single character that specifies the delimiter being used in the CSV file.</p>
    #
    #   @return [String]
    #
    # @!attribute header_row
    #   <p>A variable that specifies whether the first row in the file is parsed as the
    #               header. If this value is false, column names are auto-generated.</p>
    #
    #   @return [Boolean]
    #
    CsvOptions = ::Struct.new(
      :delimiter,
      :header_row,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a set of options that define how DataBrew will write a
    #             comma-separated value (CSV) file.</p>
    #
    # @!attribute delimiter
    #   <p>A single character that specifies the delimiter used to create CSV job output.</p>
    #
    #   @return [String]
    #
    CsvOutputOptions = ::Struct.new(
      :delimiter,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents how metadata stored in the Glue Data Catalog is defined in a DataBrew
    #             dataset. </p>
    #
    # @!attribute catalog_id
    #   <p>The unique identifier of the Amazon Web Services account that holds the Data Catalog that stores the
    #               data.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The name of a database in the Data Catalog.</p>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>The name of a database table in the Data Catalog. This table corresponds to a DataBrew
    #               dataset.</p>
    #
    #   @return [String]
    #
    # @!attribute temp_directory
    #   <p>Represents an Amazon location where DataBrew can store intermediate results.</p>
    #
    #   @return [S3Location]
    #
    DataCatalogInputDefinition = ::Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :temp_directory,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents options that specify how and where in the Glue Data Catalog DataBrew
    #             writes the output generated by recipe jobs.</p>
    #
    # @!attribute catalog_id
    #   <p>The unique identifier of the Amazon Web Services account that holds the Data Catalog that
    #               stores the data.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The name of a database in the Data Catalog.</p>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>The name of a table in the Data Catalog.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_options
    #   <p>Represents options that specify how and where DataBrew writes the Amazon S3
    #               output generated by recipe jobs.</p>
    #
    #   @return [S3TableOutputOptions]
    #
    # @!attribute database_options
    #   <p>Represents options that specify how and where DataBrew writes the database output
    #               generated by recipe jobs.</p>
    #
    #   @return [DatabaseTableOutputOptions]
    #
    # @!attribute overwrite
    #   <p>A value that, if true, means that any data in the location specified for output
    #               is overwritten with new output. Not supported with DatabaseOptions.</p>
    #
    #   @return [Boolean]
    #
    DataCatalogOutput = ::Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :s3_options,
      :database_options,
      :overwrite,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.overwrite ||= false
      end
    end

    # <p>Connection information for dataset input files stored in a database.</p>
    #
    # @!attribute glue_connection_name
    #   <p>The Glue Connection that stores the connection information for the target
    #               database.</p>
    #
    #   @return [String]
    #
    # @!attribute database_table_name
    #   <p>The table within the target database.</p>
    #
    #   @return [String]
    #
    # @!attribute temp_directory
    #   <p>Represents an Amazon S3 location (bucket name, bucket owner, and object key) where DataBrew can read
    #               input data, or write output from a job.</p>
    #
    #   @return [S3Location]
    #
    # @!attribute query_string
    #   <p>Custom SQL to run against the provided Glue connection. This SQL will be used as
    #               the input for DataBrew projects and jobs.</p>
    #
    #   @return [String]
    #
    DatabaseInputDefinition = ::Struct.new(
      :glue_connection_name,
      :database_table_name,
      :temp_directory,
      :query_string,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a JDBC database output object which defines the output destination for
    #             a DataBrew recipe job to write into.</p>
    #
    # @!attribute glue_connection_name
    #   <p>The Glue connection that stores the connection information for the
    #               target database.</p>
    #
    #   @return [String]
    #
    # @!attribute database_options
    #   <p>Represents options that specify how and where DataBrew writes the database output
    #               generated by recipe jobs.</p>
    #
    #   @return [DatabaseTableOutputOptions]
    #
    # @!attribute database_output_mode
    #   <p>The output mode to write into the database. Currently supported option: NEW_TABLE.</p>
    #
    #   Enum, one of: ["NEW_TABLE"]
    #
    #   @return [String]
    #
    DatabaseOutput = ::Struct.new(
      :glue_connection_name,
      :database_options,
      :database_output_mode,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DatabaseOutputMode
    #
    module DatabaseOutputMode
      # No documentation available.
      #
      NEW_TABLE = "NEW_TABLE"
    end

    # <p>Represents options that specify how and where DataBrew writes the database
    #             output generated by recipe jobs.</p>
    #
    # @!attribute temp_directory
    #   <p>Represents an Amazon S3 location (bucket name and object key) where DataBrew can store
    #               intermediate results.</p>
    #
    #   @return [S3Location]
    #
    # @!attribute table_name
    #   <p>A prefix for the name of a table DataBrew will create in the database.</p>
    #
    #   @return [String]
    #
    DatabaseTableOutputOptions = ::Struct.new(
      :temp_directory,
      :table_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a dataset that can be processed by DataBrew.</p>
    #
    # @!attribute account_id
    #   <p>The ID of the Amazon Web Services account that owns the dataset.</p>
    #
    #   @return [String]
    #
    # @!attribute created_by
    #   <p>The Amazon Resource Name (ARN) of the user who created the dataset.</p>
    #
    #   @return [String]
    #
    # @!attribute create_date
    #   <p>The date and time that the dataset was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute name
    #   <p>The unique name of the dataset.</p>
    #
    #   @return [String]
    #
    # @!attribute format
    #   <p>The file format of a dataset that is created from an Amazon S3 file or folder.</p>
    #
    #   Enum, one of: ["CSV", "JSON", "PARQUET", "EXCEL", "ORC"]
    #
    #   @return [String]
    #
    # @!attribute format_options
    #   <p>A set of options that define how DataBrew interprets the data in the dataset.</p>
    #
    #   @return [FormatOptions]
    #
    # @!attribute input
    #   <p>Information on how DataBrew can find the dataset, in either the Glue Data Catalog
    #               or Amazon S3.</p>
    #
    #   @return [Input]
    #
    # @!attribute last_modified_date
    #   <p>The last modification date and time of the dataset.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_by
    #   <p>The Amazon Resource Name (ARN) of the user who last modified the dataset.</p>
    #
    #   @return [String]
    #
    # @!attribute source
    #   <p>The location of the data for the dataset, either Amazon S3 or the Glue Data Catalog.</p>
    #
    #   Enum, one of: ["S3", "DATA-CATALOG", "DATABASE"]
    #
    #   @return [String]
    #
    # @!attribute path_options
    #   <p>A set of options that defines how DataBrew interprets an Amazon S3
    #               path of the dataset.</p>
    #
    #   @return [PathOptions]
    #
    # @!attribute tags
    #   <p>Metadata tags that have been applied to the dataset.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute resource_arn
    #   <p>The unique Amazon Resource Name (ARN) for the dataset.</p>
    #
    #   @return [String]
    #
    Dataset = ::Struct.new(
      :account_id,
      :created_by,
      :create_date,
      :name,
      :format,
      :format_options,
      :input,
      :last_modified_date,
      :last_modified_by,
      :source,
      :path_options,
      :tags,
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a dataset parameter that defines type and conditions for a parameter in the
    #                 Amazon S3 path of the dataset.</p>
    #
    # @!attribute name
    #   <p>The name of the parameter that is used in the dataset's Amazon S3 path.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of the dataset parameter, can be one of a 'String', 'Number' or 'Datetime'.</p>
    #
    #   Enum, one of: ["Datetime", "Number", "String"]
    #
    #   @return [String]
    #
    # @!attribute datetime_options
    #   <p>Additional parameter options such as a format and a timezone. Required for datetime parameters.</p>
    #
    #   @return [DatetimeOptions]
    #
    # @!attribute create_column
    #   <p>Optional boolean value that defines whether the captured value of this parameter
    #               should be used to create a new column in a dataset.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute filter
    #   <p>The optional filter expression structure to apply additional matching criteria to the parameter.</p>
    #
    #   @return [FilterExpression]
    #
    DatasetParameter = ::Struct.new(
      :name,
      :type,
      :datetime_options,
      :create_column,
      :filter,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.create_column ||= false
      end
    end

    # <p>Represents additional options for correct interpretation of datetime parameters used in
    #             the Amazon S3 path of a dataset.</p>
    #
    # @!attribute format
    #   <p>Required option, that defines the datetime format used for a date parameter in the
    #               Amazon S3 path. Should use only supported datetime specifiers and separation characters, all
    #               literal a-z or A-Z characters should be escaped with single quotes. E.g. "MM.dd.yyyy-'at'-HH:mm".</p>
    #
    #   @return [String]
    #
    # @!attribute timezone_offset
    #   <p>Optional value for a timezone offset of the datetime parameter value in the Amazon S3
    #               path. Shouldn't be used if Format for this parameter includes timezone fields.
    #               If no offset specified, UTC is assumed.</p>
    #
    #   @return [String]
    #
    # @!attribute locale_code
    #   <p>Optional value for a non-US locale code, needed for correct interpretation of some date formats.</p>
    #
    #   @return [String]
    #
    DatetimeOptions = ::Struct.new(
      :format,
      :timezone_offset,
      :locale_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the dataset to be deleted.</p>
    #
    #   @return [String]
    #
    DeleteDatasetInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the dataset that you deleted.</p>
    #
    #   @return [String]
    #
    DeleteDatasetOutput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the job to be deleted.</p>
    #
    #   @return [String]
    #
    DeleteJobInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the job that you deleted.</p>
    #
    #   @return [String]
    #
    DeleteJobOutput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the project to be deleted.</p>
    #
    #   @return [String]
    #
    DeleteProjectInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the project that you deleted.</p>
    #
    #   @return [String]
    #
    DeleteProjectOutput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the recipe.</p>
    #
    #   @return [String]
    #
    # @!attribute recipe_version
    #   <p>The version of the recipe to be deleted. You can specify a numeric versions
    #                   (<code>X.Y</code>) or <code>LATEST_WORKING</code>. <code>LATEST_PUBLISHED</code> is
    #               not supported.</p>
    #
    #   @return [String]
    #
    DeleteRecipeVersionInput = ::Struct.new(
      :name,
      :recipe_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the recipe that was deleted.</p>
    #
    #   @return [String]
    #
    # @!attribute recipe_version
    #   <p>The version of the recipe that was deleted.</p>
    #
    #   @return [String]
    #
    DeleteRecipeVersionOutput = ::Struct.new(
      :name,
      :recipe_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the ruleset to be deleted.</p>
    #
    #   @return [String]
    #
    DeleteRulesetInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the deleted ruleset.</p>
    #
    #   @return [String]
    #
    DeleteRulesetOutput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the schedule to be deleted.</p>
    #
    #   @return [String]
    #
    DeleteScheduleInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the schedule that was deleted.</p>
    #
    #   @return [String]
    #
    DeleteScheduleOutput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the dataset to be described.</p>
    #
    #   @return [String]
    #
    DescribeDatasetInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute created_by
    #   <p>The identifier (user name) of the user who created the dataset.</p>
    #
    #   @return [String]
    #
    # @!attribute create_date
    #   <p>The date and time that the dataset was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute name
    #   <p>The name of the dataset.</p>
    #
    #   @return [String]
    #
    # @!attribute format
    #   <p>The file format of a dataset that is created from an Amazon S3 file
    #               or folder.</p>
    #
    #   Enum, one of: ["CSV", "JSON", "PARQUET", "EXCEL", "ORC"]
    #
    #   @return [String]
    #
    # @!attribute format_options
    #   <p>Represents a set of options that define the structure of either comma-separated value (CSV),
    #               Excel, or JSON input.</p>
    #
    #   @return [FormatOptions]
    #
    # @!attribute input
    #   <p>Represents information on how DataBrew can find data, in either the Glue Data Catalog or
    #               Amazon S3.</p>
    #
    #   @return [Input]
    #
    # @!attribute last_modified_date
    #   <p>The date and time that the dataset was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_by
    #   <p>The identifier (user name) of the user who last modified the dataset.</p>
    #
    #   @return [String]
    #
    # @!attribute source
    #   <p>The location of the data for this dataset, Amazon S3 or the
    #               Glue Data Catalog.</p>
    #
    #   Enum, one of: ["S3", "DATA-CATALOG", "DATABASE"]
    #
    #   @return [String]
    #
    # @!attribute path_options
    #   <p>A set of options that defines how DataBrew interprets an Amazon S3
    #               path of the dataset.</p>
    #
    #   @return [PathOptions]
    #
    # @!attribute tags
    #   <p>Metadata tags associated with this dataset.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset.</p>
    #
    #   @return [String]
    #
    DescribeDatasetOutput = ::Struct.new(
      :created_by,
      :create_date,
      :name,
      :format,
      :format_options,
      :input,
      :last_modified_date,
      :last_modified_by,
      :source,
      :path_options,
      :tags,
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the job to be described.</p>
    #
    #   @return [String]
    #
    DescribeJobInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute create_date
    #   <p>The date and time that the job was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute created_by
    #   <p>The identifier (user name) of the user associated with the creation of the job.</p>
    #
    #   @return [String]
    #
    # @!attribute dataset_name
    #   <p>The dataset that the job acts upon.</p>
    #
    #   @return [String]
    #
    # @!attribute encryption_key_arn
    #   <p>The Amazon Resource Name (ARN) of an encryption key that is used to protect the
    #               job.</p>
    #
    #   @return [String]
    #
    # @!attribute encryption_mode
    #   <p>The encryption mode for the job, which can be one of the following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>SSE-KMS</code> - Server-side encryption with keys managed by KMS.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>SSE-S3</code> - Server-side encryption with keys managed by Amazon
    #                       S3.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["SSE-KMS", "SSE-S3"]
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the job.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The job type, which must be one of the following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>PROFILE</code> - The job analyzes the dataset to determine its size,
    #                       data types, data distribution, and more.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>RECIPE</code> - The job applies one or more transformations to a
    #                       dataset.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["PROFILE", "RECIPE"]
    #
    #   @return [String]
    #
    # @!attribute last_modified_by
    #   <p>The identifier (user name) of the user who last modified the job.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_date
    #   <p>The date and time that the job was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute log_subscription
    #   <p>Indicates whether Amazon CloudWatch logging is enabled for this job.</p>
    #
    #   Enum, one of: ["ENABLE", "DISABLE"]
    #
    #   @return [String]
    #
    # @!attribute max_capacity
    #   <p>The maximum number of compute nodes that DataBrew can consume when the job processes
    #               data.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_retries
    #   <p>The maximum number of times to retry the job after a job run fails.</p>
    #
    #   @return [Integer]
    #
    # @!attribute outputs
    #   <p>One or more artifacts that represent the output from running the job.</p>
    #
    #   @return [Array<Output>]
    #
    # @!attribute data_catalog_outputs
    #   <p>One or more artifacts that represent the Glue Data Catalog output from running the job.</p>
    #
    #   @return [Array<DataCatalogOutput>]
    #
    # @!attribute database_outputs
    #   <p>Represents a list of JDBC database output objects which defines the output
    #               destination for a DataBrew recipe job to write into.</p>
    #
    #   @return [Array<DatabaseOutput>]
    #
    # @!attribute project_name
    #   <p>The DataBrew project associated with this job.</p>
    #
    #   @return [String]
    #
    # @!attribute profile_configuration
    #   <p>Configuration for profile jobs. Used to select columns, do evaluations,
    #               and override default parameters of evaluations. When configuration is null, the
    #               profile job will run with default settings.</p>
    #
    #   @return [ProfileConfiguration]
    #
    # @!attribute validation_configurations
    #   <p>List of validation configurations that are applied to the profile job.</p>
    #
    #   @return [Array<ValidationConfiguration>]
    #
    # @!attribute recipe_reference
    #   <p>Represents the name and version of a DataBrew recipe.</p>
    #
    #   @return [RecipeReference]
    #
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the job.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The ARN of the Identity and Access Management (IAM) role to be assumed when
    #               DataBrew runs the job.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Metadata tags associated with this job.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute timeout
    #   <p>The job's timeout in minutes. A job that attempts to run longer than this timeout
    #               period ends with a status of <code>TIMEOUT</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute job_sample
    #   <p>Sample configuration for profile jobs only. Determines the number of rows on which the
    #               profile job will be executed.</p>
    #
    #   @return [JobSample]
    #
    DescribeJobOutput = ::Struct.new(
      :create_date,
      :created_by,
      :dataset_name,
      :encryption_key_arn,
      :encryption_mode,
      :name,
      :type,
      :last_modified_by,
      :last_modified_date,
      :log_subscription,
      :max_capacity,
      :max_retries,
      :outputs,
      :data_catalog_outputs,
      :database_outputs,
      :project_name,
      :profile_configuration,
      :validation_configurations,
      :recipe_reference,
      :resource_arn,
      :role_arn,
      :tags,
      :timeout,
      :job_sample,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_capacity ||= 0
        self.max_retries ||= 0
        self.timeout ||= 0
      end
    end

    # @!attribute name
    #   <p>The name of the job being processed during this run.</p>
    #
    #   @return [String]
    #
    # @!attribute run_id
    #   <p>The unique identifier of the job run.</p>
    #
    #   @return [String]
    #
    DescribeJobRunInput = ::Struct.new(
      :name,
      :run_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute attempt
    #   <p>The number of times that DataBrew has attempted to run the job.</p>
    #
    #   @return [Integer]
    #
    # @!attribute completed_on
    #   <p>The date and time when the job completed processing.</p>
    #
    #   @return [Time]
    #
    # @!attribute dataset_name
    #   <p>The name of the dataset for the job to process.</p>
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>A message indicating an error (if any) that was encountered when the job ran.</p>
    #
    #   @return [String]
    #
    # @!attribute execution_time
    #   <p>The amount of time, in seconds, during which the job run consumed resources.</p>
    #
    #   @return [Integer]
    #
    # @!attribute job_name
    #   <p>The name of the job being processed during this run.</p>
    #
    #   @return [String]
    #
    # @!attribute profile_configuration
    #   <p>Configuration for profile jobs. Used to select columns, do evaluations,
    #               and override default parameters of evaluations. When configuration is null, the
    #               profile job will run with default settings.</p>
    #
    #   @return [ProfileConfiguration]
    #
    # @!attribute validation_configurations
    #   <p>List of validation configurations that are applied to the profile job.</p>
    #
    #   @return [Array<ValidationConfiguration>]
    #
    # @!attribute run_id
    #   <p>The unique identifier of the job run.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The current state of the job run entity itself.</p>
    #
    #   Enum, one of: ["STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED", "TIMEOUT"]
    #
    #   @return [String]
    #
    # @!attribute log_subscription
    #   <p>The current status of Amazon CloudWatch logging for the job run.</p>
    #
    #   Enum, one of: ["ENABLE", "DISABLE"]
    #
    #   @return [String]
    #
    # @!attribute log_group_name
    #   <p>The name of an Amazon CloudWatch log group, where the job writes diagnostic messages
    #               when it runs.</p>
    #
    #   @return [String]
    #
    # @!attribute outputs
    #   <p>One or more output artifacts from a job run.</p>
    #
    #   @return [Array<Output>]
    #
    # @!attribute data_catalog_outputs
    #   <p>One or more artifacts that represent the Glue Data Catalog output from running the job.</p>
    #
    #   @return [Array<DataCatalogOutput>]
    #
    # @!attribute database_outputs
    #   <p>Represents a list of JDBC database output objects which defines the output
    #               destination for a DataBrew recipe job to write into.</p>
    #
    #   @return [Array<DatabaseOutput>]
    #
    # @!attribute recipe_reference
    #   <p>Represents the name and version of a DataBrew recipe.</p>
    #
    #   @return [RecipeReference]
    #
    # @!attribute started_by
    #   <p>The Amazon Resource Name (ARN) of the user who started the job run.</p>
    #
    #   @return [String]
    #
    # @!attribute started_on
    #   <p>The date and time when the job run began.</p>
    #
    #   @return [Time]
    #
    # @!attribute job_sample
    #   <p>Sample configuration for profile jobs only. Determines the number of rows on which the
    #               profile job will be executed. If a JobSample value is not provided, the default value
    #               will be used. The default value is CUSTOM_ROWS for the mode parameter and 20000 for the
    #               size parameter.</p>
    #
    #   @return [JobSample]
    #
    DescribeJobRunOutput = ::Struct.new(
      :attempt,
      :completed_on,
      :dataset_name,
      :error_message,
      :execution_time,
      :job_name,
      :profile_configuration,
      :validation_configurations,
      :run_id,
      :state,
      :log_subscription,
      :log_group_name,
      :outputs,
      :data_catalog_outputs,
      :database_outputs,
      :recipe_reference,
      :started_by,
      :started_on,
      :job_sample,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.attempt ||= 0
        self.execution_time ||= 0
      end
    end

    # @!attribute name
    #   <p>The name of the project to be described.</p>
    #
    #   @return [String]
    #
    DescribeProjectInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute create_date
    #   <p>The date and time that the project was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute created_by
    #   <p>The identifier (user name) of the user who created the project.</p>
    #
    #   @return [String]
    #
    # @!attribute dataset_name
    #   <p>The dataset associated with the project.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_date
    #   <p>The date and time that the project was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_by
    #   <p>The identifier (user name) of the user who last modified the project.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the project.</p>
    #
    #   @return [String]
    #
    # @!attribute recipe_name
    #   <p>The recipe associated with this job.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the project.</p>
    #
    #   @return [String]
    #
    # @!attribute sample
    #   <p>Represents the sample size and sampling type for DataBrew to use for interactive data
    #               analysis.</p>
    #
    #   @return [Sample]
    #
    # @!attribute role_arn
    #   <p>The ARN of the Identity and Access Management (IAM) role to be assumed when
    #               DataBrew runs the job.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Metadata tags associated with this project.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute session_status
    #   <p>Describes the current state of the session:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>PROVISIONING</code> - allocating resources for the session.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>INITIALIZING</code> - getting the session ready for first use.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>ASSIGNED</code> - the session is ready for use.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ASSIGNED", "FAILED", "INITIALIZING", "PROVISIONING", "READY", "RECYCLING", "ROTATING", "TERMINATED", "TERMINATING", "UPDATING"]
    #
    #   @return [String]
    #
    # @!attribute opened_by
    #   <p>The identifier (user name) of the user that opened the project for use. </p>
    #
    #   @return [String]
    #
    # @!attribute open_date
    #   <p>The date and time when the project was opened. </p>
    #
    #   @return [Time]
    #
    DescribeProjectOutput = ::Struct.new(
      :create_date,
      :created_by,
      :dataset_name,
      :last_modified_date,
      :last_modified_by,
      :name,
      :recipe_name,
      :resource_arn,
      :sample,
      :role_arn,
      :tags,
      :session_status,
      :opened_by,
      :open_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the recipe to be described.</p>
    #
    #   @return [String]
    #
    # @!attribute recipe_version
    #   <p>The recipe version identifier. If this parameter isn't specified, then the latest
    #               published version is returned.</p>
    #
    #   @return [String]
    #
    DescribeRecipeInput = ::Struct.new(
      :name,
      :recipe_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute created_by
    #   <p>The identifier (user name) of the user who created the recipe.</p>
    #
    #   @return [String]
    #
    # @!attribute create_date
    #   <p>The date and time that the recipe was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_by
    #   <p>The identifier (user name) of the user who last modified the recipe.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_date
    #   <p>The date and time that the recipe was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute project_name
    #   <p>The name of the project associated with this recipe.</p>
    #
    #   @return [String]
    #
    # @!attribute published_by
    #   <p>The identifier (user name) of the user who last published the recipe.</p>
    #
    #   @return [String]
    #
    # @!attribute published_date
    #   <p>The date and time when the recipe was last published.</p>
    #
    #   @return [Time]
    #
    # @!attribute description
    #   <p>The description of the recipe.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the recipe.</p>
    #
    #   @return [String]
    #
    # @!attribute steps
    #   <p>One or more steps to be performed by the recipe. Each step consists of an action, and
    #               the conditions under which the action should succeed.</p>
    #
    #   @return [Array<RecipeStep>]
    #
    # @!attribute tags
    #   <p>Metadata tags associated with this project.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute resource_arn
    #   <p>The ARN of the recipe.</p>
    #
    #   @return [String]
    #
    # @!attribute recipe_version
    #   <p>The recipe version identifier.</p>
    #
    #   @return [String]
    #
    DescribeRecipeOutput = ::Struct.new(
      :created_by,
      :create_date,
      :last_modified_by,
      :last_modified_date,
      :project_name,
      :published_by,
      :published_date,
      :description,
      :name,
      :steps,
      :tags,
      :resource_arn,
      :recipe_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the ruleset to be described.</p>
    #
    #   @return [String]
    #
    DescribeRulesetInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the ruleset.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the ruleset.</p>
    #
    #   @return [String]
    #
    # @!attribute target_arn
    #   <p>The Amazon Resource Name (ARN) of a resource (dataset) that the ruleset is
    #               associated with.</p>
    #
    #   @return [String]
    #
    # @!attribute rules
    #   <p>A list of rules that are defined with the ruleset. A rule includes one
    #               or more checks to be validated on a DataBrew dataset.</p>
    #
    #   @return [Array<Rule>]
    #
    # @!attribute create_date
    #   <p>The date and time that the ruleset was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute created_by
    #   <p>The Amazon Resource Name (ARN) of the user who created the ruleset.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_by
    #   <p>The Amazon Resource Name (ARN) of the user who last modified the ruleset.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_date
    #   <p>The modification date and time of the ruleset.</p>
    #
    #   @return [Time]
    #
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for the ruleset.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Metadata tags that have been applied to the ruleset.</p>
    #
    #   @return [Hash<String, String>]
    #
    DescribeRulesetOutput = ::Struct.new(
      :name,
      :description,
      :target_arn,
      :rules,
      :create_date,
      :created_by,
      :last_modified_by,
      :last_modified_date,
      :resource_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the schedule to be described.</p>
    #
    #   @return [String]
    #
    DescribeScheduleInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute create_date
    #   <p>The date and time that the schedule was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute created_by
    #   <p>The identifier (user name) of the user who created the schedule. </p>
    #
    #   @return [String]
    #
    # @!attribute job_names
    #   <p>The name or names of one or more jobs to be run by using the schedule.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute last_modified_by
    #   <p>The identifier (user name) of the user who last modified the schedule.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_date
    #   <p>The date and time that the schedule was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the schedule.</p>
    #
    #   @return [String]
    #
    # @!attribute cron_expression
    #   <p>The date or dates and time or times when the jobs are to be run for the schedule. For
    #               more information, see <a href="https://docs.aws.amazon.com/databrew/latest/dg/jobs.cron.html">Cron expressions</a> in the
    #               <i>Glue DataBrew Developer Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Metadata tags associated with this schedule.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute name
    #   <p>The name of the schedule.</p>
    #
    #   @return [String]
    #
    DescribeScheduleOutput = ::Struct.new(
      :create_date,
      :created_by,
      :job_names,
      :last_modified_by,
      :last_modified_date,
      :resource_arn,
      :cron_expression,
      :tags,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EncryptionMode
    #
    module EncryptionMode
      # No documentation available.
      #
      SSEKMS = "SSE-KMS"

      # No documentation available.
      #
      SSES3 = "SSE-S3"
    end

    # <p>Configuration of entity detection for a profile job. When undefined, entity
    #             detection is disabled.</p>
    #
    # @!attribute entity_types
    #   <p>Entity types to detect. Can be any of the following:</p>
    #           <ul>
    #               <li>
    #                  <p>USA_SSN</p>
    #               </li>
    #               <li>
    #                  <p>EMAIL</p>
    #               </li>
    #               <li>
    #                  <p>USA_ITIN</p>
    #               </li>
    #               <li>
    #                  <p>USA_PASSPORT_NUMBER</p>
    #               </li>
    #               <li>
    #                  <p>PHONE_NUMBER</p>
    #               </li>
    #               <li>
    #                  <p>USA_DRIVING_LICENSE</p>
    #               </li>
    #               <li>
    #                  <p>BANK_ACCOUNT</p>
    #               </li>
    #               <li>
    #                  <p>CREDIT_CARD</p>
    #               </li>
    #               <li>
    #                  <p>IP_ADDRESS</p>
    #               </li>
    #               <li>
    #                  <p>MAC_ADDRESS</p>
    #               </li>
    #               <li>
    #                  <p>USA_DEA_NUMBER</p>
    #               </li>
    #               <li>
    #                  <p>USA_HCPCS_CODE</p>
    #               </li>
    #               <li>
    #                  <p>USA_NATIONAL_PROVIDER_IDENTIFIER</p>
    #               </li>
    #               <li>
    #                  <p>USA_NATIONAL_DRUG_CODE</p>
    #               </li>
    #               <li>
    #                  <p>USA_HEALTH_INSURANCE_CLAIM_NUMBER</p>
    #               </li>
    #               <li>
    #                  <p>USA_MEDICARE_BENEFICIARY_IDENTIFIER</p>
    #               </li>
    #               <li>
    #                  <p>USA_CPT_CODE</p>
    #               </li>
    #               <li>
    #                  <p>PERSON_NAME</p>
    #               </li>
    #               <li>
    #                  <p>DATE</p>
    #               </li>
    #            </ul>
    #           <p>The Entity type group USA_ALL is also supported, and includes all of the
    #               above entity types except PERSON_NAME and DATE.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute allowed_statistics
    #   <p>Configuration of statistics that are allowed to be run on columns that
    #               contain detected entities. When undefined, no statistics will be computed
    #               on columns that contain detected entities.</p>
    #
    #   @return [Array<AllowedStatistics>]
    #
    EntityDetectorConfiguration = ::Struct.new(
      :entity_types,
      :allowed_statistics,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a set of options that define how DataBrew will interpret a Microsoft Excel file when
    #             creating a dataset from that file.</p>
    #
    # @!attribute sheet_names
    #   <p>One or more named sheets in the Excel file that will be included in the dataset.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute sheet_indexes
    #   <p>One or more sheet numbers in the Excel file that will be included in the
    #               dataset.</p>
    #
    #   @return [Array<Integer>]
    #
    # @!attribute header_row
    #   <p>A variable that specifies whether the first row in the file is parsed as the
    #               header. If this value is false, column names are auto-generated.</p>
    #
    #   @return [Boolean]
    #
    ExcelOptions = ::Struct.new(
      :sheet_names,
      :sheet_indexes,
      :header_row,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a limit imposed on number of Amazon S3 files that should be selected for a
    #             dataset from a connected Amazon S3 path.</p>
    #
    # @!attribute max_files
    #   <p>The number of Amazon S3 files to select.</p>
    #
    #   @return [Integer]
    #
    # @!attribute ordered_by
    #   <p>A criteria to use for Amazon S3 files sorting before their selection. By default uses LAST_MODIFIED_DATE as
    #               a sorting criteria. Currently it's the only allowed value.</p>
    #
    #   Enum, one of: ["LAST_MODIFIED_DATE"]
    #
    #   @return [String]
    #
    # @!attribute order
    #   <p>A criteria to use for Amazon S3 files sorting before their selection. By
    #               default uses DESCENDING order, i.e. most recent files are selected first. Another
    #               possible value is ASCENDING.</p>
    #
    #   Enum, one of: ["DESCENDING", "ASCENDING"]
    #
    #   @return [String]
    #
    FilesLimit = ::Struct.new(
      :max_files,
      :ordered_by,
      :order,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_files ||= 0
      end
    end

    # <p>Represents a structure for defining parameter conditions. Supported conditions are described
    #             here: <a href="https://docs.aws.amazon.com/databrew/latest/dg/datasets.multiple-files.html#conditions.for.dynamic.datasets">Supported
    #                 conditions for dynamic datasets</a> in the
    #             <i>Glue DataBrew Developer Guide</i>.</p>
    #
    # @!attribute expression
    #   <p>The expression which includes condition names followed by substitution variables, possibly grouped
    #               and combined with other conditions. For example, "(starts_with :prefix1 or starts_with :prefix2) and
    #               (ends_with :suffix1 or ends_with :suffix2)". Substitution variables should start with ':' symbol.</p>
    #
    #   @return [String]
    #
    # @!attribute values_map
    #   <p>The map of substitution variable names to their values used in this filter expression.</p>
    #
    #   @return [Hash<String, String>]
    #
    FilterExpression = ::Struct.new(
      :expression,
      :values_map,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a set of options that define the structure of either comma-separated value (CSV),
    #             Excel, or JSON input.</p>
    #
    # @!attribute json
    #   <p>Options that define how JSON input is to be interpreted by DataBrew.</p>
    #
    #   @return [JsonOptions]
    #
    # @!attribute excel
    #   <p>Options that define how Excel input is to be interpreted by DataBrew.</p>
    #
    #   @return [ExcelOptions]
    #
    # @!attribute csv
    #   <p>Options that define how CSV input is to be interpreted by DataBrew.</p>
    #
    #   @return [CsvOptions]
    #
    FormatOptions = ::Struct.new(
      :json,
      :excel,
      :csv,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents information on how DataBrew can find data, in either the Glue Data Catalog or
    #             Amazon S3.</p>
    #
    # @!attribute s3_input_definition
    #   <p>The Amazon S3 location where the data is stored.</p>
    #
    #   @return [S3Location]
    #
    # @!attribute data_catalog_input_definition
    #   <p>The Glue Data Catalog parameters for the data.</p>
    #
    #   @return [DataCatalogInputDefinition]
    #
    # @!attribute database_input_definition
    #   <p>Connection information for dataset input files stored in a database.</p>
    #
    #   @return [DatabaseInputDefinition]
    #
    # @!attribute metadata
    #   <p>Contains additional resource information needed for specific datasets.</p>
    #
    #   @return [Metadata]
    #
    Input = ::Struct.new(
      :s3_input_definition,
      :data_catalog_input_definition,
      :database_input_definition,
      :metadata,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for InputFormat
    #
    module InputFormat
      # No documentation available.
      #
      CSV = "CSV"

      # No documentation available.
      #
      JSON = "JSON"

      # No documentation available.
      #
      PARQUET = "PARQUET"

      # No documentation available.
      #
      EXCEL = "EXCEL"

      # No documentation available.
      #
      ORC = "ORC"
    end

    # <p>An internal service failure occurred.</p>
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

    # <p>Represents all of the attributes of a DataBrew job.</p>
    #
    # @!attribute account_id
    #   <p>The ID of the Amazon Web Services account that owns the job.</p>
    #
    #   @return [String]
    #
    # @!attribute created_by
    #   <p>The Amazon Resource Name (ARN) of the user who created the job.</p>
    #
    #   @return [String]
    #
    # @!attribute create_date
    #   <p>The date and time that the job was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute dataset_name
    #   <p>A dataset that the job is to process.</p>
    #
    #   @return [String]
    #
    # @!attribute encryption_key_arn
    #   <p>The Amazon Resource Name (ARN) of an encryption key that is used to protect the job
    #               output. For more information, see <a href="https://docs.aws.amazon.com/databrew/latest/dg/encryption-security-configuration.html">Encrypting data
    #                   written by DataBrew jobs</a>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute encryption_mode
    #   <p>The encryption mode for the job, which can be one of the following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>SSE-KMS</code> - Server-side encryption with keys managed by KMS.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>SSE-S3</code> - Server-side encryption with keys managed by Amazon S3.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["SSE-KMS", "SSE-S3"]
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The unique name of the job.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The job type of the job, which must be one of the following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>PROFILE</code> - A job to analyze a dataset, to determine its size, data
    #                       types, data distribution, and more.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>RECIPE</code> - A job to apply one or more transformations to a
    #                       dataset.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["PROFILE", "RECIPE"]
    #
    #   @return [String]
    #
    # @!attribute last_modified_by
    #   <p>The Amazon Resource Name (ARN) of the user who last modified the job.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_date
    #   <p>The modification date and time of the job.</p>
    #
    #   @return [Time]
    #
    # @!attribute log_subscription
    #   <p>The current status of Amazon CloudWatch logging for the job.</p>
    #
    #   Enum, one of: ["ENABLE", "DISABLE"]
    #
    #   @return [String]
    #
    # @!attribute max_capacity
    #   <p>The maximum number of nodes that can be consumed when the job processes data.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_retries
    #   <p>The maximum number of times to retry the job after a job run fails.</p>
    #
    #   @return [Integer]
    #
    # @!attribute outputs
    #   <p>One or more artifacts that represent output from running the job.</p>
    #
    #   @return [Array<Output>]
    #
    # @!attribute data_catalog_outputs
    #   <p>One or more artifacts that represent the Glue Data Catalog output
    #               from running the job.</p>
    #
    #   @return [Array<DataCatalogOutput>]
    #
    # @!attribute database_outputs
    #   <p>Represents a list of JDBC database output objects which defines the output
    #               destination for a DataBrew recipe job to write into.</p>
    #
    #   @return [Array<DatabaseOutput>]
    #
    # @!attribute project_name
    #   <p>The name of the project that the job is associated with.</p>
    #
    #   @return [String]
    #
    # @!attribute recipe_reference
    #   <p>A set of steps that the job runs.</p>
    #
    #   @return [RecipeReference]
    #
    # @!attribute resource_arn
    #   <p>The unique Amazon Resource Name (ARN) for the job.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the role to be assumed for this job.</p>
    #
    #   @return [String]
    #
    # @!attribute timeout
    #   <p>The job's timeout in minutes. A job that attempts to run longer than this timeout
    #               period ends with a status of <code>TIMEOUT</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute tags
    #   <p>Metadata tags that have been applied to the job.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute job_sample
    #   <p>A sample configuration for profile jobs only, which determines the number of rows on which the
    #               profile job is run. If a <code>JobSample</code> value isn't provided, the default value
    #               is used. The default value is CUSTOM_ROWS for the mode parameter and 20,000 for the
    #               size parameter.</p>
    #
    #   @return [JobSample]
    #
    # @!attribute validation_configurations
    #   <p>List of validation configurations that are applied to the profile job.</p>
    #
    #   @return [Array<ValidationConfiguration>]
    #
    Job = ::Struct.new(
      :account_id,
      :created_by,
      :create_date,
      :dataset_name,
      :encryption_key_arn,
      :encryption_mode,
      :name,
      :type,
      :last_modified_by,
      :last_modified_date,
      :log_subscription,
      :max_capacity,
      :max_retries,
      :outputs,
      :data_catalog_outputs,
      :database_outputs,
      :project_name,
      :recipe_reference,
      :resource_arn,
      :role_arn,
      :timeout,
      :tags,
      :job_sample,
      :validation_configurations,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_capacity ||= 0
        self.max_retries ||= 0
        self.timeout ||= 0
      end
    end

    # <p>Represents one run of a DataBrew job.</p>
    #
    # @!attribute attempt
    #   <p>The number of times that DataBrew has attempted to run the job.</p>
    #
    #   @return [Integer]
    #
    # @!attribute completed_on
    #   <p>The date and time when the job completed processing.</p>
    #
    #   @return [Time]
    #
    # @!attribute dataset_name
    #   <p>The name of the dataset for the job to process.</p>
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>A message indicating an error (if any) that was encountered when the job ran.</p>
    #
    #   @return [String]
    #
    # @!attribute execution_time
    #   <p>The amount of time, in seconds, during which a job run consumed resources.</p>
    #
    #   @return [Integer]
    #
    # @!attribute job_name
    #   <p>The name of the job being processed during this run.</p>
    #
    #   @return [String]
    #
    # @!attribute run_id
    #   <p>The unique identifier of the job run.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The current state of the job run entity itself.</p>
    #
    #   Enum, one of: ["STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED", "TIMEOUT"]
    #
    #   @return [String]
    #
    # @!attribute log_subscription
    #   <p>The current status of Amazon CloudWatch logging for the job run.</p>
    #
    #   Enum, one of: ["ENABLE", "DISABLE"]
    #
    #   @return [String]
    #
    # @!attribute log_group_name
    #   <p>The name of an Amazon CloudWatch log group, where the job writes diagnostic messages
    #               when it runs.</p>
    #
    #   @return [String]
    #
    # @!attribute outputs
    #   <p>One or more output artifacts from a job run.</p>
    #
    #   @return [Array<Output>]
    #
    # @!attribute data_catalog_outputs
    #   <p>One or more artifacts that represent the Glue Data Catalog output
    #               from running the job.</p>
    #
    #   @return [Array<DataCatalogOutput>]
    #
    # @!attribute database_outputs
    #   <p>Represents a list of JDBC database output objects which defines the output
    #               destination for a DataBrew recipe job to write into.</p>
    #
    #   @return [Array<DatabaseOutput>]
    #
    # @!attribute recipe_reference
    #   <p>The set of steps processed by the job.</p>
    #
    #   @return [RecipeReference]
    #
    # @!attribute started_by
    #   <p>The Amazon Resource Name (ARN) of the user who initiated the job run. </p>
    #
    #   @return [String]
    #
    # @!attribute started_on
    #   <p>The date and time when the job run began. </p>
    #
    #   @return [Time]
    #
    # @!attribute job_sample
    #   <p>A sample configuration for profile jobs only, which determines the number of rows on which the
    #               profile job is run. If a <code>JobSample</code> value isn't provided, the default
    #               is used. The default value is CUSTOM_ROWS for the mode parameter and 20,000 for the
    #               size parameter.</p>
    #
    #   @return [JobSample]
    #
    # @!attribute validation_configurations
    #   <p>List of validation configurations that are applied to the profile job run.</p>
    #
    #   @return [Array<ValidationConfiguration>]
    #
    JobRun = ::Struct.new(
      :attempt,
      :completed_on,
      :dataset_name,
      :error_message,
      :execution_time,
      :job_name,
      :run_id,
      :state,
      :log_subscription,
      :log_group_name,
      :outputs,
      :data_catalog_outputs,
      :database_outputs,
      :recipe_reference,
      :started_by,
      :started_on,
      :job_sample,
      :validation_configurations,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.attempt ||= 0
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

    # <p>A sample configuration for profile jobs only, which determines the number of rows on which the
    #             profile job is run. If a <code>JobSample</code> value isn't provided, the
    #             default is used. The default value is CUSTOM_ROWS for the mode parameter and
    #             20,000 for the size parameter.</p>
    #
    # @!attribute mode
    #   <p>A value that determines whether the profile job is run on the entire dataset or a
    #               specified number of rows. This value must be one of the following:</p>
    #           <ul>
    #               <li>
    #                   <p>FULL_DATASET - The profile job is run on the entire dataset.</p>
    #               </li>
    #               <li>
    #                   <p>CUSTOM_ROWS - The profile job is run on the number of rows specified in the
    #                       <code>Size</code> parameter.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["FULL_DATASET", "CUSTOM_ROWS"]
    #
    #   @return [String]
    #
    # @!attribute size
    #   <p>The <code>Size</code> parameter is only required when the mode is CUSTOM_ROWS. The
    #               profile job is run on the specified number of rows. The maximum value for size is
    #               Long.MAX_VALUE.</p>
    #           <p>Long.MAX_VALUE = 9223372036854775807</p>
    #
    #   @return [Integer]
    #
    JobSample = ::Struct.new(
      :mode,
      :size,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for JobType
    #
    module JobType
      # No documentation available.
      #
      PROFILE = "PROFILE"

      # No documentation available.
      #
      RECIPE = "RECIPE"
    end

    # <p>Represents the JSON-specific options that define how input is to be interpreted by Glue DataBrew.</p>
    #
    # @!attribute multi_line
    #   <p>A value that specifies whether JSON input contains embedded new line
    #               characters.</p>
    #
    #   @return [Boolean]
    #
    JsonOptions = ::Struct.new(
      :multi_line,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.multi_line ||= false
      end
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in this request. </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token returned by a previous call to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    ListDatasetsInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute datasets
    #   <p>A list of datasets that are defined.</p>
    #
    #   @return [Array<Dataset>]
    #
    # @!attribute next_token
    #   <p>A token that you can use in a subsequent call to retrieve the next set of
    #               results.</p>
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

    # @!attribute name
    #   <p>The name of the job.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in this request. </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token returned by a previous call to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    ListJobRunsInput = ::Struct.new(
      :name,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_runs
    #   <p>A list of job runs that have occurred for the specified job.</p>
    #
    #   @return [Array<JobRun>]
    #
    # @!attribute next_token
    #   <p>A token that you can use in a subsequent call to retrieve the next set of
    #               results.</p>
    #
    #   @return [String]
    #
    ListJobRunsOutput = ::Struct.new(
      :job_runs,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute dataset_name
    #   <p>The name of a dataset. Using this parameter indicates to return only those jobs that
    #               act on the specified dataset.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in this request. </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A token generated by DataBrew that specifies where to continue pagination if a
    #               previous request was truncated. To get the next set of pages, pass in the NextToken
    #               value from the response object of the previous page call. </p>
    #
    #   @return [String]
    #
    # @!attribute project_name
    #   <p>The name of a project. Using this parameter indicates to return only those jobs that
    #               are associated with the specified project.</p>
    #
    #   @return [String]
    #
    ListJobsInput = ::Struct.new(
      :dataset_name,
      :max_results,
      :next_token,
      :project_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute jobs
    #   <p>A list of jobs that are defined.</p>
    #
    #   @return [Array<Job>]
    #
    # @!attribute next_token
    #   <p>A token that you can use in a subsequent call to retrieve the next set of
    #               results.</p>
    #
    #   @return [String]
    #
    ListJobsOutput = ::Struct.new(
      :jobs,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token returned by a previous call to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in this request. </p>
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
    #   <p>A list of projects that are defined .</p>
    #
    #   @return [Array<Project>]
    #
    # @!attribute next_token
    #   <p>A token that you can use in a subsequent call to retrieve the next set of
    #               results.</p>
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

    # @!attribute max_results
    #   <p>The maximum number of results to return in this request. </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token returned by a previous call to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the recipe for which to return version information.</p>
    #
    #   @return [String]
    #
    ListRecipeVersionsInput = ::Struct.new(
      :max_results,
      :next_token,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A token that you can use in a subsequent call to retrieve the next set of
    #               results.</p>
    #
    #   @return [String]
    #
    # @!attribute recipes
    #   <p>A list of versions for the specified recipe.</p>
    #
    #   @return [Array<Recipe>]
    #
    ListRecipeVersionsOutput = ::Struct.new(
      :next_token,
      :recipes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in this request. </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token returned by a previous call to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute recipe_version
    #   <p>Return only those recipes with a version identifier of <code>LATEST_WORKING</code> or
    #                   <code>LATEST_PUBLISHED</code>. If <code>RecipeVersion</code> is omitted,
    #                   <code>ListRecipes</code> returns all of the <code>LATEST_PUBLISHED</code> recipe
    #               versions.</p>
    #           <p>Valid values: <code>LATEST_WORKING</code> | <code>LATEST_PUBLISHED</code>
    #            </p>
    #
    #   @return [String]
    #
    ListRecipesInput = ::Struct.new(
      :max_results,
      :next_token,
      :recipe_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute recipes
    #   <p>A list of recipes that are defined.</p>
    #
    #   @return [Array<Recipe>]
    #
    # @!attribute next_token
    #   <p>A token that you can use in a subsequent call to retrieve the next set of
    #               results.</p>
    #
    #   @return [String]
    #
    ListRecipesOutput = ::Struct.new(
      :recipes,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute target_arn
    #   <p>The Amazon Resource Name (ARN) of a resource (dataset). Using this parameter
    #               indicates to return only those rulesets that are associated with the specified resource.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in this request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A token generated by DataBrew that specifies where to continue pagination
    #               if a previous request was truncated. To get the next set of pages, pass in
    #               the NextToken value from the response object of the previous page call.</p>
    #
    #   @return [String]
    #
    ListRulesetsInput = ::Struct.new(
      :target_arn,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute rulesets
    #   <p>A list of RulesetItem. RulesetItem contains meta data of a ruleset.</p>
    #
    #   @return [Array<RulesetItem>]
    #
    # @!attribute next_token
    #   <p>A token that you can use in a subsequent call to retrieve the next set of
    #               results.</p>
    #
    #   @return [String]
    #
    ListRulesetsOutput = ::Struct.new(
      :rulesets,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_name
    #   <p>The name of the job that these schedules apply to.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in this request. </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token returned by a previous call to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    ListSchedulesInput = ::Struct.new(
      :job_name,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute schedules
    #   <p>A list of schedules that are defined.</p>
    #
    #   @return [Array<Schedule>]
    #
    # @!attribute next_token
    #   <p>A token that you can use in a subsequent call to retrieve the next set of
    #               results.</p>
    #
    #   @return [String]
    #
    ListSchedulesOutput = ::Struct.new(
      :schedules,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) string that uniquely identifies the DataBrew resource.
    #           </p>
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
    #   <p>A list of tags associated with the DataBrew resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for LogSubscription
    #
    module LogSubscription
      # No documentation available.
      #
      ENABLE = "ENABLE"

      # No documentation available.
      #
      DISABLE = "DISABLE"
    end

    # <p>Contains additional resource information needed for specific datasets.</p>
    #
    # @!attribute source_arn
    #   <p>The Amazon Resource Name (ARN) associated with the dataset. Currently, DataBrew
    #               only supports ARNs from Amazon AppFlow.</p>
    #
    #   @return [String]
    #
    Metadata = ::Struct.new(
      :source_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Order
    #
    module Order
      # No documentation available.
      #
      DESCENDING = "DESCENDING"

      # No documentation available.
      #
      ASCENDING = "ASCENDING"
    end

    # Includes enum constants for OrderedBy
    #
    module OrderedBy
      # No documentation available.
      #
      LAST_MODIFIED_DATE = "LAST_MODIFIED_DATE"
    end

    # <p>Represents options that specify how and where in Amazon S3 DataBrew writes the output generated by
    #             recipe jobs or profile jobs.</p>
    #
    # @!attribute compression_format
    #   <p>The compression algorithm used to compress the output text of the job.</p>
    #
    #   Enum, one of: ["GZIP", "LZ4", "SNAPPY", "BZIP2", "DEFLATE", "LZO", "BROTLI", "ZSTD", "ZLIB"]
    #
    #   @return [String]
    #
    # @!attribute format
    #   <p>The data format of the output of the job.</p>
    #
    #   Enum, one of: ["CSV", "JSON", "PARQUET", "GLUEPARQUET", "AVRO", "ORC", "XML", "TABLEAUHYPER"]
    #
    #   @return [String]
    #
    # @!attribute partition_columns
    #   <p>The names of one or more partition columns for the output of the job.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute location
    #   <p>The location in Amazon S3 where the job writes its output.</p>
    #
    #   @return [S3Location]
    #
    # @!attribute overwrite
    #   <p>A value that, if true, means that any data in the location specified for output is
    #               overwritten with new output.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute format_options
    #   <p>Represents options that define how DataBrew formats job output files.</p>
    #
    #   @return [OutputFormatOptions]
    #
    # @!attribute max_output_files
    #   <p>Maximum number of files to be generated by the job and written to the output folder. For output partitioned
    #               by column(s), the MaxOutputFiles value is the maximum number of files per partition.</p>
    #
    #   @return [Integer]
    #
    Output = ::Struct.new(
      :compression_format,
      :format,
      :partition_columns,
      :location,
      :overwrite,
      :format_options,
      :max_output_files,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.overwrite ||= false
      end
    end

    # Includes enum constants for OutputFormat
    #
    module OutputFormat
      # No documentation available.
      #
      CSV = "CSV"

      # No documentation available.
      #
      JSON = "JSON"

      # No documentation available.
      #
      PARQUET = "PARQUET"

      # No documentation available.
      #
      GLUEPARQUET = "GLUEPARQUET"

      # No documentation available.
      #
      AVRO = "AVRO"

      # No documentation available.
      #
      ORC = "ORC"

      # No documentation available.
      #
      XML = "XML"

      # No documentation available.
      #
      TABLEAUHYPER = "TABLEAUHYPER"
    end

    # <p>Represents a set of options that define the structure of comma-separated (CSV) job output.</p>
    #
    # @!attribute csv
    #   <p>Represents a set of options that define the structure of comma-separated value (CSV)
    #               job output.</p>
    #
    #   @return [CsvOutputOptions]
    #
    OutputFormatOptions = ::Struct.new(
      :csv,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ParameterType
    #
    module ParameterType
      # No documentation available.
      #
      Datetime = "Datetime"

      # No documentation available.
      #
      Number = "Number"

      # No documentation available.
      #
      String = "String"
    end

    # <p>Represents a set of options that define how DataBrew selects files for a given Amazon S3
    #             path in a dataset.</p>
    #
    # @!attribute last_modified_date_condition
    #   <p>If provided, this structure defines a date range for matching Amazon S3 objects based on their
    #               LastModifiedDate attribute in Amazon S3.</p>
    #
    #   @return [FilterExpression]
    #
    # @!attribute files_limit
    #   <p>If provided, this structure imposes a limit on a number of files that should be selected.</p>
    #
    #   @return [FilesLimit]
    #
    # @!attribute parameters
    #   <p>A structure that maps names of parameters used in the Amazon S3 path of a dataset to their definitions.</p>
    #
    #   @return [Hash<String, DatasetParameter>]
    #
    PathOptions = ::Struct.new(
      :last_modified_date_condition,
      :files_limit,
      :parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Configuration for profile jobs. Configuration can be used to select columns, do evaluations, and override default
    #             parameters of evaluations. When configuration is undefined, the profile job will apply default settings to all
    #             supported columns.
    #         </p>
    #
    # @!attribute dataset_statistics_configuration
    #   <p>Configuration for inter-column evaluations. Configuration can be used to select evaluations and override
    #               parameters of evaluations. When configuration is undefined, the profile job will run all supported
    #               inter-column evaluations.
    #           </p>
    #
    #   @return [StatisticsConfiguration]
    #
    # @!attribute profile_columns
    #   <p>List of column selectors. ProfileColumns can be used to select columns from the dataset. When
    #               ProfileColumns is undefined, the profile job will profile all supported columns.
    #           </p>
    #
    #   @return [Array<ColumnSelector>]
    #
    # @!attribute column_statistics_configurations
    #   <p>List of configurations for column evaluations. ColumnStatisticsConfigurations are used to
    #               select evaluations and override parameters of evaluations for particular columns. When
    #               ColumnStatisticsConfigurations is undefined,  the profile job will profile all supported columns
    #               and run all supported  evaluations.
    #           </p>
    #
    #   @return [Array<ColumnStatisticsConfiguration>]
    #
    # @!attribute entity_detector_configuration
    #   <p>Configuration of entity detection for a profile job. When undefined, entity detection is disabled.</p>
    #
    #   @return [EntityDetectorConfiguration]
    #
    ProfileConfiguration = ::Struct.new(
      :dataset_statistics_configuration,
      :profile_columns,
      :column_statistics_configurations,
      :entity_detector_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents all of the attributes of a DataBrew project.</p>
    #
    # @!attribute account_id
    #   <p>The ID of the Amazon Web Services account that owns the project.</p>
    #
    #   @return [String]
    #
    # @!attribute create_date
    #   <p>The date and time that the project was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute created_by
    #   <p>The Amazon Resource Name (ARN) of the user who crated the project.</p>
    #
    #   @return [String]
    #
    # @!attribute dataset_name
    #   <p>The dataset that the project is to act upon.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_date
    #   <p>The last modification date and time for the project.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_by
    #   <p>The Amazon Resource Name (ARN) of the user who last modified the project.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The unique name of a project.</p>
    #
    #   @return [String]
    #
    # @!attribute recipe_name
    #   <p>The name of a recipe that will be developed during a project session.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for the project.</p>
    #
    #   @return [String]
    #
    # @!attribute sample
    #   <p>The sample size and sampling type to apply to the data. If this parameter isn't
    #               specified, then the sample consists of the first 500 rows from the dataset.</p>
    #
    #   @return [Sample]
    #
    # @!attribute tags
    #   <p>Metadata tags that have been applied to the project.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the role that will be assumed for this
    #               project.</p>
    #
    #   @return [String]
    #
    # @!attribute opened_by
    #   <p>The Amazon Resource Name (ARN) of the user that opened the project for use.</p>
    #
    #   @return [String]
    #
    # @!attribute open_date
    #   <p>The date and time when the project was opened.</p>
    #
    #   @return [Time]
    #
    Project = ::Struct.new(
      :account_id,
      :create_date,
      :created_by,
      :dataset_name,
      :last_modified_date,
      :last_modified_by,
      :name,
      :recipe_name,
      :resource_arn,
      :sample,
      :tags,
      :role_arn,
      :opened_by,
      :open_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute description
    #   <p>A description of the recipe to be published, for this version of the recipe.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the recipe to be published.</p>
    #
    #   @return [String]
    #
    PublishRecipeInput = ::Struct.new(
      :description,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the recipe that you published.</p>
    #
    #   @return [String]
    #
    PublishRecipeOutput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents one or more actions to be performed on a DataBrew dataset.</p>
    #
    # @!attribute created_by
    #   <p>The Amazon Resource Name (ARN) of the user who created the recipe.</p>
    #
    #   @return [String]
    #
    # @!attribute create_date
    #   <p>The date and time that the recipe was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_by
    #   <p>The Amazon Resource Name (ARN) of the user who last modified the recipe.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_date
    #   <p>The last modification date and time of the recipe.</p>
    #
    #   @return [Time]
    #
    # @!attribute project_name
    #   <p>The name of the project that the recipe is associated with.</p>
    #
    #   @return [String]
    #
    # @!attribute published_by
    #   <p>The Amazon Resource Name (ARN) of the user who published the recipe.</p>
    #
    #   @return [String]
    #
    # @!attribute published_date
    #   <p>The date and time when the recipe was published.</p>
    #
    #   @return [Time]
    #
    # @!attribute description
    #   <p>The description of the recipe.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The unique name for the recipe.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for the recipe.</p>
    #
    #   @return [String]
    #
    # @!attribute steps
    #   <p>A list of steps that are defined by the recipe.</p>
    #
    #   @return [Array<RecipeStep>]
    #
    # @!attribute tags
    #   <p>Metadata tags that have been applied to the recipe.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute recipe_version
    #   <p>The identifier for the version for the recipe. Must be one of the following:</p>
    #           <ul>
    #               <li>
    #                   <p>Numeric version (<code>X.Y</code>) - <code>X</code> and <code>Y</code> stand
    #                       for major and minor version numbers. The maximum length of each is 6 digits, and
    #                       neither can be negative values. Both <code>X</code> and <code>Y</code> are
    #                       required, and "0.0" isn't a valid version.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>LATEST_WORKING</code> - the most recent valid version being developed in
    #                       a DataBrew project.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>LATEST_PUBLISHED</code> - the most recent published version.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    Recipe = ::Struct.new(
      :created_by,
      :create_date,
      :last_modified_by,
      :last_modified_date,
      :project_name,
      :published_by,
      :published_date,
      :description,
      :name,
      :resource_arn,
      :steps,
      :tags,
      :recipe_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a transformation and associated parameters that are used to apply a change
    #             to a DataBrew dataset. For more information, see <a href="https://docs.aws.amazon.com/databrew/latest/dg/recipe-actions-reference.html">Recipe
    #                 actions reference</a>.</p>
    #
    # @!attribute operation
    #   <p>The name of a valid DataBrew transformation to be performed on the data.</p>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>Contextual parameters for the transformation.</p>
    #
    #   @return [Hash<String, String>]
    #
    RecipeAction = ::Struct.new(
      :operation,
      :parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the name and version of a DataBrew recipe.</p>
    #
    # @!attribute name
    #   <p>The name of the recipe.</p>
    #
    #   @return [String]
    #
    # @!attribute recipe_version
    #   <p>The identifier for the version for the recipe. </p>
    #
    #   @return [String]
    #
    RecipeReference = ::Struct.new(
      :name,
      :recipe_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a single step from a DataBrew recipe to be performed.</p>
    #
    # @!attribute action
    #   <p>The particular action to be performed in the recipe step.</p>
    #
    #   @return [RecipeAction]
    #
    # @!attribute condition_expressions
    #   <p>One or more conditions that must be met for the recipe step to succeed.</p>
    #           <note>
    #               <p>All of the conditions in the array must be met. In other words, all of the
    #                   conditions must be combined using a logical AND operation.</p>
    #           </note>
    #
    #   @return [Array<ConditionExpression>]
    #
    RecipeStep = ::Struct.new(
      :action,
      :condition_expressions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents any errors encountered when attempting to delete multiple recipe
    #             versions.</p>
    #
    # @!attribute error_code
    #   <p>The HTTP status code for the error.</p>
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>The text of the error message.</p>
    #
    #   @return [String]
    #
    # @!attribute recipe_version
    #   <p>The identifier for the recipe version associated with this error.</p>
    #
    #   @return [String]
    #
    RecipeVersionErrorDetail = ::Struct.new(
      :error_code,
      :error_message,
      :recipe_version,
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
    ResourceNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a single data quality requirement that should be validated in the
    #             scope of this dataset.</p>
    #
    # @!attribute name
    #   <p>The name of the rule.</p>
    #
    #   @return [String]
    #
    # @!attribute disabled
    #   <p>A value that specifies whether the rule is disabled. Once a rule is
    #               disabled, a profile job will not validate it during a job run. Default
    #               value is false.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute check_expression
    #   <p>The expression which includes column references, condition names followed by variable
    #               references, possibly grouped and combined with other conditions. For example,
    #                   <code>(:col1 starts_with :prefix1 or :col1 starts_with :prefix2) and (:col1
    #                   ends_with :suffix1 or :col1 ends_with :suffix2)</code>. Column and value references
    #               are substitution variables that should start with the ':' symbol. Depending on the
    #               context, substitution variables' values can be either an actual value or a column name.
    #               These values are defined in the SubstitutionMap. If a CheckExpression starts with a
    #               column reference, then ColumnSelectors in the rule should be null. If ColumnSelectors
    #               has been defined, then there should be no column reference in the left side of a
    #               condition, for example, <code>is_between :val1 and :val2</code>.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/databrew/latest/dg/profile.data-quality-available-checks.html">Available checks</a>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute substitution_map
    #   <p>The map of substitution variable names to their values used in a check
    #               expression. Variable names should start with a ':' (colon).  Variable values can either
    #               be actual values or column names. To differentiate between the two, column names
    #               should be enclosed in backticks, for example, <code>":col1": "`Column A`".</code>
    #            </p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute threshold
    #   <p>The threshold used with a non-aggregate check expression. Non-aggregate check expressions
    #               will be applied to each row in a specific column, and the threshold will be used to determine
    #               whether the validation succeeds.</p>
    #
    #   @return [Threshold]
    #
    # @!attribute column_selectors
    #   <p>List of column selectors. Selectors can be used to select columns using a name or regular
    #               expression from the dataset. Rule will be applied to selected columns.</p>
    #
    #   @return [Array<ColumnSelector>]
    #
    Rule = ::Struct.new(
      :name,
      :disabled,
      :check_expression,
      :substitution_map,
      :threshold,
      :column_selectors,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.disabled ||= false
      end
    end

    # <p>Contains metadata about the ruleset.</p>
    #
    # @!attribute account_id
    #   <p>The ID of the Amazon Web Services account that owns the ruleset.</p>
    #
    #   @return [String]
    #
    # @!attribute created_by
    #   <p>The Amazon Resource Name (ARN) of the user who created the ruleset.</p>
    #
    #   @return [String]
    #
    # @!attribute create_date
    #   <p>The date and time that the ruleset was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute description
    #   <p>The description of the ruleset.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_by
    #   <p>The Amazon Resource Name (ARN) of the user who last modified the ruleset.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_date
    #   <p>The modification date and time of the ruleset.</p>
    #
    #   @return [Time]
    #
    # @!attribute name
    #   <p>The name of the ruleset.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for the ruleset.</p>
    #
    #   @return [String]
    #
    # @!attribute rule_count
    #   <p>The number of rules that are defined in the ruleset.</p>
    #
    #   @return [Integer]
    #
    # @!attribute tags
    #   <p>Metadata tags that have been applied to the ruleset.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute target_arn
    #   <p>The Amazon Resource Name (ARN) of a resource (dataset) that the ruleset is
    #               associated with.</p>
    #
    #   @return [String]
    #
    RulesetItem = ::Struct.new(
      :account_id,
      :created_by,
      :create_date,
      :description,
      :last_modified_by,
      :last_modified_date,
      :name,
      :resource_arn,
      :rule_count,
      :tags,
      :target_arn,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.rule_count ||= 0
      end
    end

    # <p>Represents an Amazon S3 location (bucket name, bucket owner, and object key) where DataBrew can read
    #             input data, or write output from a job.</p>
    #
    # @!attribute bucket
    #   <p>The Amazon S3 bucket name.</p>
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>The unique name of the object in the bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute bucket_owner
    #   <p>The Amazon Web Services account ID of the bucket owner.</p>
    #
    #   @return [String]
    #
    S3Location = ::Struct.new(
      :bucket,
      :key,
      :bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents options that specify how and where DataBrew writes the Amazon S3 output
    #             generated by recipe jobs.</p>
    #
    # @!attribute location
    #   <p>Represents an Amazon S3 location (bucket name and object key) where DataBrew can write output
    #               from a job.</p>
    #
    #   @return [S3Location]
    #
    S3TableOutputOptions = ::Struct.new(
      :location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the sample size and sampling type for DataBrew to use for interactive data
    #             analysis.</p>
    #
    # @!attribute size
    #   <p>The number of rows in the sample.</p>
    #
    #   @return [Integer]
    #
    # @!attribute type
    #   <p>The way in which DataBrew obtains rows from a dataset.</p>
    #
    #   Enum, one of: ["FIRST_N", "LAST_N", "RANDOM"]
    #
    #   @return [String]
    #
    Sample = ::Struct.new(
      :size,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SampleMode
    #
    module SampleMode
      # No documentation available.
      #
      FULL_DATASET = "FULL_DATASET"

      # No documentation available.
      #
      CUSTOM_ROWS = "CUSTOM_ROWS"
    end

    # Includes enum constants for SampleType
    #
    module SampleType
      # No documentation available.
      #
      FIRST_N = "FIRST_N"

      # No documentation available.
      #
      LAST_N = "LAST_N"

      # No documentation available.
      #
      RANDOM = "RANDOM"
    end

    # <p>Represents one or more dates and times when a job is to run.</p>
    #
    # @!attribute account_id
    #   <p>The ID of the Amazon Web Services account that owns the schedule.</p>
    #
    #   @return [String]
    #
    # @!attribute created_by
    #   <p>The Amazon Resource Name (ARN) of the user who created the schedule.</p>
    #
    #   @return [String]
    #
    # @!attribute create_date
    #   <p>The date and time that the schedule was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute job_names
    #   <p>A list of jobs to be run, according to the schedule.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute last_modified_by
    #   <p>The Amazon Resource Name (ARN) of the user who last modified the schedule.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_date
    #   <p>The date and time when the schedule was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the schedule.</p>
    #
    #   @return [String]
    #
    # @!attribute cron_expression
    #   <p>The dates and times when the job is to run. For more information, see <a href="https://docs.aws.amazon.com/databrew/latest/dg/jobs.cron.html">Cron
    #               expressions</a> in the <i>Glue DataBrew Developer
    #               Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Metadata tags that have been applied to the schedule.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute name
    #   <p>The name of the schedule.</p>
    #
    #   @return [String]
    #
    Schedule = ::Struct.new(
      :account_id,
      :created_by,
      :create_date,
      :job_names,
      :last_modified_by,
      :last_modified_date,
      :resource_arn,
      :cron_expression,
      :tags,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute preview
    #   <p>If true, the result of the recipe step will be returned, but not applied.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute name
    #   <p>The name of the project to apply the action to.</p>
    #
    #   @return [String]
    #
    # @!attribute recipe_step
    #   <p>Represents a single step from a DataBrew recipe to be performed.</p>
    #
    #   @return [RecipeStep]
    #
    # @!attribute step_index
    #   <p>The index from which to preview a step. This index is used to preview the result of
    #               steps that have already been applied, so that the resulting view frame is from earlier
    #               in the view frame stack.</p>
    #
    #   @return [Integer]
    #
    # @!attribute client_session_id
    #   <p>A unique identifier for an interactive session that's currently open and ready for
    #               work. The action will be performed on this session.</p>
    #
    #   @return [String]
    #
    # @!attribute view_frame
    #   <p>Represents the data being transformed during an action.</p>
    #
    #   @return [ViewFrame]
    #
    SendProjectSessionActionInput = ::Struct.new(
      :preview,
      :name,
      :recipe_step,
      :step_index,
      :client_session_id,
      :view_frame,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.preview ||= false
      end

      def to_s
        "#<struct AWS::SDK::DataBrew::Types::SendProjectSessionActionInput "\
          "preview=#{preview || 'nil'}, "\
          "name=#{name || 'nil'}, "\
          "recipe_step=#{recipe_step || 'nil'}, "\
          "step_index=#{step_index || 'nil'}, "\
          "client_session_id=\"[SENSITIVE]\", "\
          "view_frame=#{view_frame || 'nil'}>"
      end
    end

    # @!attribute result
    #   <p>A message indicating the result of performing the action.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the project that was affected by the action.</p>
    #
    #   @return [String]
    #
    # @!attribute action_id
    #   <p>A unique identifier for the action that was performed.</p>
    #
    #   @return [Integer]
    #
    SendProjectSessionActionOutput = ::Struct.new(
      :result,
      :name,
      :action_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A service quota is exceeded.</p>
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

    # Includes enum constants for SessionStatus
    #
    module SessionStatus
      # No documentation available.
      #
      ASSIGNED = "ASSIGNED"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      INITIALIZING = "INITIALIZING"

      # No documentation available.
      #
      PROVISIONING = "PROVISIONING"

      # No documentation available.
      #
      READY = "READY"

      # No documentation available.
      #
      RECYCLING = "RECYCLING"

      # No documentation available.
      #
      ROTATING = "ROTATING"

      # No documentation available.
      #
      TERMINATED = "TERMINATED"

      # No documentation available.
      #
      TERMINATING = "TERMINATING"

      # No documentation available.
      #
      UPDATING = "UPDATING"
    end

    # Includes enum constants for Source
    #
    module Source
      # No documentation available.
      #
      S3 = "S3"

      # No documentation available.
      #
      DATACATALOG = "DATA-CATALOG"

      # No documentation available.
      #
      DATABASE = "DATABASE"
    end

    # @!attribute name
    #   <p>The name of the job to be run.</p>
    #
    #   @return [String]
    #
    StartJobRunInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute run_id
    #   <p>A system-generated identifier for this particular job run.</p>
    #
    #   @return [String]
    #
    StartJobRunOutput = ::Struct.new(
      :run_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the project to act upon.</p>
    #
    #   @return [String]
    #
    # @!attribute assume_control
    #   <p>A value that, if true, enables you to take control of a session, even if a different
    #               client is currently accessing the project.</p>
    #
    #   @return [Boolean]
    #
    StartProjectSessionInput = ::Struct.new(
      :name,
      :assume_control,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.assume_control ||= false
      end
    end

    # @!attribute name
    #   <p>The name of the project to be acted upon.</p>
    #
    #   @return [String]
    #
    # @!attribute client_session_id
    #   <p>A system-generated identifier for the session.</p>
    #
    #   @return [String]
    #
    StartProjectSessionOutput = ::Struct.new(
      :name,
      :client_session_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::DataBrew::Types::StartProjectSessionOutput "\
          "name=#{name || 'nil'}, "\
          "client_session_id=\"[SENSITIVE]\">"
      end
    end

    # <p>Override of a particular evaluation for a profile job. </p>
    #
    # @!attribute statistic
    #   <p>The name of an evaluation</p>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>A map that includes overrides of an evaluation’s parameters.</p>
    #
    #   @return [Hash<String, String>]
    #
    StatisticOverride = ::Struct.new(
      :statistic,
      :parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Configuration of evaluations for a profile job. This configuration can be used to select
    #             evaluations and override the parameters of selected evaluations.
    #         </p>
    #
    # @!attribute included_statistics
    #   <p>List of included evaluations. When the list is undefined, all supported
    #               evaluations will be included.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute overrides
    #   <p>List of overrides for evaluations.</p>
    #
    #   @return [Array<StatisticOverride>]
    #
    StatisticsConfiguration = ::Struct.new(
      :included_statistics,
      :overrides,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the job to be stopped.</p>
    #
    #   @return [String]
    #
    # @!attribute run_id
    #   <p>The ID of the job run to be stopped.</p>
    #
    #   @return [String]
    #
    StopJobRunInput = ::Struct.new(
      :name,
      :run_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute run_id
    #   <p>The ID of the job run that you stopped.</p>
    #
    #   @return [String]
    #
    StopJobRunOutput = ::Struct.new(
      :run_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The DataBrew resource to which tags should be added. The value for this parameter is
    #               an Amazon Resource Name (ARN). For DataBrew, you can tag a dataset, a job, a project, or
    #               a recipe.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>One or more tags to be assigned to the resource.</p>
    #
    #   @return [Hash<String, String>]
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

    # <p>The threshold used with a non-aggregate check expression. The non-aggregate check expression
    #             will be applied to each row in a specific column. Then the threshold will be used to determine
    #             whether the validation succeeds.</p>
    #
    # @!attribute value
    #   <p>The value of a threshold.</p>
    #
    #   @return [Float]
    #
    # @!attribute type
    #   <p>The type of a threshold. Used for comparison of an actual count of rows that satisfy the
    #               rule to the threshold value.</p>
    #
    #   Enum, one of: ["GREATER_THAN_OR_EQUAL", "LESS_THAN_OR_EQUAL", "GREATER_THAN", "LESS_THAN"]
    #
    #   @return [String]
    #
    # @!attribute unit
    #   <p>Unit of threshold value. Can be either a COUNT or PERCENTAGE of the full sample size
    #               used for validation.</p>
    #
    #   Enum, one of: ["COUNT", "PERCENTAGE"]
    #
    #   @return [String]
    #
    Threshold = ::Struct.new(
      :value,
      :type,
      :unit,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.value ||= 0
      end
    end

    # Includes enum constants for ThresholdType
    #
    module ThresholdType
      # No documentation available.
      #
      GREATER_THAN_OR_EQUAL = "GREATER_THAN_OR_EQUAL"

      # No documentation available.
      #
      LESS_THAN_OR_EQUAL = "LESS_THAN_OR_EQUAL"

      # No documentation available.
      #
      GREATER_THAN = "GREATER_THAN"

      # No documentation available.
      #
      LESS_THAN = "LESS_THAN"
    end

    # Includes enum constants for ThresholdUnit
    #
    module ThresholdUnit
      # No documentation available.
      #
      COUNT = "COUNT"

      # No documentation available.
      #
      PERCENTAGE = "PERCENTAGE"
    end

    # @!attribute resource_arn
    #   <p>A DataBrew resource from which you want to remove a tag or tags. The value for this
    #               parameter is an Amazon Resource Name (ARN). </p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The tag keys (names) of one or more tags to be removed.</p>
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
    #   <p>The name of the dataset to be updated.</p>
    #
    #   @return [String]
    #
    # @!attribute format
    #   <p>The file format of a dataset that is created from an Amazon S3 file or folder.</p>
    #
    #   Enum, one of: ["CSV", "JSON", "PARQUET", "EXCEL", "ORC"]
    #
    #   @return [String]
    #
    # @!attribute format_options
    #   <p>Represents a set of options that define the structure of either comma-separated value (CSV),
    #               Excel, or JSON input.</p>
    #
    #   @return [FormatOptions]
    #
    # @!attribute input
    #   <p>Represents information on how DataBrew can find data, in either the Glue Data Catalog or
    #               Amazon S3.</p>
    #
    #   @return [Input]
    #
    # @!attribute path_options
    #   <p>A set of options that defines how DataBrew interprets an Amazon S3 path of the dataset.</p>
    #
    #   @return [PathOptions]
    #
    UpdateDatasetInput = ::Struct.new(
      :name,
      :format,
      :format_options,
      :input,
      :path_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the dataset that you updated.</p>
    #
    #   @return [String]
    #
    UpdateDatasetOutput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute configuration
    #   <p>Configuration for profile jobs. Used to select columns, do evaluations,
    #               and override default parameters of evaluations. When configuration is null, the
    #               profile job will run with default settings.</p>
    #
    #   @return [ProfileConfiguration]
    #
    # @!attribute encryption_key_arn
    #   <p>The Amazon Resource Name (ARN) of an encryption key that is used to protect the
    #               job.</p>
    #
    #   @return [String]
    #
    # @!attribute encryption_mode
    #   <p>The encryption mode for the job, which can be one of the following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>SSE-KMS</code> - Server-side encryption with keys managed by KMS.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>SSE-S3</code> - Server-side encryption with keys managed by Amazon
    #                       S3.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["SSE-KMS", "SSE-S3"]
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the job to be updated.</p>
    #
    #   @return [String]
    #
    # @!attribute log_subscription
    #   <p>Enables or disables Amazon CloudWatch logging for the job. If logging is enabled,
    #               CloudWatch writes one log stream for each job run.</p>
    #
    #   Enum, one of: ["ENABLE", "DISABLE"]
    #
    #   @return [String]
    #
    # @!attribute max_capacity
    #   <p>The maximum number of compute nodes that DataBrew can use when the job processes
    #               data.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_retries
    #   <p>The maximum number of times to retry the job after a job run fails.</p>
    #
    #   @return [Integer]
    #
    # @!attribute output_location
    #   <p>Represents an Amazon S3 location (bucket name, bucket owner, and object key) where DataBrew can read
    #               input data, or write output from a job.</p>
    #
    #   @return [S3Location]
    #
    # @!attribute validation_configurations
    #   <p>List of validation configurations that are applied to the profile job.</p>
    #
    #   @return [Array<ValidationConfiguration>]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role to
    #               be assumed when DataBrew runs the job.</p>
    #
    #   @return [String]
    #
    # @!attribute timeout
    #   <p>The job's timeout in minutes. A job that attempts to run longer than this timeout
    #               period ends with a status of <code>TIMEOUT</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute job_sample
    #   <p>Sample configuration for Profile Jobs only. Determines the number of rows on which the
    #               Profile job will be executed. If a JobSample value is not provided for profile jobs, the
    #               default value will be used. The default value is CUSTOM_ROWS for the mode parameter and
    #               20000 for the size parameter.</p>
    #
    #   @return [JobSample]
    #
    UpdateProfileJobInput = ::Struct.new(
      :configuration,
      :encryption_key_arn,
      :encryption_mode,
      :name,
      :log_subscription,
      :max_capacity,
      :max_retries,
      :output_location,
      :validation_configurations,
      :role_arn,
      :timeout,
      :job_sample,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_capacity ||= 0
        self.max_retries ||= 0
        self.timeout ||= 0
      end
    end

    # @!attribute name
    #   <p>The name of the job that was updated.</p>
    #
    #   @return [String]
    #
    UpdateProfileJobOutput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute sample
    #   <p>Represents the sample size and sampling type for DataBrew to use for interactive data
    #               analysis.</p>
    #
    #   @return [Sample]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to be assumed for this request.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the project to be updated.</p>
    #
    #   @return [String]
    #
    UpdateProjectInput = ::Struct.new(
      :sample,
      :role_arn,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute last_modified_date
    #   <p>The date and time that the project was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute name
    #   <p>The name of the project that you updated.</p>
    #
    #   @return [String]
    #
    UpdateProjectOutput = ::Struct.new(
      :last_modified_date,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute description
    #   <p>A description of the recipe.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the recipe to be updated.</p>
    #
    #   @return [String]
    #
    # @!attribute steps
    #   <p>One or more steps to be performed by the recipe. Each step consists of an action, and
    #               the conditions under which the action should succeed.</p>
    #
    #   @return [Array<RecipeStep>]
    #
    UpdateRecipeInput = ::Struct.new(
      :description,
      :name,
      :steps,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute encryption_key_arn
    #   <p>The Amazon Resource Name (ARN) of an encryption key that is used to protect the
    #               job.</p>
    #
    #   @return [String]
    #
    # @!attribute encryption_mode
    #   <p>The encryption mode for the job, which can be one of the following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>SSE-KMS</code> - Server-side encryption with keys managed by KMS.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>SSE-S3</code> - Server-side encryption with keys managed by Amazon S3.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["SSE-KMS", "SSE-S3"]
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the job to update.</p>
    #
    #   @return [String]
    #
    # @!attribute log_subscription
    #   <p>Enables or disables Amazon CloudWatch logging for the job. If logging is enabled,
    #               CloudWatch writes one log stream for each job run.</p>
    #
    #   Enum, one of: ["ENABLE", "DISABLE"]
    #
    #   @return [String]
    #
    # @!attribute max_capacity
    #   <p>The maximum number of nodes that DataBrew can consume when the job processes
    #               data.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_retries
    #   <p>The maximum number of times to retry the job after a job run fails.</p>
    #
    #   @return [Integer]
    #
    # @!attribute outputs
    #   <p>One or more artifacts that represent the output from running the job. </p>
    #
    #   @return [Array<Output>]
    #
    # @!attribute data_catalog_outputs
    #   <p>One or more artifacts that represent the Glue Data Catalog output from running the job.</p>
    #
    #   @return [Array<DataCatalogOutput>]
    #
    # @!attribute database_outputs
    #   <p>Represents a list of JDBC database output objects which defines the output destination for a
    #               DataBrew recipe job to write into.</p>
    #
    #   @return [Array<DatabaseOutput>]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role to
    #               be assumed when DataBrew runs the job.</p>
    #
    #   @return [String]
    #
    # @!attribute timeout
    #   <p>The job's timeout in minutes. A job that attempts to run longer than this timeout
    #               period ends with a status of <code>TIMEOUT</code>.</p>
    #
    #   @return [Integer]
    #
    UpdateRecipeJobInput = ::Struct.new(
      :encryption_key_arn,
      :encryption_mode,
      :name,
      :log_subscription,
      :max_capacity,
      :max_retries,
      :outputs,
      :data_catalog_outputs,
      :database_outputs,
      :role_arn,
      :timeout,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_capacity ||= 0
        self.max_retries ||= 0
        self.timeout ||= 0
      end
    end

    # @!attribute name
    #   <p>The name of the job that you updated.</p>
    #
    #   @return [String]
    #
    UpdateRecipeJobOutput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the recipe that was updated.</p>
    #
    #   @return [String]
    #
    UpdateRecipeOutput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the ruleset to be updated.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the ruleset.</p>
    #
    #   @return [String]
    #
    # @!attribute rules
    #   <p>A list of rules that are defined with the ruleset. A rule includes one or more
    #               checks to be validated on a DataBrew dataset.</p>
    #
    #   @return [Array<Rule>]
    #
    UpdateRulesetInput = ::Struct.new(
      :name,
      :description,
      :rules,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the updated ruleset.</p>
    #
    #   @return [String]
    #
    UpdateRulesetOutput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_names
    #   <p>The name or names of one or more jobs to be run for this schedule.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute cron_expression
    #   <p>The date or dates and time or times when the jobs are to be run. For more information,
    #               see <a href="https://docs.aws.amazon.com/databrew/latest/dg/jobs.cron.html">Cron
    #                   expressions</a> in the <i>Glue DataBrew Developer
    #               Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the schedule to update.</p>
    #
    #   @return [String]
    #
    UpdateScheduleInput = ::Struct.new(
      :job_names,
      :cron_expression,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the schedule that was updated.</p>
    #
    #   @return [String]
    #
    UpdateScheduleOutput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Configuration for data quality validation. Used to select the Rulesets and Validation Mode
    #             to be used in the profile job. When ValidationConfiguration is null, the profile
    #             job will run without data quality validation.</p>
    #
    # @!attribute ruleset_arn
    #   <p>The Amazon Resource Name (ARN) for the ruleset to be validated in the profile job.
    #               The TargetArn of the selected ruleset should be the same as the Amazon Resource Name (ARN) of
    #               the dataset that is associated with the profile job.</p>
    #
    #   @return [String]
    #
    # @!attribute validation_mode
    #   <p>Mode of data quality validation. Default mode is “CHECK_ALL” which verifies all rules
    #               defined in the selected ruleset.</p>
    #
    #   Enum, one of: ["CHECK_ALL"]
    #
    #   @return [String]
    #
    ValidationConfiguration = ::Struct.new(
      :ruleset_arn,
      :validation_mode,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The input parameters for this request failed validation.</p>
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

    # Includes enum constants for ValidationMode
    #
    module ValidationMode
      # No documentation available.
      #
      CHECK_ALL = "CHECK_ALL"
    end

    # <p>Represents the data being transformed during an action.</p>
    #
    # @!attribute start_column_index
    #   <p>The starting index for the range of columns to return in the view frame.</p>
    #
    #   @return [Integer]
    #
    # @!attribute column_range
    #   <p>The number of columns to include in the view frame, beginning with the
    #                   <code>StartColumnIndex</code> value and ignoring any columns in the
    #                   <code>HiddenColumns</code> list.</p>
    #
    #   @return [Integer]
    #
    # @!attribute hidden_columns
    #   <p>A list of columns to hide in the view frame.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute start_row_index
    #   <p>The starting index for the range of rows to return in the view frame.</p>
    #
    #   @return [Integer]
    #
    # @!attribute row_range
    #   <p>The number of rows to include in the view frame, beginning with the
    #               <code>StartRowIndex</code> value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute analytics
    #   <p>Controls if analytics computation is enabled or disabled. Enabled by default.</p>
    #
    #   Enum, one of: ["ENABLE", "DISABLE"]
    #
    #   @return [String]
    #
    ViewFrame = ::Struct.new(
      :start_column_index,
      :column_range,
      :hidden_columns,
      :start_row_index,
      :row_range,
      :analytics,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
