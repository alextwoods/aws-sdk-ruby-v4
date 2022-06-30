# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::KinesisAnalyticsV2
  module Types

    # @!attribute application_name
    #   <p>The Kinesis Data Analytics application name.</p>
    #
    #   @return [String]
    #
    # @!attribute current_application_version_id
    #   <p>The version ID of the Kinesis Data Analytics application. You must provide the
    #           <code>CurrentApplicationVersionId</code> or the <code>ConditionalToken</code>.You can
    #         retrieve the application version ID using <a>DescribeApplication</a>. For better
    #         concurrency support, use the <code>ConditionalToken</code> parameter instead of
    #           <code>CurrentApplicationVersionId</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute cloud_watch_logging_option
    #   <p>Provides the Amazon CloudWatch log stream Amazon Resource Name (ARN). </p>
    #
    #   @return [CloudWatchLoggingOption]
    #
    # @!attribute conditional_token
    #   <p>A value you use to implement strong concurrency for application updates. You must
    #         provide the <code>CurrentApplicationVersionId</code> or the <code>ConditionalToken</code>. You
    #         get the application's current <code>ConditionalToken</code> using <a>DescribeApplication</a>. For better concurrency support, use the
    #           <code>ConditionalToken</code> parameter instead of
    #         <code>CurrentApplicationVersionId</code>.</p>
    #
    #   @return [String]
    #
    AddApplicationCloudWatchLoggingOptionInput = ::Struct.new(
      :application_name,
      :current_application_version_id,
      :cloud_watch_logging_option,
      :conditional_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_arn
    #   <p>The application's ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute application_version_id
    #   <p>The new version ID of the Kinesis Data Analytics application. Kinesis Data Analytics
    #         updates the <code>ApplicationVersionId</code> each time you change the CloudWatch logging
    #         options. </p>
    #
    #   @return [Integer]
    #
    # @!attribute cloud_watch_logging_option_descriptions
    #   <p>The descriptions of the current CloudWatch logging options for the Kinesis Data Analytics application.</p>
    #
    #   @return [Array<CloudWatchLoggingOptionDescription>]
    #
    AddApplicationCloudWatchLoggingOptionOutput = ::Struct.new(
      :application_arn,
      :application_version_id,
      :cloud_watch_logging_option_descriptions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_name
    #   <p>The name of your existing application to which you want to add the streaming
    #         source.</p>
    #
    #   @return [String]
    #
    # @!attribute current_application_version_id
    #   <p>The current version of your application.
    #           You must provide the <code>ApplicationVersionID</code> or the <code>ConditionalToken</code>.You can use the <a>DescribeApplication</a> operation to find the current application version.</p>
    #
    #   @return [Integer]
    #
    # @!attribute input
    #   <p>The <a>Input</a> to add.</p>
    #
    #   @return [Input]
    #
    AddApplicationInputInput = ::Struct.new(
      :application_name,
      :current_application_version_id,
      :input,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_arn
    #   <p>The Amazon Resource Name (ARN) of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute application_version_id
    #   <p>Provides the current application version.</p>
    #
    #   @return [Integer]
    #
    # @!attribute input_descriptions
    #   <p>Describes the application input configuration.
    #
    #
    #       </p>
    #
    #   @return [Array<InputDescription>]
    #
    AddApplicationInputOutput = ::Struct.new(
      :application_arn,
      :application_version_id,
      :input_descriptions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_name
    #   <p>The name of the application to which you want to add the input processing
    #         configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute current_application_version_id
    #   <p>The version of the application to which you want to add the input processing
    #         configuration. You can use the <a>DescribeApplication</a> operation to get the
    #         current application version. If the version specified is not the current version, the
    #           <code>ConcurrentModificationException</code> is returned.</p>
    #
    #   @return [Integer]
    #
    # @!attribute input_id
    #   <p>The ID of the input configuration to add the input processing configuration to. You
    #         can get a list of the input IDs for an application using the <a>DescribeApplication</a> operation.</p>
    #
    #   @return [String]
    #
    # @!attribute input_processing_configuration
    #   <p>The <a>InputProcessingConfiguration</a> to add to the application.</p>
    #
    #   @return [InputProcessingConfiguration]
    #
    AddApplicationInputProcessingConfigurationInput = ::Struct.new(
      :application_name,
      :current_application_version_id,
      :input_id,
      :input_processing_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_arn
    #   <p>The Amazon Resource Name (ARN) of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute application_version_id
    #   <p>Provides the current application version. </p>
    #
    #   @return [Integer]
    #
    # @!attribute input_id
    #   <p>The input ID that is associated with the application input. This is the ID that Kinesis Data Analytics assigns
    #         to each input configuration that you add to your
    #         application.</p>
    #
    #   @return [String]
    #
    # @!attribute input_processing_configuration_description
    #   <p>The description of the preprocessor that executes on records in this input before the application's code is run.</p>
    #
    #   @return [InputProcessingConfigurationDescription]
    #
    AddApplicationInputProcessingConfigurationOutput = ::Struct.new(
      :application_arn,
      :application_version_id,
      :input_id,
      :input_processing_configuration_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_name
    #   <p>The name of the application to which you want to add the output configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute current_application_version_id
    #   <p>The version of the application to which you want to add the output configuration. You can
    #         use the <a>DescribeApplication</a> operation to get the current application
    #         version. If the version specified is not the current version, the
    #           <code>ConcurrentModificationException</code> is returned. </p>
    #
    #   @return [Integer]
    #
    # @!attribute output
    #   <p>An array of objects, each describing one output configuration. In the output
    #         configuration, you specify the name of an in-application stream, a destination (that is, a
    #         Kinesis data stream, a Kinesis Data Firehose delivery stream, or an Amazon Lambda function), and
    #         record the formation to use when writing to the destination.</p>
    #
    #   @return [Output]
    #
    AddApplicationOutputInput = ::Struct.new(
      :application_name,
      :current_application_version_id,
      :output,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_arn
    #   <p>The application Amazon Resource Name (ARN).</p>
    #
    #   @return [String]
    #
    # @!attribute application_version_id
    #   <p>The updated application version ID. Kinesis Data Analytics increments this ID when the application is
    #         updated.</p>
    #
    #   @return [Integer]
    #
    # @!attribute output_descriptions
    #   <p>Describes the application output configuration.
    #         For more information,
    #         see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html">Configuring Application Output</a>.
    #
    #       </p>
    #
    #   @return [Array<OutputDescription>]
    #
    AddApplicationOutputOutput = ::Struct.new(
      :application_arn,
      :application_version_id,
      :output_descriptions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_name
    #   <p>The name of an existing application.</p>
    #
    #   @return [String]
    #
    # @!attribute current_application_version_id
    #   <p>The version of the application for which you are adding the reference data source.
    #           You can
    #         use the <a>DescribeApplication</a> operation to get the current application
    #         version. If the version specified is not the current version, the
    #           <code>ConcurrentModificationException</code> is returned.</p>
    #
    #   @return [Integer]
    #
    # @!attribute reference_data_source
    #   <p>The reference data source can be an object in your Amazon S3 bucket. Kinesis Data Analytics reads the object and copies the data
    #         into the in-application table that is created. You provide an S3 bucket, object key name, and the resulting
    #         in-application table that is
    #         created. </p>
    #
    #   @return [ReferenceDataSource]
    #
    AddApplicationReferenceDataSourceInput = ::Struct.new(
      :application_name,
      :current_application_version_id,
      :reference_data_source,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_arn
    #   <p>The application Amazon Resource Name (ARN).</p>
    #
    #   @return [String]
    #
    # @!attribute application_version_id
    #   <p>The updated application version ID. Kinesis Data Analytics increments this ID when
    #         the application is updated.</p>
    #
    #   @return [Integer]
    #
    # @!attribute reference_data_source_descriptions
    #   <p>Describes reference data sources configured for the application.
    #
    #
    #
    #       </p>
    #
    #   @return [Array<ReferenceDataSourceDescription>]
    #
    AddApplicationReferenceDataSourceOutput = ::Struct.new(
      :application_arn,
      :application_version_id,
      :reference_data_source_descriptions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_name
    #   <p>The name of an existing application.</p>
    #
    #   @return [String]
    #
    # @!attribute current_application_version_id
    #   <p>The version of the application to which you want to add the VPC configuration. You must
    #         provide the <code>CurrentApplicationVersionId</code> or the <code>ConditionalToken</code>. You
    #         can use the <a>DescribeApplication</a> operation to get the current application
    #         version. If the version specified is not the current version, the
    #           <code>ConcurrentModificationException</code> is returned. For better concurrency support,
    #         use the <code>ConditionalToken</code> parameter instead of
    #           <code>CurrentApplicationVersionId</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute vpc_configuration
    #   <p>Description of the VPC to add to the application.</p>
    #
    #   @return [VpcConfiguration]
    #
    # @!attribute conditional_token
    #   <p>A value you use to implement strong concurrency for application updates. You must
    #         provide the <code>ApplicationVersionID</code> or the <code>ConditionalToken</code>. You get
    #         the application's current <code>ConditionalToken</code> using <a>DescribeApplication</a>. For better concurrency support, use the
    #           <code>ConditionalToken</code> parameter instead of
    #         <code>CurrentApplicationVersionId</code>.</p>
    #
    #   @return [String]
    #
    AddApplicationVpcConfigurationInput = ::Struct.new(
      :application_name,
      :current_application_version_id,
      :vpc_configuration,
      :conditional_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_arn
    #   <p>The ARN of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute application_version_id
    #   <p>Provides the current application version. Kinesis Data Analytics updates the ApplicationVersionId each
    #         time you update the application.</p>
    #
    #   @return [Integer]
    #
    # @!attribute vpc_configuration_description
    #   <p>The parameters of the new VPC configuration.</p>
    #
    #   @return [VpcConfigurationDescription]
    #
    AddApplicationVpcConfigurationOutput = ::Struct.new(
      :application_arn,
      :application_version_id,
      :vpc_configuration_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes code configuration for an application.</p>
    #
    # @!attribute code_content
    #   <p>The location and type of the application code.</p>
    #
    #   @return [CodeContent]
    #
    # @!attribute code_content_type
    #   <p>Specifies whether the code content is in text or zip format.</p>
    #
    #   Enum, one of: ["PLAINTEXT", "ZIPFILE"]
    #
    #   @return [String]
    #
    ApplicationCodeConfiguration = ::Struct.new(
      :code_content,
      :code_content_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes code configuration for an application.</p>
    #
    # @!attribute code_content_type
    #   <p>Specifies whether the code content is in text or zip format.</p>
    #
    #   Enum, one of: ["PLAINTEXT", "ZIPFILE"]
    #
    #   @return [String]
    #
    # @!attribute code_content_description
    #   <p>Describes details about the location and format of the application code.</p>
    #
    #   @return [CodeContentDescription]
    #
    ApplicationCodeConfigurationDescription = ::Struct.new(
      :code_content_type,
      :code_content_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes code configuration updates for an application. This is supported for a Flink-based Kinesis Data Analytics application or a SQL-based Kinesis Data Analytics application.</p>
    #
    # @!attribute code_content_type_update
    #   <p>Describes updates to the code content type.</p>
    #
    #   Enum, one of: ["PLAINTEXT", "ZIPFILE"]
    #
    #   @return [String]
    #
    # @!attribute code_content_update
    #   <p>Describes updates to the code content of an application.</p>
    #
    #   @return [CodeContentUpdate]
    #
    ApplicationCodeConfigurationUpdate = ::Struct.new(
      :code_content_type_update,
      :code_content_update,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the creation parameters for a Kinesis Data Analytics application.</p>
    #
    # @!attribute sql_application_configuration
    #   <p>The creation and update parameters for a SQL-based Kinesis Data Analytics application.</p>
    #
    #   @return [SqlApplicationConfiguration]
    #
    # @!attribute flink_application_configuration
    #   <p>The creation and update parameters for a Flink-based Kinesis Data Analytics application.</p>
    #
    #   @return [FlinkApplicationConfiguration]
    #
    # @!attribute environment_properties
    #   <p>Describes execution properties for a Flink-based Kinesis Data Analytics application.</p>
    #
    #   @return [EnvironmentProperties]
    #
    # @!attribute application_code_configuration
    #   <p>The code location and type parameters for a Flink-based Kinesis Data Analytics application.</p>
    #
    #   @return [ApplicationCodeConfiguration]
    #
    # @!attribute application_snapshot_configuration
    #   <p>Describes whether snapshots are enabled for a Flink-based Kinesis Data Analytics application.</p>
    #
    #   @return [ApplicationSnapshotConfiguration]
    #
    # @!attribute vpc_configurations
    #   <p>The array of descriptions of VPC configurations available to the application.</p>
    #
    #   @return [Array<VpcConfiguration>]
    #
    # @!attribute zeppelin_application_configuration
    #   <p>The configuration parameters for a Kinesis Data Analytics Studio notebook.</p>
    #
    #   @return [ZeppelinApplicationConfiguration]
    #
    ApplicationConfiguration = ::Struct.new(
      :sql_application_configuration,
      :flink_application_configuration,
      :environment_properties,
      :application_code_configuration,
      :application_snapshot_configuration,
      :vpc_configurations,
      :zeppelin_application_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes details about the application code and starting parameters for a Kinesis Data Analytics application.</p>
    #
    # @!attribute sql_application_configuration_description
    #   <p>The details about inputs, outputs, and reference data sources for a SQL-based Kinesis Data Analytics application.</p>
    #
    #   @return [SqlApplicationConfigurationDescription]
    #
    # @!attribute application_code_configuration_description
    #   <p>The details about the application code for a Flink-based Kinesis Data Analytics application.</p>
    #
    #   @return [ApplicationCodeConfigurationDescription]
    #
    # @!attribute run_configuration_description
    #   <p>The details about the starting properties for a Kinesis Data Analytics application.</p>
    #
    #   @return [RunConfigurationDescription]
    #
    # @!attribute flink_application_configuration_description
    #   <p>The details about a Flink-based Kinesis Data Analytics application.</p>
    #
    #   @return [FlinkApplicationConfigurationDescription]
    #
    # @!attribute environment_property_descriptions
    #   <p>Describes execution properties for a Flink-based Kinesis Data Analytics application.</p>
    #
    #   @return [EnvironmentPropertyDescriptions]
    #
    # @!attribute application_snapshot_configuration_description
    #   <p>Describes whether snapshots are enabled for a Flink-based Kinesis Data Analytics application.</p>
    #
    #   @return [ApplicationSnapshotConfigurationDescription]
    #
    # @!attribute vpc_configuration_descriptions
    #   <p>The array of descriptions of VPC configurations available to the application.</p>
    #
    #   @return [Array<VpcConfigurationDescription>]
    #
    # @!attribute zeppelin_application_configuration_description
    #   <p>The configuration parameters for a Kinesis Data Analytics Studio notebook.</p>
    #
    #   @return [ZeppelinApplicationConfigurationDescription]
    #
    ApplicationConfigurationDescription = ::Struct.new(
      :sql_application_configuration_description,
      :application_code_configuration_description,
      :run_configuration_description,
      :flink_application_configuration_description,
      :environment_property_descriptions,
      :application_snapshot_configuration_description,
      :vpc_configuration_descriptions,
      :zeppelin_application_configuration_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes updates to an application's configuration.</p>
    #
    # @!attribute sql_application_configuration_update
    #   <p>Describes updates to a SQL-based Kinesis Data Analytics application's
    #         configuration.</p>
    #
    #   @return [SqlApplicationConfigurationUpdate]
    #
    # @!attribute application_code_configuration_update
    #   <p>Describes updates to an application's code
    #         configuration.</p>
    #
    #   @return [ApplicationCodeConfigurationUpdate]
    #
    # @!attribute flink_application_configuration_update
    #   <p>Describes updates to a Flink-based Kinesis Data Analytics application's configuration.</p>
    #
    #   @return [FlinkApplicationConfigurationUpdate]
    #
    # @!attribute environment_property_updates
    #   <p>Describes updates to the environment properties for a Flink-based Kinesis Data Analytics application.</p>
    #
    #   @return [EnvironmentPropertyUpdates]
    #
    # @!attribute application_snapshot_configuration_update
    #   <p>Describes whether snapshots are enabled for a Flink-based Kinesis Data Analytics application.</p>
    #
    #   @return [ApplicationSnapshotConfigurationUpdate]
    #
    # @!attribute vpc_configuration_updates
    #   <p>Updates to the array of descriptions of VPC configurations available to the application.</p>
    #
    #   @return [Array<VpcConfigurationUpdate>]
    #
    # @!attribute zeppelin_application_configuration_update
    #   <p>Updates to the configuration of a Kinesis Data Analytics Studio notebook.</p>
    #
    #   @return [ZeppelinApplicationConfigurationUpdate]
    #
    ApplicationConfigurationUpdate = ::Struct.new(
      :sql_application_configuration_update,
      :application_code_configuration_update,
      :flink_application_configuration_update,
      :environment_property_updates,
      :application_snapshot_configuration_update,
      :vpc_configuration_updates,
      :zeppelin_application_configuration_update,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the application, including the application Amazon Resource Name (ARN), status,
    #       latest version, and input and output configurations.</p>
    #
    # @!attribute application_arn
    #   <p>The ARN of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute application_description
    #   <p>The description of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute application_name
    #   <p>The name of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute runtime_environment
    #   <p>The runtime environment for the application (<code>SQL-1_0</code>, <code>FLINK-1_6</code>, <code>FLINK-1_8</code>, or <code>FLINK-1_11</code>).</p>
    #
    #   Enum, one of: ["SQL-1_0", "FLINK-1_6", "FLINK-1_8", "ZEPPELIN-FLINK-1_0", "FLINK-1_11", "FLINK-1_13", "ZEPPELIN-FLINK-2_0"]
    #
    #   @return [String]
    #
    # @!attribute service_execution_role
    #   <p>Specifies the IAM role that the application uses to access external resources.</p>
    #
    #   @return [String]
    #
    # @!attribute application_status
    #   <p>The status of the application.</p>
    #
    #   Enum, one of: ["DELETING", "STARTING", "STOPPING", "READY", "RUNNING", "UPDATING", "AUTOSCALING", "FORCE_STOPPING", "ROLLING_BACK", "MAINTENANCE", "ROLLED_BACK"]
    #
    #   @return [String]
    #
    # @!attribute application_version_id
    #   <p>Provides the current application version. Kinesis Data Analytics updates the
    #           <code>ApplicationVersionId</code> each time you update the application.</p>
    #
    #   @return [Integer]
    #
    # @!attribute create_timestamp
    #   <p>The current timestamp when the application was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_update_timestamp
    #   <p>The current timestamp when the application was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute application_configuration_description
    #   <p>Describes details about the application code and starting parameters for a Kinesis Data Analytics application.</p>
    #
    #   @return [ApplicationConfigurationDescription]
    #
    # @!attribute cloud_watch_logging_option_descriptions
    #   <p>Describes the application Amazon CloudWatch logging options.</p>
    #
    #   @return [Array<CloudWatchLoggingOptionDescription>]
    #
    # @!attribute application_maintenance_configuration_description
    #   <p>The details of the maintenance configuration for the application.</p>
    #
    #   @return [ApplicationMaintenanceConfigurationDescription]
    #
    # @!attribute application_version_updated_from
    #   <p>The previous application version before the latest application update. <a>RollbackApplication</a>
    #           reverts the application to this version.</p>
    #
    #   @return [Integer]
    #
    # @!attribute application_version_rolled_back_from
    #   <p>If you reverted the application using <a>RollbackApplication</a>,
    #           the application version when <code>RollbackApplication</code> was called.</p>
    #
    #   @return [Integer]
    #
    # @!attribute conditional_token
    #   <p>A value you use to implement strong concurrency for application updates.</p>
    #
    #   @return [String]
    #
    # @!attribute application_version_rolled_back_to
    #   <p>The version to which you want to roll back the application.</p>
    #
    #   @return [Integer]
    #
    # @!attribute application_mode
    #   <p>To create a Kinesis Data Analytics Studio notebook, you must set the mode to <code>INTERACTIVE</code>. However, for a Kinesis Data Analytics for Apache Flink application, the mode is optional.</p>
    #
    #   Enum, one of: ["STREAMING", "INTERACTIVE"]
    #
    #   @return [String]
    #
    ApplicationDetail = ::Struct.new(
      :application_arn,
      :application_description,
      :application_name,
      :runtime_environment,
      :service_execution_role,
      :application_status,
      :application_version_id,
      :create_timestamp,
      :last_update_timestamp,
      :application_configuration_description,
      :cloud_watch_logging_option_descriptions,
      :application_maintenance_configuration_description,
      :application_version_updated_from,
      :application_version_rolled_back_from,
      :conditional_token,
      :application_version_rolled_back_to,
      :application_mode,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The details of the maintenance configuration for the application.</p>
    #
    # @!attribute application_maintenance_window_start_time
    #   <p>The start time for the maintenance window.</p>
    #
    #   @return [String]
    #
    # @!attribute application_maintenance_window_end_time
    #   <p>The end time for the maintenance window.</p>
    #
    #   @return [String]
    #
    ApplicationMaintenanceConfigurationDescription = ::Struct.new(
      :application_maintenance_window_start_time,
      :application_maintenance_window_end_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the updated maintenance configuration for the application.</p>
    #
    # @!attribute application_maintenance_window_start_time_update
    #   <p>The updated start time for the maintenance window.</p>
    #
    #   @return [String]
    #
    ApplicationMaintenanceConfigurationUpdate = ::Struct.new(
      :application_maintenance_window_start_time_update,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ApplicationMode
    #
    module ApplicationMode
      # No documentation available.
      #
      STREAMING = "STREAMING"

      # No documentation available.
      #
      INTERACTIVE = "INTERACTIVE"
    end

    # <p>Specifies the method and snapshot to use when restarting an application using previously saved application state.</p>
    #
    # @!attribute application_restore_type
    #   <p>Specifies how the application should be restored.</p>
    #
    #   Enum, one of: ["SKIP_RESTORE_FROM_SNAPSHOT", "RESTORE_FROM_LATEST_SNAPSHOT", "RESTORE_FROM_CUSTOM_SNAPSHOT"]
    #
    #   @return [String]
    #
    # @!attribute snapshot_name
    #   <p>The identifier of an existing snapshot of application state to use to restart an application.
    #         The application uses this value if <code>RESTORE_FROM_CUSTOM_SNAPSHOT</code> is specified for the
    #         <code>ApplicationRestoreType</code>.</p>
    #
    #   @return [String]
    #
    ApplicationRestoreConfiguration = ::Struct.new(
      :application_restore_type,
      :snapshot_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ApplicationRestoreType
    #
    module ApplicationRestoreType
      # No documentation available.
      #
      SKIP_RESTORE_FROM_SNAPSHOT = "SKIP_RESTORE_FROM_SNAPSHOT"

      # No documentation available.
      #
      RESTORE_FROM_LATEST_SNAPSHOT = "RESTORE_FROM_LATEST_SNAPSHOT"

      # No documentation available.
      #
      RESTORE_FROM_CUSTOM_SNAPSHOT = "RESTORE_FROM_CUSTOM_SNAPSHOT"
    end

    # <p>Describes whether snapshots are enabled for a Flink-based Kinesis Data Analytics application.</p>
    #
    # @!attribute snapshots_enabled
    #   <p>Describes whether snapshots are enabled for a Flink-based Kinesis Data Analytics application.</p>
    #
    #   @return [Boolean]
    #
    ApplicationSnapshotConfiguration = ::Struct.new(
      :snapshots_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes whether snapshots are enabled for a Flink-based Kinesis Data Analytics application.</p>
    #
    # @!attribute snapshots_enabled
    #   <p>Describes whether snapshots are enabled for a Flink-based Kinesis Data Analytics application.</p>
    #
    #   @return [Boolean]
    #
    ApplicationSnapshotConfigurationDescription = ::Struct.new(
      :snapshots_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes updates to whether snapshots are enabled for a Flink-based Kinesis Data Analytics application.</p>
    #
    # @!attribute snapshots_enabled_update
    #   <p>Describes updates to whether snapshots are enabled for an application.</p>
    #
    #   @return [Boolean]
    #
    ApplicationSnapshotConfigurationUpdate = ::Struct.new(
      :snapshots_enabled_update,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ApplicationStatus
    #
    module ApplicationStatus
      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      STARTING = "STARTING"

      # No documentation available.
      #
      STOPPING = "STOPPING"

      # No documentation available.
      #
      READY = "READY"

      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      UPDATING = "UPDATING"

      # No documentation available.
      #
      AUTOSCALING = "AUTOSCALING"

      # No documentation available.
      #
      FORCE_STOPPING = "FORCE_STOPPING"

      # No documentation available.
      #
      ROLLING_BACK = "ROLLING_BACK"

      # No documentation available.
      #
      MAINTENANCE = "MAINTENANCE"

      # No documentation available.
      #
      ROLLED_BACK = "ROLLED_BACK"
    end

    # <p>Provides application summary information, including the application Amazon Resource Name (ARN), name, and status.</p>
    #
    # @!attribute application_name
    #   <p>The name of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute application_arn
    #   <p>The ARN of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute application_status
    #   <p>The status of the application.</p>
    #
    #   Enum, one of: ["DELETING", "STARTING", "STOPPING", "READY", "RUNNING", "UPDATING", "AUTOSCALING", "FORCE_STOPPING", "ROLLING_BACK", "MAINTENANCE", "ROLLED_BACK"]
    #
    #   @return [String]
    #
    # @!attribute application_version_id
    #   <p>Provides the current application version.</p>
    #
    #   @return [Integer]
    #
    # @!attribute runtime_environment
    #   <p>The runtime environment for the application.</p>
    #
    #   Enum, one of: ["SQL-1_0", "FLINK-1_6", "FLINK-1_8", "ZEPPELIN-FLINK-1_0", "FLINK-1_11", "FLINK-1_13", "ZEPPELIN-FLINK-2_0"]
    #
    #   @return [String]
    #
    # @!attribute application_mode
    #   <p>For a Kinesis Data Analytics for Apache Flink application, the mode is <code>STREAMING</code>. For a Kinesis Data Analytics Studio notebook, it is <code>INTERACTIVE</code>.</p>
    #
    #   Enum, one of: ["STREAMING", "INTERACTIVE"]
    #
    #   @return [String]
    #
    ApplicationSummary = ::Struct.new(
      :application_name,
      :application_arn,
      :application_status,
      :application_version_id,
      :runtime_environment,
      :application_mode,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The summary of the application version.</p>
    #
    # @!attribute application_version_id
    #   <p>The ID of the application version. Kinesis Data Analytics updates the <code>ApplicationVersionId</code> each time you update the application.</p>
    #
    #   @return [Integer]
    #
    # @!attribute application_status
    #   <p>The status of the application.</p>
    #
    #   Enum, one of: ["DELETING", "STARTING", "STOPPING", "READY", "RUNNING", "UPDATING", "AUTOSCALING", "FORCE_STOPPING", "ROLLING_BACK", "MAINTENANCE", "ROLLED_BACK"]
    #
    #   @return [String]
    #
    ApplicationVersionSummary = ::Struct.new(
      :application_version_id,
      :application_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ArtifactType
    #
    module ArtifactType
      # No documentation available.
      #
      UDF = "UDF"

      # No documentation available.
      #
      DEPENDENCY_JAR = "DEPENDENCY_JAR"
    end

    # <p>For a SQL-based Kinesis Data Analytics application, provides additional mapping information when the record
    #       format uses delimiters, such as CSV. For example, the following sample records use CSV format,
    #       where the records use the <i>'\n'</i> as the row delimiter and a comma (",") as
    #       the column delimiter: </p>
    #
    #          <p>
    #             <code>"name1", "address1"</code>
    #          </p>
    #          <p>
    #             <code>"name2", "address2"</code>
    #          </p>
    #
    # @!attribute record_row_delimiter
    #   <p>The row delimiter. For example, in a CSV format, <i>'\n'</i> is the typical
    #         row delimiter.</p>
    #
    #   @return [String]
    #
    # @!attribute record_column_delimiter
    #   <p>The column delimiter. For example, in a CSV format, a comma (",") is the typical column
    #         delimiter.</p>
    #
    #   @return [String]
    #
    CSVMappingParameters = ::Struct.new(
      :record_row_delimiter,
      :record_column_delimiter,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configuration parameters for the default Amazon Glue database. You use this database for SQL queries that you write in a Kinesis Data Analytics Studio notebook.</p>
    #
    # @!attribute glue_data_catalog_configuration
    #   <p>The configuration parameters for the default Amazon Glue database. You use this database for Apache Flink SQL queries and table API transforms that you write in a Kinesis Data Analytics Studio notebook.</p>
    #
    #   @return [GlueDataCatalogConfiguration]
    #
    CatalogConfiguration = ::Struct.new(
      :glue_data_catalog_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configuration parameters for the default Amazon Glue database. You use this database for Apache Flink SQL queries and table API transforms that you write in a Kinesis Data Analytics Studio notebook.</p>
    #
    # @!attribute glue_data_catalog_configuration_description
    #   <p>The configuration parameters for the default Amazon Glue database. You use this database for SQL queries that you write in a Kinesis Data Analytics Studio notebook.</p>
    #
    #   @return [GlueDataCatalogConfigurationDescription]
    #
    CatalogConfigurationDescription = ::Struct.new(
      :glue_data_catalog_configuration_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Updates to the configuration parameters for the default Amazon Glue database. You use this database for SQL queries that you write in a Kinesis Data Analytics Studio notebook.</p>
    #
    # @!attribute glue_data_catalog_configuration_update
    #   <p>Updates to the configuration parameters for the default Amazon Glue database. You use this database for SQL queries that you write in a Kinesis Data Analytics Studio notebook.</p>
    #
    #   @return [GlueDataCatalogConfigurationUpdate]
    #
    CatalogConfigurationUpdate = ::Struct.new(
      :glue_data_catalog_configuration_update,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes an application's checkpointing configuration. Checkpointing is the process of persisting application state for fault
    #       tolerance.
    #       For more information, see
    #       <a href="https://ci.apache.org/projects/flink/flink-docs-release-1.8/concepts/programming-model.html#checkpoints-for-fault-tolerance">
    #         Checkpoints for Fault Tolerance</a> in the
    #       <a href="https://ci.apache.org/projects/flink/flink-docs-release-1.8/">Apache Flink Documentation</a>.</p>
    #
    # @!attribute configuration_type
    #   <p>Describes whether the application uses Kinesis Data Analytics' default checkpointing behavior.
    #       You must set this property to <code>CUSTOM</code> in order to set the
    #         <code>CheckpointingEnabled</code>, <code>CheckpointInterval</code>, or <code>MinPauseBetweenCheckpoints</code> parameters.</p>
    #            <note>
    #               <p>If this value is set to <code>DEFAULT</code>, the application will use the following values, even if they are set to other values using APIs or
    #       application code:</p>
    #               <ul>
    #                  <li>
    #                     <p>
    #                        <b>CheckpointingEnabled:</b> true</p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <b>CheckpointInterval:</b> 60000</p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <b>MinPauseBetweenCheckpoints:</b> 5000</p>
    #                  </li>
    #               </ul>
    #            </note>
    #
    #   Enum, one of: ["DEFAULT", "CUSTOM"]
    #
    #   @return [String]
    #
    # @!attribute checkpointing_enabled
    #   <p>Describes whether checkpointing is enabled for a Flink-based Kinesis Data Analytics application.</p>
    #            <note>
    #               <p>If <code>CheckpointConfiguration.ConfigurationType</code> is <code>DEFAULT</code>,
    #       the application will use a <code>CheckpointingEnabled</code> value of <code>true</code>, even if this value
    #         is set to another value using this API or in application code.</p>
    #            </note>
    #
    #   @return [Boolean]
    #
    # @!attribute checkpoint_interval
    #   <p>Describes the interval in milliseconds between checkpoint operations. </p>
    #            <note>
    #               <p>If <code>CheckpointConfiguration.ConfigurationType</code> is <code>DEFAULT</code>,
    #       the application will use a <code>CheckpointInterval</code> value of 60000, even if this value is set
    #         to another value using this API or in application code.</p>
    #            </note>
    #
    #   @return [Integer]
    #
    # @!attribute min_pause_between_checkpoints
    #   <p>Describes the minimum time in milliseconds after a checkpoint operation completes that a
    #         new checkpoint operation can start. If a checkpoint operation takes longer than the
    #           <code>CheckpointInterval</code>, the application otherwise performs continual checkpoint
    #         operations. For more information, see <a href="https://ci.apache.org/projects/flink/flink-docs-release-1.8/ops/state/large_state_tuning.html tuning-checkpointing"> Tuning Checkpointing</a> in the <a href="https://ci.apache.org/projects/flink/flink-docs-release-1.8/">Apache Flink
    #           Documentation</a>.</p>
    #            <note>
    #               <p>If <code>CheckpointConfiguration.ConfigurationType</code> is <code>DEFAULT</code>,
    #       the application will use a <code>MinPauseBetweenCheckpoints</code> value of 5000, even if this value is set using this
    #         API or in application code.</p>
    #            </note>
    #
    #   @return [Integer]
    #
    CheckpointConfiguration = ::Struct.new(
      :configuration_type,
      :checkpointing_enabled,
      :checkpoint_interval,
      :min_pause_between_checkpoints,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes checkpointing parameters for a Flink-based Kinesis Data Analytics application.</p>
    #
    # @!attribute configuration_type
    #   <p>Describes whether the application uses the default checkpointing behavior in Kinesis Data Analytics. </p>
    #            <note>
    #               <p>If this value is set to <code>DEFAULT</code>, the application will use the following values,
    #         even if they are set to other values using APIs or
    #       application code:</p>
    #               <ul>
    #                  <li>
    #                     <p>
    #                        <b>CheckpointingEnabled:</b> true</p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <b>CheckpointInterval:</b> 60000</p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <b>MinPauseBetweenCheckpoints:</b> 5000</p>
    #                  </li>
    #               </ul>
    #            </note>
    #
    #   Enum, one of: ["DEFAULT", "CUSTOM"]
    #
    #   @return [String]
    #
    # @!attribute checkpointing_enabled
    #   <p>Describes whether checkpointing is enabled for a Flink-based Kinesis Data Analytics application.</p>
    #            <note>
    #               <p>If <code>CheckpointConfiguration.ConfigurationType</code> is <code>DEFAULT</code>,
    #       the application will use a <code>CheckpointingEnabled</code> value of <code>true</code>, even if this value is set to
    #         another value using this API or in application code.</p>
    #            </note>
    #
    #   @return [Boolean]
    #
    # @!attribute checkpoint_interval
    #   <p>Describes the interval in milliseconds between checkpoint operations. </p>
    #            <note>
    #               <p>If <code>CheckpointConfiguration.ConfigurationType</code> is <code>DEFAULT</code>,
    #       the application will use a <code>CheckpointInterval</code> value of 60000, even if this value is set to another value
    #         using this API or in application code.</p>
    #            </note>
    #
    #   @return [Integer]
    #
    # @!attribute min_pause_between_checkpoints
    #   <p>Describes the minimum time in milliseconds after a checkpoint operation completes that a new checkpoint operation
    #         can start. </p>
    #            <note>
    #               <p>If <code>CheckpointConfiguration.ConfigurationType</code> is <code>DEFAULT</code>,
    #       the application will use a <code>MinPauseBetweenCheckpoints</code> value of 5000, even if this value is set using this
    #         API or in application code.</p>
    #            </note>
    #
    #   @return [Integer]
    #
    CheckpointConfigurationDescription = ::Struct.new(
      :configuration_type,
      :checkpointing_enabled,
      :checkpoint_interval,
      :min_pause_between_checkpoints,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes updates to the checkpointing parameters for a Flink-based Kinesis Data Analytics application.</p>
    #
    # @!attribute configuration_type_update
    #   <p>Describes updates to whether the application uses the default checkpointing behavior of
    #         Kinesis Data Analytics. You must set this property to <code>CUSTOM</code> in order to set the
    #         <code>CheckpointingEnabled</code>, <code>CheckpointInterval</code>, or <code>MinPauseBetweenCheckpoints</code> parameters.
    #         </p>
    #            <note>
    #               <p>If this value is set to <code>DEFAULT</code>, the application will use the following values, even if they are
    #         set to other values using APIs or
    #       application code:</p>
    #               <ul>
    #                  <li>
    #                     <p>
    #                        <b>CheckpointingEnabled:</b> true</p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <b>CheckpointInterval:</b> 60000</p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <b>MinPauseBetweenCheckpoints:</b> 5000</p>
    #                  </li>
    #               </ul>
    #            </note>
    #
    #   Enum, one of: ["DEFAULT", "CUSTOM"]
    #
    #   @return [String]
    #
    # @!attribute checkpointing_enabled_update
    #   <p>Describes updates to whether checkpointing is enabled for an application.</p>
    #            <note>
    #               <p>If <code>CheckpointConfiguration.ConfigurationType</code> is <code>DEFAULT</code>,
    #       the application will use a <code>CheckpointingEnabled</code> value of <code>true</code>, even if this value is set to
    #         another value using this API or in application code.</p>
    #            </note>
    #
    #   @return [Boolean]
    #
    # @!attribute checkpoint_interval_update
    #   <p>Describes updates to the interval in milliseconds between checkpoint operations.</p>
    #            <note>
    #               <p>If <code>CheckpointConfiguration.ConfigurationType</code> is <code>DEFAULT</code>,
    #       the application will use a <code>CheckpointInterval</code> value of 60000, even if this value is set to another value
    #         using this API or in application code.</p>
    #            </note>
    #
    #   @return [Integer]
    #
    # @!attribute min_pause_between_checkpoints_update
    #   <p>Describes updates to the minimum time in milliseconds after a checkpoint operation completes that a new checkpoint operation
    #         can start.</p>
    #            <note>
    #               <p>If <code>CheckpointConfiguration.ConfigurationType</code> is <code>DEFAULT</code>,
    #       the application will use a <code>MinPauseBetweenCheckpoints</code> value of 5000, even if this value is set using this API or
    #         in application code.</p>
    #            </note>
    #
    #   @return [Integer]
    #
    CheckpointConfigurationUpdate = ::Struct.new(
      :configuration_type_update,
      :checkpointing_enabled_update,
      :checkpoint_interval_update,
      :min_pause_between_checkpoints_update,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides a description of Amazon CloudWatch logging options, including the log stream
    #       Amazon Resource Name (ARN). </p>
    #
    # @!attribute log_stream_arn
    #   <p>The ARN of the CloudWatch log to receive application messages.</p>
    #
    #   @return [String]
    #
    CloudWatchLoggingOption = ::Struct.new(
      :log_stream_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the Amazon CloudWatch logging option.</p>
    #
    # @!attribute cloud_watch_logging_option_id
    #   <p>The ID of the CloudWatch logging option description.</p>
    #
    #   @return [String]
    #
    # @!attribute log_stream_arn
    #   <p>The Amazon Resource Name (ARN) of the CloudWatch log to receive application
    #         messages.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The IAM ARN of the role to use to send application messages. </p>
    #            <note>
    #               <p>Provided for backward compatibility. Applications created with the current API version have an
    #           application-level service execution role rather than a resource-level role.</p>
    #            </note>
    #
    #   @return [String]
    #
    CloudWatchLoggingOptionDescription = ::Struct.new(
      :cloud_watch_logging_option_id,
      :log_stream_arn,
      :role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the Amazon CloudWatch logging option updates.</p>
    #
    # @!attribute cloud_watch_logging_option_id
    #   <p>The ID of the CloudWatch logging option to update</p>
    #
    #   @return [String]
    #
    # @!attribute log_stream_arn_update
    #   <p>The Amazon Resource Name (ARN) of the CloudWatch log to receive application
    #         messages.</p>
    #
    #   @return [String]
    #
    CloudWatchLoggingOptionUpdate = ::Struct.new(
      :cloud_watch_logging_option_id,
      :log_stream_arn_update,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies either the application code, or the location of the application code, for a
    #       Flink-based Kinesis Data Analytics application. </p>
    #
    # @!attribute text_content
    #   <p>The text-format code for a Flink-based Kinesis Data Analytics application.</p>
    #
    #   @return [String]
    #
    # @!attribute zip_file_content
    #   <p>The zip-format code for a Flink-based Kinesis Data Analytics application.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_content_location
    #   <p>Information about the Amazon S3 bucket that contains the application code.</p>
    #
    #   @return [S3ContentLocation]
    #
    CodeContent = ::Struct.new(
      :text_content,
      :zip_file_content,
      :s3_content_location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes details about the code of a Kinesis Data Analytics application.</p>
    #
    # @!attribute text_content
    #   <p>The text-format code</p>
    #
    #   @return [String]
    #
    # @!attribute code_md5
    #   <p>The checksum that can be used to validate zip-format code.</p>
    #
    #   @return [String]
    #
    # @!attribute code_size
    #   <p>The size in bytes of the application code. Can be used to validate zip-format code.</p>
    #
    #   @return [Integer]
    #
    # @!attribute s3_application_code_location_description
    #   <p>The S3 bucket Amazon Resource Name (ARN), file key, and object version of the application
    #         code stored in Amazon S3.</p>
    #
    #   @return [S3ApplicationCodeLocationDescription]
    #
    CodeContentDescription = ::Struct.new(
      :text_content,
      :code_md5,
      :code_size,
      :s3_application_code_location_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CodeContentType
    #
    module CodeContentType
      # No documentation available.
      #
      PLAINTEXT = "PLAINTEXT"

      # No documentation available.
      #
      ZIPFILE = "ZIPFILE"
    end

    # <p>Describes an update to the code of an application. Not supported for Apache Zeppelin.</p>
    #
    # @!attribute text_content_update
    #   <p>Describes an update to the text code for an application.</p>
    #
    #   @return [String]
    #
    # @!attribute zip_file_content_update
    #   <p>Describes an update to the zipped code for an application.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_content_location_update
    #   <p>Describes an update to the location of code for an application.</p>
    #
    #   @return [S3ContentLocationUpdate]
    #
    CodeContentUpdate = ::Struct.new(
      :text_content_update,
      :zip_file_content_update,
      :s3_content_location_update,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The user-provided application code (query) is not valid. This can be a simple syntax
    #       error.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    CodeValidationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Exception thrown as a result of concurrent modifications to an application. This error can
    #       be the result of attempting to modify an application without using the current application
    #       ID.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ConcurrentModificationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ConfigurationType
    #
    module ConfigurationType
      # No documentation available.
      #
      DEFAULT = "DEFAULT"

      # No documentation available.
      #
      CUSTOM = "CUSTOM"
    end

    # @!attribute application_name
    #   <p>The name of your application (for example, <code>sample-app</code>).</p>
    #
    #   @return [String]
    #
    # @!attribute application_description
    #   <p>A summary description of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute runtime_environment
    #   <p>The runtime environment for the application (<code>SQL-1_0</code>, <code>FLINK-1_6</code>, <code>FLINK-1_8</code>, or <code>FLINK-1_11</code>).</p>
    #
    #   Enum, one of: ["SQL-1_0", "FLINK-1_6", "FLINK-1_8", "ZEPPELIN-FLINK-1_0", "FLINK-1_11", "FLINK-1_13", "ZEPPELIN-FLINK-2_0"]
    #
    #   @return [String]
    #
    # @!attribute service_execution_role
    #   <p>The IAM role used by the application to access Kinesis data streams, Kinesis Data Firehose
    #         delivery streams, Amazon S3 objects, and other external resources.</p>
    #
    #   @return [String]
    #
    # @!attribute application_configuration
    #   <p>Use this parameter to configure the application.</p>
    #
    #   @return [ApplicationConfiguration]
    #
    # @!attribute cloud_watch_logging_options
    #   <p>Use this parameter to configure an Amazon CloudWatch log stream to monitor application
    #         configuration errors.
    #         </p>
    #
    #   @return [Array<CloudWatchLoggingOption>]
    #
    # @!attribute tags
    #   <p>A list of one or more tags to assign to the application. A tag is a key-value pair that identifies an
    #           application. Note that the maximum number of application tags includes system tags. The maximum number of
    #           user-defined application tags is 50.
    #           For more information, see
    #           <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/java/how-tagging.html">Using Tagging</a>.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute application_mode
    #   <p>Use the <code>STREAMING</code> mode to create a Kinesis Data Analytics Studio notebook. To create a Kinesis Data Analytics Studio notebook, use the
    #       <code>INTERACTIVE</code> mode.</p>
    #
    #   Enum, one of: ["STREAMING", "INTERACTIVE"]
    #
    #   @return [String]
    #
    CreateApplicationInput = ::Struct.new(
      :application_name,
      :application_description,
      :runtime_environment,
      :service_execution_role,
      :application_configuration,
      :cloud_watch_logging_options,
      :tags,
      :application_mode,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_detail
    #   <p>In response to your <code>CreateApplication</code> request, Kinesis Data Analytics returns a
    #         response with details of the application it created.</p>
    #
    #   @return [ApplicationDetail]
    #
    CreateApplicationOutput = ::Struct.new(
      :application_detail,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_name
    #   <p>The name of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute url_type
    #   <p>The type of the extension for which to create and return a URL. Currently, the only valid
    #               extension URL type is <code>FLINK_DASHBOARD_URL</code>. </p>
    #
    #   Enum, one of: ["FLINK_DASHBOARD_URL", "ZEPPELIN_UI_URL"]
    #
    #   @return [String]
    #
    # @!attribute session_expiration_duration_in_seconds
    #   <p>The duration in seconds for which the returned URL will be valid.</p>
    #
    #   @return [Integer]
    #
    CreateApplicationPresignedUrlInput = ::Struct.new(
      :application_name,
      :url_type,
      :session_expiration_duration_in_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute authorized_url
    #   <p>The URL of the extension.</p>
    #
    #   @return [String]
    #
    CreateApplicationPresignedUrlOutput = ::Struct.new(
      :authorized_url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_name
    #   <p>The name of an existing application</p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_name
    #   <p>An identifier for the application snapshot.</p>
    #
    #   @return [String]
    #
    CreateApplicationSnapshotInput = ::Struct.new(
      :application_name,
      :snapshot_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CreateApplicationSnapshotOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies dependency JARs, as well as JAR files that contain user-defined functions (UDF).</p>
    #
    # @!attribute artifact_type
    #   <p>
    #               <code>UDF</code> stands for user-defined functions. This type of artifact must be in an S3 bucket. A <code>DEPENDENCY_JAR</code> can be in either Maven or an S3 bucket.</p>
    #
    #   Enum, one of: ["UDF", "DEPENDENCY_JAR"]
    #
    #   @return [String]
    #
    # @!attribute s3_content_location
    #   <p>For a Kinesis Data Analytics application provides a
    #         description of an Amazon S3 object, including the Amazon Resource Name (ARN) of the S3 bucket,
    #         the name of the Amazon S3 object that contains the data, and the version number of the Amazon
    #         S3 object that contains the data. </p>
    #
    #   @return [S3ContentLocation]
    #
    # @!attribute maven_reference
    #   <p>The parameters required to fully specify a Maven reference.</p>
    #
    #   @return [MavenReference]
    #
    CustomArtifactConfiguration = ::Struct.new(
      :artifact_type,
      :s3_content_location,
      :maven_reference,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a dependency JAR or a JAR of user-defined functions.</p>
    #
    # @!attribute artifact_type
    #   <p>
    #               <code>UDF</code> stands for user-defined functions. This type of artifact must be in an S3 bucket. A <code>DEPENDENCY_JAR</code> can be in either Maven or an S3 bucket.</p>
    #
    #   Enum, one of: ["UDF", "DEPENDENCY_JAR"]
    #
    #   @return [String]
    #
    # @!attribute s3_content_location_description
    #   <p>For a Kinesis Data Analytics application provides a
    #         description of an Amazon S3 object, including the Amazon Resource Name (ARN) of the S3 bucket,
    #         the name of the Amazon S3 object that contains the data, and the version number of the Amazon
    #         S3 object that contains the data. </p>
    #
    #   @return [S3ContentLocation]
    #
    # @!attribute maven_reference_description
    #   <p>The parameters that are required to specify a Maven dependency.</p>
    #
    #   @return [MavenReference]
    #
    CustomArtifactConfigurationDescription = ::Struct.new(
      :artifact_type,
      :s3_content_location_description,
      :maven_reference_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_name
    #   <p>The application name.</p>
    #
    #   @return [String]
    #
    # @!attribute current_application_version_id
    #   <p>The version ID of the application. You must provide the
    #           <code>CurrentApplicationVersionId</code> or the <code>ConditionalToken</code>. You can
    #         retrieve the application version ID using <a>DescribeApplication</a>. For better
    #         concurrency support, use the <code>ConditionalToken</code> parameter instead of
    #           <code>CurrentApplicationVersionId</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute cloud_watch_logging_option_id
    #   <p>The <code>CloudWatchLoggingOptionId</code> of the Amazon CloudWatch logging option to
    #            delete. You can get the <code>CloudWatchLoggingOptionId</code> by using the <a>DescribeApplication</a> operation. </p>
    #
    #   @return [String]
    #
    # @!attribute conditional_token
    #   <p>A value you use to implement strong concurrency for application updates. You must provide
    #         the <code>CurrentApplicationVersionId</code> or the <code>ConditionalToken</code>. You get the
    #         application's current <code>ConditionalToken</code> using <a>DescribeApplication</a>. For better concurrency support, use the <code>ConditionalToken</code> parameter instead of
    #           <code>CurrentApplicationVersionId</code>.</p>
    #
    #   @return [String]
    #
    DeleteApplicationCloudWatchLoggingOptionInput = ::Struct.new(
      :application_name,
      :current_application_version_id,
      :cloud_watch_logging_option_id,
      :conditional_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_arn
    #   <p>The application's Amazon Resource Name (ARN).</p>
    #
    #   @return [String]
    #
    # @!attribute application_version_id
    #   <p>The version ID of the application. Kinesis Data Analytics updates the
    #           <code>ApplicationVersionId</code> each time you change the CloudWatch logging
    #         options.</p>
    #
    #   @return [Integer]
    #
    # @!attribute cloud_watch_logging_option_descriptions
    #   <p>The descriptions of the remaining CloudWatch logging options for the application.</p>
    #
    #   @return [Array<CloudWatchLoggingOptionDescription>]
    #
    DeleteApplicationCloudWatchLoggingOptionOutput = ::Struct.new(
      :application_arn,
      :application_version_id,
      :cloud_watch_logging_option_descriptions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_name
    #   <p>The name of the application to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute create_timestamp
    #   <p>Use the <code>DescribeApplication</code> operation to get this value.</p>
    #
    #   @return [Time]
    #
    DeleteApplicationInput = ::Struct.new(
      :application_name,
      :create_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_name
    #   <p>The name of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute current_application_version_id
    #   <p>The application version.
    #         You can use the <a>DescribeApplication</a> operation to get the current application version.
    #         If the version specified is not the current version, the
    #         <code>ConcurrentModificationException</code> is returned.
    #       </p>
    #
    #   @return [Integer]
    #
    # @!attribute input_id
    #   <p>The ID of the input configuration from which to delete the input processing
    #         configuration. You can get a list of the input IDs for an application by using the <a>DescribeApplication</a> operation.</p>
    #
    #   @return [String]
    #
    DeleteApplicationInputProcessingConfigurationInput = ::Struct.new(
      :application_name,
      :current_application_version_id,
      :input_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_arn
    #   <p>The Amazon Resource Name (ARN) of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute application_version_id
    #   <p>The current application version ID.</p>
    #
    #   @return [Integer]
    #
    DeleteApplicationInputProcessingConfigurationOutput = ::Struct.new(
      :application_arn,
      :application_version_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteApplicationOperationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_name
    #   <p>The application name.</p>
    #
    #   @return [String]
    #
    # @!attribute current_application_version_id
    #   <p>The application version.
    #         You can use the <a>DescribeApplication</a> operation to get the current application version.
    #         If the version specified is not the current version, the
    #         <code>ConcurrentModificationException</code> is returned.
    #       </p>
    #
    #   @return [Integer]
    #
    # @!attribute output_id
    #   <p>The ID of the configuration to delete. Each output configuration that is added to the
    #         application (either when the application is created or later) using the <a>AddApplicationOutput</a> operation has a unique ID. You need to provide the ID to
    #         uniquely identify the output configuration that you want to delete from the application
    #         configuration. You can use the <a>DescribeApplication</a> operation to get the
    #         specific <code>OutputId</code>. </p>
    #
    #   @return [String]
    #
    DeleteApplicationOutputInput = ::Struct.new(
      :application_name,
      :current_application_version_id,
      :output_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_arn
    #   <p>The application Amazon Resource Name (ARN).</p>
    #
    #   @return [String]
    #
    # @!attribute application_version_id
    #   <p>The current application version ID.</p>
    #
    #   @return [Integer]
    #
    DeleteApplicationOutputOutput = ::Struct.new(
      :application_arn,
      :application_version_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_name
    #   <p>The name of an existing application.</p>
    #
    #   @return [String]
    #
    # @!attribute current_application_version_id
    #   <p>The current application version.
    #         You can use the <a>DescribeApplication</a> operation to get the current application version.
    #         If the version specified
    #         is not the current version, the <code>ConcurrentModificationException</code> is returned.</p>
    #
    #   @return [Integer]
    #
    # @!attribute reference_id
    #   <p>The ID of the reference data source. When you add a reference data source to your
    #         application using the <a>AddApplicationReferenceDataSource</a>, Kinesis Data Analytics assigns an ID.
    #         You can use the <a>DescribeApplication</a> operation to
    #         get the reference ID. </p>
    #
    #   @return [String]
    #
    DeleteApplicationReferenceDataSourceInput = ::Struct.new(
      :application_name,
      :current_application_version_id,
      :reference_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_arn
    #   <p>The application Amazon Resource Name (ARN).</p>
    #
    #   @return [String]
    #
    # @!attribute application_version_id
    #   <p>The updated version ID of the application.</p>
    #
    #   @return [Integer]
    #
    DeleteApplicationReferenceDataSourceOutput = ::Struct.new(
      :application_arn,
      :application_version_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_name
    #   <p>The name of an existing application.</p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_name
    #   <p>The identifier for the snapshot delete.</p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_creation_timestamp
    #   <p>The creation timestamp of the application snapshot to delete. You can retrieve this value
    #         using
    #         or .</p>
    #
    #   @return [Time]
    #
    DeleteApplicationSnapshotInput = ::Struct.new(
      :application_name,
      :snapshot_name,
      :snapshot_creation_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteApplicationSnapshotOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_name
    #   <p>The name of an existing application.</p>
    #
    #   @return [String]
    #
    # @!attribute current_application_version_id
    #   <p>The current application version ID. You must provide the
    #           <code>CurrentApplicationVersionId</code> or the <code>ConditionalToken</code>. You can
    #         retrieve the application version ID using <a>DescribeApplication</a>. For better
    #         concurrency support, use the <code>ConditionalToken</code> parameter instead of
    #           <code>CurrentApplicationVersionId</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute vpc_configuration_id
    #   <p>The ID of the VPC configuration to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute conditional_token
    #   <p>A value you use to implement strong concurrency for application updates. You must provide
    #         the <code>CurrentApplicationVersionId</code> or the <code>ConditionalToken</code>. You get the
    #         application's current <code>ConditionalToken</code> using <a>DescribeApplication</a>. For better concurrency support, use the <code>ConditionalToken</code> parameter instead of
    #           <code>CurrentApplicationVersionId</code>.</p>
    #
    #   @return [String]
    #
    DeleteApplicationVpcConfigurationInput = ::Struct.new(
      :application_name,
      :current_application_version_id,
      :vpc_configuration_id,
      :conditional_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_arn
    #   <p>The ARN of the Kinesis Data Analytics application.</p>
    #
    #   @return [String]
    #
    # @!attribute application_version_id
    #   <p>The updated version ID of the application.</p>
    #
    #   @return [Integer]
    #
    DeleteApplicationVpcConfigurationOutput = ::Struct.new(
      :application_arn,
      :application_version_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The information required to deploy a Kinesis Data Analytics Studio notebook as an application with durable state.</p>
    #
    # @!attribute s3_content_location
    #   <p>The description of an Amazon S3 object that contains the Amazon Data Analytics application, including the Amazon Resource Name (ARN) of the S3 bucket, the name of the Amazon S3 object that contains the data, and the version number of the Amazon S3 object that contains the data.
    #       </p>
    #
    #   @return [S3ContentBaseLocation]
    #
    DeployAsApplicationConfiguration = ::Struct.new(
      :s3_content_location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configuration information required to deploy an Amazon Data Analytics Studio notebook as an application with durable state.</p>
    #
    # @!attribute s3_content_location_description
    #   <p>The location that holds the data required to specify an Amazon Data Analytics application.</p>
    #
    #   @return [S3ContentBaseLocationDescription]
    #
    DeployAsApplicationConfigurationDescription = ::Struct.new(
      :s3_content_location_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Updates to the configuration information required to deploy an Amazon Data Analytics Studio notebook as an application with durable state.</p>
    #
    # @!attribute s3_content_location_update
    #   <p>Updates to the location that holds the data required to specify an Amazon Data Analytics application.</p>
    #
    #   @return [S3ContentBaseLocationUpdate]
    #
    DeployAsApplicationConfigurationUpdate = ::Struct.new(
      :s3_content_location_update,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_name
    #   <p>The name of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute include_additional_details
    #   <p>Displays verbose information about a Kinesis Data Analytics application, including the application's job plan.</p>
    #
    #   @return [Boolean]
    #
    DescribeApplicationInput = ::Struct.new(
      :application_name,
      :include_additional_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_detail
    #   <p>Provides a description of the application, such as the application's Amazon Resource Name
    #         (ARN), status, and latest version.</p>
    #
    #   @return [ApplicationDetail]
    #
    DescribeApplicationOutput = ::Struct.new(
      :application_detail,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_name
    #   <p>The name of an existing application.</p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_name
    #   <p>The identifier of an application snapshot. You can retrieve this value using
    #         .</p>
    #
    #   @return [String]
    #
    DescribeApplicationSnapshotInput = ::Struct.new(
      :application_name,
      :snapshot_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute snapshot_details
    #   <p>An object containing information about the application snapshot.</p>
    #
    #   @return [SnapshotDetails]
    #
    DescribeApplicationSnapshotOutput = ::Struct.new(
      :snapshot_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_name
    #   <p>The name of the application for which you want to get the version description.</p>
    #
    #   @return [String]
    #
    # @!attribute application_version_id
    #   <p>The ID of the application version for which you want to get the description.</p>
    #
    #   @return [Integer]
    #
    DescribeApplicationVersionInput = ::Struct.new(
      :application_name,
      :application_version_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_version_detail
    #   <p>Describes the application, including the application Amazon Resource Name (ARN), status,
    #         latest version, and input and output configurations.</p>
    #
    #   @return [ApplicationDetail]
    #
    DescribeApplicationVersionOutput = ::Struct.new(
      :application_version_detail,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the data format when records are written to the destination in a SQL-based Kinesis Data Analytics application. </p>
    #
    # @!attribute record_format_type
    #   <p>Specifies the format of the records on the output stream.</p>
    #
    #   Enum, one of: ["JSON", "CSV"]
    #
    #   @return [String]
    #
    DestinationSchema = ::Struct.new(
      :record_format_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the streaming source.</p>
    #
    #   @return [String]
    #
    # @!attribute service_execution_role
    #   <p>The ARN of the role that is used to access the streaming source.</p>
    #
    #   @return [String]
    #
    # @!attribute input_starting_position_configuration
    #   <p>The point at which you want Kinesis Data Analytics to start reading records from the
    #         specified streaming source discovery purposes.</p>
    #
    #   @return [InputStartingPositionConfiguration]
    #
    # @!attribute s3_configuration
    #   <p>Specify this parameter to discover a schema from data in an Amazon S3
    #         object.</p>
    #
    #   @return [S3Configuration]
    #
    # @!attribute input_processing_configuration
    #   <p>The <a>InputProcessingConfiguration</a> to use to preprocess the records
    #         before discovering the schema of the records.</p>
    #
    #   @return [InputProcessingConfiguration]
    #
    DiscoverInputSchemaInput = ::Struct.new(
      :resource_arn,
      :service_execution_role,
      :input_starting_position_configuration,
      :s3_configuration,
      :input_processing_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute input_schema
    #   <p>The schema inferred from the streaming source. It identifies the format of the data in the
    #         streaming source and how each data element maps to corresponding columns in the in-application
    #         stream that you can create.</p>
    #
    #   @return [SourceSchema]
    #
    # @!attribute parsed_input_records
    #   <p>An array of elements, where each element corresponds to a row in a stream record
    #         (a stream record can have more than one row).</p>
    #
    #   @return [Array<Array<String>>]
    #
    # @!attribute processed_input_records
    #   <p>The stream data that was modified by the processor specified in the
    #           <code>InputProcessingConfiguration</code> parameter.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute raw_input_records
    #   <p>The raw stream data that was sampled to infer the schema.</p>
    #
    #   @return [Array<String>]
    #
    DiscoverInputSchemaOutput = ::Struct.new(
      :input_schema,
      :parsed_input_records,
      :processed_input_records,
      :raw_input_records,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes execution properties for a Flink-based Kinesis Data Analytics application.</p>
    #
    # @!attribute property_groups
    #   <p>Describes the execution property groups.</p>
    #
    #   @return [Array<PropertyGroup>]
    #
    EnvironmentProperties = ::Struct.new(
      :property_groups,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the execution properties for an Apache Flink runtime.</p>
    #
    # @!attribute property_group_descriptions
    #   <p>Describes the execution property groups.</p>
    #
    #   @return [Array<PropertyGroup>]
    #
    EnvironmentPropertyDescriptions = ::Struct.new(
      :property_group_descriptions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes updates to the execution property groups for a Flink-based Kinesis Data Analytics application or a Studio notebook.</p>
    #
    # @!attribute property_groups
    #   <p>Describes updates to the execution property groups.</p>
    #
    #   @return [Array<PropertyGroup>]
    #
    EnvironmentPropertyUpdates = ::Struct.new(
      :property_groups,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes configuration parameters for a Flink-based Kinesis Data Analytics application or a Studio notebook.</p>
    #
    # @!attribute checkpoint_configuration
    #   <p>Describes an application's checkpointing configuration. Checkpointing is the
    #         process of persisting application state for fault tolerance.
    #         For more information, see
    #         <a href="https://ci.apache.org/projects/flink/flink-docs-release-1.8/concepts/programming-model.html checkpoints-for-fault-tolerance">
    #           Checkpoints for Fault Tolerance</a> in the
    #         <a href="https://ci.apache.org/projects/flink/flink-docs-release-1.8/">Apache Flink Documentation</a>. </p>
    #
    #   @return [CheckpointConfiguration]
    #
    # @!attribute monitoring_configuration
    #   <p>Describes configuration parameters for Amazon CloudWatch logging for an
    #         application.</p>
    #
    #   @return [MonitoringConfiguration]
    #
    # @!attribute parallelism_configuration
    #   <p>Describes parameters for how an application executes multiple tasks simultaneously.</p>
    #
    #   @return [ParallelismConfiguration]
    #
    FlinkApplicationConfiguration = ::Struct.new(
      :checkpoint_configuration,
      :monitoring_configuration,
      :parallelism_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes configuration parameters for a Flink-based Kinesis Data Analytics application.</p>
    #
    # @!attribute checkpoint_configuration_description
    #   <p>Describes an application's checkpointing configuration. Checkpointing is the process of persisting application state
    #         for fault tolerance.</p>
    #
    #   @return [CheckpointConfigurationDescription]
    #
    # @!attribute monitoring_configuration_description
    #   <p>Describes configuration parameters for Amazon CloudWatch logging for an
    #         application.</p>
    #
    #   @return [MonitoringConfigurationDescription]
    #
    # @!attribute parallelism_configuration_description
    #   <p>Describes parameters for how an application executes multiple tasks simultaneously.</p>
    #
    #   @return [ParallelismConfigurationDescription]
    #
    # @!attribute job_plan_description
    #   <p>The job plan for an application. For more information about the job plan, see <a href="https://ci.apache.org/projects/flink/flink-docs-release-1.8/internals/job_scheduling.html">Jobs and Scheduling</a> in the <a href="https://ci.apache.org/projects/flink/flink-docs-release-1.8/">Apache Flink
    #           Documentation</a>. To retrieve the job plan for the application, use the <a>DescribeApplicationRequest$IncludeAdditionalDetails</a> parameter of the <a>DescribeApplication</a> operation.</p>
    #
    #   @return [String]
    #
    FlinkApplicationConfigurationDescription = ::Struct.new(
      :checkpoint_configuration_description,
      :monitoring_configuration_description,
      :parallelism_configuration_description,
      :job_plan_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes updates to the configuration parameters for a Flink-based Kinesis Data Analytics application.</p>
    #
    # @!attribute checkpoint_configuration_update
    #   <p>Describes updates to an application's checkpointing configuration. Checkpointing is the process of persisting
    #         application state for fault tolerance.</p>
    #
    #   @return [CheckpointConfigurationUpdate]
    #
    # @!attribute monitoring_configuration_update
    #   <p>Describes updates to the configuration parameters for Amazon CloudWatch logging for an
    #         application.</p>
    #
    #   @return [MonitoringConfigurationUpdate]
    #
    # @!attribute parallelism_configuration_update
    #   <p>Describes updates to the parameters for how an application executes multiple tasks simultaneously.</p>
    #
    #   @return [ParallelismConfigurationUpdate]
    #
    FlinkApplicationConfigurationUpdate = ::Struct.new(
      :checkpoint_configuration_update,
      :monitoring_configuration_update,
      :parallelism_configuration_update,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the starting parameters for a Flink-based Kinesis Data Analytics application.</p>
    #
    # @!attribute allow_non_restored_state
    #   <p>When restoring from a snapshot, specifies whether the runtime is allowed to skip a state that cannot
    #          be mapped to the new program.
    #        This will happen if the program is updated between snapshots to remove stateful parameters, and
    #        state data in the snapshot no longer
    #        corresponds to valid application data. For more information, see
    #        <a href="https://ci.apache.org/projects/flink/flink-docs-release-1.8/ops/state/savepoints.html allowing-non-restored-state">
    #          Allowing Non-Restored State</a> in the <a href="https://ci.apache.org/projects/flink/flink-docs-release-1.8/">Apache Flink
    #            documentation</a>.</p>
    #            <note>
    #               <p>This value defaults to <code>false</code>. If you update your application without
    #        specifying this parameter, <code>AllowNonRestoredState</code> will be set to <code>false</code>,
    #        even if it was previously set to <code>true</code>.</p>
    #            </note>
    #
    #   @return [Boolean]
    #
    FlinkRunConfiguration = ::Struct.new(
      :allow_non_restored_state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configuration of the Glue Data Catalog that you use for Apache Flink SQL queries and table API transforms that you write in an application.</p>
    #
    # @!attribute database_arn
    #   <p>The Amazon Resource Name (ARN) of the database.</p>
    #
    #   @return [String]
    #
    GlueDataCatalogConfiguration = ::Struct.new(
      :database_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configuration of the Glue Data Catalog that you use for Apache Flink SQL queries and table API transforms that you write in an application.</p>
    #
    # @!attribute database_arn
    #   <p>The Amazon Resource Name (ARN) of the database.</p>
    #
    #   @return [String]
    #
    GlueDataCatalogConfigurationDescription = ::Struct.new(
      :database_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Updates to the configuration of the Glue Data Catalog that you use for SQL queries that you write in a Kinesis Data Analytics Studio notebook.</p>
    #
    # @!attribute database_arn_update
    #   <p>The updated Amazon Resource Name (ARN) of the database.</p>
    #
    #   @return [String]
    #
    GlueDataCatalogConfigurationUpdate = ::Struct.new(
      :database_arn_update,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>When you configure the application input for a SQL-based Kinesis Data Analytics application, you specify the streaming source, the in-application stream
    #       name that is created,
    #       and the mapping between the two. </p>
    #
    # @!attribute name_prefix
    #   <p>The name prefix to use when creating an in-application stream. Suppose that you specify a
    #         prefix "<code>MyInApplicationStream</code>." Kinesis Data Analytics then creates one or more
    #         (as per the <code>InputParallelism</code> count you specified) in-application streams with the
    #         names "<code>MyInApplicationStream_001</code>," "<code>MyInApplicationStream_002</code>," and
    #         so on. </p>
    #
    #   @return [String]
    #
    # @!attribute input_processing_configuration
    #   <p>The <a>InputProcessingConfiguration</a> for the input. An input processor transforms records as they are received
    #         from the stream, before the application's SQL code executes. Currently, the only input processing configuration available is
    #         <a>InputLambdaProcessor</a>. </p>
    #
    #   @return [InputProcessingConfiguration]
    #
    # @!attribute kinesis_streams_input
    #   <p>If the streaming source is an Amazon Kinesis data stream, identifies the stream's Amazon Resource Name (ARN). </p>
    #
    #   @return [KinesisStreamsInput]
    #
    # @!attribute kinesis_firehose_input
    #   <p>If the streaming source is an Amazon Kinesis Data Firehose delivery stream, identifies the delivery stream's ARN.</p>
    #
    #   @return [KinesisFirehoseInput]
    #
    # @!attribute input_parallelism
    #   <p>Describes the number of in-application streams to create. </p>
    #
    #   @return [InputParallelism]
    #
    # @!attribute input_schema
    #   <p>Describes the format of the data in the streaming source, and how each data element maps
    #         to corresponding columns in the in-application stream that is being created.</p>
    #            <p>Also used to describe the format of the reference data source.</p>
    #
    #   @return [SourceSchema]
    #
    Input = ::Struct.new(
      :name_prefix,
      :input_processing_configuration,
      :kinesis_streams_input,
      :kinesis_firehose_input,
      :input_parallelism,
      :input_schema,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the application input configuration for a SQL-based Kinesis Data Analytics application. </p>
    #
    # @!attribute input_id
    #   <p>The input ID that is associated with the application input. This is the ID that Kinesis Data Analytics assigns to each input
    #         configuration that you add to your application. </p>
    #
    #   @return [String]
    #
    # @!attribute name_prefix
    #   <p>The in-application name prefix.</p>
    #
    #   @return [String]
    #
    # @!attribute in_app_stream_names
    #   <p>Returns the in-application stream names that are mapped to the stream source. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute input_processing_configuration_description
    #   <p>The description of the preprocessor that executes on records in this input before the application's code is run. </p>
    #
    #   @return [InputProcessingConfigurationDescription]
    #
    # @!attribute kinesis_streams_input_description
    #   <p>If a Kinesis data stream is configured as a streaming source, provides the Kinesis data
    #         stream's Amazon Resource Name (ARN). </p>
    #
    #   @return [KinesisStreamsInputDescription]
    #
    # @!attribute kinesis_firehose_input_description
    #   <p>If a Kinesis Data Firehose delivery stream is configured as a streaming source, provides the delivery stream's ARN. </p>
    #
    #   @return [KinesisFirehoseInputDescription]
    #
    # @!attribute input_schema
    #   <p>Describes the format of the data in the streaming source, and how each data element maps to corresponding columns
    #         in the in-application stream that is being created. </p>
    #
    #   @return [SourceSchema]
    #
    # @!attribute input_parallelism
    #   <p>Describes the configured parallelism (number of in-application streams mapped to the streaming source). </p>
    #
    #   @return [InputParallelism]
    #
    # @!attribute input_starting_position_configuration
    #   <p>The point at which the application is configured to read from the input stream.</p>
    #
    #   @return [InputStartingPositionConfiguration]
    #
    InputDescription = ::Struct.new(
      :input_id,
      :name_prefix,
      :in_app_stream_names,
      :input_processing_configuration_description,
      :kinesis_streams_input_description,
      :kinesis_firehose_input_description,
      :input_schema,
      :input_parallelism,
      :input_starting_position_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that contains the Amazon Resource Name (ARN) of the Amazon Lambda function that is
    #       used to preprocess records in the stream in a SQL-based Kinesis Data Analytics application. </p>
    #
    # @!attribute resource_arn
    #   <p>The ARN of the Amazon Lambda function that operates on records in the stream.</p>
    #            <note>
    #               <p>To specify an earlier version of the Lambda function than the latest, include the Lambda function version in the Lambda function ARN. For more information about Lambda ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html arn-syntax-lambda">Example ARNs: Amazon Lambda</a>
    #               </p>
    #            </note>
    #
    #   @return [String]
    #
    InputLambdaProcessor = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>For a SQL-based Kinesis Data Analytics application, an object that contains the
    #       Amazon Resource Name (ARN) of the Amazon Lambda function that is used to preprocess records in
    #       the stream.</p>
    #
    # @!attribute resource_arn
    #   <p>The ARN of the Amazon Lambda function that is used to preprocess the records in the
    #         stream.</p>
    #            <note>
    #               <p>To specify an earlier version of the Lambda function than the latest, include the Lambda function version in the Lambda function ARN. For more information about Lambda ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html arn-syntax-lambda">Example ARNs: Amazon Lambda</a>
    #               </p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The ARN of the IAM role that is used to access the Amazon Lambda function.</p>
    #            <note>
    #               <p>Provided for backward compatibility. Applications that are created with the current API
    #           version have an application-level service execution role rather than a resource-level
    #           role.</p>
    #            </note>
    #
    #   @return [String]
    #
    InputLambdaProcessorDescription = ::Struct.new(
      :resource_arn,
      :role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>For a SQL-based Kinesis Data Analytics application, represents an update to the
    #         <a>InputLambdaProcessor</a> that is used to preprocess the records in the
    #       stream.</p>
    #
    # @!attribute resource_arn_update
    #   <p>The Amazon Resource Name (ARN) of the new Amazon Lambda function that is used to preprocess
    #         the records in the stream.</p>
    #            <note>
    #               <p>To specify an earlier version of the Lambda function than the latest, include the Lambda function version in the Lambda function ARN. For more information about Lambda ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html arn-syntax-lambda">Example ARNs: Amazon Lambda</a>
    #               </p>
    #            </note>
    #
    #   @return [String]
    #
    InputLambdaProcessorUpdate = ::Struct.new(
      :resource_arn_update,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>For a SQL-based Kinesis Data Analytics application, describes the number of
    #       in-application streams to create for a given streaming source. </p>
    #
    # @!attribute count
    #   <p>The number of in-application streams to create.</p>
    #
    #   @return [Integer]
    #
    InputParallelism = ::Struct.new(
      :count,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>For a SQL-based Kinesis Data Analytics application, provides updates to the
    #       parallelism count.</p>
    #
    # @!attribute count_update
    #   <p>The number of in-application streams to create for the specified streaming source.</p>
    #
    #   @return [Integer]
    #
    InputParallelismUpdate = ::Struct.new(
      :count_update,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>For a SQL-based Kinesis Data Analytics application, describes a processor that is
    #       used to preprocess the records in the stream before being processed by your application code.
    #       Currently, the only input processor available is <a href="https://docs.aws.amazon.com/lambda/">Amazon Lambda</a>.</p>
    #
    # @!attribute input_lambda_processor
    #   <p>The <a>InputLambdaProcessor</a> that is used to preprocess the records
    #         in the stream before being processed by your application code.</p>
    #
    #   @return [InputLambdaProcessor]
    #
    InputProcessingConfiguration = ::Struct.new(
      :input_lambda_processor,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>For a SQL-based Kinesis Data Analytics application, provides the configuration
    #         information about an input processor. Currently, the only input processor available is <a href="https://docs.aws.amazon.com/lambda/">Amazon Lambda</a>.</p>
    #
    # @!attribute input_lambda_processor_description
    #   <p>Provides configuration information about the associated <a>InputLambdaProcessorDescription</a>
    #            </p>
    #
    #   @return [InputLambdaProcessorDescription]
    #
    InputProcessingConfigurationDescription = ::Struct.new(
      :input_lambda_processor_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>For a SQL-based Kinesis Data Analytics application, describes updates to an <a>InputProcessingConfiguration</a>.</p>
    #
    # @!attribute input_lambda_processor_update
    #   <p>Provides update information for an <a>InputLambdaProcessor</a>.</p>
    #
    #   @return [InputLambdaProcessorUpdate]
    #
    InputProcessingConfigurationUpdate = ::Struct.new(
      :input_lambda_processor_update,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes updates for an SQL-based Kinesis Data Analytics application's input
    #       schema.</p>
    #
    # @!attribute record_format_update
    #   <p>Specifies the format of the records on the streaming source.</p>
    #
    #   @return [RecordFormat]
    #
    # @!attribute record_encoding_update
    #   <p>Specifies the encoding of the records in the streaming source; for example, UTF-8.</p>
    #
    #   @return [String]
    #
    # @!attribute record_column_updates
    #   <p>A list of <code>RecordColumn</code> objects. Each object describes the mapping
    #         of the streaming source element to the corresponding column in the in-application stream.</p>
    #
    #   @return [Array<RecordColumn>]
    #
    InputSchemaUpdate = ::Struct.new(
      :record_format_update,
      :record_encoding_update,
      :record_column_updates,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for InputStartingPosition
    #
    module InputStartingPosition
      # No documentation available.
      #
      NOW = "NOW"

      # No documentation available.
      #
      TRIM_HORIZON = "TRIM_HORIZON"

      # No documentation available.
      #
      LAST_STOPPED_POINT = "LAST_STOPPED_POINT"
    end

    # <p>Describes the point at which the application reads from
    #       the streaming source.</p>
    #
    # @!attribute input_starting_position
    #   <p>The starting position on the stream.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NOW</code> - Start reading just after the most recent record in the stream, and
    #             start at the request timestamp that the customer issued.</p>
    #
    #
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TRIM_HORIZON</code> - Start reading at the last untrimmed record in the stream,
    #             which is the oldest record available in the stream. This option is not available
    #             for an Amazon Kinesis Data Firehose delivery stream.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LAST_STOPPED_POINT</code> - Resume reading from where the application last stopped reading.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["NOW", "TRIM_HORIZON", "LAST_STOPPED_POINT"]
    #
    #   @return [String]
    #
    InputStartingPositionConfiguration = ::Struct.new(
      :input_starting_position,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>For a SQL-based Kinesis Data Analytics application, describes updates to a
    #       specific input configuration (identified by the <code>InputId</code> of an application). </p>
    #
    # @!attribute input_id
    #   <p>The input ID of the application input to be updated.</p>
    #
    #   @return [String]
    #
    # @!attribute name_prefix_update
    #   <p>The name prefix for in-application streams that Kinesis Data Analytics creates for the
    #         specific streaming source.</p>
    #
    #   @return [String]
    #
    # @!attribute input_processing_configuration_update
    #   <p>Describes updates to an <a>InputProcessingConfiguration</a>.</p>
    #
    #   @return [InputProcessingConfigurationUpdate]
    #
    # @!attribute kinesis_streams_input_update
    #   <p>If a Kinesis data stream is the streaming source to be updated, provides an
    #         updated stream Amazon Resource Name (ARN).</p>
    #
    #   @return [KinesisStreamsInputUpdate]
    #
    # @!attribute kinesis_firehose_input_update
    #   <p>If a Kinesis Data Firehose delivery stream is the streaming source to be
    #         updated, provides an updated stream ARN.</p>
    #
    #   @return [KinesisFirehoseInputUpdate]
    #
    # @!attribute input_schema_update
    #   <p>Describes the data format on the streaming source, and
    #         how record elements on the streaming source map to columns of the in-application stream that is created.</p>
    #
    #   @return [InputSchemaUpdate]
    #
    # @!attribute input_parallelism_update
    #   <p>Describes the parallelism updates (the number of in-application streams Kinesis Data Analytics creates for the specific streaming source).</p>
    #
    #   @return [InputParallelismUpdate]
    #
    InputUpdate = ::Struct.new(
      :input_id,
      :name_prefix_update,
      :input_processing_configuration_update,
      :kinesis_streams_input_update,
      :kinesis_firehose_input_update,
      :input_schema_update,
      :input_parallelism_update,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The user-provided application configuration is not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidApplicationConfigurationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified input parameter value is not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidArgumentException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request JSON is not valid for the operation.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidRequestException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>For a SQL-based Kinesis Data Analytics application, provides additional mapping
    #       information when JSON is the record format on the streaming source.</p>
    #
    # @!attribute record_row_path
    #   <p>The path to the top-level parent that contains the records.</p>
    #
    #   @return [String]
    #
    JSONMappingParameters = ::Struct.new(
      :record_row_path,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>For a SQL-based Kinesis Data Analytics application, identifies a Kinesis Data
    #       Firehose delivery stream as the streaming source. You provide the delivery stream's Amazon
    #       Resource Name (ARN).</p>
    #
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the delivery stream.</p>
    #
    #   @return [String]
    #
    KinesisFirehoseInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the Amazon Kinesis Data Firehose delivery stream that is configured as the streaming source
    #       in the application input configuration. </p>
    #
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the delivery stream.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The ARN of the IAM role that Kinesis Data Analytics assumes to access the stream.</p>
    #            <note>
    #               <p>Provided for backward compatibility. Applications that are created with the current API
    #           version have an application-level service execution role rather than a resource-level
    #           role.</p>
    #            </note>
    #
    #   @return [String]
    #
    KinesisFirehoseInputDescription = ::Struct.new(
      :resource_arn,
      :role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>For a SQL-based Kinesis Data Analytics application, when updating application
    #       input configuration, provides information about a Kinesis Data Firehose delivery stream as the
    #       streaming source.</p>
    #
    # @!attribute resource_arn_update
    #   <p>The Amazon Resource Name (ARN) of the input delivery stream to read.</p>
    #
    #   @return [String]
    #
    KinesisFirehoseInputUpdate = ::Struct.new(
      :resource_arn_update,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>For a SQL-based Kinesis Data Analytics application, when configuring application
    #       output, identifies a Kinesis Data Firehose delivery stream as the destination. You provide the
    #       stream Amazon Resource Name (ARN) of the delivery stream. </p>
    #
    # @!attribute resource_arn
    #   <p>The ARN of the destination delivery stream to write to.</p>
    #
    #   @return [String]
    #
    KinesisFirehoseOutput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>For a SQL-based Kinesis Data Analytics application's output, describes the Kinesis
    #       Data Firehose delivery stream that is configured as its destination.</p>
    #
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the delivery stream.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The ARN of the IAM role that Kinesis Data Analytics can assume to access the
    #         stream.</p>
    #            <note>
    #               <p>Provided for backward compatibility. Applications that are created with the current API
    #           version have an application-level service execution role rather than a resource-level
    #           role.</p>
    #            </note>
    #
    #   @return [String]
    #
    KinesisFirehoseOutputDescription = ::Struct.new(
      :resource_arn,
      :role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>For a SQL-based Kinesis Data Analytics application, when updating an output
    #       configuration using the <a>UpdateApplication</a> operation, provides information
    #       about a Kinesis Data Firehose delivery stream that is configured as the destination.</p>
    #
    # @!attribute resource_arn_update
    #   <p>The Amazon Resource Name (ARN) of the delivery stream to write to. </p>
    #
    #   @return [String]
    #
    KinesisFirehoseOutputUpdate = ::Struct.new(
      :resource_arn_update,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Identifies a Kinesis data stream as the streaming source. You provide the
    #       stream's Amazon Resource Name (ARN).</p>
    #
    # @!attribute resource_arn
    #   <p>The ARN of the input Kinesis data stream to read.</p>
    #
    #   @return [String]
    #
    KinesisStreamsInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>For a SQL-based Kinesis Data Analytics application, describes the Kinesis data
    #       stream that is configured as the streaming source in the application input configuration. </p>
    #
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Kinesis data stream.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The ARN of the IAM role that Kinesis Data Analytics can assume to access the
    #         stream.</p>
    #            <note>
    #               <p>Provided for backward compatibility. Applications that are created with the current API
    #           version have an application-level service execution role rather than a resource-level
    #           role.</p>
    #            </note>
    #
    #   @return [String]
    #
    KinesisStreamsInputDescription = ::Struct.new(
      :resource_arn,
      :role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>When you update the input configuration for a SQL-based Kinesis Data Analytics application, provides information about a
    #       Kinesis stream as the streaming
    #       source.</p>
    #
    # @!attribute resource_arn_update
    #   <p>The Amazon Resource Name (ARN) of the input Kinesis data stream to read.</p>
    #
    #   @return [String]
    #
    KinesisStreamsInputUpdate = ::Struct.new(
      :resource_arn_update,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>When you configure a SQL-based Kinesis Data Analytics application's output,
    #       identifies a Kinesis data stream as the destination. You provide the stream Amazon Resource
    #       Name (ARN). </p>
    #
    # @!attribute resource_arn
    #   <p>The ARN of the destination Kinesis data stream to write to.</p>
    #
    #   @return [String]
    #
    KinesisStreamsOutput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>For an SQL-based Kinesis Data Analytics application's output, describes the Kinesis
    #       data stream that is configured as its destination. </p>
    #
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Kinesis data stream.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The ARN of the IAM role that Kinesis Data Analytics can assume to access the
    #         stream.</p>
    #            <note>
    #               <p>Provided for backward compatibility. Applications that are created with the current API
    #           version have an application-level service execution role rather than a resource-level
    #           role.</p>
    #            </note>
    #
    #   @return [String]
    #
    KinesisStreamsOutputDescription = ::Struct.new(
      :resource_arn,
      :role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>When you update a SQL-based Kinesis Data Analytics application's output
    #       configuration using the <a>UpdateApplication</a> operation, provides information
    #       about a Kinesis data stream that is configured as the destination.</p>
    #
    # @!attribute resource_arn_update
    #   <p>The Amazon Resource Name (ARN) of the Kinesis data stream where you want to write the
    #         output.</p>
    #
    #   @return [String]
    #
    KinesisStreamsOutputUpdate = ::Struct.new(
      :resource_arn_update,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>When you configure a SQL-based Kinesis Data Analytics application's output,
    #       identifies an Amazon Lambda function as the destination. You provide the function Amazon Resource
    #       Name (ARN) of the Lambda function. </p>
    #
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the destination Lambda function to write to.</p>
    #            <note>
    #               <p>To specify an earlier version of the Lambda function than the latest, include the Lambda function version in the Lambda function ARN. For more information about Lambda ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html arn-syntax-lambda">Example ARNs: Amazon Lambda</a>
    #               </p>
    #            </note>
    #
    #   @return [String]
    #
    LambdaOutput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>For a SQL-based Kinesis Data Analytics application's output, describes the Amazon
    #       Lambda function that is configured as its destination. </p>
    #
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the destination Lambda function.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The ARN of the IAM role that Kinesis Data Analytics can assume to write to the destination
    #         function.</p>
    #            <note>
    #               <p>Provided for backward compatibility. Applications that are created with the current API
    #           version have an application-level service execution role rather than a resource-level
    #           role.</p>
    #            </note>
    #
    #   @return [String]
    #
    LambdaOutputDescription = ::Struct.new(
      :resource_arn,
      :role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>When you update an SQL-based Kinesis Data Analytics application's output
    #       configuration using the <a>UpdateApplication</a> operation, provides information
    #       about an Amazon Lambda function that is configured as the destination.</p>
    #
    # @!attribute resource_arn_update
    #   <p>The Amazon Resource Name (ARN) of the destination Amazon Lambda function.</p>
    #            <note>
    #               <p>To specify an earlier version of the Lambda function than the latest, include the Lambda function version in the Lambda function ARN. For more information about Lambda ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html arn-syntax-lambda">Example ARNs: Amazon Lambda</a>
    #               </p>
    #            </note>
    #
    #   @return [String]
    #
    LambdaOutputUpdate = ::Struct.new(
      :resource_arn_update,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The number of allowed resources has been exceeded.</p>
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

    # @!attribute application_name
    #   <p>The name of an existing application.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of application snapshots to list.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>Use this parameter if you receive a <code>NextToken</code> response in a previous request that indicates that there is more
    #         output available. Set it to the value of the previous call's <code>NextToken</code> response to indicate where the output should
    #         continue from. </p>
    #
    #   @return [String]
    #
    ListApplicationSnapshotsInput = ::Struct.new(
      :application_name,
      :limit,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute snapshot_summaries
    #   <p>A collection of objects containing information about the application snapshots.</p>
    #
    #   @return [Array<SnapshotDetails>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or <code>null</code> if there are no additional results.</p>
    #
    #   @return [String]
    #
    ListApplicationSnapshotsOutput = ::Struct.new(
      :snapshot_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_name
    #   <p>The name of the application for which you want to list all versions.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of versions to list in this invocation of the operation.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>If a previous invocation of this operation returned a pagination token, pass it into this value to retrieve the next set of results. For more information about pagination, see
    #         <a href="https://docs.aws.amazon.com/cli/latest/userguide/pagination.html">Using the Amazon Command Line Interface's Pagination Options</a>.</p>
    #
    #   @return [String]
    #
    ListApplicationVersionsInput = ::Struct.new(
      :application_name,
      :limit,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_version_summaries
    #   <p>A list of the application versions and the associated configuration summaries. The list includes application versions that were rolled back.</p>
    #            <p>To get the complete description of a specific application version, invoke the <a>DescribeApplicationVersion</a> operation.</p>
    #
    #   @return [Array<ApplicationVersionSummary>]
    #
    # @!attribute next_token
    #   <p>The pagination token for the next set of results, or <code>null</code> if there are no additional results.
    #         To retrieve the next set of items, pass this token into a subsequent invocation of this operation. For more information about pagination, see
    #         <a href="https://docs.aws.amazon.com/cli/latest/userguide/pagination.html">Using the Amazon Command Line Interface's Pagination Options</a>.</p>
    #
    #   @return [String]
    #
    ListApplicationVersionsOutput = ::Struct.new(
      :application_version_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute limit
    #   <p>The maximum number of applications to list.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>If a previous command returned a pagination token,
    #         pass it into this value to retrieve the next set of results.
    #         For more information about pagination, see
    #         <a href="https://docs.aws.amazon.com/cli/latest/userguide/pagination.html">Using the Amazon Command Line Interface's Pagination Options</a>.</p>
    #
    #   @return [String]
    #
    ListApplicationsInput = ::Struct.new(
      :limit,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_summaries
    #   <p>A list of <code>ApplicationSummary</code> objects.</p>
    #
    #   @return [Array<ApplicationSummary>]
    #
    # @!attribute next_token
    #   <p>The pagination token for the next set of results, or <code>null</code> if there are no additional results.
    #         Pass this token into a subsequent command to retrieve the next set of items
    #         For more information about pagination, see
    #         <a href="https://docs.aws.amazon.com/cli/latest/userguide/pagination.html">Using the Amazon Command Line Interface's Pagination Options</a>.</p>
    #
    #   @return [String]
    #
    ListApplicationsOutput = ::Struct.new(
      :application_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the application for which to retrieve tags.</p>
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
    #   <p>The key-value tags assigned to the application.</p>
    #
    #   @return [Array<Tag>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for LogLevel
    #
    module LogLevel
      # No documentation available.
      #
      INFO = "INFO"

      # No documentation available.
      #
      WARN = "WARN"

      # No documentation available.
      #
      ERROR = "ERROR"

      # No documentation available.
      #
      DEBUG = "DEBUG"
    end

    # <p>When you configure a SQL-based Kinesis Data Analytics application's input at the
    #       time of creating or updating an application, provides additional mapping information specific
    #       to the record format (such as JSON, CSV, or record fields delimited by some delimiter) on the
    #       streaming source.</p>
    #
    # @!attribute json_mapping_parameters
    #   <p>Provides additional mapping information when JSON is the record format on the streaming source.</p>
    #
    #   @return [JSONMappingParameters]
    #
    # @!attribute csv_mapping_parameters
    #   <p>Provides additional mapping information when the record format uses delimiters
    #         (for example, CSV).</p>
    #
    #   @return [CSVMappingParameters]
    #
    MappingParameters = ::Struct.new(
      :json_mapping_parameters,
      :csv_mapping_parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The information required to specify a Maven reference. You can use Maven references to specify dependency JAR files.</p>
    #
    # @!attribute group_id
    #   <p>The group ID of the Maven reference.</p>
    #
    #   @return [String]
    #
    # @!attribute artifact_id
    #   <p>The artifact ID of the Maven reference.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version of the Maven reference.</p>
    #
    #   @return [String]
    #
    MavenReference = ::Struct.new(
      :group_id,
      :artifact_id,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for MetricsLevel
    #
    module MetricsLevel
      # No documentation available.
      #
      APPLICATION = "APPLICATION"

      # No documentation available.
      #
      TASK = "TASK"

      # No documentation available.
      #
      OPERATOR = "OPERATOR"

      # No documentation available.
      #
      PARALLELISM = "PARALLELISM"
    end

    # <p>Describes configuration parameters for Amazon CloudWatch logging for an application. For more information about CloudWatch logging, see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/java/monitoring-overview.html">Monitoring</a>.</p>
    #
    # @!attribute configuration_type
    #   <p>Describes whether to use the default CloudWatch logging configuration for an application.
    #       You must set this property to <code>CUSTOM</code> in order to set the <code>LogLevel</code> or
    #       <code>MetricsLevel</code> parameters.</p>
    #
    #   Enum, one of: ["DEFAULT", "CUSTOM"]
    #
    #   @return [String]
    #
    # @!attribute metrics_level
    #   <p>Describes the granularity of the CloudWatch Logs for an application. The <code>Parallelism</code>
    #       level is not recommended for applications with a Parallelism over 64 due to excessive costs.</p>
    #
    #   Enum, one of: ["APPLICATION", "TASK", "OPERATOR", "PARALLELISM"]
    #
    #   @return [String]
    #
    # @!attribute log_level
    #   <p>Describes the verbosity of the CloudWatch Logs for an application.</p>
    #
    #   Enum, one of: ["INFO", "WARN", "ERROR", "DEBUG"]
    #
    #   @return [String]
    #
    MonitoringConfiguration = ::Struct.new(
      :configuration_type,
      :metrics_level,
      :log_level,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes configuration parameters for CloudWatch logging for an application.</p>
    #
    # @!attribute configuration_type
    #   <p>Describes whether to use the default CloudWatch logging configuration for an application.</p>
    #
    #   Enum, one of: ["DEFAULT", "CUSTOM"]
    #
    #   @return [String]
    #
    # @!attribute metrics_level
    #   <p>Describes the granularity of the CloudWatch Logs for an application.</p>
    #
    #   Enum, one of: ["APPLICATION", "TASK", "OPERATOR", "PARALLELISM"]
    #
    #   @return [String]
    #
    # @!attribute log_level
    #   <p>Describes the verbosity of the CloudWatch Logs for an application.</p>
    #
    #   Enum, one of: ["INFO", "WARN", "ERROR", "DEBUG"]
    #
    #   @return [String]
    #
    MonitoringConfigurationDescription = ::Struct.new(
      :configuration_type,
      :metrics_level,
      :log_level,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes updates to configuration parameters for Amazon CloudWatch logging for an application.</p>
    #
    # @!attribute configuration_type_update
    #   <p>Describes updates to whether to use the default CloudWatch logging configuration for
    #         an application. You must set this property to <code>CUSTOM</code> in order to set the <code>LogLevel</code> or
    #       <code>MetricsLevel</code> parameters.</p>
    #
    #   Enum, one of: ["DEFAULT", "CUSTOM"]
    #
    #   @return [String]
    #
    # @!attribute metrics_level_update
    #   <p>Describes updates to the granularity of the CloudWatch Logs for an application. The <code>Parallelism</code>
    #         level is not recommended for applications with a Parallelism over 64 due to excessive costs.</p>
    #
    #   Enum, one of: ["APPLICATION", "TASK", "OPERATOR", "PARALLELISM"]
    #
    #   @return [String]
    #
    # @!attribute log_level_update
    #   <p>Describes updates to the verbosity of the CloudWatch Logs for an application.</p>
    #
    #   Enum, one of: ["INFO", "WARN", "ERROR", "DEBUG"]
    #
    #   @return [String]
    #
    MonitoringConfigurationUpdate = ::Struct.new(
      :configuration_type_update,
      :metrics_level_update,
      :log_level_update,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Describes a SQL-based Kinesis Data Analytics application's output configuration,
    #       in which you identify an in-application stream and a destination where you want the
    #       in-application stream data to be written. The destination can be a Kinesis data stream or a
    #       Kinesis Data Firehose delivery stream. </p>
    #
    #          <p></p>
    #
    # @!attribute name
    #   <p>The name of the in-application stream.</p>
    #
    #   @return [String]
    #
    # @!attribute kinesis_streams_output
    #   <p>Identifies a Kinesis data stream
    #         as the destination.</p>
    #
    #   @return [KinesisStreamsOutput]
    #
    # @!attribute kinesis_firehose_output
    #   <p>Identifies a Kinesis Data Firehose delivery stream as the destination.</p>
    #
    #   @return [KinesisFirehoseOutput]
    #
    # @!attribute lambda_output
    #   <p>Identifies an Amazon Lambda function as the destination.</p>
    #
    #   @return [LambdaOutput]
    #
    # @!attribute destination_schema
    #   <p>Describes the data format when records are written to the destination.
    #         </p>
    #
    #   @return [DestinationSchema]
    #
    Output = ::Struct.new(
      :name,
      :kinesis_streams_output,
      :kinesis_firehose_output,
      :lambda_output,
      :destination_schema,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>For a SQL-based Kinesis Data Analytics application, describes the application
    #       output configuration, which includes the in-application stream name and the destination where
    #       the stream data is written. The destination can be a Kinesis data stream or a Kinesis Data
    #       Firehose delivery stream. </p>
    #
    # @!attribute output_id
    #   <p>A unique identifier for the output configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the in-application stream that is configured as output.</p>
    #
    #   @return [String]
    #
    # @!attribute kinesis_streams_output_description
    #   <p>Describes the Kinesis data stream that is configured as the destination where output is
    #         written.</p>
    #
    #   @return [KinesisStreamsOutputDescription]
    #
    # @!attribute kinesis_firehose_output_description
    #   <p>Describes the Kinesis Data Firehose delivery stream that is configured as the destination
    #         where output is written.</p>
    #
    #   @return [KinesisFirehoseOutputDescription]
    #
    # @!attribute lambda_output_description
    #   <p>Describes the Lambda function that is configured as the destination where output is
    #         written.</p>
    #
    #   @return [LambdaOutputDescription]
    #
    # @!attribute destination_schema
    #   <p>The data format used for writing data to the destination.</p>
    #
    #   @return [DestinationSchema]
    #
    OutputDescription = ::Struct.new(
      :output_id,
      :name,
      :kinesis_streams_output_description,
      :kinesis_firehose_output_description,
      :lambda_output_description,
      :destination_schema,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> For a SQL-based Kinesis Data Analytics application, describes updates to the
    #       output configuration identified by the <code>OutputId</code>. </p>
    #
    # @!attribute output_id
    #   <p>Identifies the specific output configuration that you want to update.</p>
    #
    #   @return [String]
    #
    # @!attribute name_update
    #   <p>If you want to specify a different in-application stream
    #         for this output configuration, use this field to
    #         specify the new in-application stream name.</p>
    #
    #   @return [String]
    #
    # @!attribute kinesis_streams_output_update
    #   <p>Describes a Kinesis data stream as the destination for the output.</p>
    #
    #   @return [KinesisStreamsOutputUpdate]
    #
    # @!attribute kinesis_firehose_output_update
    #   <p>Describes a Kinesis Data Firehose delivery stream as the destination for the
    #         output.</p>
    #
    #   @return [KinesisFirehoseOutputUpdate]
    #
    # @!attribute lambda_output_update
    #   <p>Describes an Amazon Lambda function as the destination for the output.</p>
    #
    #   @return [LambdaOutputUpdate]
    #
    # @!attribute destination_schema_update
    #   <p>Describes the data format when records are written to the destination.
    #         </p>
    #
    #   @return [DestinationSchema]
    #
    OutputUpdate = ::Struct.new(
      :output_id,
      :name_update,
      :kinesis_streams_output_update,
      :kinesis_firehose_output_update,
      :lambda_output_update,
      :destination_schema_update,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes parameters for how a Flink-based Kinesis Data Analytics application
    #       executes multiple tasks simultaneously. For more information about parallelism,
    #       see <a href="https://ci.apache.org/projects/flink/flink-docs-release-1.8/dev/parallel.html">Parallel Execution</a> in the <a href="https://ci.apache.org/projects/flink/flink-docs-release-1.8/">Apache Flink
    #         Documentation</a>.</p>
    #
    # @!attribute configuration_type
    #   <p>Describes whether the application uses the default parallelism for the Kinesis Data Analytics service. You must set this property to <code>CUSTOM</code>
    #       in order to change your application's <code>AutoScalingEnabled</code>, <code>Parallelism</code>, or <code>ParallelismPerKPU</code> properties.</p>
    #
    #   Enum, one of: ["DEFAULT", "CUSTOM"]
    #
    #   @return [String]
    #
    # @!attribute parallelism
    #   <p>Describes the initial number of parallel tasks that a Flink-based Kinesis Data Analytics application can perform. If <code>AutoScalingEnabled</code>
    #         is set to True, Kinesis Data Analytics increases the <code>CurrentParallelism</code> value in response to application
    #       load. The service can increase the <code>CurrentParallelism</code> value up to the maximum parallelism, which is
    #         <code>ParalellismPerKPU</code> times the maximum KPUs for the application.
    #       The maximum KPUs for an application is 32 by default, and can be increased by requesting a limit increase. If
    #       application load is reduced, the service can
    #       reduce the <code>CurrentParallelism</code> value down to the <code>Parallelism</code> setting.</p>
    #
    #   @return [Integer]
    #
    # @!attribute parallelism_per_kpu
    #   <p>Describes the number of parallel tasks that a Flink-based Kinesis Data Analytics application can perform per Kinesis Processing Unit
    #         (KPU) used by the application. For more
    #         information about KPUs, see <a href="http://aws.amazon.com/kinesis/data-analytics/pricing/">Amazon Kinesis Data Analytics Pricing</a>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute auto_scaling_enabled
    #   <p>Describes whether the Kinesis Data Analytics service can increase the parallelism of the application in response to increased throughput.</p>
    #
    #   @return [Boolean]
    #
    ParallelismConfiguration = ::Struct.new(
      :configuration_type,
      :parallelism,
      :parallelism_per_kpu,
      :auto_scaling_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes parameters for how a Flink-based Kinesis Data Analytics application
    #       executes multiple tasks simultaneously.</p>
    #
    # @!attribute configuration_type
    #   <p>Describes whether the application uses the default parallelism for the Kinesis Data Analytics service. </p>
    #
    #   Enum, one of: ["DEFAULT", "CUSTOM"]
    #
    #   @return [String]
    #
    # @!attribute parallelism
    #   <p>Describes the initial number of parallel tasks that a Flink-based Kinesis Data Analytics application can perform.
    #         If <code>AutoScalingEnabled</code> is set to True, then Kinesis Data Analytics can increase the <code>CurrentParallelism</code> value in response to application
    #       load. The service can increase <code>CurrentParallelism</code> up to the maximum parallelism, which is <code>ParalellismPerKPU</code> times the maximum KPUs for the application.
    #       The maximum KPUs for an application is 32 by default, and can be increased by requesting a limit increase. If application load is reduced, the service can
    #       reduce the <code>CurrentParallelism</code> value down to the <code>Parallelism</code> setting.</p>
    #
    #   @return [Integer]
    #
    # @!attribute parallelism_per_kpu
    #   <p>Describes the number of parallel tasks that a Flink-based Kinesis Data Analytics application can perform per
    #         Kinesis Processing Unit (KPU) used by the application.</p>
    #
    #   @return [Integer]
    #
    # @!attribute current_parallelism
    #   <p>Describes the current number of parallel tasks that a Flink-based Kinesis Data Analytics application can perform.
    #         If <code>AutoScalingEnabled</code> is set to True, Kinesis Data Analytics can increase this value in response to application
    #       load. The service can increase this value up to the maximum parallelism, which is <code>ParalellismPerKPU</code> times the maximum KPUs for the application.
    #       The maximum KPUs for an application is 32 by default, and can be increased by requesting a limit increase. If application load is reduced, the service can reduce
    #       the <code>CurrentParallelism</code> value down to the <code>Parallelism</code> setting.</p>
    #
    #   @return [Integer]
    #
    # @!attribute auto_scaling_enabled
    #   <p>Describes whether the Kinesis Data Analytics service can increase the parallelism of the application in response to increased throughput.</p>
    #
    #   @return [Boolean]
    #
    ParallelismConfigurationDescription = ::Struct.new(
      :configuration_type,
      :parallelism,
      :parallelism_per_kpu,
      :current_parallelism,
      :auto_scaling_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes updates to parameters for how an application executes multiple tasks simultaneously.</p>
    #
    # @!attribute configuration_type_update
    #   <p>Describes updates to whether the application uses the default parallelism for the Kinesis Data Analytics service, or if a custom parallelism is used.
    #       You must set this property to <code>CUSTOM</code>
    #       in order to change your application's <code>AutoScalingEnabled</code>, <code>Parallelism</code>, or <code>ParallelismPerKPU</code> properties.</p>
    #
    #   Enum, one of: ["DEFAULT", "CUSTOM"]
    #
    #   @return [String]
    #
    # @!attribute parallelism_update
    #   <p>Describes updates to the initial number of parallel tasks an application can perform. If <code>AutoScalingEnabled</code> is set to True, then
    #         Kinesis Data Analytics can increase the <code>CurrentParallelism</code> value in response to application
    #       load. The service can increase <code>CurrentParallelism</code> up to the maximum parallelism, which is <code>ParalellismPerKPU</code> times the maximum KPUs for the application.
    #       The maximum KPUs for an application is 32 by default, and can be increased by requesting a limit increase. If application load is reduced, the service will
    #       reduce <code>CurrentParallelism</code> down to the <code>Parallelism</code> setting.</p>
    #
    #   @return [Integer]
    #
    # @!attribute parallelism_per_kpu_update
    #   <p>Describes updates to the number of parallel tasks an application can perform per Kinesis Processing Unit (KPU) used by the application.</p>
    #
    #   @return [Integer]
    #
    # @!attribute auto_scaling_enabled_update
    #   <p>Describes updates to whether the Kinesis Data Analytics service can increase the parallelism of a Flink-based Kinesis Data Analytics application in response to increased throughput.</p>
    #
    #   @return [Boolean]
    #
    ParallelismConfigurationUpdate = ::Struct.new(
      :configuration_type_update,
      :parallelism_update,
      :parallelism_per_kpu_update,
      :auto_scaling_enabled_update,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Property key-value pairs passed into an application.</p>
    #
    # @!attribute property_group_id
    #   <p>Describes the key of an application execution property key-value pair.</p>
    #
    #   @return [String]
    #
    # @!attribute property_map
    #   <p>Describes the value of an application execution property key-value pair.</p>
    #
    #   @return [Hash<String, String>]
    #
    PropertyGroup = ::Struct.new(
      :property_group_id,
      :property_map,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>For a SQL-based Kinesis Data Analytics application, describes the mapping of each
    #       data element in the streaming source to the corresponding column in the in-application
    #       stream.</p>
    #          <p>Also used to describe the format of the reference data source.</p>
    #
    # @!attribute name
    #   <p>The name of the column that is created in the in-application input stream or reference
    #         table.</p>
    #
    #   @return [String]
    #
    # @!attribute mapping
    #   <p>A reference to the data element in the streaming input or the reference data
    #         source.</p>
    #
    #   @return [String]
    #
    # @!attribute sql_type
    #   <p>The type of column created in the in-application input stream or reference table.</p>
    #
    #   @return [String]
    #
    RecordColumn = ::Struct.new(
      :name,
      :mapping,
      :sql_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> For a SQL-based Kinesis Data Analytics application, describes the record format
    #       and relevant mapping information that should be applied to schematize the records on the
    #       stream. </p>
    #
    # @!attribute record_format_type
    #   <p>The type of record format.</p>
    #
    #   Enum, one of: ["JSON", "CSV"]
    #
    #   @return [String]
    #
    # @!attribute mapping_parameters
    #   <p>When you configure application input at the time of creating or updating an application,
    #         provides additional mapping information specific to the record format (such as JSON, CSV, or
    #         record fields delimited by some delimiter) on the streaming source.</p>
    #
    #   @return [MappingParameters]
    #
    RecordFormat = ::Struct.new(
      :record_format_type,
      :mapping_parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RecordFormatType
    #
    module RecordFormatType
      # No documentation available.
      #
      JSON = "JSON"

      # No documentation available.
      #
      CSV = "CSV"
    end

    # <p>For a SQL-based Kinesis Data Analytics application, describes the reference data
    #       source by providing the source information (Amazon S3 bucket name and object key name), the
    #       resulting in-application table name that is created, and the necessary schema to map the data
    #       elements in the Amazon S3 object to the in-application table.</p>
    #
    # @!attribute table_name
    #   <p>The name of the in-application table to create.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_reference_data_source
    #   <p>Identifies the S3 bucket and object that contains the reference data.
    #
    #         A Kinesis Data Analytics application loads reference data only once. If the data changes, you call the <a>UpdateApplication</a> operation to trigger reloading of data into your application. </p>
    #
    #   @return [S3ReferenceDataSource]
    #
    # @!attribute reference_schema
    #   <p>Describes the format of the data in the streaming source, and how each data element maps to corresponding columns created in the in-application stream.</p>
    #
    #   @return [SourceSchema]
    #
    ReferenceDataSource = ::Struct.new(
      :table_name,
      :s3_reference_data_source,
      :reference_schema,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>For a SQL-based Kinesis Data Analytics application, describes the reference data
    #       source configured for an application.</p>
    #
    # @!attribute reference_id
    #   <p>The ID of the reference data source. This is the ID that Kinesis Data Analytics assigns
    #         when you add the reference data source to your application using the <a>CreateApplication</a> or <a>UpdateApplication</a> operation.</p>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>The in-application table name created by the specific reference data source configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_reference_data_source_description
    #   <p>Provides the Amazon S3 bucket name, the object key name that contains the reference data. </p>
    #
    #   @return [S3ReferenceDataSourceDescription]
    #
    # @!attribute reference_schema
    #   <p>Describes the format of the data in the streaming source, and how each data element maps to corresponding columns created in the in-application stream.</p>
    #
    #   @return [SourceSchema]
    #
    ReferenceDataSourceDescription = ::Struct.new(
      :reference_id,
      :table_name,
      :s3_reference_data_source_description,
      :reference_schema,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>When you update a reference data source configuration for a
    #        SQL-based Kinesis Data Analytics application, this object provides all the updated values
    #       (such as the source bucket name and object key name), the in-application table name that is created,
    #       and updated mapping information that maps the data in the Amazon S3 object to the in-application
    #       reference table that is created.</p>
    #
    # @!attribute reference_id
    #   <p>The ID of the reference data source that is being updated. You can use the <a>DescribeApplication</a> operation to get this value.</p>
    #
    #   @return [String]
    #
    # @!attribute table_name_update
    #   <p>The in-application table name that is created by this update.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_reference_data_source_update
    #   <p>Describes the S3 bucket name, object key name, and IAM role that Kinesis Data Analytics can assume to read the
    #         Amazon S3 object on your behalf and populate the in-application reference table.</p>
    #
    #   @return [S3ReferenceDataSourceUpdate]
    #
    # @!attribute reference_schema_update
    #   <p>Describes the format of the data in the streaming source, and how each data element maps to
    #         corresponding columns created in the in-application stream. </p>
    #
    #   @return [SourceSchema]
    #
    ReferenceDataSourceUpdate = ::Struct.new(
      :reference_id,
      :table_name_update,
      :s3_reference_data_source_update,
      :reference_schema_update,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The application is not available for this operation.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceInUseException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specified application can't be found.</p>
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

    # <p>Discovery failed to get a record from the streaming source because of the Kinesis
    #       Streams <code>ProvisionedThroughputExceededException</code>. For more information, see <a href="http://docs.aws.amazon.com/kinesis/latest/APIReference/API_GetRecords.html">GetRecords</a> in the Amazon Kinesis Streams API Reference.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceProvisionedThroughputExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_name
    #   <p>The name of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute current_application_version_id
    #   <p>The current application version ID. You can retrieve the application version ID using
    #               <a>DescribeApplication</a>.</p>
    #
    #   @return [Integer]
    #
    RollbackApplicationInput = ::Struct.new(
      :application_name,
      :current_application_version_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_detail
    #   <p>Describes the application, including the application Amazon Resource Name (ARN), status,
    #         latest version, and input and output configurations.</p>
    #
    #   @return [ApplicationDetail]
    #
    RollbackApplicationOutput = ::Struct.new(
      :application_detail,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the starting parameters for an Kinesis Data Analytics application.</p>
    #
    # @!attribute flink_run_configuration
    #   <p>Describes the starting parameters for a Flink-based Kinesis Data Analytics application.</p>
    #
    #   @return [FlinkRunConfiguration]
    #
    # @!attribute sql_run_configurations
    #   <p>Describes the starting parameters for a SQL-based Kinesis Data Analytics application
    #         application.</p>
    #
    #   @return [Array<SqlRunConfiguration>]
    #
    # @!attribute application_restore_configuration
    #   <p>Describes the restore behavior of a restarting application.</p>
    #
    #   @return [ApplicationRestoreConfiguration]
    #
    RunConfiguration = ::Struct.new(
      :flink_run_configuration,
      :sql_run_configurations,
      :application_restore_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the starting properties for a Kinesis Data Analytics application.</p>
    #
    # @!attribute application_restore_configuration_description
    #   <p>Describes the restore behavior of a restarting application.</p>
    #
    #   @return [ApplicationRestoreConfiguration]
    #
    # @!attribute flink_run_configuration_description
    #   <p>Describes the starting parameters for a Flink-based Kinesis Data Analytics application.</p>
    #
    #   @return [FlinkRunConfiguration]
    #
    RunConfigurationDescription = ::Struct.new(
      :application_restore_configuration_description,
      :flink_run_configuration_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the updates to the starting parameters for a Kinesis Data Analytics application.</p>
    #
    # @!attribute flink_run_configuration
    #   <p>Describes the starting parameters for a Flink-based Kinesis Data Analytics application.</p>
    #
    #   @return [FlinkRunConfiguration]
    #
    # @!attribute application_restore_configuration
    #   <p>Describes updates to the restore behavior of a restarting application.</p>
    #
    #   @return [ApplicationRestoreConfiguration]
    #
    RunConfigurationUpdate = ::Struct.new(
      :flink_run_configuration,
      :application_restore_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RuntimeEnvironment
    #
    module RuntimeEnvironment
      # No documentation available.
      #
      SQL_1_0 = "SQL-1_0"

      # No documentation available.
      #
      FLINK_1_6 = "FLINK-1_6"

      # No documentation available.
      #
      FLINK_1_8 = "FLINK-1_8"

      # No documentation available.
      #
      ZEPPELIN_FLINK_1_0 = "ZEPPELIN-FLINK-1_0"

      # No documentation available.
      #
      FLINK_1_11 = "FLINK-1_11"

      # No documentation available.
      #
      FLINK_1_13 = "FLINK-1_13"

      # No documentation available.
      #
      ZEPPELIN_FLINK_2_0 = "ZEPPELIN-FLINK-2_0"
    end

    # <p>Describes the location of an application's code stored in an S3 bucket.</p>
    #
    # @!attribute bucket_arn
    #   <p>The Amazon Resource Name (ARN) for the S3 bucket containing the application code.</p>
    #
    #   @return [String]
    #
    # @!attribute file_key
    #   <p>The file key for the object containing the application code.</p>
    #
    #   @return [String]
    #
    # @!attribute object_version
    #   <p>The version of the object containing the application code.</p>
    #
    #   @return [String]
    #
    S3ApplicationCodeLocationDescription = ::Struct.new(
      :bucket_arn,
      :file_key,
      :object_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>For a SQL-based Kinesis Data Analytics application, provides a description of an
    #       Amazon S3 data source, including the Amazon Resource Name (ARN) of the S3 bucket and the name
    #       of the Amazon S3 object that contains the data.</p>
    #
    # @!attribute bucket_arn
    #   <p>The ARN of the S3 bucket that contains the data.</p>
    #
    #   @return [String]
    #
    # @!attribute file_key
    #   <p>The name of the object that contains the data.</p>
    #
    #   @return [String]
    #
    S3Configuration = ::Struct.new(
      :bucket_arn,
      :file_key,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The S3 bucket that holds the application information.</p>
    #
    # @!attribute bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute base_path
    #   <p>The base path for the S3 bucket.</p>
    #
    #   @return [String]
    #
    S3ContentBaseLocation = ::Struct.new(
      :bucket_arn,
      :base_path,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The description of the S3 base location that holds the application.</p>
    #
    # @!attribute bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute base_path
    #   <p>The base path for the S3 bucket.</p>
    #
    #   @return [String]
    #
    S3ContentBaseLocationDescription = ::Struct.new(
      :bucket_arn,
      :base_path,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The information required to update the S3 base location that holds the application.</p>
    #
    # @!attribute bucket_arn_update
    #   <p>The updated Amazon Resource Name (ARN) of the S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute base_path_update
    #   <p>The updated S3 bucket path.</p>
    #
    #   @return [String]
    #
    S3ContentBaseLocationUpdate = ::Struct.new(
      :bucket_arn_update,
      :base_path_update,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>For a Kinesis Data Analytics application provides a
    #       description of an Amazon S3 object, including the Amazon Resource Name (ARN) of the S3 bucket,
    #       the name of the Amazon S3 object that contains the data, and the version number of the Amazon
    #       S3 object that contains the data. </p>
    #
    # @!attribute bucket_arn
    #   <p>The Amazon Resource Name (ARN) for the S3 bucket containing the application code.</p>
    #
    #   @return [String]
    #
    # @!attribute file_key
    #   <p>The file key for the object containing the application code.</p>
    #
    #   @return [String]
    #
    # @!attribute object_version
    #   <p>The version of the object containing the application code.</p>
    #
    #   @return [String]
    #
    S3ContentLocation = ::Struct.new(
      :bucket_arn,
      :file_key,
      :object_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes an update for the Amazon S3 code content location for an application.</p>
    #
    # @!attribute bucket_arn_update
    #   <p>The new Amazon Resource Name (ARN) for the S3 bucket containing the application code.</p>
    #
    #   @return [String]
    #
    # @!attribute file_key_update
    #   <p>The new file key for the object containing the application code.</p>
    #
    #   @return [String]
    #
    # @!attribute object_version_update
    #   <p>The new version of the object containing the application code.</p>
    #
    #   @return [String]
    #
    S3ContentLocationUpdate = ::Struct.new(
      :bucket_arn_update,
      :file_key_update,
      :object_version_update,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>For a SQL-based Kinesis Data Analytics application, identifies the Amazon S3
    #       bucket and object that contains the reference data.</p>
    #
    #          <p>A Kinesis Data Analytics application loads reference data only once. If the data changes, you call the <a>UpdateApplication</a>
    #         operation to trigger reloading of data into your application. </p>
    #
    # @!attribute bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute file_key
    #   <p>The object key name containing the reference data.</p>
    #
    #   @return [String]
    #
    S3ReferenceDataSource = ::Struct.new(
      :bucket_arn,
      :file_key,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>For a SQL-based Kinesis Data Analytics application, provides the bucket name and
    #       object key name that stores the reference data.</p>
    #
    # @!attribute bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute file_key
    #   <p>Amazon S3 object key name.</p>
    #
    #   @return [String]
    #
    # @!attribute reference_role_arn
    #   <p>The ARN of the IAM role that Kinesis Data Analytics can assume to read the Amazon S3
    #         object on your behalf to populate the in-application reference table. </p>
    #            <note>
    #               <p>Provided for backward compatibility. Applications that are created with the current API
    #           version have an application-level service execution role rather than a resource-level
    #           role.</p>
    #            </note>
    #
    #   @return [String]
    #
    S3ReferenceDataSourceDescription = ::Struct.new(
      :bucket_arn,
      :file_key,
      :reference_role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>For a SQL-based Kinesis Data Analytics application, describes the Amazon S3 bucket
    #       name and object key name for an in-application reference table. </p>
    #
    # @!attribute bucket_arn_update
    #   <p>The Amazon Resource Name (ARN) of the S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute file_key_update
    #   <p>The object key name.</p>
    #
    #   @return [String]
    #
    S3ReferenceDataSourceUpdate = ::Struct.new(
      :bucket_arn_update,
      :file_key_update,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The service cannot complete the request.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ServiceUnavailableException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides details about a snapshot of application state.</p>
    #
    # @!attribute snapshot_name
    #   <p>The identifier for the application snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_status
    #   <p>The status of the application snapshot.</p>
    #
    #   Enum, one of: ["CREATING", "READY", "DELETING", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute application_version_id
    #   <p>The current application version ID when the snapshot was created.</p>
    #
    #   @return [Integer]
    #
    # @!attribute snapshot_creation_timestamp
    #   <p>The timestamp of the application snapshot.</p>
    #
    #   @return [Time]
    #
    SnapshotDetails = ::Struct.new(
      :snapshot_name,
      :snapshot_status,
      :application_version_id,
      :snapshot_creation_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SnapshotStatus
    #
    module SnapshotStatus
      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      READY = "READY"

      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>For a SQL-based Kinesis Data Analytics application, describes the format of the
    #       data in the streaming source, and how each data element maps to corresponding columns created
    #       in the in-application stream. </p>
    #
    # @!attribute record_format
    #   <p>Specifies the format of the records on the streaming source.</p>
    #
    #   @return [RecordFormat]
    #
    # @!attribute record_encoding
    #   <p>Specifies the encoding of the records in the streaming source. For example, UTF-8.</p>
    #
    #   @return [String]
    #
    # @!attribute record_columns
    #   <p>A list of <code>RecordColumn</code> objects. </p>
    #
    #   @return [Array<RecordColumn>]
    #
    SourceSchema = ::Struct.new(
      :record_format,
      :record_encoding,
      :record_columns,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the inputs, outputs, and reference data sources for a SQL-based Kinesis Data Analytics application.</p>
    #
    # @!attribute inputs
    #   <p>The array of <a>Input</a> objects describing the input streams used by the
    #         application.</p>
    #
    #   @return [Array<Input>]
    #
    # @!attribute outputs
    #   <p>The array of <a>Output</a> objects describing the destination streams used by
    #         the application.</p>
    #
    #   @return [Array<Output>]
    #
    # @!attribute reference_data_sources
    #   <p>The array of <a>ReferenceDataSource</a> objects describing the reference data
    #         sources used by the application.</p>
    #
    #   @return [Array<ReferenceDataSource>]
    #
    SqlApplicationConfiguration = ::Struct.new(
      :inputs,
      :outputs,
      :reference_data_sources,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the inputs, outputs, and reference data sources for a SQL-based Kinesis Data Analytics application.</p>
    #
    # @!attribute input_descriptions
    #   <p>The array of <a>InputDescription</a> objects describing the input streams used
    #         by the application.</p>
    #
    #   @return [Array<InputDescription>]
    #
    # @!attribute output_descriptions
    #   <p>The array of <a>OutputDescription</a> objects describing the destination
    #         streams used by the application.</p>
    #
    #   @return [Array<OutputDescription>]
    #
    # @!attribute reference_data_source_descriptions
    #   <p>The array of <a>ReferenceDataSourceDescription</a> objects describing the
    #         reference data sources used by the application.</p>
    #
    #   @return [Array<ReferenceDataSourceDescription>]
    #
    SqlApplicationConfigurationDescription = ::Struct.new(
      :input_descriptions,
      :output_descriptions,
      :reference_data_source_descriptions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes updates to the input streams, destination streams, and reference data sources
    #       for a SQL-based Kinesis Data Analytics application.</p>
    #
    # @!attribute input_updates
    #   <p>The array of <a>InputUpdate</a> objects describing the new input streams used
    #         by the application.</p>
    #
    #   @return [Array<InputUpdate>]
    #
    # @!attribute output_updates
    #   <p>The array of <a>OutputUpdate</a> objects describing the new destination streams
    #         used by the application.</p>
    #
    #   @return [Array<OutputUpdate>]
    #
    # @!attribute reference_data_source_updates
    #   <p>The array of <a>ReferenceDataSourceUpdate</a> objects describing the new
    #         reference data sources used by the application.</p>
    #
    #   @return [Array<ReferenceDataSourceUpdate>]
    #
    SqlApplicationConfigurationUpdate = ::Struct.new(
      :input_updates,
      :output_updates,
      :reference_data_source_updates,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the starting parameters for a SQL-based Kinesis Data Analytics application.</p>
    #
    # @!attribute input_id
    #   <p>The input source ID. You can get this ID by calling the <a>DescribeApplication</a> operation. </p>
    #
    #   @return [String]
    #
    # @!attribute input_starting_position_configuration
    #   <p>The point at which you want the application to start processing records from the streaming
    #         source. </p>
    #
    #   @return [InputStartingPositionConfiguration]
    #
    SqlRunConfiguration = ::Struct.new(
      :input_id,
      :input_starting_position_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_name
    #   <p>The name of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute run_configuration
    #   <p>Identifies the run configuration (start parameters) of a Kinesis Data Analytics application.</p>
    #
    #   @return [RunConfiguration]
    #
    StartApplicationInput = ::Struct.new(
      :application_name,
      :run_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    StartApplicationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_name
    #   <p>The name of the running application to stop.</p>
    #
    #   @return [String]
    #
    # @!attribute force
    #   <p>Set to <code>true</code> to force the application to stop. If you set <code>Force</code>
    #             to <code>true</code>, Kinesis Data Analytics stops the application without taking a snapshot.
    #         </p>
    #             <note>
    #               <p>Force-stopping your application may lead to data loss or duplication.
    #                 To prevent data loss or duplicate processing of data during application restarts,
    #                 we recommend you to take frequent snapshots of your application.</p>
    #            </note>
    #            <p>You can only force stop a Flink-based Kinesis Data Analytics application. You can't force stop a SQL-based Kinesis Data Analytics application.</p>
    #            <p>The application must be in the
    #             <code>STARTING</code>, <code>UPDATING</code>, <code>STOPPING</code>, <code>AUTOSCALING</code>, or
    #             <code>RUNNING</code> status. </p>
    #
    #   @return [Boolean]
    #
    StopApplicationInput = ::Struct.new(
      :application_name,
      :force,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    StopApplicationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A key-value pair (the value is optional) that you can define and assign to Amazon resources.
    #         If you specify a tag that already exists, the tag value is replaced with the value that you
    #         specify in the request. Note that
    #         the maximum number of application tags includes system tags. The maximum number of user-defined
    #         application tags is 50.
    #       For more information, see
    #         <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/java/how-tagging.html">Using Tagging</a>.</p>
    #
    # @!attribute key
    #   <p>The key of the key-value tag.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the key-value tag. The value is optional.</p>
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
    #   <p>The ARN of the application to assign the tags.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The key-value tags to assign to the application.</p>
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

    # <p>Application created with too many tags, or too many tags added to an application. Note that the maximum
    #         number of application tags includes system tags. The maximum number of user-defined application tags is 50.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyTagsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The data format is not valid. Kinesis Data Analytics cannot detect the schema for
    #       the given streaming source.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute raw_input_records
    #   <p>Raw stream data that was sampled to infer the schema.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute processed_input_records
    #   <p>Stream data that was modified by the processor specified in the <code>InputProcessingConfiguration</code> parameter. </p>
    #
    #   @return [Array<String>]
    #
    UnableToDetectSchemaException = ::Struct.new(
      :message,
      :raw_input_records,
      :processed_input_records,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was rejected because a specified parameter is not supported or a specified resource is not valid for this
    #       operation. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UnsupportedOperationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the Kinesis Data Analytics application from which to remove the tags.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>A list of keys of tags to remove from the specified application.</p>
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

    # @!attribute application_name
    #   <p>The name of the application to update.</p>
    #
    #   @return [String]
    #
    # @!attribute current_application_version_id
    #   <p>The current application version ID. You must provide the
    #           <code>CurrentApplicationVersionId</code> or the <code>ConditionalToken</code>.You can
    #         retrieve the application version ID using <a>DescribeApplication</a>. For better
    #         concurrency support, use the <code>ConditionalToken</code> parameter instead of
    #           <code>CurrentApplicationVersionId</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute application_configuration_update
    #   <p>Describes application configuration updates.</p>
    #
    #   @return [ApplicationConfigurationUpdate]
    #
    # @!attribute service_execution_role_update
    #   <p>Describes updates to the service execution role.</p>
    #
    #   @return [String]
    #
    # @!attribute run_configuration_update
    #   <p>Describes updates to the application's starting parameters.</p>
    #
    #   @return [RunConfigurationUpdate]
    #
    # @!attribute cloud_watch_logging_option_updates
    #   <p>Describes application Amazon CloudWatch logging option updates. You can only update
    #         existing CloudWatch logging options with this action. To add a new CloudWatch logging option,
    #         use <a>AddApplicationCloudWatchLoggingOption</a>.</p>
    #
    #   @return [Array<CloudWatchLoggingOptionUpdate>]
    #
    # @!attribute conditional_token
    #   <p>A value you use to implement strong concurrency for application updates. You must
    #         provide the <code>CurrentApplicationVersionId</code> or the <code>ConditionalToken</code>. You
    #         get the application's current <code>ConditionalToken</code> using <a>DescribeApplication</a>. For better concurrency support, use the
    #           <code>ConditionalToken</code> parameter instead of
    #         <code>CurrentApplicationVersionId</code>.</p>
    #
    #   @return [String]
    #
    UpdateApplicationInput = ::Struct.new(
      :application_name,
      :current_application_version_id,
      :application_configuration_update,
      :service_execution_role_update,
      :run_configuration_update,
      :cloud_watch_logging_option_updates,
      :conditional_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_name
    #   <p>The name of the application for which you want to update the maintenance configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute application_maintenance_configuration_update
    #   <p>Describes the application maintenance configuration update.</p>
    #
    #   @return [ApplicationMaintenanceConfigurationUpdate]
    #
    UpdateApplicationMaintenanceConfigurationInput = ::Struct.new(
      :application_name,
      :application_maintenance_configuration_update,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_arn
    #   <p>The Amazon Resource Name (ARN) of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute application_maintenance_configuration_description
    #   <p>The application maintenance configuration description after the update.</p>
    #
    #   @return [ApplicationMaintenanceConfigurationDescription]
    #
    UpdateApplicationMaintenanceConfigurationOutput = ::Struct.new(
      :application_arn,
      :application_maintenance_configuration_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_detail
    #   <p>Describes application updates.</p>
    #
    #   @return [ApplicationDetail]
    #
    UpdateApplicationOutput = ::Struct.new(
      :application_detail,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for UrlType
    #
    module UrlType
      # No documentation available.
      #
      FLINK_DASHBOARD_URL = "FLINK_DASHBOARD_URL"

      # No documentation available.
      #
      ZEPPELIN_UI_URL = "ZEPPELIN_UI_URL"
    end

    # <p>Describes the parameters of a VPC used by the application.</p>
    #
    # @!attribute subnet_ids
    #   <p>The array of <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_Subnet.html">Subnet</a> IDs
    #           used by the VPC configuration.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute security_group_ids
    #   <p>The array of <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_SecurityGroup.html">SecurityGroup</a>
    #           IDs used by the VPC configuration.</p>
    #
    #   @return [Array<String>]
    #
    VpcConfiguration = ::Struct.new(
      :subnet_ids,
      :security_group_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the parameters of a VPC used by the application.</p>
    #
    # @!attribute vpc_configuration_id
    #   <p>The ID of the VPC configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>The ID of the associated VPC.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_ids
    #   <p>The array of <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_Subnet.html">Subnet</a>
    #           IDs used by the VPC configuration.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute security_group_ids
    #   <p>The array of <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_SecurityGroup.html">SecurityGroup</a>
    #           IDs used by the VPC configuration.</p>
    #
    #   @return [Array<String>]
    #
    VpcConfigurationDescription = ::Struct.new(
      :vpc_configuration_id,
      :vpc_id,
      :subnet_ids,
      :security_group_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes updates to the VPC configuration used by the application.</p>
    #
    # @!attribute vpc_configuration_id
    #   <p>Describes an update to the ID of the VPC configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_id_updates
    #   <p>Describes updates to the array of <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_Subnet.html">Subnet</a>
    #           IDs
    #           used by the VPC configuration.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute security_group_id_updates
    #   <p>Describes updates to the array of
    #           <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_SecurityGroup.html">SecurityGroup</a> IDs used by the VPC configuration.</p>
    #
    #   @return [Array<String>]
    #
    VpcConfigurationUpdate = ::Struct.new(
      :vpc_configuration_id,
      :subnet_id_updates,
      :security_group_id_updates,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configuration of a Kinesis Data Analytics Studio notebook.</p>
    #
    # @!attribute monitoring_configuration
    #   <p>The monitoring configuration of a Kinesis Data Analytics Studio notebook.</p>
    #
    #   @return [ZeppelinMonitoringConfiguration]
    #
    # @!attribute catalog_configuration
    #   <p>The Amazon Glue Data Catalog that you use in queries in a Kinesis Data Analytics Studio notebook.</p>
    #
    #   @return [CatalogConfiguration]
    #
    # @!attribute deploy_as_application_configuration
    #   <p>The information required to deploy a Kinesis Data Analytics Studio notebook as an application with durable state.</p>
    #
    #   @return [DeployAsApplicationConfiguration]
    #
    # @!attribute custom_artifacts_configuration
    #   <p>Custom artifacts are dependency JARs and user-defined functions (UDF).</p>
    #
    #   @return [Array<CustomArtifactConfiguration>]
    #
    ZeppelinApplicationConfiguration = ::Struct.new(
      :monitoring_configuration,
      :catalog_configuration,
      :deploy_as_application_configuration,
      :custom_artifacts_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configuration of a Kinesis Data Analytics Studio notebook.</p>
    #
    # @!attribute monitoring_configuration_description
    #   <p>The monitoring configuration of a Kinesis Data Analytics Studio notebook.</p>
    #
    #   @return [ZeppelinMonitoringConfigurationDescription]
    #
    # @!attribute catalog_configuration_description
    #   <p>The Amazon Glue Data Catalog that is associated with the Kinesis Data Analytics Studio notebook.</p>
    #
    #   @return [CatalogConfigurationDescription]
    #
    # @!attribute deploy_as_application_configuration_description
    #   <p>The parameters required to deploy a Kinesis Data Analytics Studio notebook as an application with durable state.</p>
    #
    #   @return [DeployAsApplicationConfigurationDescription]
    #
    # @!attribute custom_artifacts_configuration_description
    #   <p>Custom artifacts are dependency JARs and user-defined functions (UDF).</p>
    #
    #   @return [Array<CustomArtifactConfigurationDescription>]
    #
    ZeppelinApplicationConfigurationDescription = ::Struct.new(
      :monitoring_configuration_description,
      :catalog_configuration_description,
      :deploy_as_application_configuration_description,
      :custom_artifacts_configuration_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Updates to the configuration of Kinesis Data Analytics Studio notebook.</p>
    #
    # @!attribute monitoring_configuration_update
    #   <p>Updates to the monitoring configuration of a Kinesis Data Analytics Studio notebook.</p>
    #
    #   @return [ZeppelinMonitoringConfigurationUpdate]
    #
    # @!attribute catalog_configuration_update
    #   <p>Updates to the configuration of the Amazon Glue Data Catalog that is associated with the Kinesis Data Analytics Studio notebook.</p>
    #
    #   @return [CatalogConfigurationUpdate]
    #
    # @!attribute deploy_as_application_configuration_update
    #   <p>Updates to the configuration information required to deploy an Amazon Data Analytics Studio notebook as an application with durable state.</p>
    #
    #   @return [DeployAsApplicationConfigurationUpdate]
    #
    # @!attribute custom_artifacts_configuration_update
    #   <p>Updates to the customer artifacts. Custom artifacts are dependency JAR files and user-defined functions (UDF).</p>
    #
    #   @return [Array<CustomArtifactConfiguration>]
    #
    ZeppelinApplicationConfigurationUpdate = ::Struct.new(
      :monitoring_configuration_update,
      :catalog_configuration_update,
      :deploy_as_application_configuration_update,
      :custom_artifacts_configuration_update,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes configuration parameters for Amazon CloudWatch logging for a Kinesis Data Analytics Studio notebook. For more information about CloudWatch logging, see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/java/monitoring-overview.html">Monitoring</a>.</p>
    #
    # @!attribute log_level
    #   <p>The verbosity of the CloudWatch Logs for an application.</p>
    #
    #   Enum, one of: ["INFO", "WARN", "ERROR", "DEBUG"]
    #
    #   @return [String]
    #
    ZeppelinMonitoringConfiguration = ::Struct.new(
      :log_level,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The monitoring configuration for Apache Zeppelin within a Kinesis Data Analytics Studio notebook.</p>
    #
    # @!attribute log_level
    #   <p>Describes the verbosity of the CloudWatch Logs for an application.</p>
    #
    #   Enum, one of: ["INFO", "WARN", "ERROR", "DEBUG"]
    #
    #   @return [String]
    #
    ZeppelinMonitoringConfigurationDescription = ::Struct.new(
      :log_level,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Updates to the monitoring configuration for Apache Zeppelin within a Kinesis Data Analytics Studio notebook.</p>
    #
    # @!attribute log_level_update
    #   <p>Updates to the logging level for Apache Zeppelin within a Kinesis Data Analytics Studio notebook.</p>
    #
    #   Enum, one of: ["INFO", "WARN", "ERROR", "DEBUG"]
    #
    #   @return [String]
    #
    ZeppelinMonitoringConfigurationUpdate = ::Struct.new(
      :log_level_update,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
