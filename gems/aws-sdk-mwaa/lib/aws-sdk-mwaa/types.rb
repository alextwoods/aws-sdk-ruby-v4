# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MWAA
  module Types

    # <p>Access to the Apache Airflow Web UI or CLI has been denied due to insufficient permissions. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/access-policies.html">Accessing an Amazon MWAA environment</a>.</p>
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

    # @!attribute name
    #   <p>The name of the Amazon MWAA environment. For example, <code>MyMWAAEnvironment</code>.</p>
    #
    #   @return [String]
    #
    CreateCliTokenInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cli_token
    #   <p>An Airflow CLI login token.</p>
    #
    #   @return [String]
    #
    # @!attribute web_server_hostname
    #   <p>The Airflow web server hostname for the environment.</p>
    #
    #   @return [String]
    #
    CreateCliTokenOutput = ::Struct.new(
      :cli_token,
      :web_server_hostname,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::MWAA::Types::CreateCliTokenOutput "\
          "cli_token=\"[SENSITIVE]\", "\
          "web_server_hostname=#{web_server_hostname || 'nil'}>"
      end
    end

    # <p>This section contains the Amazon Managed Workflows for Apache Airflow (MWAA) API reference documentation to create an environment. For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/get-started.html">Get started with Amazon Managed Workflows for Apache Airflow</a>.</p>
    #
    # @!attribute name
    #   <p>The name of the Amazon MWAA environment. For example, <code>MyMWAAEnvironment</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the execution role for your environment. An execution role is an Amazon Web Services Identity and Access Management (IAM) role that grants MWAA permission to access Amazon Web Services services and resources used by your environment. For example, <code>arn:aws:iam::123456789:role/my-execution-role</code>. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-create-role.html">Amazon MWAA Execution role</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute source_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon S3 bucket where your DAG code and supporting files are stored. For example, <code>arn:aws:s3:::my-airflow-bucket-unique-name</code>. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-s3-bucket.html">Create an Amazon S3 bucket for Amazon MWAA</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute dag_s3_path
    #   <p>The relative path to the DAGs folder on your Amazon S3 bucket. For example, <code>dags</code>. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-folder.html">Adding or updating DAGs</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute network_configuration
    #   <p>The VPC networking components used to secure and enable network traffic between the Amazon Web Services resources for your environment. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/networking-about.html">About networking on Amazon MWAA</a>.</p>
    #
    #   @return [NetworkConfiguration]
    #
    # @!attribute plugins_s3_path
    #   <p>The relative path to the <code>plugins.zip</code> file on your Amazon S3 bucket. For example, <code>plugins.zip</code>. If specified, then the plugins.zip version is required. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-import-plugins.html">Installing custom plugins</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute plugins_s3_object_version
    #   <p>The version of the plugins.zip file on your Amazon S3 bucket. A version must be specified each time a plugins.zip file is updated. To learn more, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/versioning-workflows.html">How S3 Versioning works</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute requirements_s3_path
    #   <p>The relative path to the <code>requirements.txt</code> file on your Amazon S3 bucket. For example, <code>requirements.txt</code>. If specified, then a file version is required. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/working-dags-dependencies.html">Installing Python dependencies</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute requirements_s3_object_version
    #   <p>The version of the requirements.txt file on your Amazon S3 bucket. A version must be specified each time a requirements.txt file is updated. To learn more, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/versioning-workflows.html">How S3 Versioning works</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute airflow_configuration_options
    #   <p>A list of key-value pairs containing the Apache Airflow configuration options you want to attach to your environment. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-env-variables.html">Apache Airflow configuration options</a>.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute environment_class
    #   <p>The environment class type. Valid values: <code>mw1.small</code>, <code>mw1.medium</code>, <code>mw1.large</code>. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/environment-class.html">Amazon MWAA environment class</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute max_workers
    #   <p>The maximum number of workers that you want to run in your environment. MWAA scales the number of Apache Airflow workers up to the number you specify in the <code>MaxWorkers</code> field. For example, <code>20</code>. When there are no more tasks running, and no more in the queue, MWAA disposes of the extra workers leaving the one worker that is included with your environment, or the number you specify in <code>MinWorkers</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute kms_key
    #   <p>The Amazon Web Services Key Management Service (KMS) key to encrypt the data in your environment. You can use an Amazon Web Services owned CMK, or a Customer managed CMK (advanced). To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/create-environment.html">Create an Amazon MWAA environment</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute airflow_version
    #   <p>The Apache Airflow version for your environment. If no value is specified, defaults to the latest version. Valid values: <code>1.10.12</code>, <code>2.0.2</code>. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/airflow-versions.html">Apache Airflow versions on Amazon Managed Workflows for Apache Airflow (MWAA)</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute logging_configuration
    #   <p>Defines the Apache Airflow logs to send to CloudWatch Logs.</p>
    #
    #   @return [LoggingConfigurationInput]
    #
    # @!attribute weekly_maintenance_window_start
    #   <p>The day and time of the week in Coordinated Universal Time (UTC) 24-hour standard time to start weekly maintenance updates of your environment in the following format: <code>DAY:HH:MM</code>. For example: <code>TUE:03:30</code>. You can specify a start time in 30 minute increments only.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The key-value tag pairs you want to associate to your environment. For example, <code>"Environment": "Staging"</code>. To learn more, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a>.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute webserver_access_mode
    #   <p>The Apache Airflow <i>Web server</i> access mode. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-networking.html">Apache Airflow access modes</a>.</p>
    #
    #   Enum, one of: ["PRIVATE_ONLY", "PUBLIC_ONLY"]
    #
    #   @return [String]
    #
    # @!attribute min_workers
    #   <p>The minimum number of workers that you want to run in your environment. MWAA scales the number of Apache Airflow workers up to the number you specify in the <code>MaxWorkers</code> field. When there are no more tasks running, and no more in the queue, MWAA disposes of the extra workers leaving the worker count you specify in the <code>MinWorkers</code> field. For example, <code>2</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute schedulers
    #   <p>The number of Apache Airflow schedulers to run in your environment. Valid values:</p>
    #           <ul>
    #               <li>
    #                   <p>v2.0.2 - Accepts between 2 to 5. Defaults to 2.</p>
    #               </li>
    #               <li>
    #                   <p>v1.10.12 - Accepts 1.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Integer]
    #
    CreateEnvironmentInput = ::Struct.new(
      :name,
      :execution_role_arn,
      :source_bucket_arn,
      :dag_s3_path,
      :network_configuration,
      :plugins_s3_path,
      :plugins_s3_object_version,
      :requirements_s3_path,
      :requirements_s3_object_version,
      :airflow_configuration_options,
      :environment_class,
      :max_workers,
      :kms_key,
      :airflow_version,
      :logging_configuration,
      :weekly_maintenance_window_start,
      :tags,
      :webserver_access_mode,
      :min_workers,
      :schedulers,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::MWAA::Types::CreateEnvironmentInput "\
          "name=#{name || 'nil'}, "\
          "execution_role_arn=#{execution_role_arn || 'nil'}, "\
          "source_bucket_arn=#{source_bucket_arn || 'nil'}, "\
          "dag_s3_path=#{dag_s3_path || 'nil'}, "\
          "network_configuration=#{network_configuration || 'nil'}, "\
          "plugins_s3_path=#{plugins_s3_path || 'nil'}, "\
          "plugins_s3_object_version=#{plugins_s3_object_version || 'nil'}, "\
          "requirements_s3_path=#{requirements_s3_path || 'nil'}, "\
          "requirements_s3_object_version=#{requirements_s3_object_version || 'nil'}, "\
          "airflow_configuration_options=\"[SENSITIVE]\", "\
          "environment_class=#{environment_class || 'nil'}, "\
          "max_workers=#{max_workers || 'nil'}, "\
          "kms_key=#{kms_key || 'nil'}, "\
          "airflow_version=#{airflow_version || 'nil'}, "\
          "logging_configuration=#{logging_configuration || 'nil'}, "\
          "weekly_maintenance_window_start=#{weekly_maintenance_window_start || 'nil'}, "\
          "tags=#{tags || 'nil'}, "\
          "webserver_access_mode=#{webserver_access_mode || 'nil'}, "\
          "min_workers=#{min_workers || 'nil'}, "\
          "schedulers=#{schedulers || 'nil'}>"
      end
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) returned in the response for the environment.</p>
    #
    #   @return [String]
    #
    CreateEnvironmentOutput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the Amazon MWAA environment. For example, <code>MyMWAAEnvironment</code>.</p>
    #
    #   @return [String]
    #
    CreateWebLoginTokenInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute web_token
    #   <p>An Airflow web server login token.</p>
    #
    #   @return [String]
    #
    # @!attribute web_server_hostname
    #   <p>The Airflow web server hostname for the environment.</p>
    #
    #   @return [String]
    #
    CreateWebLoginTokenOutput = ::Struct.new(
      :web_token,
      :web_server_hostname,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::MWAA::Types::CreateWebLoginTokenOutput "\
          "web_token=\"[SENSITIVE]\", "\
          "web_server_hostname=#{web_server_hostname || 'nil'}>"
      end
    end

    # @!attribute name
    #   <p>The name of the Amazon MWAA environment. For example, <code>MyMWAAEnvironment</code>.</p>
    #
    #   @return [String]
    #
    DeleteEnvironmentInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteEnvironmentOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             <b>Internal only</b>. Represents the dimensions of a metric. To learn more about the metrics published to Amazon CloudWatch, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/cw-metrics.html">Amazon MWAA performance metrics in Amazon CloudWatch</a>.</p>
    #
    # @!attribute name
    #   <p>
    #               <b>Internal only</b>. The name of the dimension.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>
    #               <b>Internal only</b>. The value of the dimension.</p>
    #
    #   @return [String]
    #
    Dimension = ::Struct.new(
      :name,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes an Amazon Managed Workflows for Apache Airflow (MWAA) environment.</p>
    #
    # @!attribute name
    #   <p>The name of the Amazon MWAA environment. For example, <code>MyMWAAEnvironment</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the Amazon MWAA environment. Valid values:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>CREATING</code> - Indicates the request to create the environment is in progress.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>CREATE_FAILED</code> - Indicates the request to create the environment failed, and the environment could not be created.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>AVAILABLE</code> - Indicates the request was successful and the environment is ready to use.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>UPDATING</code> - Indicates the request to update the environment is in progress.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>DELETING</code> - Indicates the request to delete the environment is in progress.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>DELETED</code> - Indicates the request to delete the environment is complete, and the environment has been deleted.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>UNAVAILABLE</code> - Indicates the request failed, but the environment was unable to rollback and is not in a stable state.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>UPDATE_FAILED</code> - Indicates the request to update the environment failed, and the environment has rolled back successfully and is ready to use.</p>
    #               </li>
    #            </ul>
    #           <p>We recommend reviewing our troubleshooting guide for a list of common errors and their solutions. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/troubleshooting.html">Amazon MWAA troubleshooting</a>.</p>
    #
    #   Enum, one of: ["CREATING", "CREATE_FAILED", "AVAILABLE", "UPDATING", "DELETING", "DELETED", "UNAVAILABLE", "UPDATE_FAILED"]
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon MWAA environment.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The day and time the environment was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute webserver_url
    #   <p>The Apache Airflow <i>Web server</i> host name for the Amazon MWAA environment. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/access-airflow-ui.html">Accessing the Apache Airflow UI</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the execution role in IAM that allows MWAA to access Amazon Web Services resources in your environment. For example, <code>arn:aws:iam::123456789:role/my-execution-role</code>. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-create-role.html">Amazon MWAA Execution role</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute service_role_arn
    #   <p>The Amazon Resource Name (ARN) for the service-linked role of the environment. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-slr.html">Amazon MWAA Service-linked role</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute kms_key
    #   <p>The Amazon Web Services Key Management Service (KMS) encryption key used to encrypt the data in your environment.</p>
    #
    #   @return [String]
    #
    # @!attribute airflow_version
    #   <p>The Apache Airflow version on your environment. Valid values: <code>1.10.12</code>, <code>2.0.2</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute source_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon S3 bucket where your DAG code and supporting files are stored. For example, <code>arn:aws:s3:::my-airflow-bucket-unique-name</code>. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-s3-bucket.html">Create an Amazon S3 bucket for Amazon MWAA</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute dag_s3_path
    #   <p>The relative path to the DAGs folder on your Amazon S3 bucket. For example, <code>dags</code>. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-folder.html">Adding or updating DAGs</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute plugins_s3_path
    #   <p>The relative path to the <code>plugins.zip</code> file on your Amazon S3 bucket. For example, <code>plugins.zip</code>. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-import-plugins.html">Installing custom plugins</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute plugins_s3_object_version
    #   <p>The version of the plugins.zip file on your Amazon S3 bucket. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-import-plugins.html">Installing custom plugins</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute requirements_s3_path
    #   <p>The relative path to the <code>requirements.txt</code> file on your Amazon S3 bucket. For example, <code>requirements.txt</code>. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/working-dags-dependencies.html">Installing Python dependencies</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute requirements_s3_object_version
    #   <p>The version of the requirements.txt file on your Amazon S3 bucket. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/working-dags-dependencies.html">Installing Python dependencies</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute airflow_configuration_options
    #   <p>A list of key-value pairs containing the Apache Airflow configuration options attached to your environment. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-env-variables.html">Apache Airflow configuration options</a>.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute environment_class
    #   <p>The environment class type. Valid values: <code>mw1.small</code>, <code>mw1.medium</code>, <code>mw1.large</code>. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/environment-class.html">Amazon MWAA environment class</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute max_workers
    #   <p>The maximum number of workers that run in your environment. For example, <code>20</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute network_configuration
    #   <p>Describes the VPC networking components used to secure and enable network traffic between the Amazon Web Services resources for your environment. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/networking-about.html">About networking on Amazon MWAA</a>.</p>
    #
    #   @return [NetworkConfiguration]
    #
    # @!attribute logging_configuration
    #   <p>The Apache Airflow logs published to CloudWatch Logs.</p>
    #
    #   @return [LoggingConfiguration]
    #
    # @!attribute last_update
    #   <p>The status of the last update on the environment.</p>
    #
    #   @return [LastUpdate]
    #
    # @!attribute weekly_maintenance_window_start
    #   <p>The day and time of the week in Coordinated Universal Time (UTC) 24-hour standard time that weekly maintenance updates are scheduled. For example: <code>TUE:03:30</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The key-value tag pairs associated to your environment. For example, <code>"Environment": "Staging"</code>. To learn more, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a>.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute webserver_access_mode
    #   <p>The Apache Airflow <i>Web server</i> access mode. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-networking.html">Apache Airflow access modes</a>.</p>
    #
    #   Enum, one of: ["PRIVATE_ONLY", "PUBLIC_ONLY"]
    #
    #   @return [String]
    #
    # @!attribute min_workers
    #   <p>The minimum number of workers that run in your environment. For example, <code>2</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute schedulers
    #   <p>The number of Apache Airflow schedulers that run in your Amazon MWAA environment.</p>
    #
    #   @return [Integer]
    #
    Environment = ::Struct.new(
      :name,
      :status,
      :arn,
      :created_at,
      :webserver_url,
      :execution_role_arn,
      :service_role_arn,
      :kms_key,
      :airflow_version,
      :source_bucket_arn,
      :dag_s3_path,
      :plugins_s3_path,
      :plugins_s3_object_version,
      :requirements_s3_path,
      :requirements_s3_object_version,
      :airflow_configuration_options,
      :environment_class,
      :max_workers,
      :network_configuration,
      :logging_configuration,
      :last_update,
      :weekly_maintenance_window_start,
      :tags,
      :webserver_access_mode,
      :min_workers,
      :schedulers,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EnvironmentStatus
    #
    module EnvironmentStatus
      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      CREATE_FAILED = "CREATE_FAILED"

      # No documentation available.
      #
      AVAILABLE = "AVAILABLE"

      # No documentation available.
      #
      UPDATING = "UPDATING"

      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      DELETED = "DELETED"

      # No documentation available.
      #
      UNAVAILABLE = "UNAVAILABLE"

      # No documentation available.
      #
      UPDATE_FAILED = "UPDATE_FAILED"
    end

    # @!attribute name
    #   <p>The name of the Amazon MWAA environment. For example, <code>MyMWAAEnvironment</code>.</p>
    #
    #   @return [String]
    #
    GetEnvironmentInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute environment
    #   <p>An object containing all available details about the environment.</p>
    #
    #   @return [Environment]
    #
    GetEnvironmentOutput = ::Struct.new(
      :environment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>InternalServerException: An internal error has occurred.</p>
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

    # <p>Describes the status of the last update on the environment, and any errors that were encountered.</p>
    #
    # @!attribute status
    #   <p>The status of the last update on the environment.</p>
    #
    #   Enum, one of: ["SUCCESS", "PENDING", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The day and time of the last update on the environment.</p>
    #
    #   @return [Time]
    #
    # @!attribute error
    #   <p>The error that was encountered during the last update of the environment.</p>
    #
    #   @return [UpdateError]
    #
    # @!attribute source
    #   <p>The source of the last update to the environment. Includes internal processes by Amazon MWAA, such as an environment maintenance update.</p>
    #
    #   @return [String]
    #
    LastUpdate = ::Struct.new(
      :status,
      :created_at,
      :error,
      :source,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>Retrieves the next page of the results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to retrieve per page. For example, <code>5</code> environments per page.</p>
    #
    #   @return [Integer]
    #
    ListEnvironmentsInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute environments
    #   <p>Returns a list of Amazon MWAA environments.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>Retrieves the next page of the results.</p>
    #
    #   @return [String]
    #
    ListEnvironmentsOutput = ::Struct.new(
      :environments,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon MWAA environment. For example, <code>arn:aws:airflow:us-east-1:123456789012:environment/MyMWAAEnvironment</code>.</p>
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
    #   <p>The key-value tag pairs associated to your environment. To learn more, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a>.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the Apache Airflow log types that are published to CloudWatch Logs.</p>
    #
    # @!attribute dag_processing_logs
    #   <p>The Airflow DAG processing logs published to CloudWatch Logs and the log level.</p>
    #
    #   @return [ModuleLoggingConfiguration]
    #
    # @!attribute scheduler_logs
    #   <p>The Airflow scheduler logs published to CloudWatch Logs and the log level.</p>
    #
    #   @return [ModuleLoggingConfiguration]
    #
    # @!attribute webserver_logs
    #   <p>The Airflow web server logs published to CloudWatch Logs and the log level.</p>
    #
    #   @return [ModuleLoggingConfiguration]
    #
    # @!attribute worker_logs
    #   <p>The Airflow worker logs published to CloudWatch Logs and the log level.</p>
    #
    #   @return [ModuleLoggingConfiguration]
    #
    # @!attribute task_logs
    #   <p>The Airflow task logs published to CloudWatch Logs and the log level.</p>
    #
    #   @return [ModuleLoggingConfiguration]
    #
    LoggingConfiguration = ::Struct.new(
      :dag_processing_logs,
      :scheduler_logs,
      :webserver_logs,
      :worker_logs,
      :task_logs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Defines the Apache Airflow log types to send to CloudWatch Logs.</p>
    #
    # @!attribute dag_processing_logs
    #   <p>Publishes Airflow DAG processing logs to CloudWatch Logs.</p>
    #
    #   @return [ModuleLoggingConfigurationInput]
    #
    # @!attribute scheduler_logs
    #   <p>Publishes Airflow scheduler logs to CloudWatch Logs.</p>
    #
    #   @return [ModuleLoggingConfigurationInput]
    #
    # @!attribute webserver_logs
    #   <p>Publishes Airflow web server logs to CloudWatch Logs.</p>
    #
    #   @return [ModuleLoggingConfigurationInput]
    #
    # @!attribute worker_logs
    #   <p>Publishes Airflow worker logs to CloudWatch Logs.</p>
    #
    #   @return [ModuleLoggingConfigurationInput]
    #
    # @!attribute task_logs
    #   <p>Publishes Airflow task logs to CloudWatch Logs.</p>
    #
    #   @return [ModuleLoggingConfigurationInput]
    #
    LoggingConfigurationInput = ::Struct.new(
      :dag_processing_logs,
      :scheduler_logs,
      :webserver_logs,
      :worker_logs,
      :task_logs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for LoggingLevel
    #
    module LoggingLevel
      # No documentation available.
      #
      CRITICAL = "CRITICAL"

      # No documentation available.
      #
      ERROR = "ERROR"

      # No documentation available.
      #
      WARNING = "WARNING"

      # No documentation available.
      #
      INFO = "INFO"

      # No documentation available.
      #
      DEBUG = "DEBUG"
    end

    # <p>
    #             <b>Internal only</b>. Collects Apache Airflow metrics. To learn more about the metrics published to Amazon CloudWatch, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/cw-metrics.html">Amazon MWAA performance metrics in Amazon CloudWatch</a>.</p>
    #
    # @!attribute metric_name
    #   <p>
    #               <b>Internal only</b>. The name of the metric.</p>
    #
    #   @return [String]
    #
    # @!attribute timestamp
    #   <p>
    #               <b>Internal only</b>. The time the metric data was received.</p>
    #
    #   @return [Time]
    #
    # @!attribute dimensions
    #   <p>
    #               <b>Internal only</b>. The dimensions associated with the metric.</p>
    #
    #   @return [Array<Dimension>]
    #
    # @!attribute value
    #   <p>
    #               <b>Internal only</b>. The value for the metric.</p>
    #
    #   @return [Float]
    #
    # @!attribute unit
    #   <p>
    #               <b>Internal only</b>. The unit used to store the metric.</p>
    #
    #   Enum, one of: ["Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #
    #   @return [String]
    #
    # @!attribute statistic_values
    #   <p>
    #               <b>Internal only</b>. The statistical values for the metric.</p>
    #
    #   @return [StatisticSet]
    #
    MetricDatum = ::Struct.new(
      :metric_name,
      :timestamp,
      :dimensions,
      :value,
      :unit,
      :statistic_values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the Apache Airflow log details for the log type (e.g. <code>DagProcessingLogs</code>).</p>
    #
    # @!attribute enabled
    #   <p>Indicates whether the Apache Airflow log type (e.g. <code>DagProcessingLogs</code>) is enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute log_level
    #   <p>The Apache Airflow log level for the log type (e.g. <code>DagProcessingLogs</code>). </p>
    #
    #   Enum, one of: ["CRITICAL", "ERROR", "WARNING", "INFO", "DEBUG"]
    #
    #   @return [String]
    #
    # @!attribute cloud_watch_log_group_arn
    #   <p>The Amazon Resource Name (ARN) for the CloudWatch Logs group where the Apache Airflow log type (e.g. <code>DagProcessingLogs</code>) is published. For example, <code>arn:aws:logs:us-east-1:123456789012:log-group:airflow-MyMWAAEnvironment-MwaaEnvironment-DAGProcessing:*</code>.</p>
    #
    #   @return [String]
    #
    ModuleLoggingConfiguration = ::Struct.new(
      :enabled,
      :log_level,
      :cloud_watch_log_group_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Enables the Apache Airflow log type (e.g. <code>DagProcessingLogs</code>) and defines the log level to send to CloudWatch Logs (e.g. <code>INFO</code>).</p>
    #
    # @!attribute enabled
    #   <p>Indicates whether to enable the Apache Airflow log type (e.g. <code>DagProcessingLogs</code>).</p>
    #
    #   @return [Boolean]
    #
    # @!attribute log_level
    #   <p>Defines the Apache Airflow log level (e.g. <code>INFO</code>) to send to CloudWatch Logs.</p>
    #
    #   Enum, one of: ["CRITICAL", "ERROR", "WARNING", "INFO", "DEBUG"]
    #
    #   @return [String]
    #
    ModuleLoggingConfigurationInput = ::Struct.new(
      :enabled,
      :log_level,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the VPC networking components used to secure and enable network traffic between the Amazon Web Services resources for your environment. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/networking-about.html">About networking on Amazon MWAA</a>.</p>
    #
    # @!attribute subnet_ids
    #   <p>A list of subnet IDs. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/networking-about.html">About networking on Amazon MWAA</a>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute security_group_ids
    #   <p>A list of security group IDs. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/vpc-security.html">Security in your VPC on Amazon MWAA</a>.</p>
    #
    #   @return [Array<String>]
    #
    NetworkConfiguration = ::Struct.new(
      :subnet_ids,
      :security_group_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute environment_name
    #   <p>
    #               <b>Internal only</b>. The name of the environment.</p>
    #
    #   @return [String]
    #
    # @!attribute metric_data
    #   <p>
    #               <b>Internal only</b>. Publishes metrics to Amazon CloudWatch. To learn more about the metrics published to Amazon CloudWatch, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/cw-metrics.html">Amazon MWAA performance metrics in Amazon CloudWatch</a>.</p>
    #
    #   @return [Array<MetricDatum>]
    #
    PublishMetricsInput = ::Struct.new(
      :environment_name,
      :metric_data,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PublishMetricsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>ResourceNotFoundException: The resource is not available.</p>
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
    #             <b>Internal only</b>. Represents a set of statistics that describe a specific metric. To learn more about the metrics published to Amazon CloudWatch, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/cw-metrics.html">Amazon MWAA performance metrics in Amazon CloudWatch</a>.</p>
    #
    # @!attribute sample_count
    #   <p>
    #               <b>Internal only</b>. The number of samples used for the statistic set.</p>
    #
    #   @return [Integer]
    #
    # @!attribute sum
    #   <p>
    #               <b>Internal only</b>. The sum of values for the sample set.</p>
    #
    #   @return [Float]
    #
    # @!attribute minimum
    #   <p>
    #               <b>Internal only</b>. The minimum value of the sample set.</p>
    #
    #   @return [Float]
    #
    # @!attribute maximum
    #   <p>
    #               <b>Internal only</b>. The maximum value of the sample set.</p>
    #
    #   @return [Float]
    #
    StatisticSet = ::Struct.new(
      :sample_count,
      :sum,
      :minimum,
      :maximum,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon MWAA environment. For example, <code>arn:aws:airflow:us-east-1:123456789012:environment/MyMWAAEnvironment</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The key-value tag pairs you want to associate to your environment. For example, <code>"Environment": "Staging"</code>. To learn more, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a>.</p>
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

    # Includes enum constants for Unit
    #
    module Unit
      # No documentation available.
      #
      SECONDS = "Seconds"

      # No documentation available.
      #
      MICROSECONDS = "Microseconds"

      # No documentation available.
      #
      MILLISECONDS = "Milliseconds"

      # No documentation available.
      #
      BYTES = "Bytes"

      # No documentation available.
      #
      KILOBYTES = "Kilobytes"

      # No documentation available.
      #
      MEGABYTES = "Megabytes"

      # No documentation available.
      #
      GIGABYTES = "Gigabytes"

      # No documentation available.
      #
      TERABYTES = "Terabytes"

      # No documentation available.
      #
      BITS = "Bits"

      # No documentation available.
      #
      KILOBITS = "Kilobits"

      # No documentation available.
      #
      MEGABITS = "Megabits"

      # No documentation available.
      #
      GIGABITS = "Gigabits"

      # No documentation available.
      #
      TERABITS = "Terabits"

      # No documentation available.
      #
      PERCENT = "Percent"

      # No documentation available.
      #
      COUNT = "Count"

      # No documentation available.
      #
      BYTES_PER_SECOND = "Bytes/Second"

      # No documentation available.
      #
      KILOBYTES_PER_SECOND = "Kilobytes/Second"

      # No documentation available.
      #
      MEGABYTES_PER_SECOND = "Megabytes/Second"

      # No documentation available.
      #
      GIGABYTES_PER_SECOND = "Gigabytes/Second"

      # No documentation available.
      #
      TERABYTES_PER_SECOND = "Terabytes/Second"

      # No documentation available.
      #
      BITS_PER_SECOND = "Bits/Second"

      # No documentation available.
      #
      KILOBITS_PER_SECOND = "Kilobits/Second"

      # No documentation available.
      #
      MEGABITS_PER_SECOND = "Megabits/Second"

      # No documentation available.
      #
      GIGABITS_PER_SECOND = "Gigabits/Second"

      # No documentation available.
      #
      TERABITS_PER_SECOND = "Terabits/Second"

      # No documentation available.
      #
      COUNT_PER_SECOND = "Count/Second"

      # No documentation available.
      #
      NONE = "None"
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon MWAA environment. For example, <code>arn:aws:airflow:us-east-1:123456789012:environment/MyMWAAEnvironment</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The key-value tag pair you want to remove. For example, <code>"Environment": "Staging"</code>. </p>
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
    #   <p>The name of your Amazon MWAA environment. For example, <code>MyMWAAEnvironment</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the execution role in IAM that allows MWAA to access Amazon Web Services resources in your environment. For example, <code>arn:aws:iam::123456789:role/my-execution-role</code>. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-create-role.html">Amazon MWAA Execution role</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute airflow_version
    #   <p>The Apache Airflow version for your environment. If no value is specified, defaults to the latest version. Valid values: <code>1.10.12</code>, <code>2.0.2</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute source_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon S3 bucket where your DAG code and supporting files are stored. For example, <code>arn:aws:s3:::my-airflow-bucket-unique-name</code>. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-s3-bucket.html">Create an Amazon S3 bucket for Amazon MWAA</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute dag_s3_path
    #   <p>The relative path to the DAGs folder on your Amazon S3 bucket. For example, <code>dags</code>. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-folder.html">Adding or updating DAGs</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute plugins_s3_path
    #   <p>The relative path to the <code>plugins.zip</code> file on your Amazon S3 bucket. For example, <code>plugins.zip</code>. If specified, then the plugins.zip version is required. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-import-plugins.html">Installing custom plugins</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute plugins_s3_object_version
    #   <p>The version of the plugins.zip file on your Amazon S3 bucket. A version must be specified each time a plugins.zip file is updated. To learn more, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/versioning-workflows.html">How S3 Versioning works</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute requirements_s3_path
    #   <p>The relative path to the <code>requirements.txt</code> file on your Amazon S3 bucket. For example, <code>requirements.txt</code>. If specified, then a file version is required. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/working-dags-dependencies.html">Installing Python dependencies</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute requirements_s3_object_version
    #   <p>The version of the requirements.txt file on your Amazon S3 bucket. A version must be specified each time a requirements.txt file is updated. To learn more, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/versioning-workflows.html">How S3 Versioning works</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute airflow_configuration_options
    #   <p>A list of key-value pairs containing the Apache Airflow configuration options you want to attach to your environment. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-env-variables.html">Apache Airflow configuration options</a>.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute environment_class
    #   <p>The environment class type. Valid values: <code>mw1.small</code>, <code>mw1.medium</code>, <code>mw1.large</code>. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/environment-class.html">Amazon MWAA environment class</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute max_workers
    #   <p>The maximum number of workers that you want to run in your environment. MWAA scales the number of Apache Airflow workers up to the number you specify in the <code>MaxWorkers</code> field. For example, <code>20</code>. When there are no more tasks running, and no more in the queue, MWAA disposes of the extra workers leaving the one worker that is included with your environment, or the number you specify in <code>MinWorkers</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute network_configuration
    #   <p>The VPC networking components used to secure and enable network traffic between the Amazon Web Services resources for your environment. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/networking-about.html">About networking on Amazon MWAA</a>.</p>
    #
    #   @return [UpdateNetworkConfigurationInput]
    #
    # @!attribute logging_configuration
    #   <p>The Apache Airflow log types to send to CloudWatch Logs.</p>
    #
    #   @return [LoggingConfigurationInput]
    #
    # @!attribute weekly_maintenance_window_start
    #   <p>The day and time of the week in Coordinated Universal Time (UTC) 24-hour standard time to start weekly maintenance updates of your environment in the following format: <code>DAY:HH:MM</code>. For example: <code>TUE:03:30</code>. You can specify a start time in 30 minute increments only.</p>
    #
    #   @return [String]
    #
    # @!attribute webserver_access_mode
    #   <p>The Apache Airflow <i>Web server</i> access mode. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-networking.html">Apache Airflow access modes</a>.</p>
    #
    #   Enum, one of: ["PRIVATE_ONLY", "PUBLIC_ONLY"]
    #
    #   @return [String]
    #
    # @!attribute min_workers
    #   <p>The minimum number of workers that you want to run in your environment. MWAA scales the number of Apache Airflow workers up to the number you specify in the <code>MaxWorkers</code> field. When there are no more tasks running, and no more in the queue, MWAA disposes of the extra workers leaving the worker count you specify in the <code>MinWorkers</code> field. For example, <code>2</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute schedulers
    #   <p>The number of Apache Airflow schedulers to run in your Amazon MWAA environment.</p>
    #
    #   @return [Integer]
    #
    UpdateEnvironmentInput = ::Struct.new(
      :name,
      :execution_role_arn,
      :airflow_version,
      :source_bucket_arn,
      :dag_s3_path,
      :plugins_s3_path,
      :plugins_s3_object_version,
      :requirements_s3_path,
      :requirements_s3_object_version,
      :airflow_configuration_options,
      :environment_class,
      :max_workers,
      :network_configuration,
      :logging_configuration,
      :weekly_maintenance_window_start,
      :webserver_access_mode,
      :min_workers,
      :schedulers,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::MWAA::Types::UpdateEnvironmentInput "\
          "name=#{name || 'nil'}, "\
          "execution_role_arn=#{execution_role_arn || 'nil'}, "\
          "airflow_version=#{airflow_version || 'nil'}, "\
          "source_bucket_arn=#{source_bucket_arn || 'nil'}, "\
          "dag_s3_path=#{dag_s3_path || 'nil'}, "\
          "plugins_s3_path=#{plugins_s3_path || 'nil'}, "\
          "plugins_s3_object_version=#{plugins_s3_object_version || 'nil'}, "\
          "requirements_s3_path=#{requirements_s3_path || 'nil'}, "\
          "requirements_s3_object_version=#{requirements_s3_object_version || 'nil'}, "\
          "airflow_configuration_options=\"[SENSITIVE]\", "\
          "environment_class=#{environment_class || 'nil'}, "\
          "max_workers=#{max_workers || 'nil'}, "\
          "network_configuration=#{network_configuration || 'nil'}, "\
          "logging_configuration=#{logging_configuration || 'nil'}, "\
          "weekly_maintenance_window_start=#{weekly_maintenance_window_start || 'nil'}, "\
          "webserver_access_mode=#{webserver_access_mode || 'nil'}, "\
          "min_workers=#{min_workers || 'nil'}, "\
          "schedulers=#{schedulers || 'nil'}>"
      end
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon MWAA environment. For example, <code>arn:aws:airflow:us-east-1:123456789012:environment/MyMWAAEnvironment</code>.</p>
    #
    #   @return [String]
    #
    UpdateEnvironmentOutput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the error(s) encountered with the last update of the environment.</p>
    #
    # @!attribute error_code
    #   <p>The error code that corresponds to the error with the last update.</p>
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>The error message that corresponds to the error code.</p>
    #
    #   @return [String]
    #
    UpdateError = ::Struct.new(
      :error_code,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Defines the VPC networking components used to secure and enable network traffic between the Amazon Web Services resources for your environment. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/networking-about.html">About networking on Amazon MWAA</a>.</p>
    #
    # @!attribute security_group_ids
    #   <p>A list of security group IDs. A security group must be attached to the same VPC as the subnets. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/vpc-security.html">Security in your VPC on Amazon MWAA</a>.</p>
    #
    #   @return [Array<String>]
    #
    UpdateNetworkConfigurationInput = ::Struct.new(
      :security_group_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for UpdateStatus
    #
    module UpdateStatus
      # No documentation available.
      #
      SUCCESS = "SUCCESS"

      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>ValidationException: The provided input is not valid.</p>
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

    # Includes enum constants for WebserverAccessMode
    #
    module WebserverAccessMode
      # No documentation available.
      #
      PRIVATE_ONLY = "PRIVATE_ONLY"

      # No documentation available.
      #
      PUBLIC_ONLY = "PUBLIC_ONLY"
    end

  end
end
